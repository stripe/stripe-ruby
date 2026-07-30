# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class ReceivedDebitListParams < ::Stripe::RequestParams
        # The page limit.
        attr_accessor :limit
        # Filter by the received debit mandate ID.
        attr_accessor :received_debit_mandate

        def initialize(limit: nil, received_debit_mandate: nil)
          @limit = limit
          @received_debit_mandate = received_debit_mandate
        end
      end
    end
  end
end
