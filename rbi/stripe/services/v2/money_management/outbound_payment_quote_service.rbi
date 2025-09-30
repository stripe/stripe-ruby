# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class OutboundPaymentQuoteService < StripeService
        # Creates an OutboundPaymentQuote usable in an OutboundPayment.
        #
        # ** raises FeatureNotEnabledError
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::OutboundPaymentQuote)
         }
        def create(params = {}, opts = {}); end

        # Retrieves the details of an existing OutboundPaymentQuote by passing the unique OutboundPaymentQuote ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::OutboundPaymentQuoteRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::OutboundPaymentQuote)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end