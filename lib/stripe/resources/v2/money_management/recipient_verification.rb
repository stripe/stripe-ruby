# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # RecipientVerification represents a verification of recipient you intend to send funds to.
      class RecipientVerification < APIResource
        OBJECT_NAME = "v2.money_management.recipient_verification"
        def self.object_name
          "v2.money_management.recipient_verification"
        end

        class ConsumedBy < ::Stripe::StripeObject
          # The ID of the OutboundPayment that consumed the RecipientVerification.
          attr_reader :outbound_payment
          # The type of resource that consumed the RecipientVerification.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class MatchResultDetails < ::Stripe::StripeObject
          # The business type matched by the provider. Only present for Confirmation of Payee (CoP) verifications.
          attr_reader :matched_business_type
          # The account name associated with the bank account as provided by the VoP provider, only present if there is a match or close match.
          attr_reader :matched_name
          # A message describing the match result.
          attr_reader :message
          # The business type provided by the user. Only present for Confirmation of Payee (CoP) verifications.
          attr_reader :provided_business_type
          # The name associated with the provided recipient.
          attr_reader :provided_name

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class StatusTransitions < ::Stripe::StripeObject
          # Timestamp describing when a RecipientVerification changed status to `acknowledged`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          attr_reader :acknowledged_at
          # Timestamp describing when a RecipientVerification changed status to `consumed`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          attr_reader :consumed_at

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The resource that consumed this verification.
        attr_reader :consumed_by
        # Time at which the RecipientVerification was created.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        attr_reader :created
        # Time at which the RecipientVerification expires, 5 minutes after the creation. Only applicable for Verification of Payee (VoP) verifications.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        attr_reader :expires_at
        # The ID of the RecipientVerification.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # Closed Enum. Match level of the RecipientVerification: `match`, `close_match`, `no_match`, `unavailable`.
        attr_reader :match_result
        # Details for the match result.
        attr_reader :match_result_details
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # ID of the payout method that was verified.
        attr_reader :payout_method
        # ID of the recipient account. Omitted for same-entity payouts.
        attr_reader :recipient
        # Current status of the recipient verification.
        attr_reader :status
        # Hash containing timestamps of when the object transitioned to a particular status.
        attr_reader :status_transitions
        # Open Enum. The type of verification performed: `verification_of_payee`, `confirmation_of_payee`.
        attr_reader :verification_type

        def self.inner_class_types
          @inner_class_types = {
            consumed_by: ConsumedBy,
            match_result_details: MatchResultDetails,
            status_transitions: StatusTransitions,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
