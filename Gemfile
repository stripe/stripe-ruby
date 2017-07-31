source "https://rubygems.org"

gemspec

group :development do
  gem 'mocha', '~> 0.13.2'
  gem 'rake'
  gem 'shoulda-context'
  gem 'test-unit'
  gem 'webmock'

  # Rack 2.0+ requires Ruby >= 2.2.2 which is problematic for the test suite on
  # older Ruby versions. Check Ruby the version here and put a maximum
  # constraint on Rack if necessary.
  if RUBY_VERSION >= '2.2.2'
    gem "rack", ">= 1.5"
  else
    gem "rack", ">= 1.5", "< 2.0"
  end

  platforms :mri do
    # to avoid problems, bring Byebug in on just versions of Ruby under which
    # it's known to work well
    if Gem::Version.new(RUBY_VERSION.dup) >= Gem::Version.new('2.0.0')
      gem 'byebug'
      gem 'pry'
      gem 'pry-byebug'
    end
  end
end
