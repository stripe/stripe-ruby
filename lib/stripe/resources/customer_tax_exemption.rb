# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Location specific customer tax exemptions.
  class CustomerTaxExemption < APIResource
    OBJECT_NAME = "customer_tax_exemption"
    def self.object_name
      "customer_tax_exemption"
    end

    class Ca < ::Stripe::StripeObject
      # Two-letter Canadian province code (ISO 3166-2). Null for country-wide GST/HST exemptions.
      attr_reader :state
      # The type of Canadian tax (gst_hst, PST, QST, RST).
      attr_reader :tax_type

      def self.inner_class_types
        @inner_class_types = {}
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end

    class Us < ::Stripe::StripeObject
      # Two-letter US state code (ISO 3166-2).
      attr_reader :state

      def self.inner_class_types
        @inner_class_types = {}
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
    # Attribute for field ca
    attr_reader :ca
    # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
    attr_reader :country
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # ID of the customer this tax exemption belongs to.
    attr_reader :customer
    # Present and true when the exemption has been deleted.
    attr_reader :deleted
    # ISO 8601 date (YYYY-MM-DD) when the exemption becomes effective.
    attr_reader :effective_date
    # ISO 8601 date (YYYY-MM-DD) when the exemption expires.
    attr_reader :expiration_date
    # Unique identifier for the object.
    attr_reader :id
    # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
    attr_reader :livemode
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Attribute for field us
    attr_reader :us

    def self.inner_class_types
      @inner_class_types = { ca: Ca, us: Us }
    end

    def self.field_remappings
      @field_remappings = {}
    end
  end
end
