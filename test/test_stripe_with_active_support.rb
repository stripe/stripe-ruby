require 'active_support'
ActiveSupport.autoloads.each_key {|sym| ActiveSupport.const_get(sym)}
load File.expand_path(File.join(File.dirname(__FILE__), 'test_stripe.rb'))
