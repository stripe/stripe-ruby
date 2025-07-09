# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    class SettingsService < StripeService
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      class UpdateParams < Stripe::RequestParams
        class Defaults < Stripe::RequestParams
          # Specifies the default [tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#tax-behavior) to be used when the item's price has unspecified tax behavior. One of inclusive, exclusive, or inferred_by_currency. Once specified, it cannot be changed back to null.
          attr_accessor :tax_behavior
          # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
          attr_accessor :tax_code

          def initialize(tax_behavior: nil, tax_code: nil)
            @tax_behavior = tax_behavior
            @tax_code = tax_code
          end
        end

        class HeadOffice < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            attr_accessor :line2
            # ZIP or postal code.
            attr_accessor :postal_code
            # State/province as an [ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2) subdivision code, without country prefix. Example: "NY" or "TX".
            attr_accessor :state

            def initialize(
              city: nil,
              country: nil,
              line1: nil,
              line2: nil,
              postal_code: nil,
              state: nil
            )
              @city = city
              @country = country
              @line1 = line1
              @line2 = line2
              @postal_code = postal_code
              @state = state
            end
          end
          # The location of the business for tax purposes.
          attr_accessor :address

          def initialize(address: nil)
            @address = address
          end
        end
        # Default configuration to be used on Stripe Tax calculations.
        attr_accessor :defaults
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # The place where your business is located.
        attr_accessor :head_office

        def initialize(defaults: nil, expand: nil, head_office: nil)
          @defaults = defaults
          @expand = expand
          @head_office = head_office
        end
      end

      # Retrieves Tax Settings for a merchant.
      def retrieve(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/tax/settings",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Updates Tax Settings parameters used in tax calculations. All parameters are editable but none can be removed once set.
      def update(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/tax/settings",
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
