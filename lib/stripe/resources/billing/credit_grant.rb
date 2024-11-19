# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    # A credit grant is an API resource that documents the allocation of some billing credits to a customer.
    #
    # Related guide: [Billing credits](https://docs.stripe.com/billing/subscriptions/usage-based/billing-credits)
    class CreditGrant < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "billing.credit_grant"
      def self.object_name
        "billing.credit_grant"
      end

      class Amount < Stripe::StripeObject
        class Monetary < Stripe::StripeObject
          attr_reader :currency, :value
        end
        attr_reader :monetary, :type
      end

      class ApplicabilityConfig < Stripe::StripeObject
        class Scope < Stripe::StripeObject
          attr_reader :price_type
        end
        attr_reader :scope
      end
      # Attribute for field amount
      attr_reader :amount
      # Attribute for field applicability_config
      attr_reader :applicability_config
      # The category of this credit grant. This is for tracking purposes and isn't displayed to the customer.
      attr_reader :category
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # ID of the customer receiving the billing credits.
      attr_reader :customer
      # The time when the billing credits become effective—when they're eligible for use.
      attr_reader :effective_at
      # The time when the billing credits expire. If not present, the billing credits don't expire.
      attr_reader :expires_at
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # A descriptive name shown in dashboard.
      attr_reader :name
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # ID of the test clock this credit grant belongs to.
      attr_reader :test_clock
      # Time at which the object was last updated. Measured in seconds since the Unix epoch.
      attr_reader :updated
      # The time when this credit grant was voided. If not present, the credit grant hasn't been voided.
      attr_reader :voided_at

      # Creates a credit grant
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/billing/credit_grants",
          params: params,
          opts: opts
        )
      end

      # Expires a credit grant.
      def expire(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/credit_grants/%<id>s/expire", { id: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Expires a credit grant.
      def self.expire(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/credit_grants/%<id>s/expire", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      # Retrieve a list of credit grants.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/billing/credit_grants",
          params: params,
          opts: opts
        )
      end

      # Updates a credit grant
      def self.update(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/credit_grants/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      # Voids a credit grant.
      def void_grant(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/credit_grants/%<id>s/void", { id: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Voids a credit grant.
      def self.void_grant(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/billing/credit_grants/%<id>s/void", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
