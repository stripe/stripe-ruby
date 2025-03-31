# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module TestHelpers
    module Terminal
      class ReaderService < StripeService
        class PresentPaymentMethodParams < Stripe::RequestParams
          class CardPresent < Stripe::RequestParams
            # The card number, as a string without any separators.
            sig { returns(T.nilable(String)) }
            attr_accessor :number
            sig { params(number: T.nilable(String)).void }
            def initialize(number: nil); end
          end
          class InteracPresent < Stripe::RequestParams
            # Card Number
            sig { returns(T.nilable(String)) }
            attr_accessor :number
            sig { params(number: T.nilable(String)).void }
            def initialize(number: nil); end
          end
          # Simulated on-reader tip amount.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :amount_tip
          # Simulated data for the card_present payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::Terminal::ReaderService::PresentPaymentMethodParams::CardPresent))
           }
          attr_accessor :card_present
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :expand
          # Simulated data for the interac_present payment method.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::Terminal::ReaderService::PresentPaymentMethodParams::InteracPresent))
           }
          attr_accessor :interac_present
          # Simulated payment type.
          sig { returns(T.nilable(String)) }
          attr_accessor :type
          sig {
            params(amount_tip: T.nilable(Integer), card_present: T.nilable(::Stripe::TestHelpers::Terminal::ReaderService::PresentPaymentMethodParams::CardPresent), expand: T.nilable(T::Array[String]), interac_present: T.nilable(::Stripe::TestHelpers::Terminal::ReaderService::PresentPaymentMethodParams::InteracPresent), type: T.nilable(String)).void
           }
          def initialize(
            amount_tip: nil,
            card_present: nil,
            expand: nil,
            interac_present: nil,
            type: nil
          ); end
        end
        # Presents a payment method on a simulated reader. Can be used to simulate accepting a payment, saving a card or refunding a transaction.
        sig {
          params(reader: String, params: T.any(::Stripe::TestHelpers::Terminal::ReaderService::PresentPaymentMethodParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
         }
        def present_payment_method(reader, params = {}, opts = {}); end
      end
    end
  end
end