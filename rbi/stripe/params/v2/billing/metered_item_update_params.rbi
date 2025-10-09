# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class MeteredItemUpdateParams < ::Stripe::RequestParams
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
        sig { returns(T.nilable(V2::Billing::MeteredItemUpdateParams::TaxDetails)) }
        def tax_details; end
        sig {
          params(_tax_details: T.nilable(V2::Billing::MeteredItemUpdateParams::TaxDetails)).returns(T.nilable(V2::Billing::MeteredItemUpdateParams::TaxDetails))
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
          params(display_name: T.nilable(String), lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, T.nilable(String)]), tax_details: T.nilable(V2::Billing::MeteredItemUpdateParams::TaxDetails), unit_label: T.nilable(String)).void
         }
        def initialize(
          display_name: nil,
          lookup_key: nil,
          metadata: nil,
          tax_details: nil,
          unit_label: nil
        ); end
      end
    end
  end
end