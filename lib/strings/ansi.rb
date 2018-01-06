# frozen_string_literal: true

module Strings
  # Helper functions for handling ANSI escape sequences
  module ANSI
    ANSI_MATCHER = '(\[)?\033(\[)?[;?\d]*[\dA-Za-z]([\];])?'.freeze

    # Remove ANSI characters from the text
    #
    # @param [String] text
    #
    # @example
    #   Strings::ANSI.sanitize("\e[33mfoo\[e0m")
    #   # => "foo"
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
    # @example
    #   Strings::ANSI.ansi?("\e[33mfoo\[e0m")
    #   # => true
    #
    # @return [Boolean]
    #
    # @api public
    def ansi?(string)
      !!(string =~ /#{ANSI_MATCHER}/)
    end
    module_function :ansi?

    # Check if string contains only ANSI codes
    #
    # @param [String] string
    #   the string to check
    #
    # @example
    #   Strings::ANSI.only_ansi?("\e[33mfoo\[e0m")
    #   # => false
    #
    #   Strings::ANSI.only_ansi?("\e[33m")
    #   # => false
    #
    # @return [Boolean]
    #
    # @api public
    def only_ansi?(string)
      !!(string =~ /^#{ANSI_MATCHER}$/)
    end
    module_function :only_ansi?
  end # Sanitizer
end # Strings
