# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class RateCardSubscriptionUpdateParams < ::Stripe::RequestParams
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_accessor :metadata

        def initialize(metadata: nil)
          @metadata = metadata
        end
      end
    end
  end
end
