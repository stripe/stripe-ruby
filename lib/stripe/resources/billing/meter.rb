# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    # A billing meter is a resource that allows you to track usage of a particular event. For example, you might create a billing meter to track the number of API calls made by a particular user. You can then attach the billing meter to a price and attach the price to a subscription to charge the user for the number of API calls they make.
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
