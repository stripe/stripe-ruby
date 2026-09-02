# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Location specific customer tax exemptions.
  class CustomerTaxExemption < APIResource
    class Ca < ::Stripe::StripeObject
      # Two-letter Canadian province code (ISO 3166-2). Null for country-wide GST/HST exemptions.
      sig { returns(T.nilable(String)) }
      def state; end
      # The type of Canadian tax (gst_hst, PST, QST, RST).
      sig { returns(String) }
      def tax_type; end
      def self.inner_class_types
        @inner_class_types = {}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class Us < ::Stripe::StripeObject
      # Two-letter US state code (ISO 3166-2).
      sig { returns(String) }
      def state; end
      def self.inner_class_types
        @inner_class_types = {}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    # Attribute for field ca
    sig { returns(T.nilable(Ca)) }
    def ca; end
    # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
    sig { returns(String) }
    def country; end
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def created; end
    # ID of the customer this tax exemption belongs to.
    sig { returns(String) }
    def customer; end
    # Present and true when the exemption has been deleted.
    sig { returns(T.nilable(T::Boolean)) }
    def deleted; end
    # ISO 8601 date (YYYY-MM-DD) when the exemption becomes effective.
    sig { returns(String) }
    def effective_date; end
    # ISO 8601 date (YYYY-MM-DD) when the exemption expires.
    sig { returns(T.nilable(String)) }
    def expiration_date; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
    sig { returns(T::Boolean) }
    def livemode; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # Attribute for field us
    sig { returns(T.nilable(Us)) }
    def us; end
  end
end