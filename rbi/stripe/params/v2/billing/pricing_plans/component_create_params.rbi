# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      module PricingPlans
        class ComponentCreateParams < ::Stripe::RequestParams
          class LicenseFee < ::Stripe::RequestParams
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
          class RateCard < ::Stripe::RequestParams
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
          class ServiceAction < ::Stripe::RequestParams
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
            returns(T.nilable(::Stripe::V2::Billing::PricingPlans::ComponentCreateParams::LicenseFee))
           }
          def license_fee; end
          sig {
            params(_license_fee: T.nilable(::Stripe::V2::Billing::PricingPlans::ComponentCreateParams::LicenseFee)).returns(T.nilable(::Stripe::V2::Billing::PricingPlans::ComponentCreateParams::LicenseFee))
           }
          def license_fee=(_license_fee); end
          # Details if this component is a Rate Card.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::PricingPlans::ComponentCreateParams::RateCard))
           }
          def rate_card; end
          sig {
            params(_rate_card: T.nilable(::Stripe::V2::Billing::PricingPlans::ComponentCreateParams::RateCard)).returns(T.nilable(::Stripe::V2::Billing::PricingPlans::ComponentCreateParams::RateCard))
           }
          def rate_card=(_rate_card); end
          # Details if this component is a Service Action.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::PricingPlans::ComponentCreateParams::ServiceAction))
           }
          def service_action; end
          sig {
            params(_service_action: T.nilable(::Stripe::V2::Billing::PricingPlans::ComponentCreateParams::ServiceAction)).returns(T.nilable(::Stripe::V2::Billing::PricingPlans::ComponentCreateParams::ServiceAction))
           }
          def service_action=(_service_action); end
          sig {
            params(lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), type: String, license_fee: T.nilable(::Stripe::V2::Billing::PricingPlans::ComponentCreateParams::LicenseFee), rate_card: T.nilable(::Stripe::V2::Billing::PricingPlans::ComponentCreateParams::RateCard), service_action: T.nilable(::Stripe::V2::Billing::PricingPlans::ComponentCreateParams::ServiceAction)).void
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
      end
    end
  end
end