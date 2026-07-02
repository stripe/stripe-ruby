# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Crypto
    # This object represents a crypto onramp customer. Use it to get their kyc status and payment methods.
    class Customer < APIResource
      extend Stripe::APIOperations::NestedResource

      OBJECT_NAME = "crypto.customer"
      def self.object_name
        "crypto.customer"
      end

      nested_resource_class_methods :crypto_consumer_wallet, operations: %i[list]
      nested_resource_class_methods :payment_token, operations: %i[list]

      class KycTier < ::Stripe::StripeObject
        # The KYC tier level (e.g., l0, l1, l2).
        attr_reader :tier
        # List of errors associated with this KYC tier verification.
        attr_reader :verification_errors
        # The verification status for this KYC tier.
        attr_reader :verification_status

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class Verification < ::Stripe::StripeObject
        # List of errors associated with the verification.
        attr_reader :errors
        # Type of verification.
        attr_reader :name
        # Outcome of the verification.
        attr_reader :status

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Unique identifier for the object.
      attr_reader :id
      # The KYC region determined by the customer's address country.
      attr_reader :kyc_region
      # List of KYC tiers and their verification status.
      attr_reader :kyc_tiers
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The set of KYC Fields provided for this customers.
      attr_reader :provided_fields
      # List of verifications and their outcome.
      attr_reader :verifications

      def self.inner_class_types
        @inner_class_types = { kyc_tiers: KycTier, verifications: Verification }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
