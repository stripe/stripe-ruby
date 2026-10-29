# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Signals
      class AccountSignalService < StripeService
        # Lists AccountSignals whose created timestamps are no more than 90 days old for a given account or customer. Returns only the latest AccountSignal for each requested signal type.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/signals/account_signals",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves an AccountSignal by its ID when its created timestamp is no more than 90 days old.
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
