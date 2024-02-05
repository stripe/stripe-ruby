# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # [Stripe Connect](https://stripe.com/docs/connect) platforms can reverse transfers made to a
  # connected account, either entirely or partially, and can also specify whether
  # to refund any related application fees. Transfer reversals add to the
  # platform's balance and subtract from the destination account's balance.
  #
  # Reversing a transfer that was made for a [destination
  # charge](https://stripe.com/docs/connect/destination-charges) is allowed only up to the amount of
  # the charge. It is possible to reverse a
  # [transfer_group](https://stripe.com/docs/connect/separate-charges-and-transfers#transfer-options)
  # transfer only if the destination account has enough balance to cover the
  # reversal.
  #
  # Related guide: [Reversing transfers](https://stripe.com/docs/connect/separate-charges-and-transfers#reversing-transfers)
  class Reversal < APIResource
    include Stripe::APIOperations::Save

    OBJECT_NAME = "transfer_reversal"

    def resource_url
      "#{Transfer.resource_url}/#{CGI.escape(transfer)}/reversals" \
        "/#{CGI.escape(id)}"
    end

    def self.update(_id, _params = nil, _opts = nil)
      raise NotImplementedError,
            "Reversals cannot be updated without a transfer ID. Update a " \
            "reversal using `r = Transfer.update_reversal('transfer_id', " \
            "'reversal_id', update_params)`"
    end

    def self.retrieve(_id, _opts = {})
      raise NotImplementedError,
            "Reversals cannot be retrieved without a transfer ID. Retrieve " \
            "a reversal using `Transfer.retrieve_reversal('transfer_id', " \
            "'reversal_id'`"
    end
  end
end
