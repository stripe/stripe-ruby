# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class PayoutIntentListParams < ::Stripe::RequestParams
        # Maximum number of objects to return. Defaults to 10. Maximum is 100.
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