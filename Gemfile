# frozen_string_literal: true

source "https://rubygems.org"

gemspec

group :development do
  gem "coveralls", require: false
  gem "mocha", "~> 0.13.2"
  gem "rack", ">= 2.0.6"
  gem "rake"
  gem "shoulda-context"
  gem "test-unit"
  gem "timecop"
  gem "webmock"

  # Rubocop changes pretty quickly: new cops get added and old cops change
  # names or go into new namespaces. This is a library and we don't have
  # `Gemfile.lock` checked in, so to prevent good builds from suddenly going
  # bad, pin to a specific version number here. Try to keep this relatively
  # up-to-date, but it's not the end of the world if it's not.
  gem "rubocop", "0.73"

  platforms :mri do
    gem "byebug"
    gem "pry"
    gem "pry-byebug"
  end
end
