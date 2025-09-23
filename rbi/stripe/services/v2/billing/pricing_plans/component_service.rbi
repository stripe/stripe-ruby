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
          class CreateParams < Stripe::RequestParams
            class LicenseFee < Stripe::RequestParams
              # The ID of the License Fee.
              sig { returns(String) }
              def id; end
              sig { params(_id: String).returns(String) }
              def id=(_id); end
              # The version of the LicenseFee. Defaults to 'latest', if not specified.
              sig { returns(T.nilable(String)) }
              def version; end
              sig { params(_version: T.nilable(String)).returns(T.nilable(String)) }
              def version=(_version); end
              sig { params(id: String, version: T.nilable(String)).void }
              def initialize(id: nil, version: nil); end
            end
            class RateCard < Stripe::RequestParams
              # The ID of the Rate Card.
              sig { returns(String) }
              def id; end
              sig { params(_id: String).returns(String) }
              def id=(_id); end
              # The version of the RateCard. Defaults to 'latest', if not specified.
              sig { returns(T.nilable(String)) }
              def version; end
              sig { params(_version: T.nilable(String)).returns(T.nilable(String)) }
              def version=(_version); end
              sig { params(id: String, version: T.nilable(String)).void }
              def initialize(id: nil, version: nil); end
            end
            class ServiceAction < Stripe::RequestParams
              # The ID of the service action.
              sig { returns(String) }
              def id; end
              sig { params(_id: String).returns(String) }
              def id=(_id); end
              sig { params(id: String).void }
              def initialize(id: nil); end
            end
            # An identifier that can be used to find this component.
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
            # The type of the PricingPlanComponent.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            # Details if this component is a License Fee.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::PricingPlans::ComponentService::CreateParams::LicenseFee))
             }
            def license_fee; end
            sig {
              params(_license_fee: T.nilable(::Stripe::V2::Billing::PricingPlans::ComponentService::CreateParams::LicenseFee)).returns(T.nilable(::Stripe::V2::Billing::PricingPlans::ComponentService::CreateParams::LicenseFee))
             }
            def license_fee=(_license_fee); end
            # Details if this component is a Rate Card.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::PricingPlans::ComponentService::CreateParams::RateCard))
             }
            def rate_card; end
            sig {
              params(_rate_card: T.nilable(::Stripe::V2::Billing::PricingPlans::ComponentService::CreateParams::RateCard)).returns(T.nilable(::Stripe::V2::Billing::PricingPlans::ComponentService::CreateParams::RateCard))
             }
            def rate_card=(_rate_card); end
            # Details if this component is a Service Action.
            sig {
              returns(T.nilable(::Stripe::V2::Billing::PricingPlans::ComponentService::CreateParams::ServiceAction))
             }
            def service_action; end
            sig {
              params(_service_action: T.nilable(::Stripe::V2::Billing::PricingPlans::ComponentService::CreateParams::ServiceAction)).returns(T.nilable(::Stripe::V2::Billing::PricingPlans::ComponentService::CreateParams::ServiceAction))
             }
            def service_action=(_service_action); end
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
              params(lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, T.nilable(String)])).void
             }
            def initialize(lookup_key: nil, metadata: nil); end
          end
          # Create a Pricing Plan Component object.
          sig {
            params(pricing_plan_id: String, params: T.any(::Stripe::V2::Billing::PricingPlans::ComponentService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::PricingPlanComponent)
           }
          def create(pricing_plan_id, params = {}, opts = {}); end

          # Remove a Pricing Plan Component from the latest version of a Pricing Plan.
          sig {
            params(pricing_plan_id: String, id: String, params: T.any(::Stripe::V2::Billing::PricingPlans::ComponentService::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::DeletedObject)
           }
          def delete(pricing_plan_id, id, params = {}, opts = {}); end

          # List all Pricing Plan Component objects for a Pricing Plan.
          sig {
            params(pricing_plan_id: String, params: T.any(::Stripe::V2::Billing::PricingPlans::ComponentService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
           }
          def list(pricing_plan_id, params = {}, opts = {}); end

          # Retrieve a Pricing Plan Component object.
          sig {
            params(pricing_plan_id: String, id: String, params: T.any(::Stripe::V2::Billing::PricingPlans::ComponentService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::PricingPlanComponent)
           }
          def retrieve(pricing_plan_id, id, params = {}, opts = {}); end

          # Update a Pricing Plan Component object.
          sig {
            params(pricing_plan_id: String, id: String, params: T.any(::Stripe::V2::Billing::PricingPlans::ComponentService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::PricingPlanComponent)
           }
          def update(pricing_plan_id, id, params = {}, opts = {}); end
        end
      end
    end
  end
end