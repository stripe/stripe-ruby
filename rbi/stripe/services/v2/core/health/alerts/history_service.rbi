# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      module Health
        module Alerts
          class HistoryService < StripeService
            # Retrieves a list of alert history entries for a health alert.
            sig {
              params(id: String, params: T.any(::Stripe::V2::Core::Health::Alerts::HistoryListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
             }
            def list(id, params = {}, opts = {}); end
          end
        end
      end
    end
  end
end