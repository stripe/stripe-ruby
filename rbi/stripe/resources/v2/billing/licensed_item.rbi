# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      # A Licensed Item represents a billable item whose pricing is based on license fees. You can use license fees
      # to specify the pricing and create subscriptions to these items.
      class LicensedItem < APIResource
        class TaxDetails < ::Stripe::StripeObject
          # Product tax code (PTC).
          sig { returns(String) }
          def tax_code; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Timestamp of when the object was created.
        sig { returns(String) }
        def created; end
        # Description that customers will see in the invoice line item.
        # Maximum length of 250 characters.
        sig { returns(String) }
        def display_name; end
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # An internal key you can use to search for a particular billable item.
        # Maximum length of 200 characters.
        sig { returns(T.nilable(String)) }
        def lookup_key; end
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Stripe Tax details.
        sig { returns(T.nilable(TaxDetails)) }
        def tax_details; end
        # The unit to use when displaying prices for this billable item in places like Checkout. For example, set this field
        # to "seat" for Checkout to display "(price) per seat", or "environment" to display "(price) per environment".
        # Maximum length of 100 characters.
        sig { returns(T.nilable(String)) }
        def unit_label; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end