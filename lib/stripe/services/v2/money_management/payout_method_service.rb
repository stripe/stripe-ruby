# File generated from our OpenAPI spec
# frozen_string_literal: true

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
        def archive(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/money_management/payout_methods/%<id>s/archive", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Disable a `PayoutMethod`. Disabling temporarily prevents the Payout Method from being used for outbound
        # payments or transfers while keeping it in normal list results. To re-enable it, complete setup again by
        # [creating an Outbound Setup Intent](https://docs.stripe.com/api/v2/money-management/outbound-setup-intents/create).
        #
        # ** raises CannotProceedError
        def disable(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/money_management/payout_methods/%<id>s/disable", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # List objects that adhere to the PayoutMethod interface.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/money_management/payout_methods",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve a PayoutMethod object.
        #
        # ** raises InvalidPayoutMethodError
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/money_management/payout_methods/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Unarchive a `PayoutMethod`. Unarchiving restores the Payout Method to normal list results and clears
        # only its archived state. It doesn't guarantee that the Payout Method can be used.
        #
        # ** raises InvalidPayoutMethodError
        # ** raises ControlledByAlternateResourceError
        def unarchive(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/money_management/payout_methods/%<id>s/unarchive", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
