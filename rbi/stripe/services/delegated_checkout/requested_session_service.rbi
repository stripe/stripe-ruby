# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module DelegatedCheckout
    class RequestedSessionService < StripeService
      # Confirms a requested session
      sig {
        params(requested_session: String, params: T.any(::Stripe::DelegatedCheckout::RequestedSessionConfirmParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::DelegatedCheckout::RequestedSession)
       }
      def confirm(requested_session, params = {}, opts = {}); end

      # Creates a requested session
      sig {
        params(params: T.any(::Stripe::DelegatedCheckout::RequestedSessionCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::DelegatedCheckout::RequestedSession)
       }
      def create(params = {}, opts = {}); end

      # Expires a requested session
      sig {
        params(requested_session: String, params: T.any(::Stripe::DelegatedCheckout::RequestedSessionExpireParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::DelegatedCheckout::RequestedSession)
       }
      def expire(requested_session, params = {}, opts = {}); end

      # Retrieves a requested session
      sig {
        params(requested_session: String, params: T.any(::Stripe::DelegatedCheckout::RequestedSessionRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::DelegatedCheckout::RequestedSession)
       }
      def retrieve(requested_session, params = {}, opts = {}); end

      # Updates a requested session
      sig {
        params(requested_session: String, params: T.any(::Stripe::DelegatedCheckout::RequestedSessionUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::DelegatedCheckout::RequestedSession)
       }
      def update(requested_session, params = {}, opts = {}); end
    end
  end
end