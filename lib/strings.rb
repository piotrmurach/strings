require_relative 'strings/truncate'
require_relative 'strings/wrap'
require_relative 'strings/version'

module Strings
  SPACE   = ' '.freeze
  NEWLINE = "\n".freeze
  RESET   = "\e[0m".freeze
  CSI    = "\033".freeze

  SPACE_RE   = %r{\s+}mo.freeze
  NEWLINE_RE = %r{\n}o.freeze

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
