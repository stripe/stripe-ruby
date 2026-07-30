# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # A FinancialAccount represents a balance and can be used as the source or destination for the money management (`/v2/money_management`) APIs.
      class FinancialAccount < APIResource
        OBJECT_NAME = "v2.money_management.financial_account"
        def self.object_name
          "v2.money_management.financial_account"
        end

        class AccruedFees < ::Stripe::StripeObject
          # The currencies enabled for fee accrual on this FinancialAccount.
          attr_reader :currencies
          # Direction of fee accrual for this FinancialAccount.
          attr_reader :direction

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Balance < ::Stripe::StripeObject
          # Balance that can be used for money movement.
          attr_reader :available
          # Balance of inbound funds that will later transition to the `available` balance.
          attr_reader :inbound_pending
          # Balance of funds that are being used for a pending outbound money movement.
          attr_reader :outbound_pending

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Credit < ::Stripe::StripeObject
          class FundedBy < ::Stripe::StripeObject
            class Platform < ::Stripe::StripeObject
              # The platform FinancialAccount used to fund this credit FinancialAccount.
              attr_reader :financial_account

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Details for platform-funded credit FinancialAccounts.
            attr_reader :platform
            # The type of funding source for this credit FinancialAccount.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = { platform: Platform }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Details about how this credit FinancialAccount is funded.
          attr_reader :funded_by
          # The currencies supported by this credit FinancialAccount.
          attr_reader :supported_currencies

          def self.inner_class_types
            @inner_class_types = { funded_by: FundedBy }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class MultiprocessorSettlement < ::Stripe::StripeObject
          # Settlement currencies enabled for this FinancialAccount.
          attr_reader :settlement_currencies

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Other < ::Stripe::StripeObject
          # The type of the FinancialAccount, represented as a string. Upgrade your API version to see the type reflected in `financial_account.type`.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Payments < ::Stripe::StripeObject
          class BalanceByFundsType < ::Stripe::StripeObject
            class PaymentProcessing < ::Stripe::StripeObject
              # Balance that can be used for money movement.
              attr_reader :available
              # Balance of inbound funds that will later transition to the `available` balance.
              attr_reader :inbound_pending
              # Balance of funds that are being used for a pending outbound money movement.
              attr_reader :outbound_pending

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class StoredValue < ::Stripe::StripeObject
              # Balance that can be used for money movement.
              attr_reader :available
              # Balance of inbound funds that will later transition to the `available` balance.
              attr_reader :inbound_pending
              # Balance of funds that are being used for a pending outbound money movement.
              attr_reader :outbound_pending

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Payment processing funds are those that are received for goods or services and may only be used for payouts to self. These funds may be converted to stored value funds.
            attr_reader :payment_processing
            # Stored value funds may be used for either payouts to self or payments to others.
            attr_reader :stored_value

            def self.inner_class_types
              @inner_class_types = {
                payment_processing: PaymentProcessing,
                stored_value: StoredValue,
              }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class StartingBalance < ::Stripe::StripeObject
            # When the balance was projected.
            attr_reader :at
            # The available balance at the time when the balance was projected.
            attr_reader :available

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The balance of the `payments` FinancialAccount is a mix of payment processing and stored value funds, and this field
          # describes the breakdown between the two. The sum will match the balance of the FinancialAccount.
          attr_reader :balance_by_funds_type
          # The currency that non-settlement currency payments will be converted to.
          attr_reader :default_currency
          # Settlement currencies enabled for this FinancialAccount. Payments in other currencies will be automatically converted to `default_currency`.
          attr_reader :settlement_currencies
          # Describes the available balance when it was projected.
          attr_reader :starting_balance

          def self.inner_class_types
            @inner_class_types = {
              balance_by_funds_type: BalanceByFundsType,
              starting_balance: StartingBalance,
            }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class StatusDetails < ::Stripe::StripeObject
          class Closed < ::Stripe::StripeObject
            class ForwardingSettings < ::Stripe::StripeObject
              # The address to send forwarded payments to.
              attr_reader :payment_method
              # The address to send forwarded payouts to.
              attr_reader :payout_method

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The forwarding settings for the closed FinancialAccount.
            attr_reader :forwarding_settings
            # The reason the FinancialAccount was closed.
            attr_reader :reason

            def self.inner_class_types
              @inner_class_types = { forwarding_settings: ForwardingSettings }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Details related to the closed state of the FinancialAccount.
          attr_reader :closed

          def self.inner_class_types
            @inner_class_types = { closed: Closed }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Storage < ::Stripe::StripeObject
          # The usage type for funds in this FinancialAccount. Can be used to specify that the funds are for Consumer activity.
          attr_reader :funds_usage_type
          # The currencies that this FinancialAccount can hold.
          attr_reader :holds_currencies

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # If this is a `accrued_fees` FinancialAccount, this hash include details specific to `accrued_fees` FinancialAccount.
        attr_reader :accrued_fees
        # Multi-currency balance of this FinancialAccount, split by availability state. Each balance is represented as a hash where the key is the three-letter ISO currency code, in lowercase, and the value is the amount for that currency.
        attr_reader :balance
        # Open Enum. Two-letter country code that represents the country where the LegalEntity associated with the FinancialAccount is based in.
        attr_reader :country
        # Time at which the object was created.
        attr_reader :created
        # If this is a `credit` FinancialAccount, this hash includes details specific to `credit` FinancialAccounts.
        attr_reader :credit
        # A descriptive name for the FinancialAccount, up to 50 characters long. This name will be used in the Stripe Dashboard and embedded components.
        attr_reader :display_name
        # Unique identifier for the object.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # Metadata associated with the FinancialAccount.
        attr_reader :metadata
        # If this is a `multiprocessor_settlement` FinancialAccount, this hash includes details specific to `multiprocessor_settlement` FinancialAccounts.
        attr_reader :multiprocessor_settlement
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # If this is a `other` FinancialAccount, this hash indicates what the actual type is. Upgrade your API version to see it reflected in `type`.
        attr_reader :other
        # If this is a `payments` FinancialAccount, this hash include details specific to `payments` FinancialAccount.
        attr_reader :payments
        # Closed Enum. An enum representing the status of the FinancialAccount. This indicates whether or not the FinancialAccount can be used for any money movement flows.
        attr_reader :status
        # Additional details related to the status of the FinancialAccount.
        attr_reader :status_details
        # If this is a `storage` FinancialAccount, this hash includes details specific to `storage` FinancialAccounts.
        attr_reader :storage
        # Type of the FinancialAccount. An additional hash is included on the FinancialAccount with a name matching this value.
        # It contains additional information specific to the FinancialAccount type.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = {
            accrued_fees: AccruedFees,
            balance: Balance,
            credit: Credit,
            multiprocessor_settlement: MultiprocessorSettlement,
            other: Other,
            payments: Payments,
            status_details: StatusDetails,
            storage: Storage,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
