# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A notice to a Connected account. Notice can be sent by Stripe on your behalf or you can opt to send the notices yourself.
  #
  # See the [guide to send notices](https://stripe.com/docs/issuing/compliance-us/issuing-regulated-customer-notices) to your connected accounts.
  class AccountNotice < APIResource
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "account_notice"

    # Retrieves a list of AccountNotice objects. The objects are sorted in descending order by creation date, with the most-recently-created object appearing first.
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/account_notices", params: filters, opts: opts)
    end

    # Updates an AccountNotice object.
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/account_notices/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
