# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Signals
      class AccountActivityService < StripeService
        # Creates a new account activity to report account registration, login, or evaluation follow-up activity.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/signals/account_activity",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Deletes an AccountActivity by its ID.
        def delete(id, params = {}, opts = {})
          request(
            method: :delete,
            path: format("/v2/signals/account_activity/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves an AccountActivity by its ID.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/signals/account_activity/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
