# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    # A billing meter is a resource that allows you to track usage of a particular event. For example, you might create a billing meter to track the number of API calls made by a particular user. You can then attach the billing meter to a price and attach the price to a subscription to charge the user for the number of API calls they make.
    #
    # Related guide: [Usage based billing](https://docs.stripe.com/billing/subscriptions/usage-based)
    class Meter < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      extend Stripe::APIOperations::NestedResource
      include Stripe::APIOperations::Save

      OBJECT_NAME = "billing.meter"
      def self.object_name
        "billing.meter"
      end

      nested_resource_class_methods :event_summary,
                                    operations: %i[list],
                                    resource_plural: "event_summaries"

      class CustomerMapping < Stripe::StripeObject
        # The key in the meter event payload to use for mapping the event to a customer.
        attr_reader :event_payload_key
        # The method for mapping a meter event to a customer.
        attr_reader :type
      end

      class DefaultAggregation < Stripe::StripeObject
        # Specifies how events are aggregated.
        attr_reader :formula
      end

      class StatusTransitions < Stripe::StripeObject
        # The time the meter was deactivated, if any. Measured in seconds since Unix epoch.
        attr_reader :deactivated_at
      end

      class ValueSettings < Stripe::StripeObject
        # The key in the meter event payload to use as the value for this meter.
        attr_reader :event_payload_key
      end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created

      # Attribute for field customer_mapping
      attr_reader :customer_mapping

      # Attribute for field default_aggregation
      attr_reader :default_aggregation

      # The meter's name.
      attr_reader :display_name

      # The name of the meter event to record usage for. Corresponds with the `event_name` field on meter events.
      attr_reader :event_name

      # The time window to pre-aggregate meter events for, if any.
      attr_reader :event_time_window

      # Unique identifier for the object.
      attr_reader :id

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode

      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object

      # The meter's status.
      attr_reader :status

      # Attribute for field status_transitions
      attr_reader :status_transitions

      # Time at which the object was last updated. Measured in seconds since the Unix epoch.
      attr_reader :updated

      # Attribute for field value_settings
      attr_reader :value_settings

      # Creates a billing meter
      def self.create(params = {}, opts = {})
        request_stripe_object(method: :post, path: "/v1/billing/meters", params: params, opts: opts)
      end

      # Deactivates a billing meter
      def deactivate(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/meters/%<id>s/deactivate", { id: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Deactivates a billing meter
      def self.deactivate(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/meters/%<id>s/deactivate", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      # Retrieve a list of billing meters.
      def self.list(filters = {}, opts = {})
        request_stripe_object(method: :get, path: "/v1/billing/meters", params: filters, opts: opts)
      end

      # Reactivates a billing meter
      def reactivate(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/meters/%<id>s/reactivate", { id: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Reactivates a billing meter
      def self.reactivate(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/meters/%<id>s/reactivate", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      # Updates a billing meter
      def self.update(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/meters/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
