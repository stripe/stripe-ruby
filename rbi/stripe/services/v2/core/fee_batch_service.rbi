# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class FeeBatchService < StripeService
        # Lists FeeBatches, optionally filtered by `collection_record`, `statuses`, or
        # creation time. If `statuses` is omitted or empty, only pending and billed
        # FeeBatches are returned. Canceled FeeBatches are returned only when explicitly
        # requested.
        sig {
          params(params: T.any(::Stripe::V2::Core::FeeBatchListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a FeeBatch by id.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Core::FeeBatchRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::FeeBatch)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end