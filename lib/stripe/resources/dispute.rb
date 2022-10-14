# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A dispute occurs when a customer questions your charge with their card issuer.
  # When this happens, you're given the opportunity to respond to the dispute with
  # evidence that shows that the charge is legitimate. You can find more
  # information about the dispute process in our [Disputes and
  # Fraud](https://stripe.com/docs/disputes) documentation.
  #
  # Related guide: [Disputes and Fraud](https://stripe.com/docs/disputes).
  class Dispute < APIResource
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "dispute"

    def close(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/disputes/%<dispute>s/close", { dispute: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def self.close(dispute, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/disputes/%<dispute>s/close", { dispute: CGI.escape(dispute) }),
        params: params,
        opts: opts
      )
    end
  end
end
