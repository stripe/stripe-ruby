# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # As a [card issuer](https://stripe.com/docs/issuing), you can dispute transactions that the cardholder does not recognize, suspects to be fraudulent, or has other issues with.
    #
    # Related guide: [Disputing Transactions](https://stripe.com/docs/issuing/purchases/disputes)
    class Dispute < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "issuing.dispute"

      def submit(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/disputes/%<dispute>s/submit", { dispute: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      def self.submit(dispute, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/disputes/%<dispute>s/submit", { dispute: CGI.escape(dispute) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
