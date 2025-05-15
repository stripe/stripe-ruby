# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class PayoutMethodService < StripeService
        class ArchiveParams < Stripe::RequestParams; end

        class ListParams < Stripe::RequestParams
          class UsageStatus < Stripe::RequestParams
            # List of payments status to filter by.
            attr_accessor :payments
            # List of transfers status to filter by.
            attr_accessor :transfers

            def initialize(payments: nil, transfers: nil)
              @payments = payments
              @transfers = transfers
            end
          end
          # The page size.
          attr_accessor :limit
          # Usage status filter.
          attr_accessor :usage_status

          def initialize(limit: nil, usage_status: nil)
            @limit = limit
            @usage_status = usage_status
          end
        end

        class RetrieveParams < Stripe::RequestParams; end
        class UnarchiveParams < Stripe::RequestParams; end

        # Archive a PayoutMethod object. Archived objects cannot be used as payout methods
        # and will not appear in the payout method list.
        #
        # ** raises ControlledByDashboardError
        # ** raises InvalidPayoutMethodError
        def archive(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/money_management/payout_methods/%<id>s/archive", { id: CGI.escape(id) }),
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

        # Unarchive an PayoutMethod object.
        #
        # ** raises ControlledByDashboardError
        # ** raises InvalidPayoutMethodError
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
