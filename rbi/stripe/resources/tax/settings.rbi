# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    # You can use Tax `Settings` to manage configurations used by Stripe Tax calculations.
    #
    # Related guide: [Using the Settings API](https://stripe.com/docs/tax/settings-api)
    class Settings < SingletonAPIResource
      class Defaults < Stripe::StripeObject
        # Default [tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#tax-behavior) used to specify whether the price is considered inclusive of taxes or exclusive of taxes. If the item's price has a tax behavior set, it will take precedence over the default tax behavior.
        sig { returns(T.nilable(String)) }
        attr_reader :tax_behavior
        # Default [tax code](https://stripe.com/docs/tax/tax-categories) used to classify your products and prices.
        sig { returns(T.nilable(String)) }
        attr_reader :tax_code
      end
      class HeadOffice < Stripe::StripeObject
        class Address < Stripe::StripeObject
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          attr_reader :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          attr_reader :country
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          attr_reader :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(T.nilable(String)) }
          attr_reader :line2
          # ZIP or postal code.
          sig { returns(T.nilable(String)) }
          attr_reader :postal_code
          # State, county, province, or region.
          sig { returns(T.nilable(String)) }
          attr_reader :state
        end
        # Attribute for field address
        sig { returns(Address) }
        attr_reader :address
      end
      class StatusDetails < Stripe::StripeObject
        class Active < Stripe::StripeObject; end
        class Pending < Stripe::StripeObject
          # The list of missing fields that are required to perform calculations. It includes the entry `head_office` when the status is `pending`. It is recommended to set the optional values even if they aren't listed as required for calculating taxes. Calculations can fail if missing fields aren't explicitly provided on every call.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :missing_fields
        end
        # Attribute for field active
        sig { returns(Active) }
        attr_reader :active
        # Attribute for field pending
        sig { returns(Pending) }
        attr_reader :pending
      end
      # Attribute for field defaults
      sig { returns(Defaults) }
      attr_reader :defaults
      # The place where your business is located.
      sig { returns(T.nilable(HeadOffice)) }
      attr_reader :head_office
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # The status of the Tax `Settings`.
      sig { returns(String) }
      attr_reader :status
      # Attribute for field status_details
      sig { returns(StatusDetails) }
      attr_reader :status_details
      class UpdateParams < Stripe::RequestParams
        class Defaults < Stripe::RequestParams
          # Specifies the default [tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#tax-behavior) to be used when the item's price has unspecified tax behavior. One of inclusive, exclusive, or inferred_by_currency. Once specified, it cannot be changed back to null.
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_behavior
          # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_code
          sig { params(tax_behavior: T.nilable(String), tax_code: T.nilable(String)).void }
          def initialize(tax_behavior: nil, tax_code: nil); end
        end
        class HeadOffice < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            attr_accessor :postal_code
            # State/province as an [ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2) subdivision code, without country prefix. Example: "NY" or "TX".
            sig { returns(T.nilable(String)) }
            attr_accessor :state
            sig {
              params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
             }
            def initialize(
              city: nil,
              country: nil,
              line1: nil,
              line2: nil,
              postal_code: nil,
              state: nil
            ); end
          end
          # The location of the business for tax purposes.
          sig { returns(::Stripe::Tax::Settings::UpdateParams::HeadOffice::Address) }
          attr_accessor :address
          sig { params(address: ::Stripe::Tax::Settings::UpdateParams::HeadOffice::Address).void }
          def initialize(address: nil); end
        end
        # Default configuration to be used on Stripe Tax calculations.
        sig { returns(T.nilable(::Stripe::Tax::Settings::UpdateParams::Defaults)) }
        attr_accessor :defaults
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # The place where your business is located.
        sig { returns(T.nilable(::Stripe::Tax::Settings::UpdateParams::HeadOffice)) }
        attr_accessor :head_office
        sig {
          params(defaults: T.nilable(::Stripe::Tax::Settings::UpdateParams::Defaults), expand: T.nilable(T::Array[String]), head_office: T.nilable(::Stripe::Tax::Settings::UpdateParams::HeadOffice)).void
         }
        def initialize(defaults: nil, expand: nil, head_office: nil); end
      end
    end
  end
end