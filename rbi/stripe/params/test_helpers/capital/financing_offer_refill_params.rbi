# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module TestHelpers
    module Capital
      class FinancingOfferRefillParams < ::Stripe::RequestParams
        # Attribute for param field advance_amount
        sig { returns(Integer) }
        def advance_amount; end
        sig { params(_advance_amount: Integer).returns(Integer) }
        def advance_amount=(_advance_amount); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Attribute for param field fee_amount
        sig { returns(Integer) }
        def fee_amount; end
        sig { params(_fee_amount: Integer).returns(Integer) }
        def fee_amount=(_fee_amount); end
        # Attribute for param field financing_type
        sig { returns(String) }
        def financing_type; end
        sig { params(_financing_type: String).returns(String) }
        def financing_type=(_financing_type); end
        # Attribute for param field status
        sig { returns(T.nilable(String)) }
        def status; end
        sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
        def status=(_status); end
        # Attribute for param field withhold_rate
        sig { returns(Float) }
        def withhold_rate; end
        sig { params(_withhold_rate: Float).returns(Float) }
        def withhold_rate=(_withhold_rate); end
        sig {
          params(advance_amount: Integer, expand: T.nilable(T::Array[String]), fee_amount: Integer, financing_type: String, status: T.nilable(String), withhold_rate: Float).void
         }
        def initialize(
          advance_amount: nil,
          expand: nil,
          fee_amount: nil,
          financing_type: nil,
          status: nil,
          withhold_rate: nil
        ); end
      end
    end
  end
end