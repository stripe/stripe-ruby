# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class TaxFundService < StripeService
    # Returns a list of tax funds in reverse chronological order.
    sig {
      params(params: T.any(::Stripe::TaxFundListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieves a tax fund object by its ID.
    sig {
      params(tax_fund: String, params: T.any(::Stripe::TaxFundRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::TaxFund)
     }
    def retrieve(tax_fund, params = {}, opts = {}); end
  end
end