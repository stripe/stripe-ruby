# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class GiftCardCreateParams < ::Stripe::RequestParams
    # The brand of the gift card.
    sig { returns(String) }
    def brand; end
    sig { params(_brand: String).returns(String) }
    def brand=(_brand); end
    # Two-digit number representing the gift card's expiration month.
    sig { returns(T.nilable(Integer)) }
    def exp_month; end
    sig { params(_exp_month: T.nilable(Integer)).returns(T.nilable(Integer)) }
    def exp_month=(_exp_month); end
    # Four-digit number representing the gift card's expiration year.
    sig { returns(T.nilable(Integer)) }
    def exp_year; end
    sig { params(_exp_year: T.nilable(Integer)).returns(T.nilable(Integer)) }
    def exp_year=(_exp_year); end
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # The gift card number.
    sig { returns(T.nilable(String)) }
    def number; end
    sig { params(_number: T.nilable(String)).returns(T.nilable(String)) }
    def number=(_number); end
    # The gift card PIN.
    sig { returns(T.nilable(String)) }
    def pin; end
    sig { params(_pin: T.nilable(String)).returns(T.nilable(String)) }
    def pin=(_pin); end
    sig {
      params(brand: String, exp_month: T.nilable(Integer), exp_year: T.nilable(Integer), expand: T.nilable(T::Array[String]), number: T.nilable(String), pin: T.nilable(String)).void
     }
    def initialize(
      brand: nil,
      exp_month: nil,
      exp_year: nil,
      expand: nil,
      number: nil,
      pin: nil
    ); end
  end
end