# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # RecipientVerification represents a verification of recipient you intend to send funds to.
      class RecipientVerification < APIResource
        class MatchResultDetails < ::Stripe::StripeObject
          # The account name associated with the bank account as provided by the VoP provider, only present if there is a match or close match.
          sig { returns(T.nilable(String)) }
          def matched_name; end
          # A message describing the match result.
          sig { returns(String) }
          def message; end
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
        # The OBP/OBT ID that consumed this verification, present if one is successfully created.
        sig { returns(T.nilable(String)) }
        def consumed_by; end
        # Time at which the RecipientVerification was created.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        sig { returns(String) }
        def created; end
        # Time at which the RecipientVerification expires, 5 minutes after the creation.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        sig { returns(String) }
        def expires_at; end
        # The ID of the RecipientVerification.
        sig { returns(String) }
        def id; end
        # Closed Enum. Match level of the RecipientVerification: `match`, `close_match`, `no_match`, `unavailable`.
        sig { returns(String) }
        def match_result; end
        # Details for the match result.
        sig { returns(MatchResultDetails) }
        def match_result_details; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Closed Enum. Current status of the RecipientVerification: `verified`, `consumed`, `expired`, `awaiting_acknowledgement`, `acknowledged`.
        sig { returns(String) }
        def status; end
        # Hash containing timestamps of when the object transitioned to a particular status.
        sig { returns(T.nilable(StatusTransitions)) }
        def status_transitions; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end