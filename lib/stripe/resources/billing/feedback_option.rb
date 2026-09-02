# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    # A feedback option is a reason you can present to customers when they cancel a
    # subscription through the customer portal. Configure the set of options a customer
    # can choose from on a [portal configuration](https://docs.stripe.com/api/customer_portal/configuration).
    #
    # Related guide: [Customer management](https://docs.stripe.com/customer-management)
    class FeedbackOption < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "billing.feedback_option"
      def self.object_name
        "billing.feedback_option"
      end

      class StatusTransitions < ::Stripe::StripeObject
        # The time the feedback option was deactivated, if any. Measured in seconds since Unix epoch.
        attr_reader :deactivated_at

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_reader :description
      # Unique identifier for the object.
      attr_reader :id
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The feedback option's status.
      attr_reader :status
      # Attribute for field status_transitions
      attr_reader :status_transitions

      # Creates a new feedback option.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/billing/feedback_options",
          params: params,
          opts: opts
        )
      end

      # Deactivates a feedback option. Deactivated feedback options cannot be used in portal configurations.
      def deactivate(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/feedback_options/%<id>s/deactivate", { id: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Deactivates a feedback option. Deactivated feedback options cannot be used in portal configurations.
      def self.deactivate(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/feedback_options/%<id>s/deactivate", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      # Returns a list of your feedback options.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/billing/feedback_options",
          params: params,
          opts: opts
        )
      end

      # Updates the description of an existing feedback option.
      def self.update(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/feedback_options/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      def self.inner_class_types
        @inner_class_types = { status_transitions: StatusTransitions }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
