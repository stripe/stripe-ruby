# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class Event < APIResource
      class Reason < Stripe::StripeObject
        class Request < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :id
          sig { returns(String) }
          attr_reader :idempotency_key
        end
        sig { returns(String) }
        attr_reader :type
        sig { returns(T.nilable(Request)) }
        attr_reader :request
      end
      sig { returns(T.nilable(String)) }
      # Authentication context needed to fetch the event or related object.
      attr_reader :context
      sig { returns(String) }
      # Time at which the object was created.
      attr_reader :created
      sig { returns(String) }
      # Unique identifier for the event.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value of the object field.
      attr_reader :object
      sig { returns(T.nilable(Reason)) }
      # Reason for the event.
      attr_reader :reason
      sig { returns(String) }
      # The type of the event.
      attr_reader :type
    end
  end
end