# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A dispute occurs when a customer questions your charge with their card issuer.
  # When this happens, you have the opportunity to respond to the dispute with
  # evidence that shows that the charge is legitimate.
  #
  # Related guide: [Disputes and fraud](https://stripe.com/docs/disputes)
  class Dispute < APIResource
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "dispute"

    # Closing the dispute for a charge indicates that you do not have any evidence to submit and are essentially dismissing the dispute, acknowledging it as lost.
    #
    # The status of the dispute will change from needs_response to lost. Closing a dispute is irreversible.
    def close(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/disputes/%<dispute>s/close", { dispute: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Closing the dispute for a charge indicates that you do not have any evidence to submit and are essentially dismissing the dispute, acknowledging it as lost.
    #
    # The status of the dispute will change from needs_response to lost. Closing a dispute is irreversible.
    def self.close(dispute, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/disputes/%<dispute>s/close", { dispute: CGI.escape(dispute) }),
        params: params,
        opts: opts
      )
    end

    # Returns a list of your disputes.
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/disputes", params: filters, opts: opts)
    end

    # When you get a dispute, contacting your customer is always the best first step. If that doesn't work, you can submit evidence to help us resolve the dispute in your favor. You can do this in your [dashboard](https://dashboard.stripe.com/disputes), but if you prefer, you can use the API to submit evidence programmatically.
    #
    # Depending on your dispute type, different evidence fields will give you a better chance of winning your dispute. To figure out which evidence fields to provide, see our [guide to dispute types](https://stripe.com/docs/disputes/categories).
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/disputes/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
