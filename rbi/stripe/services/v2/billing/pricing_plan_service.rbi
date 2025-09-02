# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class PricingPlanService < StripeService
        attr_reader :components
        attr_reader :versions
        class ListParams < Stripe::RequestParams
          # Filter for active/inactive PricingPlans. Mutually exclusive with `lookup_keys`.
          sig { returns(T.nilable(T::Boolean)) }
          def active; end
          sig { params(_active: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def active=(_active); end
          # Optionally set the maximum number of results per page. Defaults to 20.
          sig { returns(T.nilable(Integer)) }
          def limit; end
          sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def limit=(_limit); end
          # Filter by lookup keys. Mutually exclusive with `active`.
          # You can specify up to 10 lookup keys.
          sig { returns(T.nilable(T::Array[String])) }
          def lookup_keys; end
          sig {
            params(_lookup_keys: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def lookup_keys=(_lookup_keys); end
          sig {
            params(active: T.nilable(T::Boolean), limit: T.nilable(Integer), lookup_keys: T.nilable(T::Array[String])).void
           }
          def initialize(active: nil, limit: nil, lookup_keys: nil); end
        end
        class CreateParams < Stripe::RequestParams
          # The currency of the PricingPlan.
          sig { returns(String) }
          def currency; end
          sig { params(_currency: String).returns(String) }
          def currency=(_currency); end
          # Description of pricing plan subscription.
          sig { returns(T.nilable(String)) }
          def description; end
          sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
          def description=(_description); end
          # Display name of the PricingPlan. Maximum 250 characters.
          sig { returns(String) }
          def display_name; end
          sig { params(_display_name: String).returns(String) }
          def display_name=(_display_name); end
          # An internal key you can use to search for a particular PricingPlan. Maximum length of 200 characters.
          sig { returns(T.nilable(String)) }
          def lookup_key; end
          sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
          def lookup_key=(_lookup_key); end
          # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, String])) }
          def metadata; end
          sig {
            params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
           }
          def metadata=(_metadata); end
          # The Stripe Tax tax behavior - whether the PricingPlan is inclusive or exclusive of tax.
          sig { returns(String) }
          def tax_behavior; end
          sig { params(_tax_behavior: String).returns(String) }
          def tax_behavior=(_tax_behavior); end
          sig {
            params(currency: String, description: T.nilable(String), display_name: String, lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), tax_behavior: String).void
           }
          def initialize(
            currency: nil,
            description: nil,
            display_name: nil,
            lookup_key: nil,
            metadata: nil,
            tax_behavior: nil
          ); end
        end
        class RetrieveParams < Stripe::RequestParams; end
        class UpdateParams < Stripe::RequestParams
          # Whether the PricingPlan is active.
          sig { returns(T.nilable(T::Boolean)) }
          def active; end
          sig { params(_active: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def active=(_active); end
          # Description of pricing plan subscription.
          sig { returns(T.nilable(String)) }
          def description; end
          sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
          def description=(_description); end
          # Display name of the PricingPlan. Maximum 250 characters.
          sig { returns(T.nilable(String)) }
          def display_name; end
          sig { params(_display_name: T.nilable(String)).returns(T.nilable(String)) }
          def display_name=(_display_name); end
          # The ID of the live version of the PricingPlan.
          sig { returns(T.nilable(String)) }
          def live_version; end
          sig { params(_live_version: T.nilable(String)).returns(T.nilable(String)) }
          def live_version=(_live_version); end
          # An internal key you can use to search for a particular PricingPlan. Maximum length of 200 characters.
          sig { returns(T.nilable(String)) }
          def lookup_key; end
          sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
          def lookup_key=(_lookup_key); end
          # Set of key-value pairs that you can attach to an object.
          sig { returns(T.nilable(T::Hash[String, T.nilable(String)])) }
          def metadata; end
          sig {
            params(_metadata: T.nilable(T::Hash[String, T.nilable(String)])).returns(T.nilable(T::Hash[String, T.nilable(String)]))
           }
          def metadata=(_metadata); end
          sig {
            params(active: T.nilable(T::Boolean), description: T.nilable(String), display_name: T.nilable(String), live_version: T.nilable(String), lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, T.nilable(String)])).void
           }
          def initialize(
            active: nil,
            description: nil,
            display_name: nil,
            live_version: nil,
            lookup_key: nil,
            metadata: nil
          ); end
        end
        # Create a Pricing Plan object.
        sig {
          params(params: T.any(::Stripe::V2::Billing::PricingPlanService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::PricingPlan)
         }
        def create(params = {}, opts = {}); end

        # List all Pricing Plan objects.
        sig {
          params(params: T.any(::Stripe::V2::Billing::PricingPlanService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a Pricing Plan object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::PricingPlanService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::PricingPlan)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update a Pricing Plan object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::PricingPlanService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::PricingPlan)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end