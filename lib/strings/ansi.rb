# frozen_string_literal: true

module Strings
  # Helper functions for handling ANSI escape sequences
  module ANSI
    ANSI_MATCHER = '(\[)?\033(\[)?[;?\d]*[\dA-Za-z]([\];])?'.freeze

    # Remove ANSI characters from the text
    #
    # @param [String] text
    #
    # @return [String]
    #
    # @api public
    def sanitize(text)
      text.gsub(/#{ANSI_MATCHER}/, '')
    end
    module_function :sanitize

    # Check if string contains ANSI codes
    #
    # @param [String] string
    #   the string to check
    #
    # @return [Boolean]
    #
    # @api public
    def ansi?(string)
      !!(string =~ /^#{ANSI_MATCHER}$/)
    end
    module_function :ansi?
  end # Sanitizer
end # Strings
