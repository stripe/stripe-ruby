# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class FeeEntryService < StripeService
        # List FeeEntries optionally filtered by incurred_by, fee_batch, or collection_record (at most one filter at a time).
        sig {
          params(params: T.any(::Stripe::V2::Core::FeeEntryListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a FeeEntry by id.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Core::FeeEntryRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::FeeEntry)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end