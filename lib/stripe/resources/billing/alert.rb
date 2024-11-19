# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    # A billing alert is a resource that notifies you when a certain usage threshold on a meter is crossed. For example, you might create a billing alert to notify you when a certain user made 100 API requests.
    class Alert < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List

      OBJECT_NAME = "billing.alert"
      def self.object_name
        "billing.alert"
      end

      class UsageThreshold < Stripe::StripeObject
        class Filter < Stripe::StripeObject
          attr_reader :customer, :type
        end
        attr_reader :filters, :gte, :meter, :recurrence
      end
      # Defines the type of the alert.
      attr_reader :alert_type
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Status of the alert. This can be active, inactive or archived.
      attr_reader :status
      # Title of the alert.
      attr_reader :title
      # Encapsulates configuration of the alert to monitor usage on a specific [Billing Meter](https://stripe.com/docs/api/billing/meter).
      attr_reader :usage_threshold

      # Reactivates this alert, allowing it to trigger again.
      def activate(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/alerts/%<id>s/activate", { id: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Reactivates this alert, allowing it to trigger again.
      def self.activate(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/alerts/%<id>s/activate", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      # Archives this alert, removing it from the list view and APIs. This is non-reversible.
      def archive(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/alerts/%<id>s/archive", { id: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Archives this alert, removing it from the list view and APIs. This is non-reversible.
      def self.archive(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/alerts/%<id>s/archive", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      # Creates a billing alert
      def self.create(params = {}, opts = {})
        request_stripe_object(method: :post, path: "/v1/billing/alerts", params: params, opts: opts)
      end

      # Deactivates this alert, preventing it from triggering.
      def deactivate(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/alerts/%<id>s/deactivate", { id: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Deactivates this alert, preventing it from triggering.
      def self.deactivate(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/alerts/%<id>s/deactivate", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      # Lists billing active and inactive alerts
      def self.list(params = {}, opts = {})
        request_stripe_object(method: :get, path: "/v1/billing/alerts", params: params, opts: opts)
      end
    end
  end
end
