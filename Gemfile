source "https://rubygems.org"

gemspec

group :development do
  gem 'mocha', '~> 0.13.2'
  gem 'pry'
  gem 'rake'
  gem 'shoulda-context'
  gem 'test-unit'

  # mime-types has become only compatible with Ruby versions > 2 and we're
  # still supporting 1.9 for the time being. Lock to old versions of
  # mime-types and rest-client which are known to work in our Gemfile (it's
  # fine to use newer versions in live environments so we don't have these in
  # the gemspec).
  #
  #     https://github.com/travis-ci/travis-ci/issues/5145
  #
  gem 'mime-types', '2.6.2'
  gem 'rest-client', '1.8.0'

  platforms :mri do
    # to avoid problems, bring Byebug in on just versions of Ruby under which
    # it's known to work well
    if Gem::Version.new(RUBY_VERSION.dup) >= Gem::Version.new('2.0.0')
      gem 'byebug'
      gem 'pry-byebug'
    end
  end
end
