# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class CadenceListParams < ::Stripe::RequestParams
        class Payer < ::Stripe::RequestParams
          # The ID of the Customer object. If provided, only cadences that specifically reference the provided customer ID will be returned.
          attr_accessor :customer
          # A string identifying the type of the payer. Currently the only supported value is `customer`.
          attr_accessor :type

          def initialize(customer: nil, type: nil)
            @customer = customer
            @type = type
          end
        end
        # Additional resource to include in the response.
        attr_accessor :include
        # Optionally set the maximum number of results per page. Defaults to 20.
        attr_accessor :limit
        # Only return the cadences with these lookup_keys, if any exist. You can specify up to 10 lookup_keys.
        # Mutually exclusive with `test_clock` and `payer`.
        attr_accessor :lookup_keys
        # If provided, only cadences that specifically reference the payer will be returned. Mutually exclusive with `test_clock` and `lookup_keys`.
        attr_accessor :payer
        # If provided, only cadences that specifically reference the provided test clock ID (via the
        # customer's test clock) will be returned.
        # Mutually exclusive with `payer`.
        attr_accessor :test_clock

        def initialize(include: nil, limit: nil, lookup_keys: nil, payer: nil, test_clock: nil)
          @include = include
          @limit = limit
          @lookup_keys = lookup_keys
          @payer = payer
          @test_clock = test_clock
        end
      end
    end
  end
end
