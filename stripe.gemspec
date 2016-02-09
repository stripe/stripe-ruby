$:.unshift(File.join(File.dirname(__FILE__), 'lib'))

require 'stripe/version'

spec = Gem::Specification.new do |s|
  s.name = 'stripe'
  s.version = Stripe::VERSION
  s.required_ruby_version = '>= 1.9.3'
  s.summary = 'Ruby bindings for the Stripe API'
  s.description = 'Stripe is the easiest way to accept payments online.  See https://stripe.com for details.'
  s.authors = ['Ross Boucher', 'Greg Brockman']
  s.email = ['boucher@stripe.com', 'gdb@stripe.com']
  s.homepage = 'https://stripe.com/api'
  s.license = 'MIT'

  s.add_dependency('rest-client', '~> 1.4')

  s.add_development_dependency('mocha', '~> 0.13.2')
  s.add_development_dependency('shoulda', '~> 3.4.0')
  s.add_development_dependency('test-unit')
  s.add_development_dependency('rake')

  # to avoid problems, bring Byebug in on just versions of Ruby under which
  # it's known to work well
  if Gem::Version.new(RUBY_VERSION.dup) >= Gem::Version.new('2.0.0')
    s.add_development_dependency("byebug")
    s.add_development_dependency("pry")
    s.add_development_dependency("pry-byebug")
  end

  s.files = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
end
