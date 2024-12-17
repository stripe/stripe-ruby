# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    class Event < APIResource
      class Reason < Stripe::StripeObject
        class Request < Stripe::StripeObject
          # ID of the API request that caused the event.
          sig { returns(String) }
          attr_reader :id
          # The idempotency key transmitted during the request.
          sig { returns(String) }
          attr_reader :idempotency_key
        end
        # Event reason type.
        sig { returns(String) }
        attr_reader :type
        # Information on the API request that instigated the event.
        sig { returns(T.nilable(Request)) }
        attr_reader :request
      end
      # Authentication context needed to fetch the event or related object.
      sig { returns(T.nilable(String)) }
      attr_reader :context
      # Time at which the object was created.
      sig { returns(String) }
      attr_reader :created
      # Unique identifier for the event.
      sig { returns(String) }
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value of the object field.
      sig { returns(String) }
      attr_reader :object
      # Reason for the event.
      sig { returns(T.nilable(Reason)) }
      attr_reader :reason
      # The type of the event.
      sig { returns(String) }
      attr_reader :type
    end
  end
end