# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      module PricingPlans
        class ComponentService < StripeService
          class ListParams < Stripe::RequestParams
            # Optionally set the maximum number of results per page. Defaults to 20.
            attr_accessor :limit
            # Filter by lookup keys. Mutually exclusive with `pricing_plan_version`.
            # You can specify up to 10 lookup keys.
            attr_accessor :lookup_keys
            # The ID of the Pricing Plan Version to list components for. Will use the latest version if not provided.
            # Mutually exclusive with `lookup_keys`.
            attr_accessor :pricing_plan_version

            def initialize(limit: nil, lookup_keys: nil, pricing_plan_version: nil)
              @limit = limit
              @lookup_keys = lookup_keys
              @pricing_plan_version = pricing_plan_version
            end
          end

          class CreateParams < Stripe::RequestParams
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

          class DeleteParams < Stripe::RequestParams; end
          class RetrieveParams < Stripe::RequestParams; end

          class UpdateParams < Stripe::RequestParams
            # An identifier that can be used to find this component. Maximum length of 200 characters.
            attr_accessor :lookup_key
            # Set of key-value pairs that you can attach to an object.
            attr_accessor :metadata

            def initialize(lookup_key: nil, metadata: nil)
              @lookup_key = lookup_key
              @metadata = metadata
            end
          end

          # Create a Pricing Plan Component object.
          def create(pricing_plan_id, params = {}, opts = {})
            request(
              method: :post,
              path: format("/v2/billing/pricing_plans/%<pricing_plan_id>s/components", { pricing_plan_id: CGI.escape(pricing_plan_id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Remove a Pricing Plan Component from the latest version of a Pricing Plan.
          def delete(pricing_plan_id, id, params = {}, opts = {})
            request(
              method: :delete,
              path: format("/v2/billing/pricing_plans/%<pricing_plan_id>s/components/%<id>s", { pricing_plan_id: CGI.escape(pricing_plan_id), id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # List all Pricing Plan Component objects for a Pricing Plan.
          def list(pricing_plan_id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/billing/pricing_plans/%<pricing_plan_id>s/components", { pricing_plan_id: CGI.escape(pricing_plan_id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Retrieve a Pricing Plan Component object.
          def retrieve(pricing_plan_id, id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/billing/pricing_plans/%<pricing_plan_id>s/components/%<id>s", { pricing_plan_id: CGI.escape(pricing_plan_id), id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Update a Pricing Plan Component object.
          def update(pricing_plan_id, id, params = {}, opts = {})
            request(
              method: :post,
              path: format("/v2/billing/pricing_plans/%<pricing_plan_id>s/components/%<id>s", { pricing_plan_id: CGI.escape(pricing_plan_id), id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end
        end
      end
    end
  end
end
