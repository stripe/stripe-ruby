# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Payments
      class OffSessionPaymentListParams < Stripe::RequestParams
        # The page size limit. If not provided, the default is 20.
        attr_accessor :limit

        def initialize(limit: nil)
          @limit = limit
        end
      end
    end
  end
end
