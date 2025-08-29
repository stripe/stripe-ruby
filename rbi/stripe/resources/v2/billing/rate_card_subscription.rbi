# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class RateCardSubscription < APIResource
        class CollectionStatusTransitions < Stripe::StripeObject
          # When the collection status transitioned to awaiting customer action.
          sig { returns(T.nilable(String)) }
          attr_reader :awaiting_customer_action_at
          # When the collection status transitioned to current.
          sig { returns(T.nilable(String)) }
          attr_reader :current_at
          # When the collection status transitioned to past due.
          sig { returns(T.nilable(String)) }
          attr_reader :past_due_at
          # When the collection status transitioned to paused.
          sig { returns(T.nilable(String)) }
          attr_reader :paused_at
          # When the collection status transitioned to unpaid.
          sig { returns(T.nilable(String)) }
          attr_reader :unpaid_at
        end
        class ServicingStatusTransitions < Stripe::StripeObject
          # When the servicing status transitioned to activated.
          sig { returns(T.nilable(String)) }
          attr_reader :activated_at
          # When the servicing status transitioned to canceled.
          sig { returns(T.nilable(String)) }
          attr_reader :canceled_at
          # When the servicing status transitioned to paused.
          sig { returns(T.nilable(String)) }
          attr_reader :paused_at
        end
        # The ID of the Billing Cadence.
        sig { returns(String) }
        attr_reader :billing_cadence
        # The payment status of a Rate Card Subscription.
        sig { returns(T.nilable(String)) }
        attr_reader :collection_status
        # The collection status transitions of the Rate Card Subscription.
        sig { returns(T.nilable(CollectionStatusTransitions)) }
        attr_reader :collection_status_transitions
        # Timestamp of when the object was created.
        sig { returns(String) }
        attr_reader :created
        # Unique identifier for the object.
        sig { returns(String) }
        attr_reader :id
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # The ID of the Rate Card.
        sig { returns(String) }
        attr_reader :rate_card
        # The ID of the Rate Card Version.
        sig { returns(String) }
        attr_reader :rate_card_version
        # The servicing status of a Rate Card Subscription.
        sig { returns(T.nilable(String)) }
        attr_reader :servicing_status
        # The servicing status transitions of the Rate Card Subscription.
        sig { returns(T.nilable(ServicingStatusTransitions)) }
        attr_reader :servicing_status_transitions
        # The ID of the Test Clock, if any.
        sig { returns(T.nilable(String)) }
        attr_reader :test_clock
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        attr_reader :livemode
      end
    end
  end
end