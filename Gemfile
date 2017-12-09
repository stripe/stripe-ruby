source "https://rubygems.org"

gemspec

group :development do
  gem "coveralls", require: false
  gem "mocha", "~> 0.13.2"
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
  gem "rubocop", "0.50.0"

  # Rack 2.0+ requires Ruby >= 2.2.2 which is problematic for the test suite on
  # older Ruby versions. Check Ruby the version here and put a maximum
  # constraint on Rack if necessary.
  if RUBY_VERSION >= "2.2.2"
    gem "rack", ">= 1.5"
  else
    gem "rack", ">= 1.5", "< 2.0" # rubocop:disable Bundler/DuplicatedGem
  end

  platforms :mri do
    # to avoid problems, bring Byebug in on just versions of Ruby under which
    # it's known to work well
    if Gem::Version.new(RUBY_VERSION.dup) >= Gem::Version.new("2.0.0")
      gem "byebug"
      gem "pry"
      gem "pry-byebug"
    end
  end
end
