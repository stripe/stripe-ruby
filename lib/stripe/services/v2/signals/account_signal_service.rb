# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Signals
      class AccountSignalService < StripeService
        # Lists AccountSignals for a given account or customer. Signals more than 90 days old are omitted. Returns only the latest AccountSignal for each requested signal type.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/signals/account_signals",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves an AccountSignal by its ID for up to 90 days after creation. Signals more than 90 days old are inaccessible.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/signals/account_signals/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
