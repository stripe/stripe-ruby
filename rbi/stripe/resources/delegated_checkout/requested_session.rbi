# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module DelegatedCheckout
    # A requested session is a session that has been requested by a customer.
    class RequestedSession < APIResource
      class FulfillmentDetails < ::Stripe::StripeObject
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      def currency; end
      # The customer for this requested session.
      sig { returns(T.nilable(String)) }
      def customer; end
      # Attribute for field fulfillment_details
      sig { returns(T.nilable(FulfillmentDetails)) }
      def fulfillment_details; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # Confirms a requested session
      sig {
        params(params: T.any(::Stripe::DelegatedCheckout::RequestedSessionConfirmParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::DelegatedCheckout::RequestedSession)
       }
      def confirm(params = {}, opts = {}); end

      # Confirms a requested session
      sig {
        params(requested_session: String, params: T.any(::Stripe::DelegatedCheckout::RequestedSessionConfirmParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::DelegatedCheckout::RequestedSession)
       }
      def self.confirm(requested_session, params = {}, opts = {}); end

      # Creates a requested session
      sig {
        params(params: T.any(::Stripe::DelegatedCheckout::RequestedSessionCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::DelegatedCheckout::RequestedSession)
       }
      def self.create(params = {}, opts = {}); end

      # Expires a requested session
      sig {
        params(params: T.any(::Stripe::DelegatedCheckout::RequestedSessionExpireParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::DelegatedCheckout::RequestedSession)
       }
      def expire(params = {}, opts = {}); end

      # Expires a requested session
      sig {
        params(requested_session: String, params: T.any(::Stripe::DelegatedCheckout::RequestedSessionExpireParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::DelegatedCheckout::RequestedSession)
       }
      def self.expire(requested_session, params = {}, opts = {}); end

      # Updates a requested session
      sig {
        params(requested_session: String, params: T.any(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::DelegatedCheckout::RequestedSession)
       }
      def self.update(requested_session, params = {}, opts = {}); end
    end
  end
end