# frozen_string_literal: true

require "stripe"
require "date"

class NewExample
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

example = NewExample.new(api_key)
example.do_something_great
