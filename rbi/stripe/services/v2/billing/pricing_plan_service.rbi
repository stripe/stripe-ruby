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
          attr_accessor :active
          # Optionally set the maximum number of results per page. Defaults to 20.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :limit
          # Filter by lookup keys. Mutually exclusive with `active`.
          # You can specify up to 10 lookup keys.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :lookup_keys
          sig {
            params(active: T.nilable(T::Boolean), limit: T.nilable(Integer), lookup_keys: T.nilable(T::Array[String])).void
           }
          def initialize(active: nil, limit: nil, lookup_keys: nil); end
        end
        class CreateParams < Stripe::RequestParams
          # The currency of the PricingPlan.
          sig { returns(String) }
          attr_accessor :currency
          # Description of pricing plan subscription.
          sig { returns(T.nilable(String)) }
          attr_accessor :description
          # Display name of the PricingPlan. Maximum 250 characters.
          sig { returns(String) }
          attr_accessor :display_name
          # An internal key you can use to search for a particular PricingPlan. Maximum length of 200 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :lookup_key
          # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_accessor :metadata
          # The Stripe Tax tax behavior - whether the PricingPlan is inclusive or exclusive of tax.
          sig { returns(String) }
          attr_accessor :tax_behavior
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
          attr_accessor :active
          # Description of pricing plan subscription.
          sig { returns(T.nilable(String)) }
          attr_accessor :description
          # Display name of the PricingPlan. Maximum 250 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :display_name
          # The ID of the live version of the PricingPlan.
          sig { returns(T.nilable(String)) }
          attr_accessor :live_version
          # An internal key you can use to search for a particular PricingPlan. Maximum length of 200 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :lookup_key
          # Set of key-value pairs that you can attach to an object.
          sig { returns(T.nilable(T::Hash[String, T.nilable(String)])) }
          attr_accessor :metadata
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