# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    # You can use Tax `Settings` to manage configurations used by Stripe Tax calculations.
    #
    # Related guide: [Using the Settings API](https://stripe.com/docs/tax/settings-api)
    class Settings < SingletonAPIResource
      include Stripe::APIOperations::SingletonSave

      OBJECT_NAME = "tax.settings"
      def self.object_name
        "tax.settings"
      end

      class Defaults < Stripe::StripeObject
        # Default [tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#tax-behavior) used to specify whether the price is considered inclusive of taxes or exclusive of taxes. If the item's price has a tax behavior set, it will take precedence over the default tax behavior.
        attr_reader :tax_behavior
        # Default [tax code](https://stripe.com/docs/tax/tax-categories) used to classify your products and prices.
        attr_reader :tax_code
      end

      class HeadOffice < Stripe::StripeObject
        class Address < Stripe::StripeObject
          # City, district, suburb, town, or village.
          attr_reader :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_reader :country
          # Address line 1 (e.g., street, PO Box, or company name).
          attr_reader :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          attr_reader :line2
          # ZIP or postal code.
          attr_reader :postal_code
          # State, county, province, or region.
          attr_reader :state
        end
        # Attribute for field address
        attr_reader :address
      end

      class StatusDetails < Stripe::StripeObject
        class Active < Stripe::StripeObject; end

        class Pending < Stripe::StripeObject
          # The list of missing fields that are required to perform calculations. It includes the entry `head_office` when the status is `pending`. It is recommended to set the optional values even if they aren't listed as required for calculating taxes. Calculations can fail if missing fields aren't explicitly provided on every call.
          attr_reader :missing_fields
        end
        # Attribute for field active
        attr_reader :active
        # Attribute for field pending
        attr_reader :pending
      end
      # Attribute for field defaults
      attr_reader :defaults

      # The place where your business is located.
      attr_reader :head_office

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode

      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object

      # The status of the Tax `Settings`.
      attr_reader :status

      # Attribute for field status_details
      attr_reader :status_details
    end
  end
end
