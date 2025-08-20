# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module TestHelpers
    module Capital
      class FinancingOfferService < StripeService
        class CreateTestmodeFinancingOfferParams < Stripe::RequestParams
          # Attribute for param field advance_amount
          sig { returns(Integer) }
          attr_accessor :advance_amount
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :expand
          # Attribute for param field fee_amount
          sig { returns(Integer) }
          attr_accessor :fee_amount
          # Attribute for param field financing_type
          sig { returns(String) }
          attr_accessor :financing_type
          # Attribute for param field state
          sig { returns(T.nilable(String)) }
          attr_accessor :state
          # Attribute for param field withhold_rate
          sig { returns(Float) }
          attr_accessor :withhold_rate
          sig {
            params(advance_amount: Integer, expand: T.nilable(T::Array[String]), fee_amount: Integer, financing_type: String, state: T.nilable(String), withhold_rate: Float).void
           }
          def initialize(
            advance_amount: nil,
            expand: nil,
            fee_amount: nil,
            financing_type: nil,
            state: nil,
            withhold_rate: nil
          ); end
        end
        class RefillTestmodeFinancingOfferParams < Stripe::RequestParams
          # Attribute for param field advance_amount
          sig { returns(Integer) }
          attr_accessor :advance_amount
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :expand
          # Attribute for param field fee_amount
          sig { returns(Integer) }
          attr_accessor :fee_amount
          # Attribute for param field financing_type
          sig { returns(String) }
          attr_accessor :financing_type
          # Attribute for param field state
          sig { returns(T.nilable(String)) }
          attr_accessor :state
          # Attribute for param field withhold_rate
          sig { returns(Float) }
          attr_accessor :withhold_rate
          sig {
            params(advance_amount: Integer, expand: T.nilable(T::Array[String]), fee_amount: Integer, financing_type: String, state: T.nilable(String), withhold_rate: Float).void
           }
          def initialize(
            advance_amount: nil,
            expand: nil,
            fee_amount: nil,
            financing_type: nil,
            state: nil,
            withhold_rate: nil
          ); end
        end
        # Creates a testmode financing offer for a connected account.
        sig {
          params(params: T.any(::Stripe::TestHelpers::Capital::FinancingOfferService::CreateTestmodeFinancingOfferParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Capital::FinancingOffer)
         }
        def create_testmode_financing_offer(params = {}, opts = {}); end

        # Refills a testmode financing offer for a connected account.
        sig {
          params(financing_offer: String, params: T.any(::Stripe::TestHelpers::Capital::FinancingOfferService::RefillTestmodeFinancingOfferParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Capital::FinancingOffer)
         }
        def refill_testmode_financing_offer(financing_offer, params = {}, opts = {}); end
      end
    end
  end
end