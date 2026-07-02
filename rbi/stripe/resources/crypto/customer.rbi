# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Crypto
    # This object represents a crypto onramp customer. Use it to get their kyc status and payment methods.
    class Customer < APIResource
      class KycTier < ::Stripe::StripeObject
        # The KYC tier level (e.g., l0, l1, l2).
        sig { returns(String) }
        def tier; end
        # List of errors associated with this KYC tier verification.
        sig { returns(T::Array[String]) }
        def verification_errors; end
        # The verification status for this KYC tier.
        sig { returns(String) }
        def verification_status; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Verification < ::Stripe::StripeObject
        # List of errors associated with the verification.
        sig { returns(T::Array[String]) }
        def errors; end
        # Type of verification.
        sig { returns(String) }
        def name; end
        # Outcome of the verification.
        sig { returns(String) }
        def status; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # The KYC region determined by the customer's address country.
      sig { returns(T.nilable(String)) }
      def kyc_region; end
      # List of KYC tiers and their verification status.
      sig { returns(T::Array[KycTier]) }
      def kyc_tiers; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The set of KYC Fields provided for this customers.
      sig { returns(T::Array[String]) }
      def provided_fields; end
      # List of verifications and their outcome.
      sig { returns(T::Array[Verification]) }
      def verifications; end
    end
  end
end