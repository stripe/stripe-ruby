# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      module Health
        module Alerts
          class HistoryListParams < ::Stripe::RequestParams
            # The page limit.
            sig { returns(T.nilable(Integer)) }
            def limit; end
            sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def limit=(_limit); end
            sig { params(limit: T.nilable(Integer)).void }
            def initialize(limit: nil); end
          end
        end
      end
    end
  end
end