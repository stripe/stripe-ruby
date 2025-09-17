# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class MeteredItemService < StripeService
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
          class MeterSegmentCondition < Stripe::RequestParams
            # A Meter dimension.
            sig { returns(String) }
            def dimension; end
            sig { params(_dimension: String).returns(String) }
            def dimension=(_dimension); end
            # To count usage towards this metered item, the dimension must have this value.
            sig { returns(String) }
            def value; end
            sig { params(_value: String).returns(String) }
            def value=(_value); end
            sig { params(dimension: String, value: String).void }
            def initialize(dimension: nil, value: nil); end
          end
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
          # Optional array of Meter dimensions to group event dimension keys for invoice line items.
          sig { returns(T.nilable(T::Array[String])) }
          def invoice_presentation_dimensions; end
          sig {
            params(_invoice_presentation_dimensions: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def invoice_presentation_dimensions=(_invoice_presentation_dimensions); end
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
          # ID of the Meter that measures usage for this Metered Item.
          sig { returns(String) }
          def meter; end
          sig { params(_meter: String).returns(String) }
          def meter=(_meter); end
          # Optional array of Meter segments to filter event dimension keys for billing.
          sig {
            returns(T.nilable(T::Array[::Stripe::V2::Billing::MeteredItemService::CreateParams::MeterSegmentCondition]))
           }
          def meter_segment_conditions; end
          sig {
            params(_meter_segment_conditions: T.nilable(T::Array[::Stripe::V2::Billing::MeteredItemService::CreateParams::MeterSegmentCondition])).returns(T.nilable(T::Array[::Stripe::V2::Billing::MeteredItemService::CreateParams::MeterSegmentCondition]))
           }
          def meter_segment_conditions=(_meter_segment_conditions); end
          # Stripe Tax details.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::MeteredItemService::CreateParams::TaxDetails))
           }
          def tax_details; end
          sig {
            params(_tax_details: T.nilable(::Stripe::V2::Billing::MeteredItemService::CreateParams::TaxDetails)).returns(T.nilable(::Stripe::V2::Billing::MeteredItemService::CreateParams::TaxDetails))
           }
          def tax_details=(_tax_details); end
          # The unit to use when displaying prices for this billable item in places like Checkout. For example, set this field
          # to "CPU-hour" for Checkout to display "(price) per CPU-hour", or "1 million events" to display "(price) per 1
          # million events".
          # Maximum length of 100 characters.
          sig { returns(T.nilable(String)) }
          def unit_label; end
          sig { params(_unit_label: T.nilable(String)).returns(T.nilable(String)) }
          def unit_label=(_unit_label); end
          sig {
            params(display_name: String, invoice_presentation_dimensions: T.nilable(T::Array[String]), lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), meter: String, meter_segment_conditions: T.nilable(T::Array[::Stripe::V2::Billing::MeteredItemService::CreateParams::MeterSegmentCondition]), tax_details: T.nilable(::Stripe::V2::Billing::MeteredItemService::CreateParams::TaxDetails), unit_label: T.nilable(String)).void
           }
          def initialize(
            display_name: nil,
            invoice_presentation_dimensions: nil,
            lookup_key: nil,
            metadata: nil,
            meter: nil,
            meter_segment_conditions: nil,
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
            returns(T.nilable(::Stripe::V2::Billing::MeteredItemService::UpdateParams::TaxDetails))
           }
          def tax_details; end
          sig {
            params(_tax_details: T.nilable(::Stripe::V2::Billing::MeteredItemService::UpdateParams::TaxDetails)).returns(T.nilable(::Stripe::V2::Billing::MeteredItemService::UpdateParams::TaxDetails))
           }
          def tax_details=(_tax_details); end
          # The unit to use when displaying prices for this billable item in places like Checkout. For example, set this field
          # to "CPU-hour" for Checkout to display "(price) per CPU-hour", or "1 million events" to display "(price) per 1
          # million events".
          # Maximum length of 100 characters.
          # To remove the unit_label from the object, set it to null in the request.
          sig { returns(T.nilable(String)) }
          def unit_label; end
          sig { params(_unit_label: T.nilable(String)).returns(T.nilable(String)) }
          def unit_label=(_unit_label); end
          sig {
            params(display_name: T.nilable(String), lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, T.nilable(String)]), tax_details: T.nilable(::Stripe::V2::Billing::MeteredItemService::UpdateParams::TaxDetails), unit_label: T.nilable(String)).void
           }
          def initialize(
            display_name: nil,
            lookup_key: nil,
            metadata: nil,
            tax_details: nil,
            unit_label: nil
          ); end
        end
        # Create a Metered Item object.
        sig {
          params(params: T.any(::Stripe::V2::Billing::MeteredItemService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::MeteredItem)
         }
        def create(params = {}, opts = {}); end

        # List all Metered Item objects in reverse chronological order of creation.
        sig {
          params(params: T.any(::Stripe::V2::Billing::MeteredItemService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a Metered Item object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::MeteredItemService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::MeteredItem)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update a Metered Item object. At least one of the fields is required.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::MeteredItemService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::MeteredItem)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end