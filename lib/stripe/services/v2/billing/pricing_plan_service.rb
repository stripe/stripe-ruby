# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class PricingPlanService < StripeService
        attr_reader :components, :versions

        def initialize(requestor)
          super
          @components = Stripe::V2::Billing::PricingPlans::ComponentService.new(@requestor)
          @versions = Stripe::V2::Billing::PricingPlans::VersionService.new(@requestor)
        end

        class ListParams < Stripe::RequestParams
          # Filter for active/inactive PricingPlans. Mutually exclusive with `lookup_keys`.
          attr_accessor :active
          # Optionally set the maximum number of results per page. Defaults to 20.
          attr_accessor :limit
          # Filter by lookup keys. Mutually exclusive with `active`.
          # You can specify up to 10 lookup keys.
          attr_accessor :lookup_keys

          def initialize(active: nil, limit: nil, lookup_keys: nil)
            @active = active
            @limit = limit
            @lookup_keys = lookup_keys
          end
        end

        class CreateParams < Stripe::RequestParams
          # The currency of the PricingPlan.
          attr_accessor :currency
          # Description of pricing plan subscription.
          attr_accessor :description
          # Display name of the PricingPlan. Maximum 250 characters.
          attr_accessor :display_name
          # An internal key you can use to search for a particular PricingPlan. Maximum length of 200 characters.
          attr_accessor :lookup_key
          # Set of key-value pairs that you can attach to a PricingPlan.
          attr_accessor :metadata
          # The Stripe Tax tax behavior - whether the PricingPlan is inclusive or exclusive of tax.
          attr_accessor :tax_behavior

          def initialize(
            currency: nil,
            description: nil,
            display_name: nil,
            lookup_key: nil,
            metadata: nil,
            tax_behavior: nil
          )
            @currency = currency
            @description = description
            @display_name = display_name
            @lookup_key = lookup_key
            @metadata = metadata
            @tax_behavior = tax_behavior
          end
        end

        class RetrieveParams < Stripe::RequestParams; end

        class UpdateParams < Stripe::RequestParams
          # Whether the PricingPlan is active.
          attr_accessor :active
          # Description of pricing plan subscription.
          attr_accessor :description
          # Display name of the PricingPlan. Maximum 250 characters.
          attr_accessor :display_name
          # The ID of the live version of the PricingPlan.
          attr_accessor :live_version
          # An internal key you can use to search for a particular PricingPlan. Maximum length of 200 characters.
          attr_accessor :lookup_key
          # Set of key-value pairs that you can attach to an object.
          attr_accessor :metadata

          def initialize(
            active: nil,
            description: nil,
            display_name: nil,
            live_version: nil,
            lookup_key: nil,
            metadata: nil
          )
            @active = active
            @description = description
            @display_name = display_name
            @live_version = live_version
            @lookup_key = lookup_key
            @metadata = metadata
          end
        end

        # Create a PricingPlan object.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/billing/pricing_plans",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # List all PricingPlan objects.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/billing/pricing_plans",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve a PricingPlan object.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/billing/pricing_plans/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Update a PricingPlan object.
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/pricing_plans/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
