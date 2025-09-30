# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class ProfileListParams < Stripe::RequestParams
        # Filter billing profiles by a customer. Mutually exclusive
        # with `lookup_keys` and `default_payment_method`.
        attr_accessor :customer
        # Filter billing profiles by a default payment method. Mutually exclusive
        # with `customer` and `lookup_keys`.
        attr_accessor :default_payment_method
        # Optionally set the maximum number of results per page. Defaults to 10.
        attr_accessor :limit
        # Filter billing profiles by lookup keys. Mutually exclusive
        # with `customer` and `default_payment_method`.
        # You can specify up to 10 lookup_keys.
        attr_accessor :lookup_keys
        # Filter billing profiles by status. Can be combined
        # with all other filters. If not provided, all billing profiles will be returned.
        attr_accessor :status

        def initialize(
          customer: nil,
          default_payment_method: nil,
          limit: nil,
          lookup_keys: nil,
          status: nil
        )
          @customer = customer
          @default_payment_method = default_payment_method
          @limit = limit
          @lookup_keys = lookup_keys
          @status = status
        end
      end
    end
  end
end
