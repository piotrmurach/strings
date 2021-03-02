# frozen_string_literal: true

require_relative "lib/strings/version"

Gem::Specification.new do |spec|
  spec.name          = "strings"
  spec.version       = Strings::VERSION
  spec.authors       = ["Piotr Murach"]
  spec.email         = ["piotr@piotrmurach.com"]
  spec.summary       = %q{A set of methods for working with strings.}
  spec.description   = %q{A set of methods for working with strings such as align, truncate, wrap and many more.}
  spec.homepage      = "https://github.com/piotrmurach/strings"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"
  spec.metadata["changelog_uri"] = "https://github.com/piotrmurach/strings/blob/master/CHANGELOG.md"
  spec.metadata["documentation_uri"] = "https://www.rubydoc.info/gems/strings"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/piotrmurach/strings"

  spec.files = Dir["lib/**/*"]
  spec.extra_rdoc_files = Dir["README.md", "CHANGELOG.md", "LICENSE.txt"]
  spec.require_paths = ["lib"]
  spec.required_ruby_version = Gem::Requirement.new(">= 2.0.0")

  spec.add_dependency "strings-ansi",          "~> 0.2"
  spec.add_dependency "unicode_utils",         "~> 1.4"
  spec.add_dependency "unicode-display_width", ">= 1.5", "< 3.0"

  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", ">= 3.0"
end
