# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      # A Rate Card Version represents a specific configuration of a Rate Card at a point in time. Versions are created automatically
      # when you add or modify rates on a Rate Card, allowing you to track changes and manage which version is active for new
      # subscriptions. Each version maintains a record of when it was created.
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

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
