# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # RecipientVerification represents a verification of recipient you intend to send funds to.
      class RecipientVerification < APIResource
        class ConsumedBy < ::Stripe::StripeObject
          # The ID of the OutboundPayment that consumed the RecipientVerification.
          sig { returns(T.nilable(String)) }
          def outbound_payment; end
          # The ID of the OutboundTransfer that consumed the RecipientVerification.
          sig { returns(T.nilable(String)) }
          def outbound_transfer; end
          # The type of resource that consumed the RecipientVerification.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class MatchResultDetails < ::Stripe::StripeObject
          # The business type matched by the provider. Only present for Confirmation of Payee (CoP) verifications.
          sig { returns(T.nilable(String)) }
          def matched_business_type; end
          # The account name associated with the bank account as provided by the VoP provider, only present if there is a match or close match.
          sig { returns(T.nilable(String)) }
          def matched_name; end
          # A message describing the match result.
          sig { returns(String) }
          def message; end
          # The business type provided by the user. Only present for Confirmation of Payee (CoP) verifications.
          sig { returns(T.nilable(String)) }
          def provided_business_type; end
          # The name associated with the provided recipient.
          sig { returns(String) }
          def provided_name; end
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
          sig { returns(T.nilable(String)) }
          def acknowledged_at; end
          # Timestamp describing when a RecipientVerification changed status to `consumed`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          sig { returns(T.nilable(String)) }
          def consumed_at; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The resource that consumed this verification.
        sig { returns(T.nilable(ConsumedBy)) }
        def consumed_by; end
        # Time at which the RecipientVerification was created.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        sig { returns(String) }
        def created; end
        # Time at which the RecipientVerification expires, 5 minutes after the creation. Only applicable for Verification of Payee (VoP) verifications.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        sig { returns(T.nilable(String)) }
        def expires_at; end
        # The ID of the RecipientVerification.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # Closed Enum. Match level of the RecipientVerification: `match`, `close_match`, `no_match`, `unavailable`.
        sig { returns(String) }
        def match_result; end
        # Details for the match result.
        sig { returns(MatchResultDetails) }
        def match_result_details; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # ID of the payout method that was verified.
        sig { returns(String) }
        def payout_method; end
        # ID of the recipient account. Omitted for same-entity payouts.
        sig { returns(T.nilable(String)) }
        def recipient; end
        # Current status of the recipient verification.
        sig { returns(String) }
        def status; end
        # Hash containing timestamps of when the object transitioned to a particular status.
        sig { returns(T.nilable(StatusTransitions)) }
        def status_transitions; end
        # Open Enum. The type of verification performed: `verification_of_payee`, `confirmation_of_payee`.
        sig { returns(String) }
        def verification_type; end
      end
    end
  end
end