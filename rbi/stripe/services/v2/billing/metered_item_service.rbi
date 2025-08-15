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
          attr_accessor :limit
          sig { params(limit: T.nilable(Integer)).void }
          def initialize(limit: nil); end
        end
        class CreateParams < Stripe::RequestParams
          class MeterSegmentCondition < Stripe::RequestParams
            # A Meter dimension.
            sig { returns(String) }
            attr_accessor :dimension
            # To count usage towards this MeteredItem, the dimension must have this value.
            sig { returns(String) }
            attr_accessor :value
            sig { params(dimension: String, value: String).void }
            def initialize(dimension: nil, value: nil); end
          end
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
          # Optional array of Meter dimensions to group event dimension keys for invoice line items.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :invoice_presentation_dimensions
          # An internal key you can use to search for a particular billable item.
          # Must be unique among billable items.
          # Maximum length of 200 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :lookup_key
          # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_accessor :metadata
          # ID of the Meter that measures usage for this MeteredItem.
          sig { returns(String) }
          attr_accessor :meter
          # Optional array of Meter segments to filter event dimension keys for billing.
          sig {
            returns(T.nilable(T::Array[::Stripe::V2::Billing::MeteredItemService::CreateParams::MeterSegmentCondition]))
           }
          attr_accessor :meter_segment_conditions
          # Stripe Tax details.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::MeteredItemService::CreateParams::TaxDetails))
           }
          attr_accessor :tax_details
          # The unit to use when displaying prices for this billable item in places like Checkout. For example, set this field
          # to "CPU-hour" for Checkout to display "(price) per CPU-hour", or "1 million events" to display "(price) per 1
          # million events".
          # Maximum length of 100 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :unit_label
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
          # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, T.nilable(String)])) }
          attr_accessor :metadata
          # Stripe Tax details.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::MeteredItemService::UpdateParams::TaxDetails))
           }
          attr_accessor :tax_details
          # The unit to use when displaying prices for this billable item in places like Checkout. For example, set this field
          # to "CPU-hour" for Checkout to display "(price) per CPU-hour", or "1 million events" to display "(price) per 1
          # million events".
          # Maximum length of 100 characters.
          # To remove the unit_label from the object, set it to null in the request.
          sig { returns(T.nilable(T.nilable(String))) }
          attr_accessor :unit_label
          sig {
            params(display_name: T.nilable(String), lookup_key: T.nilable(T.nilable(String)), metadata: T.nilable(T::Hash[String, T.nilable(String)]), tax_details: T.nilable(::Stripe::V2::Billing::MeteredItemService::UpdateParams::TaxDetails), unit_label: T.nilable(T.nilable(String))).void
           }
          def initialize(
            display_name: nil,
            lookup_key: nil,
            metadata: nil,
            tax_details: nil,
            unit_label: nil
          ); end
        end
        # Create a MeteredItem object.
        sig {
          params(params: T.any(::Stripe::V2::Billing::MeteredItemService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::MeteredItem)
         }
        def create(params = {}, opts = {}); end

        # List all MeteredItem objects in reverse chronological order of creation.
        sig {
          params(params: T.any(::Stripe::V2::Billing::MeteredItemService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a MeteredItem object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::MeteredItemService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::MeteredItem)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update a MeteredItem object. At least one of the fields is required.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::MeteredItemService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::MeteredItem)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end