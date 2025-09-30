# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      module PricingPlans
        class ComponentCreateParams < Stripe::RequestParams
          class LicenseFee < Stripe::RequestParams
            # The ID of the License Fee.
            attr_accessor :id
            # The version of the LicenseFee. Defaults to 'latest', if not specified.
            attr_accessor :version

            def initialize(id: nil, version: nil)
              @id = id
              @version = version
            end
          end

          class RateCard < Stripe::RequestParams
            # The ID of the Rate Card.
            attr_accessor :id
            # The version of the RateCard. Defaults to 'latest', if not specified.
            attr_accessor :version

            def initialize(id: nil, version: nil)
              @id = id
              @version = version
            end
          end

          class ServiceAction < Stripe::RequestParams
            # The ID of the service action.
            attr_accessor :id

            def initialize(id: nil)
              @id = id
            end
          end
          # An identifier that can be used to find this component.
          attr_accessor :lookup_key
          # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          attr_accessor :metadata
          # The type of the PricingPlanComponent.
          attr_accessor :type
          # Details if this component is a License Fee.
          attr_accessor :license_fee
          # Details if this component is a Rate Card.
          attr_accessor :rate_card
          # Details if this component is a Service Action.
          attr_accessor :service_action

          def initialize(
            lookup_key: nil,
            metadata: nil,
            type: nil,
            license_fee: nil,
            rate_card: nil,
            service_action: nil
          )
            @lookup_key = lookup_key
            @metadata = metadata
            @type = type
            @license_fee = license_fee
            @rate_card = rate_card
            @service_action = service_action
          end
        end
      end
    end
  end
end
