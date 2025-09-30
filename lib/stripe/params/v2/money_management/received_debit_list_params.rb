# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class ReceivedDebitListParams < Stripe::RequestParams
        # The page limit.
        attr_accessor :limit

        def initialize(limit: nil)
          @limit = limit
        end
      end
    end
  end
end
