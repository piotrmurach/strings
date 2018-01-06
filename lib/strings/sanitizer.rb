# encoding: utf-8

module Strings
  module Sanitizer
    ANSI_MATCHER = /(\[)?\033(\[)?[;?\d]*[\dA-Za-z](\])?/

    # Remove ANSI characters from the text
    #
    # @param [String] text
    #
    # @return [String]
    #
    # @api public
    def sanitize(text)
      text.gsub(ANSI_MATCHER, '')
    end
    module_function :sanitize

    # Check if string is an ANSI code
    #
    # @param [String] string
    #   the string to check
    #
    # @return [Boolean]
    #
    # @api public
    def ansi?(string)
      !!(string =~ /^(\[)?\033(\[)?[;?\d]*[\dA-Za-z]([\];])?$/)
    end
    module_function :ansi?
  end # Sanitizer
end # Strings
