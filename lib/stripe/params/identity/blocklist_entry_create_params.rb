# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Identity
    class BlocklistEntryCreateParams < ::Stripe::RequestParams
      # When true, the created BlocklistEntry will be used to retroactively unverify matching verifications.
      attr_accessor :check_existing_verifications
      # The type of blocklist entry to be created.
      attr_accessor :entry_type
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The identifier of the VerificationReport to create the BlocklistEntry from.
      attr_accessor :verification_report

      def initialize(
        check_existing_verifications: nil,
        entry_type: nil,
        expand: nil,
        verification_report: nil
      )
        @check_existing_verifications = check_existing_verifications
        @entry_type = entry_type
        @expand = expand
        @verification_report = verification_report
      end
    end
  end
end
