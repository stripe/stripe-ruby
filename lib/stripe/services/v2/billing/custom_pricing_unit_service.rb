# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class CustomPricingUnitService < StripeService
        class ListParams < Stripe::RequestParams
          # Filter for active/inactive CustomPricingUnits. Mutually exclusive with `lookup_keys`.
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
          # Description that customers will see in the invoice line item.
          # Maximum length of 250 characters.
          attr_accessor :display_name
          # An internal key you can use to search for a particular CustomPricingUnit item.
          # Must be unique among items.
          # Maximum length of 200 characters.
          attr_accessor :lookup_key
          # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          attr_accessor :metadata

          def initialize(display_name: nil, lookup_key: nil, metadata: nil)
            @display_name = display_name
            @lookup_key = lookup_key
            @metadata = metadata
          end
        end

        class RetrieveParams < Stripe::RequestParams; end

        class UpdateParams < Stripe::RequestParams
          # Whether the CustomPricingUnit is active.
          attr_accessor :active
          # Set of key-value pairs that you can attach to an object.
          attr_accessor :metadata

          def initialize(active: nil, metadata: nil)
            @active = active
            @metadata = metadata
          end
        end

        # Create a CustomPricingUnit object.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/billing/custom_pricing_units",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # List all CustomPricingUnit objects.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/billing/custom_pricing_units",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve a CustomPricingUnit object.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/billing/custom_pricing_units/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Update a CustomPricingUnit object.
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/custom_pricing_units/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
