# -*- coding: utf-8 -*- #
# frozen_string_literal: true

module Rouge
  module Lexers
    class PLSQL < SQL
      title "PLSQL"
      desc "Structured Query Language, for relational databases (single-line)"
      tag 'plsql'

      def initialize(name)
        @name = name
      end
    end
  end
end
