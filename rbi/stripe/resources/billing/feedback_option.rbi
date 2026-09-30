# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    # A feedback option is a reason you can present to customers when they cancel a
    # subscription through the customer portal. Configure the set of options a customer
    # can choose from on a [portal configuration](https://docs.stripe.com/api/customer_portal/configuration).
    #
    # Related guide: [Customer management](https://docs.stripe.com/customer-management)
    class FeedbackOption < APIResource
      class StatusTransitions < ::Stripe::StripeObject
        # The time the feedback option was deactivated, if any. Measured in seconds since Unix epoch.
        sig { returns(T.nilable(Integer)) }
        def deactivated_at; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(String) }
      def description; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      sig { returns(T::Boolean) }
      def livemode; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The feedback option's status.
      sig { returns(String) }
      def status; end
      # Attribute for field status_transitions
      sig { returns(StatusTransitions) }
      def status_transitions; end
      # Creates a new feedback option.
      sig {
        params(params: T.any(::Stripe::Billing::FeedbackOptionCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Billing::FeedbackOption)
       }
      def self.create(params = {}, opts = {}); end

      # Deactivates a feedback option. Deactivated feedback options cannot be used in portal configurations.
      sig {
        params(params: T.any(::Stripe::Billing::FeedbackOptionDeactivateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Billing::FeedbackOption)
       }
      def deactivate(params = {}, opts = {}); end

      # Deactivates a feedback option. Deactivated feedback options cannot be used in portal configurations.
      sig {
        params(id: String, params: T.any(::Stripe::Billing::FeedbackOptionDeactivateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Billing::FeedbackOption)
       }
      def self.deactivate(id, params = {}, opts = {}); end

      # Returns a list of your feedback options.
      sig {
        params(params: T.any(::Stripe::Billing::FeedbackOptionListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # Updates the description of an existing feedback option.
      sig {
        params(id: String, params: T.any(::Stripe::Billing::FeedbackOptionUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Billing::FeedbackOption)
       }
      def self.update(id, params = {}, opts = {}); end
    end
  end
end