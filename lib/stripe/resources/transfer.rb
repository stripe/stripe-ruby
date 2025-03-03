# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A `Transfer` object is created when you move funds between Stripe accounts as
  # part of Connect.
  #
  # Before April 6, 2017, transfers also represented movement of funds from a
  # Stripe account to a card or bank account. This behavior has since been split
  # out into a [Payout](https://stripe.com/docs/api#payout_object) object, with corresponding payout endpoints. For more
  # information, read about the
  # [transfer/payout split](https://stripe.com/docs/transfer-payout-split).
  #
  # Related guide: [Creating separate charges and transfers](https://stripe.com/docs/connect/separate-charges-and-transfers)
  class Transfer < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::NestedResource
    include Stripe::APIOperations::Save

    OBJECT_NAME = "transfer"
    def self.object_name
      "transfer"
    end

    nested_resource_class_methods :reversal, operations: %i[create retrieve update list]

    # To send funds from your Stripe account to a connected account, you create a new transfer object. Your [Stripe balance](https://stripe.com/docs/api#balance) must be able to cover the transfer amount, or you'll receive an “Insufficient Funds” error.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/transfers", params: params, opts: opts)
    end

    # Returns a list of existing transfers sent to connected accounts. The transfers are returned in sorted order, with the most recently created transfers appearing first.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/transfers", params: params, opts: opts)
    end

    # Updates the specified transfer by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
    #
    # This request accepts only metadata as an argument.
    def self.update(transfer, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/transfers/%<transfer>s", { transfer: CGI.escape(transfer) }),
        params: params,
        opts: opts
      )
    end
  end
end
