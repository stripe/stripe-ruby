# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # OutboundPayment represents a single money movement from one FinancialAccount you own to a payout method someone else owns.
      class OutboundPayment < APIResource
        class Amount < ::Stripe::StripeObject
          # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
          sig { returns(T.nilable(Integer)) }
          def value; end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(T.nilable(String)) }
          def currency; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class DeliveryOptions < ::Stripe::StripeObject
          class PaperCheck < ::Stripe::StripeObject
            # Memo printed on the memo field of the check.
            sig { returns(T.nilable(String)) }
            def memo; end
            # Open Enum. Shipping speed of the paper check.
            sig { returns(String) }
            def shipping_speed; end
            # Signature for the paper check.
            sig { returns(String) }
            def signature; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Open Enum. Speed of the payout.
          sig { returns(T.nilable(String)) }
          def speed; end
          # Open Enum. Method for bank account.
          sig { returns(T.nilable(String)) }
          def bank_account; end
          # Delivery options for paper check.
          sig { returns(T.nilable(PaperCheck)) }
          def paper_check; end
          def self.inner_class_types
            @inner_class_types = {paper_check: PaperCheck}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class From < ::Stripe::StripeObject
          class Debited < ::Stripe::StripeObject
            # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
            sig { returns(T.nilable(Integer)) }
            def value; end
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(T.nilable(String)) }
            def currency; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The monetary amount debited from the sender, only set on responses.
          sig { returns(Debited) }
          def debited; end
          # The FinancialAccount that funds were pulled from.
          sig { returns(String) }
          def financial_account; end
          def self.inner_class_types
            @inner_class_types = {debited: Debited}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class RecipientNotification < ::Stripe::StripeObject
          # Closed Enum. Configuration option to enable or disable notifications to recipients.
          # Do not send notifications when setting is NONE. Default to account setting when setting is CONFIGURED or not set.
          sig { returns(String) }
          def setting; end
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
          # Timestamp describing when an OutboundPayment changed status to `canceled`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          sig { returns(T.nilable(String)) }
          def canceled_at; end
          # Timestamp describing when an OutboundPayment changed status to `failed`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          sig { returns(T.nilable(String)) }
          def failed_at; end
          # Timestamp describing when an OutboundPayment changed status to `posted`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          sig { returns(T.nilable(String)) }
          def posted_at; end
          # Timestamp describing when an OutboundPayment changed status to `returned`.
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
          class Credited < ::Stripe::StripeObject
            # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
            sig { returns(T.nilable(Integer)) }
            def value; end
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(T.nilable(String)) }
            def currency; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The monetary amount being credited to the destination.
          sig { returns(Credited) }
          def credited; end
          # The payout method which the OutboundPayment uses to send payout.
          sig { returns(String) }
          def payout_method; end
          # To which account the OutboundPayment is sent.
          sig { returns(String) }
          def recipient; end
          def self.inner_class_types
            @inner_class_types = {credited: Credited}
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
        class TrackingDetails < ::Stripe::StripeObject
          class PaperCheck < ::Stripe::StripeObject
            class MailingAddress < ::Stripe::StripeObject
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(String)) }
              def city; end
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(T.nilable(String)) }
              def country; end
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(T.nilable(String)) }
              def line1; end
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(T.nilable(String)) }
              def line2; end
              # ZIP or postal code.
              sig { returns(T.nilable(String)) }
              def postal_code; end
              # State, county, province, or region.
              sig { returns(T.nilable(String)) }
              def state; end
              # Town or district.
              sig { returns(T.nilable(String)) }
              def town; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Open Enum. Carrier of the paper check.
            sig { returns(String) }
            def carrier; end
            # Check number.
            sig { returns(String) }
            def check_number; end
            # Postal code of the latest tracking update.
            sig { returns(String) }
            def current_postal_code; end
            # Mailing address of the paper check.
            sig { returns(MailingAddress) }
            def mailing_address; end
            # Tracking number for the check.
            sig { returns(String) }
            def tracking_number; end
            # Open Enum. Tracking status of the paper check.
            sig { returns(String) }
            def tracking_status; end
            # When the tracking details were last updated.
            sig { returns(String) }
            def updated_at; end
            def self.inner_class_types
              @inner_class_types = {mailing_address: MailingAddress}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Paper check tracking details.
          sig { returns(T.nilable(PaperCheck)) }
          def paper_check; end
          def self.inner_class_types
            @inner_class_types = {paper_check: PaperCheck}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The "presentment amount" for the OutboundPayment.
        sig { returns(Amount) }
        def amount; end
        # Returns true if the OutboundPayment can be canceled, and false otherwise.
        sig { returns(T::Boolean) }
        def cancelable; end
        # Time at which the OutboundPayment was created.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        sig { returns(String) }
        def created; end
        # Delivery options to be used to send the OutboundPayment.
        sig { returns(T.nilable(DeliveryOptions)) }
        def delivery_options; end
        # An arbitrary string attached to the OutboundPayment. Often useful for displaying to users.
        sig { returns(T.nilable(String)) }
        def description; end
        # The date when funds are expected to arrive in the payout method. This field is not set if the payout method is in a `failed`, `canceled`, or `returned` state.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        sig { returns(T.nilable(String)) }
        def expected_arrival_date; end
        # The FinancialAccount that funds were pulled from.
        sig { returns(From) }
        def from; end
        # Unique identifier for the OutboundPayment.
        sig { returns(String) }
        def id; end
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The quote for this OutboundPayment. Only required for countries with regulatory mandates to display fee estimates before OutboundPayment creation.
        sig { returns(T.nilable(String)) }
        def outbound_payment_quote; end
        # A link to the Stripe-hosted receipt for this OutboundPayment. The receipt link remains active for 60 days from the OutboundPayment creation date. After this period, the link will expire and the receipt url value will be null.
        sig { returns(T.nilable(String)) }
        def receipt_url; end
        # Details about the OutboundPayment notification settings for recipient.
        sig { returns(RecipientNotification) }
        def recipient_notification; end
        # The recipient verification id for this OutboundPayment. Only required for countries with regulatory mandates to verify recipient names before OutboundPayment creation.
        sig { returns(T.nilable(String)) }
        def recipient_verification; end
        # The description that appears on the receiving end for an OutboundPayment (for example, bank statement for external bank transfer). It will default to `STRIPE` if not set on the account settings.
        sig { returns(String) }
        def statement_descriptor; end
        # Closed Enum. Current status of the OutboundPayment: `processing`, `failed`, `posted`, `returned`, `canceled`.
        # An OutboundPayment is `processing` if it has been created and is processing.
        # The status changes to `posted` once the OutboundPayment has been "confirmed" and funds have left the account, or to `failed` or `canceled`.
        # If an OutboundPayment fails to arrive at its payout method, its status will change to `returned`.
        sig { returns(String) }
        def status; end
        # Status details for an OutboundPayment in a `failed` or `returned` state.
        sig { returns(T.nilable(StatusDetails)) }
        def status_details; end
        # Hash containing timestamps of when the object transitioned to a particular status.
        sig { returns(T.nilable(StatusTransitions)) }
        def status_transitions; end
        # To which payout method the OutboundPayment was sent.
        sig { returns(To) }
        def to; end
        # A unique identifier that can be used to track this OutboundPayment with recipient bank. Banks might call this a “reference number” or something similar.
        sig { returns(TraceId) }
        def trace_id; end
        # Information to track this OutboundPayment with the recipient bank.
        sig { returns(T.nilable(TrackingDetails)) }
        def tracking_details; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end