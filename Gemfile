source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gemspec

gem "json", "2.4.1" if RUBY_VERSION == "2.0.0"

group :metrics do
  gem 'coveralls', '~> 0.8.22'
  gem 'simplecov', '~> 0.16.1'
  gem 'yardstick', '~> 0.9.9'
end

group :benchmarks do
  gem 'benchmark-ips', '~> 2.7.2'
end
