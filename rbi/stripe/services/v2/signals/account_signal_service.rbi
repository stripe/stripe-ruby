# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Signals
      class AccountSignalService < StripeService
        # Lists AccountSignals for a given account or customer, newest first. Signals more than 180 days old are omitted.
        # By default, returns only the latest matching AccountSignal for each requested signal type.
        # Set latest_per_type to false to include matching historical signals. Filtering and latest-per-type selection occur before pagination.
        sig {
          params(params: T.any(::Stripe::V2::Signals::AccountSignalListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves an AccountSignal by its ID for up to 180 days after creation. Signals more than 180 days old are inaccessible.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Signals::AccountSignalRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Signals::AccountSignal)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end