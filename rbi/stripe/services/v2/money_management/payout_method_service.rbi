# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class PayoutMethodService < StripeService
        class ListParams < Stripe::RequestParams
          class UsageStatus < Stripe::RequestParams
            # List of payments status to filter by.
            sig { returns(T.nilable(T::Array[String])) }
            def payments; end
            sig {
              params(_payments: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def payments=(_payments); end
            # List of transfers status to filter by.
            sig { returns(T.nilable(T::Array[String])) }
            def transfers; end
            sig {
              params(_transfers: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def transfers=(_transfers); end
            sig {
              params(payments: T.nilable(T::Array[String]), transfers: T.nilable(T::Array[String])).void
             }
            def initialize(payments: nil, transfers: nil); end
          end
          # The page size.
          sig { returns(T.nilable(Integer)) }
          def limit; end
          sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def limit=(_limit); end
          # Usage status filter.
          sig {
            returns(T.nilable(::Stripe::V2::MoneyManagement::PayoutMethodService::ListParams::UsageStatus))
           }
          def usage_status; end
          sig {
            params(_usage_status: T.nilable(::Stripe::V2::MoneyManagement::PayoutMethodService::ListParams::UsageStatus)).returns(T.nilable(::Stripe::V2::MoneyManagement::PayoutMethodService::ListParams::UsageStatus))
           }
          def usage_status=(_usage_status); end
          sig {
            params(limit: T.nilable(Integer), usage_status: T.nilable(::Stripe::V2::MoneyManagement::PayoutMethodService::ListParams::UsageStatus)).void
           }
          def initialize(limit: nil, usage_status: nil); end
        end
        class RetrieveParams < Stripe::RequestParams; end
        class ArchiveParams < Stripe::RequestParams; end
        class UnarchiveParams < Stripe::RequestParams; end
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