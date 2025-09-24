# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class PricingPlanSubscriptionService < StripeService
        class ListParams < Stripe::RequestParams
          class Payer < Stripe::RequestParams
            # The ID of the Customer object. If provided, only Pricing Plan Subscriptions that are subscribed on the cadences with the specified payer will be returned.
            sig { returns(T.nilable(String)) }
            def customer; end
            sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
            def customer=(_customer); end
            # A string identifying the type of the payer. Currently the only supported value is `customer`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(customer: T.nilable(String), type: String).void }
            def initialize(customer: nil, type: nil); end
          end
          # Filter by Billing Cadence ID. Mutually exclusive with `payer`, `pricing_plan`, and `pricing_plan_version`.
          sig { returns(T.nilable(String)) }
          def billing_cadence; end
          sig { params(_billing_cadence: T.nilable(String)).returns(T.nilable(String)) }
          def billing_cadence=(_billing_cadence); end
          # Optionally set the maximum number of results per page. Defaults to 20.
          sig { returns(T.nilable(Integer)) }
          def limit; end
          sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def limit=(_limit); end
          # Filter by payer. Mutually exclusive with `billing_cadence`, `pricing_plan`, and `pricing_plan_version`.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::PricingPlanSubscriptionService::ListParams::Payer))
           }
          def payer; end
          sig {
            params(_payer: T.nilable(::Stripe::V2::Billing::PricingPlanSubscriptionService::ListParams::Payer)).returns(T.nilable(::Stripe::V2::Billing::PricingPlanSubscriptionService::ListParams::Payer))
           }
          def payer=(_payer); end
          # Filter by PricingPlan ID. Mutually exlcusive with `billing_cadence`, `payer`, and `pricing_plan_version`.
          sig { returns(T.nilable(String)) }
          def pricing_plan; end
          sig { params(_pricing_plan: T.nilable(String)).returns(T.nilable(String)) }
          def pricing_plan=(_pricing_plan); end
          # Filter by Pricing Plan Version ID. Mutually exlcusive with `billing_cadence`, `payer`, and `pricing_plan`.
          sig { returns(T.nilable(String)) }
          def pricing_plan_version; end
          sig { params(_pricing_plan_version: T.nilable(String)).returns(T.nilable(String)) }
          def pricing_plan_version=(_pricing_plan_version); end
          # Filter by servicing status.
          sig { returns(T.nilable(String)) }
          def servicing_status; end
          sig { params(_servicing_status: T.nilable(String)).returns(T.nilable(String)) }
          def servicing_status=(_servicing_status); end
          sig {
            params(billing_cadence: T.nilable(String), limit: T.nilable(Integer), payer: T.nilable(::Stripe::V2::Billing::PricingPlanSubscriptionService::ListParams::Payer), pricing_plan: T.nilable(String), pricing_plan_version: T.nilable(String), servicing_status: T.nilable(String)).void
           }
          def initialize(
            billing_cadence: nil,
            limit: nil,
            payer: nil,
            pricing_plan: nil,
            pricing_plan_version: nil,
            servicing_status: nil
          ); end
        end
        class RetrieveParams < Stripe::RequestParams; end
        class UpdateParams < Stripe::RequestParams
          # When set to true, the `servicing_status_transition.will_cancel_at` field will be cleared.
          sig { returns(T.nilable(T::Boolean)) }
          def clear_cancel_at; end
          sig { params(_clear_cancel_at: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def clear_cancel_at=(_clear_cancel_at); end
          # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, T.nilable(String)])) }
          def metadata; end
          sig {
            params(_metadata: T.nilable(T::Hash[String, T.nilable(String)])).returns(T.nilable(T::Hash[String, T.nilable(String)]))
           }
          def metadata=(_metadata); end
          sig {
            params(clear_cancel_at: T.nilable(T::Boolean), metadata: T.nilable(T::Hash[String, T.nilable(String)])).void
           }
          def initialize(clear_cancel_at: nil, metadata: nil); end
        end
        # List all Pricing Plan Subscription objects.
        sig {
          params(params: T.any(::Stripe::V2::Billing::PricingPlanSubscriptionService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a Pricing Plan Subscription object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::PricingPlanSubscriptionService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::PricingPlanSubscription)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update a Pricing Plan Subscription object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::PricingPlanSubscriptionService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::PricingPlanSubscription)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end