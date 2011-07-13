require File.join(File.dirname(__FILE__), 'common')
require File.join(File.dirname(__FILE__), 'pure/parser')
require File.join(File.dirname(__FILE__), 'pure/generator')

module JSON
  # This module holds all the modules/classes that implement JSON's
  # functionality in pure ruby.
  module Pure
    $DEBUG and warn "Using Pure library for JSON."
    JSON.parser = Parser
    JSON.generator = Generator
  end

  JSON_LOADED = true unless defined?(::JSON::JSON_LOADED)
end

## Hacks needed to make to_json work
class Fixnum
  def to_json(options=nil)
    to_s
  end
end

class Integer
  def to_json(options=nil)
    to_s
  end
end
