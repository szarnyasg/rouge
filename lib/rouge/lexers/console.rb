# -*- coding: utf-8 -*- #
# frozen_string_literal: true

module Rouge
  module Lexers
    class ConsoleLexer < Lexer
      tag 'console'
      aliases 'terminal', 'shell_session', 'shell-session'
      desc 'A generic lexer for error messages in the DuckDB documentation'

      attr_reader :token
      def initialize(*)
        super

        @token = token_option(:token) || Text
      end

      def stream_tokens(string, &b)
        yield self.token, string
      end
    end
  end
end
