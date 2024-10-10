# frozen_string_literal: true

# example_template.py - This is a template for defining new examples.  It is not intended to be used directly.
#
# <describe what this example does>
#
# In this example, we:
#   - <key step 1>
#   - <key step 2
#   - ...
#
# <describe assumptions about the user's stripe account, environment, or configuration;
# or things to watch out for when running>

require "stripe"
require "date"

class ExampleTemplate
  attr_accessor :api_key

  def initialize(api_key)
    @api_key = api_key
  end

  def do_something_great
    puts "Hello World"
    # client = Stripe::StripeClient.new(api_key)
    # client.v1
  end
end

# Send meter events
api_key = "{{API_KEY}}"

example = ExampleTemplate.new(api_key)
example.do_something_great
