# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    class SettingsService < StripeService
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
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
          sig { returns(::Stripe::Tax::SettingsService::UpdateParams::HeadOffice::Address) }
          attr_accessor :address
          sig {
            params(address: ::Stripe::Tax::SettingsService::UpdateParams::HeadOffice::Address).void
           }
          def initialize(address: nil); end
        end
        # Default configuration to be used on Stripe Tax calculations.
        sig { returns(T.nilable(::Stripe::Tax::SettingsService::UpdateParams::Defaults)) }
        attr_accessor :defaults
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # The place where your business is located.
        sig { returns(T.nilable(::Stripe::Tax::SettingsService::UpdateParams::HeadOffice)) }
        attr_accessor :head_office
        sig {
          params(defaults: T.nilable(::Stripe::Tax::SettingsService::UpdateParams::Defaults), expand: T.nilable(T::Array[String]), head_office: T.nilable(::Stripe::Tax::SettingsService::UpdateParams::HeadOffice)).void
         }
        def initialize(defaults: nil, expand: nil, head_office: nil); end
      end
      # Retrieves Tax Settings for a merchant.
      sig {
        params(params: T.any(::Stripe::Tax::SettingsService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Tax::Settings)
       }
      def retrieve(params = {}, opts = {}); end

      # Updates Tax Settings parameters used in tax calculations. All parameters are editable but none can be removed once set.
      sig {
        params(params: T.any(::Stripe::Tax::SettingsService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Tax::Settings)
       }
      def update(params = {}, opts = {}); end
    end
  end
end