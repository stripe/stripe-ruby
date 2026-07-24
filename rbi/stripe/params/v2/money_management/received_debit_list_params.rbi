# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class ReceivedDebitListParams < ::Stripe::RequestParams
        # The page limit.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # Filter by the received debit mandate ID.
        sig { returns(T.nilable(String)) }
        def received_debit_mandate; end
        sig { params(_received_debit_mandate: T.nilable(String)).returns(T.nilable(String)) }
        def received_debit_mandate=(_received_debit_mandate); end
        sig { params(limit: T.nilable(Integer), received_debit_mandate: T.nilable(String)).void }
        def initialize(limit: nil, received_debit_mandate: nil); end
      end
    end
  end
end