# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class RateCardUpdateParams < Stripe::RequestParams
        # Sets whether the RateCard is active. Inactive RateCards cannot be used in new activations or have new rates added.
        attr_accessor :active
        # A customer-facing name for the RateCard.
        # This name is used in Stripe-hosted products like the Customer Portal and Checkout. It does not show up on Invoices.
        # Maximum length of 250 characters.
        attr_accessor :display_name
        # Changes the version that new RateCard activations will use. Providing `live_version = "latest"` will set the
        # RateCard's `live_version` to its latest version.
        attr_accessor :live_version
        # An internal key you can use to search for a particular RateCard. Maximum length of 200 characters.
        attr_accessor :lookup_key
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_accessor :metadata

        def initialize(
          active: nil,
          display_name: nil,
          live_version: nil,
          lookup_key: nil,
          metadata: nil
        )
          @active = active
          @display_name = display_name
          @live_version = live_version
          @lookup_key = lookup_key
          @metadata = metadata
        end
      end
    end
  end
end
