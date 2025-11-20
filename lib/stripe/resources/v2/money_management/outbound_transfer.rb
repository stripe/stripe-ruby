# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # OutboundTransfer represents a single money movement from one FinancialAccount you own to a payout method you also own.
      class OutboundTransfer < APIResource
        OBJECT_NAME = "v2.money_management.outbound_transfer"
        def self.object_name
          "v2.money_management.outbound_transfer"
        end

        class Amount < ::Stripe::StripeObject
          # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
          attr_reader :value
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_reader :currency

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class DeliveryOptions < ::Stripe::StripeObject
          # Open Enum. Method for bank account.
          attr_reader :bank_account

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class From < ::Stripe::StripeObject
          class Debited < ::Stripe::StripeObject
            # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
            attr_reader :value
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            attr_reader :currency

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The monetary amount debited from the sender, only set on responses.
          attr_reader :debited
          # The FinancialAccount that funds were pulled from.
          attr_reader :financial_account

          def self.inner_class_types
            @inner_class_types = { debited: Debited }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class StatusDetails < ::Stripe::StripeObject
          class Failed < ::Stripe::StripeObject
            # Open Enum. The `failed` status reason.
            attr_reader :reason

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Returned < ::Stripe::StripeObject
            # Open Enum. The `returned` status reason.
            attr_reader :reason

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The `failed` status reason.
          attr_reader :failed
          # The `returned` status reason.
          attr_reader :returned

          def self.inner_class_types
            @inner_class_types = { failed: Failed, returned: Returned }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class StatusTransitions < ::Stripe::StripeObject
          # Timestamp describing when an OutboundTransfer changed status to `canceled`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          attr_reader :canceled_at
          # Timestamp describing when an OutboundTransfer changed status to `failed`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          attr_reader :failed_at
          # Timestamp describing when an OutboundTransfer changed status to `posted`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          attr_reader :posted_at
          # Timestamp describing when an OutboundTransfer changed status to `returned`.
          # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
          attr_reader :returned_at

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
            attr_reader :value
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            attr_reader :currency

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The monetary amount being credited to the destination.
          attr_reader :credited
          # The payout method which the OutboundTransfer uses to send payout.
          attr_reader :payout_method

          def self.inner_class_types
            @inner_class_types = { credited: Credited }
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
          attr_reader :status
          # The trace ID value if `trace_id.status` is `supported`, otherwise empty.
          attr_reader :value

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The "presentment amount" for the OutboundTransfer.
        attr_reader :amount
        # Returns true if the OutboundTransfer can be canceled, and false otherwise.
        attr_reader :cancelable
        # Time at which the OutboundTransfer was created.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        attr_reader :created
        # Delivery options to be used to send the OutboundTransfer.
        attr_reader :delivery_options
        # An arbitrary string attached to the OutboundTransfer. Often useful for displaying to users.
        attr_reader :description
        # The date when funds are expected to arrive in the payout method. This field is not set if the payout method is in a `failed`, `canceled`, or `returned` state.
        # Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        attr_reader :expected_arrival_date
        # The FinancialAccount that funds were pulled from.
        attr_reader :from
        # Unique identifier for the OutboundTransfer.
        attr_reader :id
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # A link to the Stripe-hosted receipt for this OutboundTransfer. The receipt link remains active for 60 days from the OutboundTransfer creation date. After this period, the link will expire and the receipt url value will be null.
        attr_reader :receipt_url
        # The description that appears on the receiving end for an OutboundTransfer (for example, bank statement for external bank transfer). It will default to `STRIPE` if not set on the account settings.
        attr_reader :statement_descriptor
        # Closed Enum. Current status of the OutboundTransfer: `processing`, `failed`, `posted`, `returned`, `canceled`.
        # An OutboundTransfer is `processing` if it has been created and is processing.
        # The status changes to `posted` once the OutboundTransfer has been "confirmed" and funds have left the account, or to `failed` or `canceled`.
        # If an OutboundTransfer fails to arrive at its payout method, its status will change to `returned`.
        attr_reader :status
        # Status details for an OutboundTransfer in a `failed` or `returned` state.
        attr_reader :status_details
        # Hash containing timestamps of when the object transitioned to a particular status.
        attr_reader :status_transitions
        # To which payout method the OutboundTransfer was sent.
        attr_reader :to
        # A unique identifier that can be used to track this OutboundTransfer with recipient bank. Banks might call this a “reference number” or something similar.
        attr_reader :trace_id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode

        def self.inner_class_types
          @inner_class_types = {
            amount: Amount,
            delivery_options: DeliveryOptions,
            from: From,
            status_details: StatusDetails,
            status_transitions: StatusTransitions,
            to: To,
            trace_id: TraceId,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
