# frozen_string_literal: true

source "https://rubygems.org"

gemspec

group :development do
  gem "coveralls_reborn", "~> 0.25.0" if RUBY_VERSION >= "3.1"
  gem "mocha", "~> 1.16.0"
  gem "rack", ">= 2.0.6"
  gem "rake"

  gem "shoulda-context", "2.0.0"

  gem "test-unit"

  # Version doesn't matter that much, but this one contains some fixes for Ruby
  # 2.7 warnings that add noise to the test suite.
  gem "webmock", ">= 3.8.0"

  # Rubocop changes pretty quickly: new cops get added and old cops change
  # names or go into new namespaces. This is a library and we don't have
  # `Gemfile.lock` checked in, so to prevent good builds from suddenly going
  # bad, pin to a specific version number here. Try to keep this relatively
  # up-to-date, but it's not the end of the world if it's not.
  #
  # The latest version of rubocop is only compatible with Ruby 2.7+
  gem "rubocop", "1.57.2" if RUBY_VERSION >= "2.7"

  # jaro_winkler 1.5.5 installation fails for jruby
  # don't install on truffleruby
  gem "jaro_winkler", "1.5.4" unless RUBY_ENGINE == "truffleruby"

  platforms :mri do
    gem "byebug"
    gem "pry"
    gem "pry-byebug"
  end
end
