# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class BalanceSettingsUpdateParams < ::Stripe::RequestParams
    class Payments < ::Stripe::RequestParams
      class Payouts < ::Stripe::RequestParams
        class AutomaticTransferRulesByCurrency < ::Stripe::RequestParams
          # The ID of the FinancialAccount that funds will be transferred to during automatic transfers.
          sig { returns(String) }
          def payout_method; end
          sig { params(_payout_method: String).returns(String) }
          def payout_method=(_payout_method); end
          # The maximum amount in minor units to transfer to the FinancialAccount. Required and only applicable when `type` is `transfer_up_to_amount`.
          sig { returns(T.nilable(Integer)) }
          def transfer_up_to_amount; end
          sig { params(_transfer_up_to_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def transfer_up_to_amount=(_transfer_up_to_amount); end
          # The type of automatic transfer rule.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(payout_method: String, transfer_up_to_amount: T.nilable(Integer), type: String).void
           }
          def initialize(payout_method: nil, transfer_up_to_amount: nil, type: nil); end
        end
        class Schedule < ::Stripe::RequestParams
          # How frequently available funds are paid out. One of: `daily`, `manual`, `weekly`, or `monthly`. Default is `daily`.
          sig { returns(T.nilable(String)) }
          def interval; end
          sig { params(_interval: T.nilable(String)).returns(T.nilable(String)) }
          def interval=(_interval); end
          # The days of the month when available funds are paid out, specified as an array of numbers between 1--31. Payouts nominally scheduled between the 29th and 31st of the month are instead sent on the last day of a shorter month. Required and applicable only if `interval` is `monthly`.
          sig { returns(T.nilable(T::Array[Integer])) }
          def monthly_payout_days; end
          sig {
            params(_monthly_payout_days: T.nilable(T::Array[Integer])).returns(T.nilable(T::Array[Integer]))
           }
          def monthly_payout_days=(_monthly_payout_days); end
          # The days of the week when available funds are paid out, specified as an array, e.g., [`monday`, `tuesday`]. Required and applicable only if `interval` is `weekly`.
          sig { returns(T.nilable(T::Array[String])) }
          def weekly_payout_days; end
          sig {
            params(_weekly_payout_days: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def weekly_payout_days=(_weekly_payout_days); end
          sig {
            params(interval: T.nilable(String), monthly_payout_days: T.nilable(T::Array[Integer]), weekly_payout_days: T.nilable(T::Array[String])).void
           }
          def initialize(interval: nil, monthly_payout_days: nil, weekly_payout_days: nil); end
        end
        # Configures per-currency rules for automatically transferring funds from the payments balance to a FinancialAccount.
        sig {
          returns(T.nilable(T.any(String, T::Hash[String, T.any(String, T::Array[::Stripe::BalanceSettingsUpdateParams::Payments::Payouts::AutomaticTransferRulesByCurrency])])))
         }
        def automatic_transfer_rules_by_currency; end
        sig {
          params(_automatic_transfer_rules_by_currency: T.nilable(T.any(String, T::Hash[String, T.any(String, T::Array[::Stripe::BalanceSettingsUpdateParams::Payments::Payouts::AutomaticTransferRulesByCurrency])]))).returns(T.nilable(T.any(String, T::Hash[String, T.any(String, T::Array[::Stripe::BalanceSettingsUpdateParams::Payments::Payouts::AutomaticTransferRulesByCurrency])])))
         }
        def automatic_transfer_rules_by_currency=(_automatic_transfer_rules_by_currency); end
        # The minimum balance amount to retain per currency after automatic payouts. Only funds that exceed these amounts are paid out. Learn more about the [minimum balances for automatic payouts](/payouts/minimum-balances-for-automatic-payouts).
        sig { returns(T.nilable(T.any(String, T::Hash[String, T.any(String, Integer)]))) }
        def minimum_balance_by_currency; end
        sig {
          params(_minimum_balance_by_currency: T.nilable(T.any(String, T::Hash[String, T.any(String, Integer)]))).returns(T.nilable(T.any(String, T::Hash[String, T.any(String, Integer)])))
         }
        def minimum_balance_by_currency=(_minimum_balance_by_currency); end
        # Details on when funds from charges are available, and when they are paid out to an external account. For details, see our [Setting Bank and Debit Card Payouts](/connect/bank-transfers#payout-information) documentation.
        sig {
          returns(T.nilable(::Stripe::BalanceSettingsUpdateParams::Payments::Payouts::Schedule))
         }
        def schedule; end
        sig {
          params(_schedule: T.nilable(::Stripe::BalanceSettingsUpdateParams::Payments::Payouts::Schedule)).returns(T.nilable(::Stripe::BalanceSettingsUpdateParams::Payments::Payouts::Schedule))
         }
        def schedule=(_schedule); end
        # The text that appears on the bank account statement for payouts. If not set, this defaults to the platform's bank descriptor as set in the Dashboard.
        sig { returns(T.nilable(String)) }
        def statement_descriptor; end
        sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
        def statement_descriptor=(_statement_descriptor); end
        sig {
          params(automatic_transfer_rules_by_currency: T.nilable(T.any(String, T::Hash[String, T.any(String, T::Array[::Stripe::BalanceSettingsUpdateParams::Payments::Payouts::AutomaticTransferRulesByCurrency])])), minimum_balance_by_currency: T.nilable(T.any(String, T::Hash[String, T.any(String, Integer)])), schedule: T.nilable(::Stripe::BalanceSettingsUpdateParams::Payments::Payouts::Schedule), statement_descriptor: T.nilable(String)).void
         }
        def initialize(
          automatic_transfer_rules_by_currency: nil,
          minimum_balance_by_currency: nil,
          schedule: nil,
          statement_descriptor: nil
        ); end
      end
      class SettlementTiming < ::Stripe::RequestParams
        class StartOfDay < ::Stripe::RequestParams
          # Hour at which the customized start of day begins according to the given timezone. Must be a [supported customized start of day hour](/connect/customized-start-of-day#available-timezones-and-cutoffs).
          sig { returns(T.nilable(Integer)) }
          def hour; end
          sig { params(_hour: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def hour=(_hour); end
          # Minutes at which the customized start of day begins according to the given timezone. Must be either 0 or 30.
          sig { returns(T.nilable(Integer)) }
          def minutes; end
          sig { params(_minutes: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def minutes=(_minutes); end
          # Timezone for the customized start of day. Must be a [supported customized start of day timezone](/connect/customized-start-of-day#available-timezones-and-cutoffs).
          sig { returns(T.nilable(String)) }
          def timezone; end
          sig { params(_timezone: T.nilable(String)).returns(T.nilable(String)) }
          def timezone=(_timezone); end
          sig {
            params(hour: T.nilable(Integer), minutes: T.nilable(Integer), timezone: T.nilable(String)).void
           }
          def initialize(hour: nil, minutes: nil, timezone: nil); end
        end
        # Change `delay_days` for this account, which determines the number of days charge funds are held before becoming available. The maximum value is 31. Passing an empty string to `delay_days_override` will return `delay_days` to the default, which is the lowest available value for the account. [Learn more about controlling delay days](/connect/manage-payout-schedule).
        sig { returns(T.nilable(T.any(String, Integer))) }
        def delay_days_override; end
        sig {
          params(_delay_days_override: T.nilable(T.any(String, Integer))).returns(T.nilable(T.any(String, Integer)))
         }
        def delay_days_override=(_delay_days_override); end
        # Customized start of day configuration for automatic payouts to group and send payments in local timezones with a customized day starting time. For details, see our [Customized start of day](/connect/customized-start-of-day) documentation.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::BalanceSettingsUpdateParams::Payments::SettlementTiming::StartOfDay)))
         }
        def start_of_day; end
        sig {
          params(_start_of_day: T.nilable(T.any(String, ::Stripe::BalanceSettingsUpdateParams::Payments::SettlementTiming::StartOfDay))).returns(T.nilable(T.any(String, ::Stripe::BalanceSettingsUpdateParams::Payments::SettlementTiming::StartOfDay)))
         }
        def start_of_day=(_start_of_day); end
        sig {
          params(delay_days_override: T.nilable(T.any(String, Integer)), start_of_day: T.nilable(T.any(String, ::Stripe::BalanceSettingsUpdateParams::Payments::SettlementTiming::StartOfDay))).void
         }
        def initialize(delay_days_override: nil, start_of_day: nil); end
      end
      # A Boolean indicating whether Stripe should try to reclaim negative balances from an attached bank account. For details, see [Understanding Connect Account Balances](/connect/account-balances).
      sig { returns(T.nilable(T::Boolean)) }
      def debit_negative_balances; end
      sig { params(_debit_negative_balances: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def debit_negative_balances=(_debit_negative_balances); end
      # Settings specific to the account's payouts.
      sig { returns(T.nilable(::Stripe::BalanceSettingsUpdateParams::Payments::Payouts)) }
      def payouts; end
      sig {
        params(_payouts: T.nilable(::Stripe::BalanceSettingsUpdateParams::Payments::Payouts)).returns(T.nilable(::Stripe::BalanceSettingsUpdateParams::Payments::Payouts))
       }
      def payouts=(_payouts); end
      # Settings related to the account's balance settlement timing.
      sig { returns(T.nilable(::Stripe::BalanceSettingsUpdateParams::Payments::SettlementTiming)) }
      def settlement_timing; end
      sig {
        params(_settlement_timing: T.nilable(::Stripe::BalanceSettingsUpdateParams::Payments::SettlementTiming)).returns(T.nilable(::Stripe::BalanceSettingsUpdateParams::Payments::SettlementTiming))
       }
      def settlement_timing=(_settlement_timing); end
      sig {
        params(debit_negative_balances: T.nilable(T::Boolean), payouts: T.nilable(::Stripe::BalanceSettingsUpdateParams::Payments::Payouts), settlement_timing: T.nilable(::Stripe::BalanceSettingsUpdateParams::Payments::SettlementTiming)).void
       }
      def initialize(debit_negative_balances: nil, payouts: nil, settlement_timing: nil); end
    end
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # Settings that apply to the [Payments Balance](https://docs.stripe.com/api/balance).
    sig { returns(T.nilable(::Stripe::BalanceSettingsUpdateParams::Payments)) }
    def payments; end
    sig {
      params(_payments: T.nilable(::Stripe::BalanceSettingsUpdateParams::Payments)).returns(T.nilable(::Stripe::BalanceSettingsUpdateParams::Payments))
     }
    def payments=(_payments); end
    sig {
      params(expand: T.nilable(T::Array[String]), payments: T.nilable(::Stripe::BalanceSettingsUpdateParams::Payments)).void
     }
    def initialize(expand: nil, payments: nil); end
  end
end