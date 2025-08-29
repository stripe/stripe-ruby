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
            attr_accessor :customer
            # A string identifying the type of the payer. Currently the only supported value is `customer`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(customer: T.nilable(String), type: String).void }
            def initialize(customer: nil, type: nil); end
          end
          # Filter by Billing Cadence ID. Mutually exclusive with `payer`, `pricing_plan`, and `pricing_plan_version`.
          sig { returns(T.nilable(String)) }
          attr_accessor :billing_cadence
          # Optionally set the maximum number of results per page. Defaults to 20.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :limit
          # Filter by payer. Mutually exclusive with `billing_cadence`, `pricing_plan`, and `pricing_plan_version`.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::PricingPlanSubscriptionService::ListParams::Payer))
           }
          attr_accessor :payer
          # Filter by PricingPlan ID. Mutually exlcusive with `billing_cadence`, `payer`, and `pricing_plan_version`.
          sig { returns(T.nilable(String)) }
          attr_accessor :pricing_plan
          # Filter by Pricing Plan Version ID. Mutually exlcusive with `billing_cadence`, `payer`, and `pricing_plan`.
          sig { returns(T.nilable(String)) }
          attr_accessor :pricing_plan_version
          # Filter by servicing status.
          sig { returns(T.nilable(String)) }
          attr_accessor :servicing_status
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
      end
    end
  end
end