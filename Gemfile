source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gemspec

gem "json", "2.4.1" if RUBY_VERSION == "2.0.0"

group :metrics do
  if Gem::Version.new(RUBY_VERSION) >= Gem::Version.new("2.5.0")
    gem "coveralls_reborn", "~> 0.20.0"
    gem "simplecov", "~> 0.21.0"
  end
  gem "yardstick", "~> 0.9.9"
end

group :benchmarks do
  gem "benchmark-ips", "~> 2.7.2"
end
