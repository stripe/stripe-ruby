# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Crypto
    class OnrampSessionService < StripeService
      # Completes a headless CryptoOnrampSession.
      #
      # This method will attempt to confirm the payment and execute the quote to deliver the crypto to the customer.
      def checkout(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/crypto/onramp_sessions/%<id>s/checkout", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Creates a CryptoOnrampSession object.
      #
      # After the CryptoOnrampSession is created, display the onramp session modal using the client_secret.
      #
      # Related guide: [Set up an onramp integration](https://docs.stripe.com/docs/crypto/integrate-the-onramp)
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/crypto/onramp_sessions",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Returns a list of onramp sessions that match the filter criteria. The onramp sessions are returned in sorted order, with the most recent onramp sessions appearing first.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/crypto/onramp_sessions",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Refreshes an executable quote for a CryptoOnrampSession.
      def quote(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/crypto/onramp_sessions/%<id>s/quote", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves the details of a CryptoOnrampSession that was previously created.
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/crypto/onramp_sessions/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
