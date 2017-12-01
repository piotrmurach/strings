# encoding: utf-8

module Strings
  module Sanitizer
    ANSI_MATCHER = /(\[)?\033(\[)?[;?\d]*[\dA-Za-z](\])?/

    LINE_BREAK = "(\r\n+|\r+|\n+|\t+)".freeze

    # Strip ANSI characters from the text
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

    # Replace separator with whitespace
    #
    # @example
    #   replace(" \n ") # => "  "
    #   replace("\n")   # => " "
    #
    # @param [String] text
    #
    # @param [String] separator
    #
    # @return [String]
    #
    # @api public
    def replace(text, separator = LINE_BREAK)
      text.gsub(/([ ]+)#{separator}/, "\\1")
          .gsub(/#{separator}(?<space>[ ]+)/, "\\k<space>")
          .gsub(/#{separator}/, ' ')
    end
    module_function :replace
  end # Sanitizer
end # Strings
