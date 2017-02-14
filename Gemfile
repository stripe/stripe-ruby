source "https://rubygems.org"

gemspec

group :development do
  gem 'mocha', '~> 0.13.2'
  gem 'rake'
  gem 'shoulda-context'
  gem 'test-unit'
  gem 'webmock'

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
