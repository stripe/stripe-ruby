# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class PricingPlanSubscriptionListParams < ::Stripe::RequestParams
        class Payer < ::Stripe::RequestParams
          # The ID of the Customer object. If provided, only Pricing Plan Subscriptions that are subscribed on the Billing Groups with the specified payer will be returned.
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
        # Filter by Billing Group ID. Mutually exclusive with `payer`, `pricing_plan`, and `pricing_plan_version`.
        sig { returns(T.nilable(String)) }
        def billing_group; end
        sig { params(_billing_group: T.nilable(String)).returns(T.nilable(String)) }
        def billing_group=(_billing_group); end
        # Expand to include additional data such as discount_details or pricing_plan_component_details.
        sig { returns(T.nilable(T::Array[String])) }
        def include; end
        sig { params(_include: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def include=(_include); end
        # Optionally set the maximum number of results per page. Defaults to 20.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # Filter by payer. Mutually exclusive with `billing_group`, `pricing_plan`, and `pricing_plan_version`.
        sig { returns(T.nilable(::Stripe::V2::Billing::PricingPlanSubscriptionListParams::Payer)) }
        def payer; end
        sig {
          params(_payer: T.nilable(::Stripe::V2::Billing::PricingPlanSubscriptionListParams::Payer)).returns(T.nilable(::Stripe::V2::Billing::PricingPlanSubscriptionListParams::Payer))
         }
        def payer=(_payer); end
        # Filter by PricingPlan ID. Mutually exclusive with `billing_group`, `payer`, and `pricing_plan_version`.
        sig { returns(T.nilable(String)) }
        def pricing_plan; end
        sig { params(_pricing_plan: T.nilable(String)).returns(T.nilable(String)) }
        def pricing_plan=(_pricing_plan); end
        # Filter by Pricing Plan Version ID. Mutually exclusive with `billing_group`, `payer`, and `pricing_plan`.
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
          params(billing_group: T.nilable(String), include: T.nilable(T::Array[String]), limit: T.nilable(Integer), payer: T.nilable(::Stripe::V2::Billing::PricingPlanSubscriptionListParams::Payer), pricing_plan: T.nilable(String), pricing_plan_version: T.nilable(String), servicing_status: T.nilable(String)).void
         }
        def initialize(
          billing_group: nil,
          include: nil,
          limit: nil,
          payer: nil,
          pricing_plan: nil,
          pricing_plan_version: nil,
          servicing_status: nil
        ); end
      end
    end
  end
end