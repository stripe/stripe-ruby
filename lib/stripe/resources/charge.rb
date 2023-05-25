# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # The `Charge` object represents a single attempt to move money into your Stripe account.
  # PaymentIntent confirmation is the most common way to create Charges, but transferring
  # money to a different Stripe account through Connect also creates Charges.
  # Some legacy payment flows create Charges directly, which is not recommended for new integrations.
  class Charge < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::Search
    include Stripe::APIOperations::Save

    OBJECT_NAME = "charge"

    def capture(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/charges/%<charge>s/capture", { charge: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def self.capture(charge, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/charges/%<charge>s/capture", { charge: CGI.escape(charge) }),
        params: params,
        opts: opts
      )
    end

    def self.search(params = {}, opts = {})
      _search("/v1/charges/search", params, opts)
    end

    def self.search_auto_paging_each(params = {}, opts = {}, &blk)
      search(params, opts).auto_paging_each(&blk)
    end
  end
end
