# OurRubyStyle

Shared Ruby and Rails code style for Lemontech products.

This gem installs 4 configuration files for tools that will make your code great again.

  * [rubocop](http://rubocop.readthedocs.io/en/latest/): is a Ruby static code analyzer. Out of the box it will enforce many of the guidelines outlined in the community [Ruby Style Guide](https://github.com/bbatsov/ruby-style-guide).

  * [reek](https://github.com/troessner/reek): Code smell detector for Ruby. [Code Smells](https://github.com/troessner/reek/blob/master/docs/Code-Smells.md)

  * [fasterer](https://github.com/DamirSvrtan/fasterer): Make your Rubies go faster. Inspired by [this talk](https://speakerdeck.com/sferik/writing-fast-ruby)

  * [rails_best_practices](https://rails-bestpractices.com/): A code metric tool for rails projects.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'our_ruby_style'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install our_ruby_style

## Usage

* Execute:

  ```
  $ our_ruby_style install
  ```

* Run each tool to check the entire project:
  ```
  $ rubocop
  $ reek
  $ fasterer
  $ rails_best_practices
  ```

## Integrations

### Git

You can use [`Overcommit`](https://github.com/brigade/overcommit) to lint the changed files before commiting. Example:

```YML
PreCommit:
  RuboCop:
    enabled: true
    problem_on_unmodified_line: ignore
  Fasterer:
    enabled: true
    problem_on_unmodified_line: ignore
  Reek:
    enabled: true
    problem_on_unmodified_line: ignore
  RailsBestPractices:
    enabled: true
    problem_on_unmodified_line: ignore
```

You need install Overcommit

```ruby
gem 'overcommit'
```

And then execute:

```
$ overcommit install
```

If the changes causes lint errors the commit will fail until you fix them.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/5rabbits/our_ruby_style.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
