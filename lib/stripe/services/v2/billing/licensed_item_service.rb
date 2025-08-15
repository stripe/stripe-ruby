# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class LicensedItemService < StripeService
        class ListParams < Stripe::RequestParams
          # Optionally set the maximum number of results per page. Defaults to 20.
          attr_accessor :limit

          def initialize(limit: nil)
            @limit = limit
          end
        end

        class CreateParams < Stripe::RequestParams
          class TaxDetails < Stripe::RequestParams
            # Product tax code (PTC).
            attr_accessor :tax_code

            def initialize(tax_code: nil)
              @tax_code = tax_code
            end
          end
          # Description that customers will see in the invoice line item.
          # Maximum length of 250 characters.
          attr_accessor :display_name
          # An internal key you can use to search for a particular billable item.
          # Must be unique among billable items.
          # Maximum length of 200 characters.
          attr_accessor :lookup_key
          # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          attr_accessor :metadata
          # Stripe Tax details.
          attr_accessor :tax_details
          # The unit to use when displaying prices for this billable item in places like Checkout. For example, set this field
          # to "seat" for Checkout to display "(price) per seat", or "environment" to display "(price) per environment".
          # Maximum length of 100 characters.
          attr_accessor :unit_label

          def initialize(
            display_name: nil,
            lookup_key: nil,
            metadata: nil,
            tax_details: nil,
            unit_label: nil
          )
            @display_name = display_name
            @lookup_key = lookup_key
            @metadata = metadata
            @tax_details = tax_details
            @unit_label = unit_label
          end
        end

        class RetrieveParams < Stripe::RequestParams; end

        class UpdateParams < Stripe::RequestParams
          class TaxDetails < Stripe::RequestParams
            # Product tax code (PTC).
            attr_accessor :tax_code

            def initialize(tax_code: nil)
              @tax_code = tax_code
            end
          end
          # Description that customers will see in the invoice line item.
          # Maximum length of 250 characters.
          attr_accessor :display_name
          # An internal key you can use to search for a particular billable item.
          # Maximum length of 200 characters.
          # To remove the lookup_key from the object, set it to null in the request.
          attr_accessor :lookup_key
          # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          attr_accessor :metadata
          # Stripe Tax details.
          attr_accessor :tax_details
          # The unit to use when displaying prices for this billable item in places like Checkout. For example, set this field
          # to "seat" for Checkout to display "(price) per seat", or "environment" to display "(price) per environment".
          # Maximum length of 100 characters.
          attr_accessor :unit_label

          def initialize(
            display_name: nil,
            lookup_key: nil,
            metadata: nil,
            tax_details: nil,
            unit_label: nil
          )
            @display_name = display_name
            @lookup_key = lookup_key
            @metadata = metadata
            @tax_details = tax_details
            @unit_label = unit_label
          end
        end

        # Create a LicensedItem object.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/billing/licensed_items",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # List all LicensedItem objects in reverse chronological order of creation.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/billing/licensed_items",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve a LicensedItem object.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/billing/licensed_items/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Update a LicensedItem object. At least one of the fields is required.
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/licensed_items/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
