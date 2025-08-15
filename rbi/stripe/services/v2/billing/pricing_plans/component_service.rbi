# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      module PricingPlans
        class ComponentService < StripeService
          class ListParams < Stripe::RequestParams
            # Optionally set the maximum number of results per page. Defaults to 20.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :limit
            # Filter by lookup keys. Mutually exclusive with `pricing_plan_version`.
            # You can specify up to 10 lookup keys.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :lookup_keys
            # The ID of the PricingPlanVersion to list components for. Will use the latest version if not provided.
            # Mutually exclusive with `lookup_keys`.
            sig { returns(T.nilable(String)) }
            attr_accessor :pricing_plan_version
            sig {
              params(limit: T.nilable(Integer), lookup_keys: T.nilable(T::Array[String]), pricing_plan_version: T.nilable(String)).void
             }
            def initialize(limit: nil, lookup_keys: nil, pricing_plan_version: nil); end
          end
          class CreateParams < Stripe::RequestParams
            class LicenseFee < Stripe::RequestParams
              # The ID of the LicenseFee.
              sig { returns(String) }
              attr_accessor :id
              # The version of the LicenseFee.
              sig { returns(String) }
              attr_accessor :version
              sig { params(id: String, version: String).void }
              def initialize(id: nil, version: nil); end
            end
            class RateCard < Stripe::RequestParams
              # The ID of the RateCard.
              sig { returns(String) }
              attr_accessor :id
              # The version of the RateCard.
              sig { returns(String) }
              attr_accessor :version
              sig { params(id: String, version: String).void }
              def initialize(id: nil, version: nil); end
            end
            class ServiceAction < Stripe::RequestParams
              # The ID of the ServiceAction.
              sig { returns(String) }
              attr_accessor :id
              # The version of the ServiceAction.
              sig { returns(String) }
              attr_accessor :version
              sig { params(id: String, version: String).void }
              def initialize(id: nil, version: nil); end
            end
            # An identifier that can be used to find this component.
            sig { returns(T.nilable(String)) }
            attr_accessor :lookup_key
            # Set of key-value pairs that you can attach to an object.
            sig { returns(T.nilable(T::Hash[String, String])) }
            attr_accessor :metadata
            # The type of the PricingPlanComponent.
            sig { returns(String) }
            attr_accessor :type
            # Details if this component is a LicenseFee.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::PricingPlans::ComponentService::CreateParams::LicenseFee))
             }
            attr_accessor :license_fee
            # Details if this component is a RateCard.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::PricingPlans::ComponentService::CreateParams::RateCard))
             }
            attr_accessor :rate_card
            # Details if this component is a ServiceAction.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::PricingPlans::ComponentService::CreateParams::ServiceAction))
             }
            attr_accessor :service_action
            sig {
              params(lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), type: String, license_fee: T.nilable(::Stripe::V2::Billing::PricingPlans::ComponentService::CreateParams::LicenseFee), rate_card: T.nilable(::Stripe::V2::Billing::PricingPlans::ComponentService::CreateParams::RateCard), service_action: T.nilable(::Stripe::V2::Billing::PricingPlans::ComponentService::CreateParams::ServiceAction)).void
             }
            def initialize(
              lookup_key: nil,
              metadata: nil,
              type: nil,
              license_fee: nil,
              rate_card: nil,
              service_action: nil
            ); end
          end
          class DeleteParams < Stripe::RequestParams; end
          class RetrieveParams < Stripe::RequestParams; end
          class UpdateParams < Stripe::RequestParams
            # An identifier that can be used to find this component. Maximum length of 200 characters.
            sig { returns(T.nilable(String)) }
            attr_accessor :lookup_key
            # Set of key-value pairs that you can attach to an object.
            sig { returns(T.nilable(T::Hash[String, T.nilable(String)])) }
            attr_accessor :metadata
            sig {
              params(lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, T.nilable(String)])).void
             }
            def initialize(lookup_key: nil, metadata: nil); end
          end
          # Create a PricingPlanComponent object.
          sig {
            params(pricing_plan_id: String, params: T.any(::Stripe::V2::Billing::PricingPlans::ComponentService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::PricingPlanComponent)
           }
          def create(pricing_plan_id, params = {}, opts = {}); end

          # Remove a PricingPlanComponent from the latest version of a PricingPlan.
          sig {
            params(pricing_plan_id: String, id: String, params: T.any(::Stripe::V2::Billing::PricingPlans::ComponentService::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::PricingPlanComponent)
           }
          def delete(pricing_plan_id, id, params = {}, opts = {}); end

          # List all PricingPlanComponent objects for a PricingPlan.
          sig {
            params(pricing_plan_id: String, params: T.any(::Stripe::V2::Billing::PricingPlans::ComponentService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
           }
          def list(pricing_plan_id, params = {}, opts = {}); end

          # Retrieve a PricingPlanComponent object.
          sig {
            params(pricing_plan_id: String, id: String, params: T.any(::Stripe::V2::Billing::PricingPlans::ComponentService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::PricingPlanComponent)
           }
          def retrieve(pricing_plan_id, id, params = {}, opts = {}); end

          # Update a PricingPlanComponent object.
          sig {
            params(pricing_plan_id: String, id: String, params: T.any(::Stripe::V2::Billing::PricingPlans::ComponentService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::PricingPlanComponent)
           }
          def update(pricing_plan_id, id, params = {}, opts = {}); end
        end
      end
    end
  end
end