# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class RateCardVersion < APIResource
        OBJECT_NAME = "v2.billing.rate_card_version"
        def self.object_name
          "v2.billing.rate_card_version"
        end

        # Timestamp of when the object was created.
        attr_reader :created
        # Unique identifier for the object.
        attr_reader :id
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The ID of the Rate Card that this version belongs to.
        attr_reader :rate_card_id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
      end
    end
  end
end
