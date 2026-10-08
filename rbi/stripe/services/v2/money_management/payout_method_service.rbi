# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class PayoutMethodService < StripeService
        # Archive a `PayoutMethod`. Archiving prevents the Payout Method from being used for outbound payments
        # or transfers and omits it from normal list results. To restore list visibility, use the
        # [unarchive endpoint](https://docs.stripe.com/api/v2/money-management/payout-methods/unarchive).
        #
        # ** raises CannotProceedError
        # ** raises InvalidPayoutMethodError
        # ** raises ControlledByAlternateResourceError
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::PayoutMethodArchiveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::PayoutMethod)
         }
        def archive(id, params = {}, opts = {}); end

        # Disable a `PayoutMethod`. Disabling temporarily prevents the Payout Method from being used for outbound
        # payments or transfers while keeping it in normal list results. To re-enable it, complete setup again by
        # [creating an Outbound Setup Intent](https://docs.stripe.com/api/v2/money-management/outbound-setup-intents/create).
        #
        # ** raises CannotProceedError
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::PayoutMethodDisableParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::PayoutMethod)
         }
        def disable(id, params = {}, opts = {}); end

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

        # Unarchive a `PayoutMethod`. Unarchiving restores the Payout Method to normal list results and clears
        # only its archived state. It doesn't guarantee that the Payout Method can be used.
        #
        # ** raises InvalidPayoutMethodError
        # ** raises ControlledByAlternateResourceError
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::PayoutMethodUnarchiveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::PayoutMethod)
         }
        def unarchive(id, params = {}, opts = {}); end
      end
    end
  end
end