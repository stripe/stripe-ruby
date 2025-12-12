# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # Use Transactions to view changes to your FinancialAccount balance over time. Every flow that moves money, such as OutboundPayments or ReceivedCredits, will have one or more Transactions that describes how the flow impacted your balance. Note that while the FinancialAccount balance will always be up to date, be aware that Transactions and TransactionEntries are created shortly after to reflect changes.
      class Transaction < APIResource
        OBJECT_NAME = "v2.money_management.transaction"
        def self.object_name
          "v2.money_management.transaction"
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

        class BalanceImpact < ::Stripe::StripeObject
          class Available < ::Stripe::StripeObject
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

          class InboundPending < ::Stripe::StripeObject
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

          class OutboundPending < ::Stripe::StripeObject
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
          # Impact to the available balance.
          attr_reader :available
          # Impact to the inbound_pending balance.
          attr_reader :inbound_pending
          # Impact to the outbound_pending balance.
          attr_reader :outbound_pending

          def self.inner_class_types
            @inner_class_types = {
              available: Available,
              inbound_pending: InboundPending,
              outbound_pending: OutboundPending,
            }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Flow < ::Stripe::StripeObject
          # Open Enum. Type of the flow that created the Transaction. The field matching this value will contain the ID of the flow.
          attr_reader :type
          # If applicable, the ID of the Adjustment that created this Transaction.
          attr_reader :adjustment
          # In the future, this will be the ID of the currency conversion that created this Transaction. For now, this field is always null.
          attr_reader :currency_conversion
          # If applicable, the ID of the FeeTransaction that created this Transaction.
          attr_reader :fee_transaction
          # If applicable, the ID of the InboundTransfer that created this Transaction.
          attr_reader :inbound_transfer
          # If applicable, the ID of the OutboundPayment that created this Transaction.
          attr_reader :outbound_payment
          # If applicable, the ID of the OutboundTransfer that created this Transaction.
          attr_reader :outbound_transfer
          # If applicable, the ID of the ReceivedCredit that created this Transaction.
          attr_reader :received_credit
          # If applicable, the ID of the ReceivedDebit that created this Transaction.
          attr_reader :received_debit

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class StatusTransitions < ::Stripe::StripeObject
          # The time at which the Transaction became posted. Only present if status == posted.
          attr_reader :posted_at
          # The time at which the Transaction became void. Only present if status == void.
          attr_reader :void_at

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The amount of the Transaction.
        attr_reader :amount
        # The delta to the FinancialAccount's balance. The balance_impact for the Transaction is equal to sum of its
        # TransactionEntries that have `effective_at`s in the past.
        attr_reader :balance_impact
        # Open Enum. A descriptive category used to classify the Transaction.
        attr_reader :category
        # Time at which the object was created. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        attr_reader :created
        # Indicates the FinancialAccount affected by this Transaction.
        attr_reader :financial_account
        # Details about the Flow object that created the Transaction.
        attr_reader :flow
        # Unique identifier for the object.
        attr_reader :id
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Closed Enum. Current status of the Transaction.
        # A Transaction is `pending` if either `balance_impact.inbound_pending` or `balance_impact.outbound_pending` is non-zero.
        # A Transaction is `posted` if only `balance_impact.available` is non-zero.
        # A Transaction is `void` if there is no balance impact.
        # `posted` and `void` are terminal states, and no additional entries will be added to the Transaction.
        attr_reader :status
        # Timestamps for when the Transaction transitioned to a particular status.
        attr_reader :status_transitions
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode

        def self.inner_class_types
          @inner_class_types = {
            amount: Amount,
            balance_impact: BalanceImpact,
            flow: Flow,
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
