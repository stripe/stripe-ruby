# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Payments
      class OffSessionPaymentUpdateParams < ::Stripe::RequestParams
        # An arbitrary string attached to the payment. Set to null to clear the description.
        attr_accessor :description
        # Set of key-value pairs attached to the payment. Existing keys are preserved unless
        # explicitly changed. Set an individual key to null to remove it.
        attr_accessor :metadata

        def initialize(description: nil, metadata: nil)
          @description = description
          @metadata = metadata
        end
      end
    end
  end
end
