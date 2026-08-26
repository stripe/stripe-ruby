# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Signals
      class AccountSignalService < StripeService
        # Lists the latest AccountSignals for a given account or customer, filtered by signal type. Note that this endpoint returns only the latest signal for each requested signal type.
        sig {
          params(params: T.any(::Stripe::V2::Signals::AccountSignalListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves an AccountSignal by its ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Signals::AccountSignalRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Signals::AccountSignal)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end