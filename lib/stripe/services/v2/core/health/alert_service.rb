# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      module Health
        class AlertService < StripeService
          attr_reader :history

          def initialize(requestor)
            super
            @history = Stripe::V2::Core::Health::Alerts::HistoryService.new(@requestor)
          end

          # Retrieves a list of health alerts.
          def list(params = {}, opts = {})
            request(
              method: :get,
              path: "/v2/core/health/alerts",
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Retrieves a health alert by ID.
          def retrieve(id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/core/health/alerts/%<id>s", { id: CGI.escape(id) }),
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
