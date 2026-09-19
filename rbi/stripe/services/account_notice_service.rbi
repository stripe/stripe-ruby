# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class AccountNoticeService < StripeService
    # Retrieves a list of AccountNotice objects. The objects are sorted in descending order by creation date, with the most-recently-created object appearing first.
    sig {
      params(params: T.any(::Stripe::AccountNoticeListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieves an AccountNotice object.
    sig {
      params(id: String, params: T.any(::Stripe::AccountNoticeRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::AccountNotice)
     }
    def retrieve(id, params = {}, opts = {}); end

    # Updates an AccountNotice object.
    sig {
      params(id: String, params: T.any(::Stripe::AccountNoticeUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::AccountNotice)
     }
    def update(id, params = {}, opts = {}); end
  end
end