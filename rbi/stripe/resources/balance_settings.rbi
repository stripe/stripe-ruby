# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Options for customizing account balances and payout settings for a Stripe platform's connected accounts.
  class BalanceSettings < SingletonAPIResource
    class Payments < ::Stripe::StripeObject
      class Payouts < ::Stripe::StripeObject
        class AutomaticTransferRulesByCurrency < ::Stripe::StripeObject
          # The ID of the FinancialAccount that funds will be transferred to during automatic transfers.
          sig { returns(String) }
          def payout_method; end
          # The maximum amount in minor units to transfer to the FinancialAccount. Only applicable when `type` is `transfer_up_to_amount`.
          sig { returns(T.nilable(Integer)) }
          def transfer_up_to_amount; end
          # The type of automatic transfer rule.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Schedule < ::Stripe::StripeObject
          # How frequently funds will be paid out. One of `manual` (payouts only created via API call), `daily`, `weekly`, or `monthly`.
          sig { returns(T.nilable(String)) }
          def interval; end
          # The day of the month funds will be paid out. Only shown if `interval` is monthly. Payouts scheduled between the 29th and 31st of the month are sent on the last day of shorter months.
          sig { returns(T.nilable(T::Array[Integer])) }
          def monthly_payout_days; end
          # The days of the week when available funds are paid out, specified as an array, for example, [`monday`, `tuesday`]. Only shown if `interval` is weekly.
          sig { returns(T.nilable(T::Array[String])) }
          def weekly_payout_days; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Configures per-currency rules for automatically transferring funds from the payments balance to a FinancialAccount.
        sig { returns(T.nilable(T::Hash[String, T::Array[AutomaticTransferRulesByCurrency]])) }
        def automatic_transfer_rules_by_currency; end
        # The minimum balance amount to retain per currency after automatic payouts. Only funds that exceed these amounts are paid out. Learn more about the [minimum balances for automatic payouts](/payouts/minimum-balances-for-automatic-payouts).
        sig { returns(T.nilable(T::Hash[String, Integer])) }
        def minimum_balance_by_currency; end
        # Details on when funds from charges are available, and when they are paid out to an external account. See our [Setting Bank and Debit Card Payouts](https://docs.stripe.com/connect/bank-transfers#payout-information) documentation for details.
        sig { returns(T.nilable(Schedule)) }
        def schedule; end
        # The text that appears on the bank account statement for payouts. If not set, this defaults to the platform's bank descriptor as set in the Dashboard.
        sig { returns(T.nilable(String)) }
        def statement_descriptor; end
        # Whether the funds in this account can be paid out.
        sig { returns(String) }
        def status; end
        def self.inner_class_types
          @inner_class_types = {
            automatic_transfer_rules_by_currency: AutomaticTransferRulesByCurrency,
            schedule: Schedule,
          }
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class SettlementTiming < ::Stripe::StripeObject
        class StartOfDay < ::Stripe::StripeObject
          # Hour at which the customized start of day begins according to the given timezone. Must be a [supported customized start of day hour](/connect/customized-start-of-day#available-timezones-and-cutoffs).
          sig { returns(Integer) }
          def hour; end
          # Minutes at which the customized start of day begins according to the given timezone. Must be either 0 or 30.
          sig { returns(Integer) }
          def minutes; end
          # Timezone for the customized start of day. Must be a [supported customized start of day timezone](/connect/customized-start-of-day#available-timezones-and-cutoffs).
          sig { returns(String) }
          def timezone; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The number of days charge funds are held before becoming available.
        sig { returns(Integer) }
        def delay_days; end
        # The number of days charge funds are held before becoming available. If present, overrides the default, or minimum available, for the account.
        sig { returns(T.nilable(Integer)) }
        def delay_days_override; end
        # Customized start of day configuration for automatic payouts to group and send payments in local timezones with a customized day starting time. For details, see our [Customized start of day](/connect/customized-start-of-day) documentation.
        sig { returns(T.nilable(StartOfDay)) }
        def start_of_day; end
        def self.inner_class_types
          @inner_class_types = {start_of_day: StartOfDay}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # A Boolean indicating if Stripe should try to reclaim negative balances from an attached bank account. See [Understanding Connect account balances](/connect/account-balances) for details. The default value is `false` when [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts, otherwise `true`.
      sig { returns(T.nilable(T::Boolean)) }
      def debit_negative_balances; end
      # The default settlement currency for the account.
      sig { returns(T.nilable(String)) }
      def default_settlement_currency; end
      # Settings specific to the account's payouts.
      sig { returns(T.nilable(Payouts)) }
      def payouts; end
      # A hash of settlement currencies and their states. Each key is an ISO 4217 currency code, and the value is one of `enabled`, `disabled`, or `restricted_by_application`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def settlement_currencies; end
      # Attribute for field settlement_timing
      sig { returns(SettlementTiming) }
      def settlement_timing; end
      def self.inner_class_types
        @inner_class_types = {payouts: Payouts, settlement_timing: SettlementTiming}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # Attribute for field payments
    sig { returns(Payments) }
    def payments; end
  end
end