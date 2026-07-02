# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Crypto
    class OnrampSessionService < StripeService
      # Completes a headless CryptoOnrampSession.
      #
      # This method will attempt to confirm the payment and execute the quote to deliver the crypto to the customer.
      sig {
        params(id: String, params: T.any(::Stripe::Crypto::OnrampSessionCheckoutParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Crypto::OnrampSession)
       }
      def checkout(id, params = {}, opts = {}); end

      # Creates a CryptoOnrampSession object.
      #
      # After the CryptoOnrampSession is created, display the onramp session modal using the client_secret.
      #
      # Related guide: [Set up an onramp integration](https://docs.stripe.com/docs/crypto/integrate-the-onramp)
      sig {
        params(params: T.any(::Stripe::Crypto::OnrampSessionCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Crypto::OnrampSession)
       }
      def create(params = {}, opts = {}); end

      # Returns a list of onramp sessions that match the filter criteria. The onramp sessions are returned in sorted order, with the most recent onramp sessions appearing first.
      sig {
        params(params: T.any(::Stripe::Crypto::OnrampSessionListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Refreshes an executable quote for a CryptoOnrampSession.
      sig {
        params(id: String, params: T.any(::Stripe::Crypto::OnrampSessionQuoteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Crypto::OnrampSession)
       }
      def quote(id, params = {}, opts = {}); end

      # Retrieves the details of a CryptoOnrampSession that was previously created.
      sig {
        params(id: String, params: T.any(::Stripe::Crypto::OnrampSessionRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Crypto::OnrampSession)
       }
      def retrieve(id, params = {}, opts = {}); end
    end
  end
end