# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class FxQuoteService < StripeService
    # Creates an FX Quote object
    sig {
      params(params: T.any(::Stripe::FxQuoteCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::FxQuote)
     }
    def create(params = {}, opts = {}); end

    # Returns a list of FX quotes that have been issued. The FX quotes are returned in sorted order, with the most recent FX quotes appearing first.
    sig {
      params(params: T.any(::Stripe::FxQuoteListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieve an FX Quote object
    sig {
      params(id: String, params: T.any(::Stripe::FxQuoteRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::FxQuote)
     }
    def retrieve(id, params = {}, opts = {}); end
  end
end