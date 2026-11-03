# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class PayoutIntentListParams < ::Stripe::RequestParams
        # Maximum number of objects to return. Defaults to 10. Maximum is 100.
        attr_accessor :limit

        def initialize(limit: nil)
          @limit = limit
        end
      end
    end
  end
end
