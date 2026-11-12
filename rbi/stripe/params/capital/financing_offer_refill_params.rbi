# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Capital
    class FinancingOfferRefillParams < ::Stripe::RequestParams
      # Amount of financing offered, in minor units. For example, 1,000 USD is represented as 100000.
      sig { returns(Integer) }
      def advance_amount; end
      sig { params(_advance_amount: Integer).returns(Integer) }
      def advance_amount=(_advance_amount); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Fixed fee amount, in minor units. For example, 100 USD is represented as 10000.
      sig { returns(Integer) }
      def fee_amount; end
      sig { params(_fee_amount: Integer).returns(Integer) }
      def fee_amount=(_fee_amount); end
      # The type of financing offer
      sig { returns(String) }
      def financing_type; end
      sig { params(_financing_type: String).returns(String) }
      def financing_type=(_financing_type); end
      # The status of the financing offer
      sig { returns(T.nilable(String)) }
      def status; end
      sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
      def status=(_status); end
      # Per-transaction rate at which Stripe withholds funds to repay the financing.
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