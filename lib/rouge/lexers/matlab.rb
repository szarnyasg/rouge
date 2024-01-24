# -*- coding: utf-8 -*- #
# frozen_string_literal: true

module Rouge
  module Lexers
    class Matlab < RegexLexer
      title "MATLAB"
      desc "Matlab"
      tag 'matlab'
      aliases 'm'
      filenames '*.m'
      mimetypes 'text/x-matlab', 'application/x-matlab'

      # list is taken from https://github.com/szarnyasg/duckdb/tree/main/third_party/libpg_query/grammar/keywords
      def self.keywords
        @keywords ||= Set.new(%w(
          AS
          SELECT
      ))
      end

      def self.keywords_type
        # Use the `extract_type_names.py` script in the repository root to generate this list
        @keywords_type ||= Set.new(%w())
      end

      def self.function_names
        # Use the `extract_type_names.py` script in the repository root to generate this list
        @function_names ||= Set.new(%w(
          COS
          PI
        ))
      end

      state :root do
        rule %r/\s+/m, Text
        rule %r/--.*/, Comment::Single
        rule %r(/\*), Comment::Multiline, :multiline_comments
        rule %r/\d+/, Num::Integer
        rule %r/'/, Str::Single, :single_string
        # A double-quoted string refers to a database object in our default SQL
        # dialect, which is appropriate for e.g. PostgreSQL and DuckDB.
        rule %r/"/, Name::Variable, :double_string
        rule %r/`/, Name::Variable, :backtick

        # Strings 'something(' are candidates to be treated as function names
        rule %r/(\w[\w\d]*)(\()/ do |m|
          if self.class.function_names.include? m[1].upcase
            token Name::Function, m[1]
            token Punctuation, m[2]
          elsif self.class.keywords_type.include? m[1].upcase
            token Name::Builtin, m[1]
            token Punctuation, m[2]
          elsif self.class.keywords.include? m[1].upcase
            token Keyword, m[1]
            token Punctuation, m[2]
          else
            token Name, m[1]
            token Punctuation, m[2]
          end
        end

        # Strings 'something' are not candidates to be treated as function names
        # The rationale behind this is that many function names are common words
        # (e.g., version, month, year), and we do *not* want these to be highlighted
        # as function names.
        rule %r/\w[\w\d]*/ do |m|
          if self.class.keywords_type.include? m[0].upcase
            token Name::Builtin
          elsif self.class.keywords.include? m[0].upcase
            token Keyword
          else
            token Name
          end
        end

        rule %r([+*/<>=~!@#%&|?^-]), Operator
        rule %r/[;:()\[\]\{\},.]/, Punctuation
      end

      state :multiline_comments do
        rule %r(/[*]), Comment::Multiline, :multiline_comments
        rule %r([*]/), Comment::Multiline, :pop!
        rule %r([^/*]+), Comment::Multiline
        rule %r([/*]), Comment::Multiline
      end

      state :backtick do
        rule %r/\\./, Str::Escape
        rule %r/``/, Str::Escape
        rule %r/`/, Name::Variable, :pop!
        rule %r/[^\\`]+/, Name::Variable
      end

      state :single_string do
        rule %r/\\./, Str::Escape
        rule %r/''/, Str::Escape
        rule %r/'/, Str::Single, :pop!
        rule %r/[^\\']+/, Str::Single
      end

      state :double_string do
        rule %r/\\./, Str::Escape
        rule %r/""/, Str::Escape
        rule %r/"/, Name::Variable, :pop!
        rule %r/[^\\"]+/, Name::Variable
      end
    end
  end
end
