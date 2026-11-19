# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class ReceivedDebitListParams < ::Stripe::RequestParams
        class Created < ::Stripe::RequestParams
          # Return ReceivedDebits created after this timestamp.
          attr_accessor :gt
          # Return ReceivedDebits created on or after this timestamp.
          attr_accessor :gte
          # Return ReceivedDebits created before this timestamp.
          attr_accessor :lt
          # Return ReceivedDebits created on or before this timestamp.
          attr_accessor :lte

          def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
            @gt = gt
            @gte = gte
            @lt = lt
            @lte = lte
          end
        end
        # Filter ReceivedDebits by their creation time.
        attr_accessor :created
        # The page limit.
        attr_accessor :limit
        # Filter by the received debit mandate ID. Deprecated: use `spending_mandate` instead.
        attr_accessor :received_debit_mandate
        # Filter by the SpendingMandate ID.
        attr_accessor :spending_mandate

        def initialize(created: nil, limit: nil, received_debit_mandate: nil, spending_mandate: nil)
          @created = created
          @limit = limit
          @received_debit_mandate = received_debit_mandate
          @spending_mandate = spending_mandate
        end
      end
    end
  end
end
