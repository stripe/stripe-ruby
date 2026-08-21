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
    # Attribute for field country
    attr_reader :country
    # Attribute for field created
    attr_reader :created
    # Attribute for field customer
    attr_reader :customer
    # Present and true when the exemption has been deleted.
    attr_reader :deleted
    # ISO 8601 date (YYYY-MM-DD) when the exemption becomes effective.
    attr_reader :effective_date
    # ISO 8601 date (YYYY-MM-DD) when the exemption expires.
    attr_reader :expiration_date
    # Attribute for field id
    attr_reader :id
    # Attribute for field livemode
    attr_reader :livemode
    # Attribute for field object
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
