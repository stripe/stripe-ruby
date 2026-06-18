# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      module Health
        module Alerts
          class HistoryService < StripeService
            # Retrieves a list of alert history entries for a health alert.
            def list(id, params = {}, opts = {})
              request(
                method: :get,
                path: format("/v2/core/health/alerts/%<id>s/history", { id: CGI.escape(id) }),
                params: params,
                opts: opts,
                base_address: :api
              )
            end
          end
        end
      end
    end
  end
end
