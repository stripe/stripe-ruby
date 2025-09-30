# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class RateCardSubscriptionCreateParams < Stripe::RequestParams
        # The ID of the Billing Cadence.
        attr_accessor :billing_cadence
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_accessor :metadata
        # The ID of the Rate Card.
        attr_accessor :rate_card
        # The ID of the Rate Card Version. If not specified, defaults to the "live_version" of the Rate Card at the time of creation.
        attr_accessor :rate_card_version

        def initialize(billing_cadence: nil, metadata: nil, rate_card: nil, rate_card_version: nil)
          @billing_cadence = billing_cadence
          @metadata = metadata
          @rate_card = rate_card
          @rate_card_version = rate_card_version
        end
      end
    end
  end
end
