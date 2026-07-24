# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Risk
      class InquiryService < StripeService
        # Lists risk inquiries for a connected account.
        sig {
          params(params: T.any(::Stripe::V2::Risk::InquiryListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves a risk inquiry by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Risk::InquiryRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Risk::Inquiry)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Submits a response to a risk inquiry.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Risk::InquiryUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Risk::Inquiry)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end