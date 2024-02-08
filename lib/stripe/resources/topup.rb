# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # To top up your Stripe balance, you create a top-up object. You can retrieve
  # individual top-ups, as well as list all top-ups. Top-ups are identified by a
  # unique, random ID.
  #
  # Related guide: [Topping up your platform account](https://stripe.com/docs/connect/top-ups)
  class Topup < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "topup"

    # Cancels a top-up. Only pending top-ups can be canceled.
    def cancel(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/topups/%<topup>s/cancel", { topup: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Cancels a top-up. Only pending top-ups can be canceled.
    def self.cancel(topup, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/topups/%<topup>s/cancel", { topup: CGI.escape(topup) }),
        params: params,
        opts: opts
      )
    end

    # Top up the balance of an account
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/topups", params: params, opts: opts)
    end

    # Returns a list of top-ups.
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/topups", params: filters, opts: opts)
    end

    # Updates the metadata of a top-up. Other top-up details are not editable by design.
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/topups/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
