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
    # Attribute for field country
    sig { returns(String) }
    def country; end
    # Attribute for field created
    sig { returns(Integer) }
    def created; end
    # Attribute for field customer
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
    # Attribute for field id
    sig { returns(String) }
    def id; end
    # Attribute for field livemode
    sig { returns(T::Boolean) }
    def livemode; end
    # Attribute for field object
    sig { returns(String) }
    def object; end
    # Attribute for field us
    sig { returns(T.nilable(Us)) }
    def us; end
  end
end