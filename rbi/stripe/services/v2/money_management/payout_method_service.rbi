# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class PayoutMethodService < StripeService
        class ArchiveParams < Stripe::RequestParams

        end
        class ListParams < Stripe::RequestParams
          class UsageStatus < Stripe::RequestParams
            # List of payments status to filter by.
            sig { returns(T::Array[String]) }
            attr_accessor :payments
            # List of transfers status to filter by.
            sig { returns(T::Array[String]) }
            attr_accessor :transfers
            sig { params(payments: T::Array[String], transfers: T::Array[String]).void }
            def initialize(payments: nil, transfers: nil); end
          end
          # The page size.
          sig { returns(Integer) }
          attr_accessor :limit
          # Usage status filter.
          sig {
            returns(::Stripe::V2::MoneyManagement::PayoutMethodService::ListParams::UsageStatus)
           }
          attr_accessor :usage_status
          sig {
            params(limit: Integer, usage_status: ::Stripe::V2::MoneyManagement::PayoutMethodService::ListParams::UsageStatus).void
           }
          def initialize(limit: nil, usage_status: nil); end
        end
        class RetrieveParams < Stripe::RequestParams

        end
        class UnarchiveParams < Stripe::RequestParams

        end
        # Archive a PayoutMethod object. Archived objects cannot be used as payout methods
        # and will not appear in the payout method list.
        #
        # ** raises ControlledByDashboardError
        # ** raises InvalidPayoutMethodError
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::PayoutMethodService::ArchiveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::PayoutMethod)
         }
        def archive(id, params = {}, opts = {}); end

        # List objects that adhere to the PayoutMethod interface.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::PayoutMethodService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a PayoutMethod object.
        #
        # ** raises InvalidPayoutMethodError
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::PayoutMethodService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::PayoutMethod)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Unarchive an PayoutMethod object.
        #
        # ** raises ControlledByDashboardError
        # ** raises InvalidPayoutMethodError
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::PayoutMethodService::UnarchiveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::PayoutMethod)
         }
        def unarchive(id, params = {}, opts = {}); end
      end
    end
  end
end