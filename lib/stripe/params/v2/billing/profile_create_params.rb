# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class ProfileCreateParams < Stripe::RequestParams
        # The ID of the customer object.
        attr_accessor :customer
        # The ID of the payment method object.
        attr_accessor :default_payment_method
        # A customer-facing name for the billing profile.
        # Maximum length of 250 characters.
        attr_accessor :display_name
        # An internal key you can use to search for a particular billing profile. It must be unique among billing profiles for a given customer.
        # Maximum length of 200 characters.
        attr_accessor :lookup_key
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_accessor :metadata

        def initialize(
          customer: nil,
          default_payment_method: nil,
          display_name: nil,
          lookup_key: nil,
          metadata: nil
        )
          @customer = customer
          @default_payment_method = default_payment_method
          @display_name = display_name
          @lookup_key = lookup_key
          @metadata = metadata
        end
      end
    end
  end
end
