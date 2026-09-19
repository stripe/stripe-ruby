# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class GiftCardService < StripeService
    # Activates a third-party gift card and optionally sets its balance.
    sig {
      params(id: String, params: T.any(::Stripe::GiftCardActivateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::GiftCardOperation)
     }
    def activate(id, params = {}, opts = {}); end

    # Cashout a third-party gift card by zeroing its balance.
    sig {
      params(id: String, params: T.any(::Stripe::GiftCardCashoutParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::GiftCardOperation)
     }
    def cashout(id, params = {}, opts = {}); end

    # Checks the balance of a third-party gift card.
    sig {
      params(id: String, params: T.any(::Stripe::GiftCardCheckBalanceParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::GiftCardOperation)
     }
    def check_balance(id, params = {}, opts = {}); end

    # Creates a gift card object.
    sig {
      params(params: T.any(::Stripe::GiftCardCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::GiftCard)
     }
    def create(params = {}, opts = {}); end

    # Reloads a third-party gift card by adding the specified amount to its balance.
    sig {
      params(id: String, params: T.any(::Stripe::GiftCardReloadParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::GiftCardOperation)
     }
    def reload(id, params = {}, opts = {}); end

    # Retrieves a third-party gift card object.
    sig {
      params(id: String, params: T.any(::Stripe::GiftCardRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::GiftCard)
     }
    def retrieve(id, params = {}, opts = {}); end

    # Voids a previously performed gift card operation.
    sig {
      params(id: String, params: T.any(::Stripe::GiftCardVoidOperationParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::GiftCardOperation)
     }
    def void_operation(id, params = {}, opts = {}); end
  end
end