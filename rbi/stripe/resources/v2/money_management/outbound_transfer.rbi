# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # OutboundTransfer represents a single money movement from one FinancialAccount you own to a payout method you also own.
      class OutboundTransfer < APIResource
        class DeliveryOptions < Stripe::StripeObject
          # Open Enum. Method for bank account.
          sig { returns(T.nilable(String)) }
          attr_reader :bank_account
        end
        class From < Stripe::StripeObject
          # The monetary amount debited from the sender, only set on responses.
          sig { returns(Stripe::V2::Amount) }
          attr_reader :debited
          # The FinancialAccount that funds were pulled from.
          sig { returns(String) }
          attr_reader :financial_account
        end
        class StatusDetails < Stripe::StripeObject
          class Failed < Stripe::StripeObject
            # Open Enum. The `failed` status reason.
            sig { returns(String) }
            attr_reader :reason
          end
          class Returned < Stripe::StripeObject
            # Open Enum. The `returned` status reason.
            sig { returns(String) }
            attr_reader :reason
          end
          # The `failed` status reason.
          sig { returns(T.nilable(Failed)) }
          attr_reader :failed
          # The `returned` status reason.
          sig { returns(T.nilable(Returned)) }
          attr_reader :returned
        end
        class StatusTransitions < Stripe::StripeObject
          # Timestamp describing when an OutboundTransfer changed status to `canceled`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          sig { returns(T.nilable(String)) }
          attr_reader :canceled_at
          # Timestamp describing when an OutboundTransfer changed status to `failed`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          sig { returns(T.nilable(String)) }
          attr_reader :failed_at
          # Timestamp describing when an OutboundTransfer changed status to `posted`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          sig { returns(T.nilable(String)) }
          attr_reader :posted_at
          # Timestamp describing when an OutboundTransfer changed status to `returned`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          sig { returns(T.nilable(String)) }
          attr_reader :returned_at
        end
        class To < Stripe::StripeObject
          # The monetary amount being credited to the destination.
          sig { returns(Stripe::V2::Amount) }
          attr_reader :credited
          # The payout method which the OutboundTransfer uses to send payout.
          sig { returns(String) }
          attr_reader :payout_method
        end
        class TraceId < Stripe::StripeObject
          # Possible values are `pending`, `supported`, and `unsupported`. Initially set to `pending`, it changes to
          # `supported` when the recipient bank provides a trace ID, or `unsupported` if the recipient bank doesn't support it.
          # Note that this status may not align with the OutboundPayment or OutboundTransfer status and can remain `pending`
          # even after the payment or transfer is posted.
          sig { returns(String) }
          attr_reader :status
          # The trace ID value if `trace_id.status` is `supported`, otherwise empty.
          sig { returns(T.nilable(String)) }
          attr_reader :value
        end
        # The "presentment amount" for the OutboundTransfer.
        sig { returns(Stripe::V2::Amount) }
        attr_reader :amount
        # Returns true if the OutboundTransfer can be canceled, and false otherwise.
        sig { returns(T::Boolean) }
        attr_reader :cancelable
        # Time at which the OutboundTransfer was created.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        sig { returns(String) }
        attr_reader :created
        # Delivery options to be used to send the OutboundTransfer.
        sig { returns(T.nilable(DeliveryOptions)) }
        attr_reader :delivery_options
        # An arbitrary string attached to the OutboundTransfer. Often useful for displaying to users.
        sig { returns(T.nilable(String)) }
        attr_reader :description
        # The date when funds are expected to arrive in the payout method. This field is not set if the payout method is in a `failed`, `canceled`, or `returned` state.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        sig { returns(T.nilable(String)) }
        attr_reader :expected_arrival_date
        # The FinancialAccount that funds were pulled from.
        sig { returns(From) }
        attr_reader :from
        # Unique identifier for the OutboundTransfer.
        sig { returns(String) }
        attr_reader :id
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # A hosted transaction receipt URL that is provided when money movement is considered regulated under Stripe's money transmission licenses.
        sig { returns(String) }
        attr_reader :receipt_url
        # The description that appears on the receiving end for an OutboundTransfer (for example, bank statement for external bank transfer).
        sig { returns(String) }
        attr_reader :statement_descriptor
        # Closed Enum. Current status of the OutboundTransfer: `processing`, `failed`, `posted`, `returned`, `canceled`.
        # An OutboundTransfer is `processing` if it has been created and is processing.
        # The status changes to `posted` once the OutboundTransfer has been "confirmed" and funds have left the account, or to `failed` or `canceled`.
        # If an OutboundTransfer fails to arrive at its payout method, its status will change to `returned`.
        sig { returns(String) }
        attr_reader :status
        # Status details for an OutboundTransfer in a `failed` or `returned` state.
        sig { returns(T.nilable(StatusDetails)) }
        attr_reader :status_details
        # Hash containing timestamps of when the object transitioned to a particular status.
        sig { returns(T.nilable(StatusTransitions)) }
        attr_reader :status_transitions
        # To which payout method the OutboundTransfer was sent.
        sig { returns(To) }
        attr_reader :to
        # A unique identifier that can be used to track this OutboundTransfer with recipient bank. Banks might call this a “reference number” or something similar.
        sig { returns(TraceId) }
        attr_reader :trace_id
      end
    end
  end
end