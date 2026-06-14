# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class GiftCardService < StripeService
    # Activates a third-party gift card and optionally sets its balance.
    sig {
      params(gift_card: String, params: T.any(::Stripe::GiftCardActivateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::GiftCardOperation)
     }
    def activate(gift_card, params = {}, opts = {}); end

    # Cashout a third-party gift card by zeroing its balance.
    sig {
      params(gift_card: String, params: T.any(::Stripe::GiftCardCashoutParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::GiftCardOperation)
     }
    def cashout(gift_card, params = {}, opts = {}); end

    # Checks the balance of a third-party gift card.
    sig {
      params(gift_card: String, params: T.any(::Stripe::GiftCardCheckBalanceParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::GiftCardOperation)
     }
    def check_balance(gift_card, params = {}, opts = {}); end

    # Creates a gift card object.
    sig {
      params(params: T.any(::Stripe::GiftCardCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::GiftCard)
     }
    def create(params = {}, opts = {}); end

    # Reloads a third-party gift card by adding the specified amount to its balance.
    sig {
      params(gift_card: String, params: T.any(::Stripe::GiftCardReloadParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::GiftCardOperation)
     }
    def reload(gift_card, params = {}, opts = {}); end

    # Retrieves a third-party gift card object.
    sig {
      params(gift_card: String, params: T.any(::Stripe::GiftCardRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::GiftCard)
     }
    def retrieve(gift_card, params = {}, opts = {}); end

    # Voids a previously performed gift card operation.
    sig {
      params(gift_card: String, params: T.any(::Stripe::GiftCardVoidOperationParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::GiftCardOperation)
     }
    def void_operation(gift_card, params = {}, opts = {}); end
  end
end