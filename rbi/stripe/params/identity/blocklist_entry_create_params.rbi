# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Identity
    class BlocklistEntryCreateParams < ::Stripe::RequestParams
      # When true, the created BlocklistEntry will be used to retroactively unverify matching verifications.
      sig { returns(T.nilable(T::Boolean)) }
      def check_existing_verifications; end
      sig {
        params(_check_existing_verifications: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
       }
      def check_existing_verifications=(_check_existing_verifications); end
      # The type of blocklist entry to be created.
      sig { returns(String) }
      def entry_type; end
      sig { params(_entry_type: String).returns(String) }
      def entry_type=(_entry_type); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # The identifier of the VerificationReport to create the BlocklistEntry from.
      sig { returns(String) }
      def verification_report; end
      sig { params(_verification_report: String).returns(String) }
      def verification_report=(_verification_report); end
      sig {
        params(check_existing_verifications: T.nilable(T::Boolean), entry_type: String, expand: T.nilable(T::Array[String]), verification_report: String).void
       }
      def initialize(
        check_existing_verifications: nil,
        entry_type: nil,
        expand: nil,
        verification_report: nil
      ); end
    end
  end
end