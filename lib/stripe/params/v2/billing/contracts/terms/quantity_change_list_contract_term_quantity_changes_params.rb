# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      module Contracts
        module Terms
          class QuantityChangeListContractTermQuantityChangesParams < ::Stripe::RequestParams
            # Maximum results per page.
            attr_accessor :limit

            def initialize(limit: nil)
              @limit = limit
            end
          end
        end
      end
    end
  end
end
