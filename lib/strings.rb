require_relative 'strings/truncate'
require_relative 'strings/wrap'
require_relative 'strings/version'

module Strings
  SPACE   = ' '.freeze
  NEWLINE = "\n".freeze

  SPACE_RE   = %r{\s+}mo.freeze
  NEWLINE_RE = %r{\n}o.freeze

  # Remove any line break characters from the text
  #
  # @see Strings::Fold#fold
  #
  # @api public
  def fold(*args)
    Fold.fold(*args)
  end
  module_function :fold

  # Remove ANSI codes from the string
  #
  # @see Strings::ANSI#sanitize
  #
  # @api public
  def sanitize(text)
    ANSI.sanitize(text)
  end
  module_function :sanitize

  # Truncate a text at a given length
  #
  # @see Strings::Truncate#truncate
  #
  # @api public
  def truncate(text, truncate_at, options = {})
    Truncate.truncate(text, truncate_at, options)
  end
  module_function :truncate

  # Wrap a text into lines at wrap length
  #
  # @see Strings::Wrap#wrap
  #
  # @api public
  def wrap(text, wrap_at)
    Wrap.wrap(text, wrap_at)
  end
  module_function :wrap
end # Strings
