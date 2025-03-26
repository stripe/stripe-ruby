# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A credit was attempted to your balance and was not successful. See the status_details for more information.
  class V2MoneyManagementReceivedCreditFailedEvent < Stripe::V2::Event
    def self.lookup_type
      "v2.money_management.received_credit.failed"
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
