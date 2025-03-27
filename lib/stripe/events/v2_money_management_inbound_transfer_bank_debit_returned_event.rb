# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # An InboundTransfer was returned.
  class V2MoneyManagementInboundTransferBankDebitReturnedEvent < Stripe::V2::Event
    def self.lookup_type
      "v2.money_management.inbound_transfer.bank_debit_returned"
    end

    # Retrieves the related object from the API. Make an API request on every call.
    def fetch_related_object
      _request(
        method: :get,
        path: related_object.url,
        base_address: :api,
        opts: { stripe_account: context }
      )
    end
  end
end
