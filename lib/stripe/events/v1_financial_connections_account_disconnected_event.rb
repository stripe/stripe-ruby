# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Occurs when a Financial Connections account is disconnected.
  class V1FinancialConnectionsAccountDisconnectedEvent < Stripe::V2::Event
    def self.lookup_type
      "v1.financial_connections.account.disconnected"
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
