# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # OutboundTransfer represents a single money movement from one FinancialAccount you own to a payout method you also own.
      class OutboundTransfer < APIResource
        class DeliveryOptions < ::Stripe::StripeObject
          # Open Enum. Method for bank account.
          sig { returns(T.nilable(String)) }
          def bank_account; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class From < ::Stripe::StripeObject
          # The monetary amount debited from the sender, only set on responses.
          sig { returns(::Stripe::V2::Amount) }
          def debited; end
          # The FinancialAccount that funds were pulled from.
          sig { returns(String) }
          def financial_account; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class StatusDetails < ::Stripe::StripeObject
          class Failed < ::Stripe::StripeObject
            # Open Enum. The `failed` status reason.
            sig { returns(String) }
            def reason; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Returned < ::Stripe::StripeObject
            # Open Enum. The `returned` status reason.
            sig { returns(String) }
            def reason; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The `failed` status reason.
          sig { returns(T.nilable(Failed)) }
          def failed; end
          # The `returned` status reason.
          sig { returns(T.nilable(Returned)) }
          def returned; end
          def self.inner_class_types
            @inner_class_types = {failed: Failed, returned: Returned}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class StatusTransitions < ::Stripe::StripeObject
          # Timestamp describing when an OutboundTransfer changed status to `canceled`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          sig { returns(T.nilable(String)) }
          def canceled_at; end
          # Timestamp describing when an OutboundTransfer changed status to `failed`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          sig { returns(T.nilable(String)) }
          def failed_at; end
          # Timestamp describing when an OutboundTransfer changed status to `posted`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          sig { returns(T.nilable(String)) }
          def posted_at; end
          # Timestamp describing when an OutboundTransfer changed status to `returned`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          sig { returns(T.nilable(String)) }
          def returned_at; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class To < ::Stripe::StripeObject
          # The monetary amount being credited to the destination.
          sig { returns(::Stripe::V2::Amount) }
          def credited; end
          # The payout method which the OutboundTransfer uses to send payout.
          sig { returns(String) }
          def payout_method; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class TraceId < ::Stripe::StripeObject
          # Possible values are `pending`, `supported`, and `unsupported`. Initially set to `pending`, it changes to
          # `supported` when the recipient bank provides a trace ID, or `unsupported` if the recipient bank doesn't support it.
          # Note that this status may not align with the OutboundPayment or OutboundTransfer status and can remain `pending`
          # even after the payment or transfer is posted.
          sig { returns(String) }
          def status; end
          # The trace ID value if `trace_id.status` is `supported`, otherwise empty.
          sig { returns(T.nilable(String)) }
          def value; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The "presentment amount" for the OutboundTransfer.
        sig { returns(::Stripe::V2::Amount) }
        def amount; end
        # Returns true if the OutboundTransfer can be canceled, and false otherwise.
        sig { returns(T::Boolean) }
        def cancelable; end
        # Time at which the OutboundTransfer was created.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        sig { returns(String) }
        def created; end
        # Delivery options to be used to send the OutboundTransfer.
        sig { returns(T.nilable(DeliveryOptions)) }
        def delivery_options; end
        # An arbitrary string attached to the OutboundTransfer. Often useful for displaying to users.
        sig { returns(T.nilable(String)) }
        def description; end
        # The date when funds are expected to arrive in the payout method. This field is not set if the payout method is in a `failed`, `canceled`, or `returned` state.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        sig { returns(T.nilable(String)) }
        def expected_arrival_date; end
        # The FinancialAccount that funds were pulled from.
        sig { returns(From) }
        def from; end
        # Unique identifier for the OutboundTransfer.
        sig { returns(String) }
        def id; end
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # A link to the Stripe-hosted receipt for this OutboundTransfer. The receipt link remains active for 60 days from the OutboundTransfer creation date. After this period, the link will expire and the receipt url value will be null.
        sig { returns(T.nilable(String)) }
        def receipt_url; end
        # The recipient verification id for this OutboundTransfer. Only required for countries with regulatory mandates to verify recipient names before OutboundTransfer creation.
        sig { returns(T.nilable(String)) }
        def recipient_verification; end
        # The description that appears on the receiving end for an OutboundTransfer (for example, bank statement for external bank transfer). It will default to `STRIPE` if not set on the account settings.
        sig { returns(String) }
        def statement_descriptor; end
        # Closed Enum. Current status of the OutboundTransfer: `processing`, `failed`, `posted`, `returned`, `canceled`.
        # An OutboundTransfer is `processing` if it has been created and is processing.
        # The status changes to `posted` once the OutboundTransfer has been "confirmed" and funds have left the account, or to `failed` or `canceled`.
        # If an OutboundTransfer fails to arrive at its payout method, its status will change to `returned`.
        sig { returns(String) }
        def status; end
        # Status details for an OutboundTransfer in a `failed` or `returned` state.
        sig { returns(T.nilable(StatusDetails)) }
        def status_details; end
        # Hash containing timestamps of when the object transitioned to a particular status.
        sig { returns(T.nilable(StatusTransitions)) }
        def status_transitions; end
        # To which payout method the OutboundTransfer was sent.
        sig { returns(To) }
        def to; end
        # A unique identifier that can be used to track this OutboundTransfer with recipient bank. Banks might call this a “reference number” or something similar.
        sig { returns(TraceId) }
        def trace_id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end