# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # OutboundPayment represents a single money movement from one FinancialAccount you own to a payout method someone else owns.
      class OutboundPayment < APIResource
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
        class RecipientNotification < Stripe::StripeObject
          # Closed Enum. Configuration option to enable or disable notifications to recipients.
          # Do not send notifications when setting is NONE. Default to account setting when setting is CONFIGURED or not set.
          sig { returns(String) }
          attr_reader :setting
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
          # Timestamp describing when an OutboundPayment changed status to `canceled`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          sig { returns(T.nilable(String)) }
          attr_reader :canceled_at
          # Timestamp describing when an OutboundPayment changed status to `failed`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          sig { returns(T.nilable(String)) }
          attr_reader :failed_at
          # Timestamp describing when an OutboundPayment changed status to `posted`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          sig { returns(T.nilable(String)) }
          attr_reader :posted_at
          # Timestamp describing when an OutboundPayment changed status to `returned`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          sig { returns(T.nilable(String)) }
          attr_reader :returned_at
        end
        class To < Stripe::StripeObject
          # The monetary amount being credited to the destination.
          sig { returns(Stripe::V2::Amount) }
          attr_reader :credited
          # The payout method which the OutboundPayment uses to send payout.
          sig { returns(String) }
          attr_reader :payout_method
          # To which account the OutboundPayment is sent.
          sig { returns(String) }
          attr_reader :recipient
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
        # The "presentment amount" for the OutboundPayment.
        sig { returns(Stripe::V2::Amount) }
        attr_reader :amount
        # Returns true if the OutboundPayment can be canceled, and false otherwise.
        sig { returns(T::Boolean) }
        attr_reader :cancelable
        # Time at which the OutboundPayment was created.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        sig { returns(String) }
        attr_reader :created
        # Delivery options to be used to send the OutboundPayment.
        sig { returns(T.nilable(DeliveryOptions)) }
        attr_reader :delivery_options
        # An arbitrary string attached to the OutboundPayment. Often useful for displaying to users.
        sig { returns(T.nilable(String)) }
        attr_reader :description
        # The date when funds are expected to arrive in the payout method. This field is not set if the payout method is in a `failed`, `canceled`, or `returned` state.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        sig { returns(T.nilable(String)) }
        attr_reader :expected_arrival_date
        # The FinancialAccount that funds were pulled from.
        sig { returns(From) }
        attr_reader :from
        # Unique identifier for the OutboundPayment.
        sig { returns(String) }
        attr_reader :id
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # The quote for this OutboundPayment. Only required for countries with regulatory mandates to display fee estimates before OutboundPayment creation.
        sig { returns(T.nilable(String)) }
        attr_reader :outbound_payment_quote
        # A link to the Stripe-hosted receipt for this OutboundPayment. The receipt link remains active for 60 days from the OutboundPayment creation date. After this period, the link will expire and the receipt url value will be null.
        sig { returns(T.nilable(String)) }
        attr_reader :receipt_url
        # Details about the OutboundPayment notification settings for recipient.
        sig { returns(RecipientNotification) }
        attr_reader :recipient_notification
        # The description that appears on the receiving end for an OutboundPayment (for example, bank statement for external bank transfer). It will default to `STRIPE` if not set on the account settings.
        sig { returns(String) }
        attr_reader :statement_descriptor
        # Closed Enum. Current status of the OutboundPayment: `processing`, `failed`, `posted`, `returned`, `canceled`.
        # An OutboundPayment is `processing` if it has been created and is processing.
        # The status changes to `posted` once the OutboundPayment has been "confirmed" and funds have left the account, or to `failed` or `canceled`.
        # If an OutboundPayment fails to arrive at its payout method, its status will change to `returned`.
        sig { returns(String) }
        attr_reader :status
        # Status details for an OutboundPayment in a `failed` or `returned` state.
        sig { returns(T.nilable(StatusDetails)) }
        attr_reader :status_details
        # Hash containing timestamps of when the object transitioned to a particular status.
        sig { returns(T.nilable(StatusTransitions)) }
        attr_reader :status_transitions
        # To which payout method the OutboundPayment was sent.
        sig { returns(To) }
        attr_reader :to
        # A unique identifier that can be used to track this OutboundPayment with recipient bank. Banks might call this a “reference number” or something similar.
        sig { returns(TraceId) }
        attr_reader :trace_id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        attr_reader :livemode
      end
    end
  end
end