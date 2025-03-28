# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Funds from an InboundTransfer were just made available.
  class V2MoneyManagementInboundTransferAvailableEvent < Stripe::V2::Event
    def self.lookup_type
      "v2.money_management.inbound_transfer.available"
    end
    # There is additional data present for this event, accessible with the `data` property.
    # See the Stripe API docs for more information.

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
