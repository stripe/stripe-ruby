# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # TransactionEntries represent individual money movements across different states within a Transaction.
      class TransactionEntry < APIResource
        OBJECT_NAME = "v2.money_management.transaction_entry"
        def self.object_name
          "v2.money_management.transaction_entry"
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

        class TransactionDetails < ::Stripe::StripeObject
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
          # Closed Enum for now, and will be turned into an Open Enum soon. A descriptive category used to classify the Transaction.
          attr_reader :category
          # Indicates the FinancialAccount affected by this Transaction.
          attr_reader :financial_account
          # Details about the Flow object that created the Transaction.
          attr_reader :flow

          def self.inner_class_types
            @inner_class_types = { flow: Flow }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The delta to the FinancialAccount's balance.
        attr_reader :balance_impact
        # Time at which the object was created.
        attr_reader :created
        # Time at which the entry impacted (or will impact if it's in the future) the FinancialAccount balance.
        attr_reader :effective_at
        # Unique identifier for the object.
        attr_reader :id
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The Transaction that this TransactionEntry belongs to.
        attr_reader :transaction
        # Details copied from the transaction that this TransactionEntry belongs to.
        attr_reader :transaction_details
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode

        def self.inner_class_types
          @inner_class_types = {
            balance_impact: BalanceImpact,
            transaction_details: TransactionDetails,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
