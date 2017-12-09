# Strings

[![Gem Version](https://badge.fury.io/rb/strings.svg)][gem]
[![Build Status](https://secure.travis-ci.org/piotrmurach/strings.svg?branch=master)][travis]
[![Build status](https://ci.appveyor.com/api/projects/status/e11tn1fgjwnfwp3r?svg=true)][appveyor]
[![Maintainability](https://api.codeclimate.com/v1/badges/4ca50e480f42af80678e/maintainability)][codeclimate]
[![Coverage Status](https://coveralls.io/repos/github/piotrmurach/strings/badge.svg?branch=master)][coverage]
[![Inline docs](http://inch-ci.org/github/piotrmurach/strings.svg?branch=master)][inchpages]

[gem]: http://badge.fury.io/rb/strings
[travis]: http://travis-ci.org/piotrmurach/strings
[appveyor]: https://ci.appveyor.com/project/piotrmurach/strings
[codeclimate]: https://codeclimate.com/github/piotrmurach/strings/maintainability
[coverage]: https://coveralls.io/github/piotrmurach/strings?branch=master
[inchpages]: http://inch-ci.org/github/piotrmurach/strings

> The `Strings` is a set of useful functions such as wrap, truncate, indent, and many more for transforming strings.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'strings'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install strings

## Features

* No monkey-patching String class
* Functional API that can be easily wrapped by other objects
* Supports multibyte character encodings such as UTF-8, EUC-JP
* Handles languages without whitespaces between words (like Chinese and Japanese)
* Supports ANSI escape codes

## Contents

* [1. Usage](#1-usage)
* [2. API](#2-api)
 * [2.1 truncate](#21-truncate)

## 1. Usage

```ruby
text = "Think not, is my eleventh commandment; and sleep when you can, is my twelfth."
Strings.wrap text, 30
# =>
#  "Think not, is my eleventh"
#  "commandment; and sleep when"
#  "you can, is my twelfth."

```

## 2. API

### 2.1 truncate

Using **Strings::Truncate** module you can truncate a given text after a given length. 

Given the following text:

```ruby
text = "for there is no folly of the beast of the earth " +
       "which is not infinitely outdone by the madness of men"
```

To shorten the text to given length call `truncate`:

```ruby
Strings.truncate(text, 20) # => "for there is no fol…"
```

or directly using the module namesapce:

```ruby
Strings::Truncate.truncate(text, 20) # => "for there is no fol…"
```

If you want to split words on their boundaries use `:separator` option:

```ruby
Strings.truncate(text, 20) # => "for there is no…"
```

Use `:trailing` option (by default `…`) to provide omission characters:

```ruby
Strings.truncate(text, 22, trailing: '... (see more)')
# => "for there...(see more)"
```

You can also specify `UTF-8` text as well:

```ruby
text = 'ラドクリフ、マラソン五輪代表に1万m出場にも含み'
Strings.truncate(text, 12)   # => "ラドクリフ…"
```

**Strings::Truncate** works with ANSI escape codoes:

```ruby
text = "I try \e[34mall things\e[0m, I achieve what I can"
Strings.truncate(text, 18)
# => "I try \e[34mall things\e[0m…"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/piotrmurach/strings. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

1. Fork it ( https://github.com/piotrmurach/verse/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Strings project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/piotrmurach/strings/blob/master/CODE_OF_CONDUCT.md).

## Copyright

Copyright (c) 2017 Piotr Murach. See LICENSE for further details.
