# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class MeteredItemCreateParams < ::Stripe::RequestParams
        class MeterSegmentCondition < ::Stripe::RequestParams
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
        class TaxDetails < ::Stripe::RequestParams
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
          returns(T.nilable(T::Array[V2::Billing::MeteredItemCreateParams::MeterSegmentCondition]))
         }
        def meter_segment_conditions; end
        sig {
          params(_meter_segment_conditions: T.nilable(T::Array[V2::Billing::MeteredItemCreateParams::MeterSegmentCondition])).returns(T.nilable(T::Array[V2::Billing::MeteredItemCreateParams::MeterSegmentCondition]))
         }
        def meter_segment_conditions=(_meter_segment_conditions); end
        # Stripe Tax details.
        sig { returns(T.nilable(V2::Billing::MeteredItemCreateParams::TaxDetails)) }
        def tax_details; end
        sig {
          params(_tax_details: T.nilable(V2::Billing::MeteredItemCreateParams::TaxDetails)).returns(T.nilable(V2::Billing::MeteredItemCreateParams::TaxDetails))
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
          params(display_name: String, invoice_presentation_dimensions: T.nilable(T::Array[String]), lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), meter: String, meter_segment_conditions: T.nilable(T::Array[V2::Billing::MeteredItemCreateParams::MeterSegmentCondition]), tax_details: T.nilable(V2::Billing::MeteredItemCreateParams::TaxDetails), unit_label: T.nilable(String)).void
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
    end
  end
end