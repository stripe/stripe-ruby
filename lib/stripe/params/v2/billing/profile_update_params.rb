# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class ProfileUpdateParams < ::Stripe::RequestParams
        # The ID of the payment method object.
        attr_accessor :default_payment_method
        # A customer-facing name for the billing profile.
        # Maximum length of 250 characters.
        # To remove the display_name from the object, set it to null in the request.
        attr_accessor :display_name
        # An internal key you can use to search for a particular billing profile. It must be unique among billing profiles for a given customer.
        # Maximum length of 200 characters.
        # To remove the lookup_key from the object, set it to null in the request.
        attr_accessor :lookup_key
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_accessor :metadata

        def initialize(
          default_payment_method: nil,
          display_name: nil,
          lookup_key: nil,
          metadata: nil
        )
          @default_payment_method = default_payment_method
          @display_name = display_name
          @lookup_key = lookup_key
          @metadata = metadata
        end
      end
    end
  end
end
