# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module DelegatedCheckout
    # A requested session is a session that has been requested by a customer.
    class RequestedSession < APIResource
      extend Stripe::APIOperations::Create
      include Stripe::APIOperations::Save

      OBJECT_NAME = "delegated_checkout.requested_session"
      def self.object_name
        "delegated_checkout.requested_session"
      end

      class FulfillmentDetails < ::Stripe::StripeObject
        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # The customer for this requested session.
      attr_reader :customer
      # Attribute for field fulfillment_details
      attr_reader :fulfillment_details
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object

      # Confirms a requested session
      def confirm(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/delegated_checkout/requested_sessions/%<requested_session>s/confirm", { requested_session: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Confirms a requested session
      def self.confirm(requested_session, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/delegated_checkout/requested_sessions/%<requested_session>s/confirm", { requested_session: CGI.escape(requested_session) }),
          params: params,
          opts: opts
        )
      end

      # Creates a requested session
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/delegated_checkout/requested_sessions",
          params: params,
          opts: opts
        )
      end

      # Expires a requested session
      def expire(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/delegated_checkout/requested_sessions/%<requested_session>s/expire", { requested_session: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Expires a requested session
      def self.expire(requested_session, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/delegated_checkout/requested_sessions/%<requested_session>s/expire", { requested_session: CGI.escape(requested_session) }),
          params: params,
          opts: opts
        )
      end

      # Updates a requested session
      def self.update(requested_session, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/delegated_checkout/requested_sessions/%<requested_session>s", { requested_session: CGI.escape(requested_session) }),
          params: params,
          opts: opts
        )
      end

      def self.inner_class_types
        @inner_class_types = { fulfillment_details: FulfillmentDetails }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
