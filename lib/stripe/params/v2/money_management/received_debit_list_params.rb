# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class ReceivedDebitListParams < ::Stripe::RequestParams
        # The page limit.
        attr_accessor :limit
        # Filter by the received debit mandate ID. Deprecated: use `spending_mandate` instead.
        attr_accessor :received_debit_mandate
        # Filter by the SpendingMandate ID.
        attr_accessor :spending_mandate

        def initialize(limit: nil, received_debit_mandate: nil, spending_mandate: nil)
          @limit = limit
          @received_debit_mandate = received_debit_mandate
          @spending_mandate = spending_mandate
        end
      end
    end
  end
end
