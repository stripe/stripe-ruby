# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class LicensedItemService < StripeService
        class ListParams < Stripe::RequestParams
          # Optionally set the maximum number of results per page. Defaults to 20.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :limit
          # Filter by lookup keys.
          # You can specify up to 10 lookup keys.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :lookup_keys
          sig { params(limit: T.nilable(Integer), lookup_keys: T.nilable(T::Array[String])).void }
          def initialize(limit: nil, lookup_keys: nil); end
        end
        class CreateParams < Stripe::RequestParams
          class TaxDetails < Stripe::RequestParams
            # Product tax code (PTC).
            sig { returns(String) }
            attr_accessor :tax_code
            sig { params(tax_code: String).void }
            def initialize(tax_code: nil); end
          end
          # Description that customers will see in the invoice line item.
          # Maximum length of 250 characters.
          sig { returns(String) }
          attr_accessor :display_name
          # An internal key you can use to search for a particular billable item.
          # Must be unique among billable items.
          # Maximum length of 200 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :lookup_key
          # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_accessor :metadata
          # Stripe Tax details.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::LicensedItemService::CreateParams::TaxDetails))
           }
          attr_accessor :tax_details
          # The unit to use when displaying prices for this billable item in places like Checkout. For example, set this field
          # to "seat" for Checkout to display "(price) per seat", or "environment" to display "(price) per environment".
          # Maximum length of 100 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :unit_label
          sig {
            params(display_name: String, lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), tax_details: T.nilable(::Stripe::V2::Billing::LicensedItemService::CreateParams::TaxDetails), unit_label: T.nilable(String)).void
           }
          def initialize(
            display_name: nil,
            lookup_key: nil,
            metadata: nil,
            tax_details: nil,
            unit_label: nil
          ); end
        end
        class RetrieveParams < Stripe::RequestParams; end
        class UpdateParams < Stripe::RequestParams
          class TaxDetails < Stripe::RequestParams
            # Product tax code (PTC).
            sig { returns(String) }
            attr_accessor :tax_code
            sig { params(tax_code: String).void }
            def initialize(tax_code: nil); end
          end
          # Description that customers will see in the invoice line item.
          # Maximum length of 250 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :display_name
          # An internal key you can use to search for a particular billable item.
          # Maximum length of 200 characters.
          # To remove the lookup_key from the object, set it to null in the request.
          sig { returns(T.nilable(T.nilable(String))) }
          attr_accessor :lookup_key
          # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, T.nilable(String)])) }
          attr_accessor :metadata
          # Stripe Tax details.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::LicensedItemService::UpdateParams::TaxDetails))
           }
          attr_accessor :tax_details
          # The unit to use when displaying prices for this billable item in places like Checkout. For example, set this field
          # to "seat" for Checkout to display "(price) per seat", or "environment" to display "(price) per environment".
          # Maximum length of 100 characters.
          sig { returns(T.nilable(T.nilable(String))) }
          attr_accessor :unit_label
          sig {
            params(display_name: T.nilable(String), lookup_key: T.nilable(T.nilable(String)), metadata: T.nilable(T::Hash[String, T.nilable(String)]), tax_details: T.nilable(::Stripe::V2::Billing::LicensedItemService::UpdateParams::TaxDetails), unit_label: T.nilable(T.nilable(String))).void
           }
          def initialize(
            display_name: nil,
            lookup_key: nil,
            metadata: nil,
            tax_details: nil,
            unit_label: nil
          ); end
        end
        # Create a Licensed Item object.
        sig {
          params(params: T.any(::Stripe::V2::Billing::LicensedItemService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::LicensedItem)
         }
        def create(params = {}, opts = {}); end

        # List all Licensed Item objects in reverse chronological order of creation.
        sig {
          params(params: T.any(::Stripe::V2::Billing::LicensedItemService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a Licensed Item object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::LicensedItemService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::LicensedItem)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update a Licensed Item object. At least one of the fields is required.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::LicensedItemService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::LicensedItem)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end