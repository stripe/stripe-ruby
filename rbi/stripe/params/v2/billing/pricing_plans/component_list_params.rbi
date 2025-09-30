# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      module PricingPlans
        class ComponentListParams < Stripe::RequestParams
          # Optionally set the maximum number of results per page. Defaults to 20.
          sig { returns(T.nilable(Integer)) }
          def limit; end
          sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def limit=(_limit); end
          # Filter by lookup keys. Mutually exclusive with `pricing_plan_version`.
          # You can specify up to 10 lookup keys.
          sig { returns(T.nilable(T::Array[String])) }
          def lookup_keys; end
          sig {
            params(_lookup_keys: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def lookup_keys=(_lookup_keys); end
          # The ID of the Pricing Plan Version to list components for. Will use the latest version if not provided.
          # Mutually exclusive with `lookup_keys`.
          sig { returns(T.nilable(String)) }
          def pricing_plan_version; end
          sig { params(_pricing_plan_version: T.nilable(String)).returns(T.nilable(String)) }
          def pricing_plan_version=(_pricing_plan_version); end
          sig {
            params(limit: T.nilable(Integer), lookup_keys: T.nilable(T::Array[String]), pricing_plan_version: T.nilable(String)).void
           }
          def initialize(limit: nil, lookup_keys: nil, pricing_plan_version: nil); end
        end
      end
    end
  end
end