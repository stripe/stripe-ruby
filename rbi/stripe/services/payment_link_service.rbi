# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentLinkService < StripeService
    attr_reader :line_items
    # Creates a payment link.
    sig {
      params(params: T.any(::Stripe::PaymentLinkCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentLink)
     }
    def create(params = {}, opts = {}); end

    # Returns a list of your payment links.
    sig {
      params(params: T.any(::Stripe::PaymentLinkListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieve a payment link.
    sig {
      params(id: String, params: T.any(::Stripe::PaymentLinkRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentLink)
     }
    def retrieve(id, params = {}, opts = {}); end

    # Updates a payment link.
    sig {
      params(id: String, params: T.any(::Stripe::PaymentLinkUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentLink)
     }
    def update(id, params = {}, opts = {}); end
  end
end