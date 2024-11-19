# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class Event < APIResource
      OBJECT_NAME = "v2.core.event"
      def self.object_name
        "v2.core.event"
      end

      class Reason < Stripe::StripeObject
        class Request < Stripe::StripeObject
          attr_reader :id, :idempotency_key
        end
        attr_reader :type, :request
      end
      # Authentication context needed to fetch the event or related object.
      attr_reader :context
      # Time at which the object was created.
      attr_reader :created
      # Unique identifier for the event.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value of the object field.
      attr_reader :object
      # Reason for the event.
      attr_reader :reason
      # The type of the event.
      attr_reader :type
    end
  end
end
