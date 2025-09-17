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
          def awaiting_customer_action_at; end
          # When the collection status transitioned to current.
          sig { returns(T.nilable(String)) }
          def current_at; end
          # When the collection status transitioned to past due.
          sig { returns(T.nilable(String)) }
          def past_due_at; end
          # When the collection status transitioned to paused.
          sig { returns(T.nilable(String)) }
          def paused_at; end
          # When the collection status transitioned to unpaid.
          sig { returns(T.nilable(String)) }
          def unpaid_at; end
        end
        class ServicingStatusTransitions < Stripe::StripeObject
          # When the servicing status transitioned to activated.
          sig { returns(T.nilable(String)) }
          def activated_at; end
          # When the servicing status transitioned to canceled.
          sig { returns(T.nilable(String)) }
          def canceled_at; end
          # When the servicing status transitioned to paused.
          sig { returns(T.nilable(String)) }
          def paused_at; end
        end
        # The ID of the Billing Cadence.
        sig { returns(String) }
        def billing_cadence; end
        # The payment status of a Rate Card Subscription.
        sig { returns(T.nilable(String)) }
        def collection_status; end
        # The collection status transitions of the Rate Card Subscription.
        sig { returns(T.nilable(CollectionStatusTransitions)) }
        def collection_status_transitions; end
        # Timestamp of when the object was created.
        sig { returns(String) }
        def created; end
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The ID of the Rate Card.
        sig { returns(String) }
        def rate_card; end
        # The ID of the Rate Card Version.
        sig { returns(String) }
        def rate_card_version; end
        # The servicing status of a Rate Card Subscription.
        sig { returns(T.nilable(String)) }
        def servicing_status; end
        # The servicing status transitions of the Rate Card Subscription.
        sig { returns(T.nilable(ServicingStatusTransitions)) }
        def servicing_status_transitions; end
        # The ID of the Test Clock, if any.
        sig { returns(T.nilable(String)) }
        def test_clock; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end