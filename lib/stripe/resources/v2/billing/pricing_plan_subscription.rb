# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class PricingPlanSubscription < APIResource
        OBJECT_NAME = "v2.billing.pricing_plan_subscription"
        def self.object_name
          "v2.billing.pricing_plan_subscription"
        end

        class CollectionStatusTransitions < Stripe::StripeObject
          # When the collection status transitioned to awaiting customer action.
          attr_reader :awaiting_customer_action_at
          # When the collection status transitioned to current.
          attr_reader :current_at
          # When the collection status transitioned to past due.
          attr_reader :past_due_at
          # When the collection status transitioned to paused.
          attr_reader :paused_at
          # When the collection status transitioned to unpaid.
          attr_reader :unpaid_at
        end

        class ServicingStatusTransitions < Stripe::StripeObject
          # When the servicing status transitioned to activated.
          attr_reader :activated_at
          # When the servicing status transitioned to canceled.
          attr_reader :canceled_at
          # When the servicing status transitioned to paused.
          attr_reader :paused_at
        end
        # The ID of the Billing Cadence this subscription is billed on.
        attr_reader :billing_cadence
        # Current collection status of this subscription.
        attr_reader :collection_status
        # Timestamps for collection status transitions.
        attr_reader :collection_status_transitions
        # Time at which the object was created.
        attr_reader :created
        # Unique identifier for the object.
        attr_reader :id
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The ID of the Pricing Plan for this subscription.
        attr_reader :pricing_plan
        # The ID of the Pricing Plan Version for this subscription.
        attr_reader :pricing_plan_version
        # Current servicing status of this subscription.
        attr_reader :servicing_status
        # Timestamps for servicing status transitions.
        attr_reader :servicing_status_transitions
        # The ID of the Test Clock of the associated Billing Cadence, if any.
        attr_reader :test_clock
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
      end
    end
  end
end
