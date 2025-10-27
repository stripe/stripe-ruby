# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class PayoutMethodService < StripeService
        # Archive a PayoutMethod object. Archived objects cannot be used as payout methods
        # and will not appear in the payout method list.
        #
        # ** raises ControlledByDashboardError
        # ** raises InvalidPayoutMethodError
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::PayoutMethodArchiveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::PayoutMethod)
         }
        def archive(id, params = {}, opts = {}); end

        # List objects that adhere to the PayoutMethod interface.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::PayoutMethodListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a PayoutMethod object.
        #
        # ** raises InvalidPayoutMethodError
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::PayoutMethodRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::PayoutMethod)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Unarchive an PayoutMethod object.
        #
        # ** raises ControlledByDashboardError
        # ** raises InvalidPayoutMethodError
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::PayoutMethodUnarchiveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::PayoutMethod)
         }
        def unarchive(id, params = {}, opts = {}); end
      end
    end
  end
end