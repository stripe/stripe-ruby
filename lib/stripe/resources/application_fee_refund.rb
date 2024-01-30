# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # `Application Fee Refund` objects allow you to refund an application fee that
  # has previously been created but not yet refunded. Funds will be refunded to
  # the Stripe account from which the fee was originally collected.
  #
  # Related guide: [Refunding application fees](https://stripe.com/docs/connect/destination-charges#refunding-app-fee)
  class ApplicationFeeRefund < APIResource
    include Stripe::APIOperations::Save

    OBJECT_NAME = "fee_refund"

    def resource_url
      "#{ApplicationFee.resource_url}/#{CGI.escape(fee)}/refunds" \
        "/#{CGI.escape(id)}"
    end

    def self.update(_id, _params = nil, _opts = nil)
      raise NotImplementedError,
            "Application fee refunds cannot be updated without an " \
            "application fee ID. Update an application fee refund using " \
            "`ApplicationFee.update_refund('fee_id', 'refund_id', " \
            "update_params)`"
    end

    def self.retrieve(_id, _api_key = nil)
      raise NotImplementedError,
            "Application fee refunds cannot be retrieved without an " \
            "application fee ID. Retrieve an application fee refund using " \
            "`ApplicationFee.retrieve_refund('fee_id', 'refund_id')`"
    end
  end
end
