# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Represents third-party gift cards that can be used as a payment method through Stripe.
  class GiftCard < APIResource
    # The brand of the gift card.
    sig { returns(String) }
    def brand; end
    # The expiration month of the gift card.
    sig { returns(T.nilable(Integer)) }
    def exp_month; end
    # The expiration year of the gift card.
    sig { returns(T.nilable(Integer)) }
    def exp_year; end
    # Uniquely identifies this particular gift card number. You can use this attribute to check whether two gift cards are the same.
    sig { returns(String) }
    def fingerprint; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # The last four digits of the gift card number.
    sig { returns(T.nilable(String)) }
    def last4; end
    # The last operation performed on this gift card.
    sig { returns(T.nilable(T.any(String, ::Stripe::GiftCardOperation))) }
    def last_operation; end
    # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
    sig { returns(T::Boolean) }
    def livemode; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # Activates a third-party gift card and optionally sets its balance.
    sig {
      params(params: T.any(::Stripe::GiftCardActivateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::GiftCardOperation)
     }
    def activate(params = {}, opts = {}); end

    # Activates a third-party gift card and optionally sets its balance.
    sig {
      params(gift_card: String, params: T.any(::Stripe::GiftCardActivateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::GiftCardOperation)
     }
    def self.activate(gift_card, params = {}, opts = {}); end

    # Cashout a third-party gift card by zeroing its balance.
    sig {
      params(params: T.any(::Stripe::GiftCardCashoutParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::GiftCardOperation)
     }
    def cashout(params = {}, opts = {}); end

    # Cashout a third-party gift card by zeroing its balance.
    sig {
      params(gift_card: String, params: T.any(::Stripe::GiftCardCashoutParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::GiftCardOperation)
     }
    def self.cashout(gift_card, params = {}, opts = {}); end

    # Checks the balance of a third-party gift card.
    sig {
      params(params: T.any(::Stripe::GiftCardCheckBalanceParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::GiftCardOperation)
     }
    def check_balance(params = {}, opts = {}); end

    # Checks the balance of a third-party gift card.
    sig {
      params(gift_card: String, params: T.any(::Stripe::GiftCardCheckBalanceParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::GiftCardOperation)
     }
    def self.check_balance(gift_card, params = {}, opts = {}); end

    # Creates a gift card object.
    sig {
      params(params: T.any(::Stripe::GiftCardCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::GiftCard)
     }
    def self.create(params = {}, opts = {}); end

    # Reloads a third-party gift card by adding the specified amount to its balance.
    sig {
      params(params: T.any(::Stripe::GiftCardReloadParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::GiftCardOperation)
     }
    def reload(params = {}, opts = {}); end

    # Reloads a third-party gift card by adding the specified amount to its balance.
    sig {
      params(gift_card: String, params: T.any(::Stripe::GiftCardReloadParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::GiftCardOperation)
     }
    def self.reload(gift_card, params = {}, opts = {}); end

    # Voids a previously performed gift card operation.
    sig {
      params(params: T.any(::Stripe::GiftCardVoidOperationParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::GiftCardOperation)
     }
    def void_operation(params = {}, opts = {}); end

    # Voids a previously performed gift card operation.
    sig {
      params(gift_card: String, params: T.any(::Stripe::GiftCardVoidOperationParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::GiftCardOperation)
     }
    def self.void_operation(gift_card, params = {}, opts = {}); end
  end
end