# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class GroupListParams < ::Stripe::RequestParams
        # Filter billing groups by Customer ID. Mutually exclusive with test_clock.
        attr_accessor :customer
        # The maximum number of results per page. Defaults to 10.
        attr_accessor :limit
        # Filter billing groups by lookup keys. You can specify up to 10 lookup keys.
        attr_accessor :lookup_keys
        # Filter billing groups by TestClock ID. Mutually exclusive with customer.
        attr_accessor :test_clock

        def initialize(customer: nil, limit: nil, lookup_keys: nil, test_clock: nil)
          @customer = customer
          @limit = limit
          @lookup_keys = lookup_keys
          @test_clock = test_clock
        end
      end
    end
  end
end
