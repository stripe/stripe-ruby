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
          def limit; end
          sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def limit=(_limit); end
          # Filter by lookup keys.
          # You can specify up to 10 lookup keys.
          sig { returns(T.nilable(T::Array[String])) }
          def lookup_keys; end
          sig {
            params(_lookup_keys: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def lookup_keys=(_lookup_keys); end
          sig { params(limit: T.nilable(Integer), lookup_keys: T.nilable(T::Array[String])).void }
          def initialize(limit: nil, lookup_keys: nil); end
        end
        class CreateParams < Stripe::RequestParams
          class TaxDetails < Stripe::RequestParams
            # Product tax code (PTC).
            sig { returns(String) }
            def tax_code; end
            sig { params(_tax_code: String).returns(String) }
            def tax_code=(_tax_code); end
            sig { params(tax_code: String).void }
            def initialize(tax_code: nil); end
          end
          # Description that customers will see in the invoice line item.
          # Maximum length of 250 characters.
          sig { returns(String) }
          def display_name; end
          sig { params(_display_name: String).returns(String) }
          def display_name=(_display_name); end
          # An internal key you can use to search for a particular billable item.
          # Must be unique among billable items.
          # Maximum length of 200 characters.
          sig { returns(T.nilable(String)) }
          def lookup_key; end
          sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
          def lookup_key=(_lookup_key); end
          # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, String])) }
          def metadata; end
          sig {
            params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
           }
          def metadata=(_metadata); end
          # Stripe Tax details.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::LicensedItemService::CreateParams::TaxDetails))
           }
          def tax_details; end
          sig {
            params(_tax_details: T.nilable(::Stripe::V2::Billing::LicensedItemService::CreateParams::TaxDetails)).returns(T.nilable(::Stripe::V2::Billing::LicensedItemService::CreateParams::TaxDetails))
           }
          def tax_details=(_tax_details); end
          # The unit to use when displaying prices for this billable item in places like Checkout. For example, set this field
          # to "seat" for Checkout to display "(price) per seat", or "environment" to display "(price) per environment".
          # Maximum length of 100 characters.
          sig { returns(T.nilable(String)) }
          def unit_label; end
          sig { params(_unit_label: T.nilable(String)).returns(T.nilable(String)) }
          def unit_label=(_unit_label); end
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
            def tax_code; end
            sig { params(_tax_code: String).returns(String) }
            def tax_code=(_tax_code); end
            sig { params(tax_code: String).void }
            def initialize(tax_code: nil); end
          end
          # Description that customers will see in the invoice line item.
          # Maximum length of 250 characters.
          sig { returns(T.nilable(String)) }
          def display_name; end
          sig { params(_display_name: T.nilable(String)).returns(T.nilable(String)) }
          def display_name=(_display_name); end
          # An internal key you can use to search for a particular billable item.
          # Maximum length of 200 characters.
          # To remove the lookup_key from the object, set it to null in the request.
          sig { returns(T.nilable(String)) }
          def lookup_key; end
          sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
          def lookup_key=(_lookup_key); end
          # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, T.nilable(String)])) }
          def metadata; end
          sig {
            params(_metadata: T.nilable(T::Hash[String, T.nilable(String)])).returns(T.nilable(T::Hash[String, T.nilable(String)]))
           }
          def metadata=(_metadata); end
          # Stripe Tax details.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::LicensedItemService::UpdateParams::TaxDetails))
           }
          def tax_details; end
          sig {
            params(_tax_details: T.nilable(::Stripe::V2::Billing::LicensedItemService::UpdateParams::TaxDetails)).returns(T.nilable(::Stripe::V2::Billing::LicensedItemService::UpdateParams::TaxDetails))
           }
          def tax_details=(_tax_details); end
          # The unit to use when displaying prices for this billable item in places like Checkout. For example, set this field
          # to "seat" for Checkout to display "(price) per seat", or "environment" to display "(price) per environment".
          # Maximum length of 100 characters.
          sig { returns(T.nilable(String)) }
          def unit_label; end
          sig { params(_unit_label: T.nilable(String)).returns(T.nilable(String)) }
          def unit_label=(_unit_label); end
          sig {
            params(display_name: T.nilable(String), lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, T.nilable(String)]), tax_details: T.nilable(::Stripe::V2::Billing::LicensedItemService::UpdateParams::TaxDetails), unit_label: T.nilable(String)).void
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