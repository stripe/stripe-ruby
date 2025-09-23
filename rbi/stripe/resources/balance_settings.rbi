# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Options for customizing account balances and payout settings for a Stripe platform's connected accounts.
  class BalanceSettings < SingletonAPIResource
    class Payments < Stripe::StripeObject
      class Payouts < Stripe::StripeObject
        class Schedule < Stripe::StripeObject
          # How frequently funds will be paid out. One of `manual` (payouts only created via API call), `daily`, `weekly`, or `monthly`.
          sig { returns(T.nilable(String)) }
          def interval; end
          # The day of the month funds will be paid out. Only shown if `interval` is monthly. Payouts scheduled between the 29th and 31st of the month are sent on the last day of shorter months.
          sig { returns(T.nilable(T::Array[Integer])) }
          def monthly_payout_days; end
          # The days of the week when available funds are paid out, specified as an array, for example, [`monday`, `tuesday`]. Only shown if `interval` is weekly.
          sig { returns(T.nilable(T::Array[String])) }
          def weekly_payout_days; end
        end
        # The minimum balance amount to retain per currency after automatic payouts. Only funds that exceed these amounts are paid out. Learn more about the [minimum balances for automatic payouts](/payouts/minimum-balances-for-automatic-payouts).
        sig { returns(T.nilable(T::Hash[String, Integer])) }
        def minimum_balance_by_currency; end
        # Details on when funds from charges are available, and when they are paid out to an external account. See our [Setting Bank and Debit Card Payouts](https://stripe.com/docs/connect/bank-transfers#payout-information) documentation for details.
        sig { returns(T.nilable(Schedule)) }
        def schedule; end
        # The text that appears on the bank account statement for payouts. If not set, this defaults to the platform's bank descriptor as set in the Dashboard.
        sig { returns(T.nilable(String)) }
        def statement_descriptor; end
        # Whether the funds in this account can be paid out.
        sig { returns(String) }
        def status; end
      end
      class SettlementTiming < Stripe::StripeObject
        # The number of days charge funds are held before becoming available.
        sig { returns(Integer) }
        def delay_days; end
        # The number of days charge funds are held before becoming available. If present, overrides the default, or minimum available, for the account.
        sig { returns(T.nilable(Integer)) }
        def delay_days_override; end
      end
      # A Boolean indicating if Stripe should try to reclaim negative balances from an attached bank account. See [Understanding Connect account balances](/connect/account-balances) for details. The default value is `false` when [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts, otherwise `true`.
      sig { returns(T.nilable(T::Boolean)) }
      def debit_negative_balances; end
      # Settings specific to the account's payouts.
      sig { returns(T.nilable(Payouts)) }
      def payouts; end
      # Attribute for field settlement_timing
      sig { returns(SettlementTiming) }
      def settlement_timing; end
    end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # Attribute for field payments
    sig { returns(Payments) }
    def payments; end
    class UpdateParams < Stripe::RequestParams
      class Payments < Stripe::RequestParams
        class Payouts < Stripe::RequestParams
          class Schedule < Stripe::RequestParams
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
          # The minimum balance amount to retain per currency after automatic payouts. Only funds that exceed these amounts are paid out. Learn more about the [minimum balances for automatic payouts](/payouts/minimum-balances-for-automatic-payouts).
          sig { returns(T.nilable(T.any(String, T::Hash[String, T.any(String, Integer)]))) }
          def minimum_balance_by_currency; end
          sig {
            params(_minimum_balance_by_currency: T.nilable(T.any(String, T::Hash[String, T.any(String, Integer)]))).returns(T.nilable(T.any(String, T::Hash[String, T.any(String, Integer)])))
           }
          def minimum_balance_by_currency=(_minimum_balance_by_currency); end
          # Details on when funds from charges are available, and when they are paid out to an external account. For details, see our [Setting Bank and Debit Card Payouts](/connect/bank-transfers#payout-information) documentation.
          sig {
            returns(T.nilable(::Stripe::BalanceSettings::UpdateParams::Payments::Payouts::Schedule))
           }
          def schedule; end
          sig {
            params(_schedule: T.nilable(::Stripe::BalanceSettings::UpdateParams::Payments::Payouts::Schedule)).returns(T.nilable(::Stripe::BalanceSettings::UpdateParams::Payments::Payouts::Schedule))
           }
          def schedule=(_schedule); end
          # The text that appears on the bank account statement for payouts. If not set, this defaults to the platform's bank descriptor as set in the Dashboard.
          sig { returns(T.nilable(String)) }
          def statement_descriptor; end
          sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
          def statement_descriptor=(_statement_descriptor); end
          sig {
            params(minimum_balance_by_currency: T.nilable(T.any(String, T::Hash[String, T.any(String, Integer)])), schedule: T.nilable(::Stripe::BalanceSettings::UpdateParams::Payments::Payouts::Schedule), statement_descriptor: T.nilable(String)).void
           }
          def initialize(
            minimum_balance_by_currency: nil,
            schedule: nil,
            statement_descriptor: nil
          ); end
        end
        class SettlementTiming < Stripe::RequestParams
          # Change `delay_days` for this account, which determines the number of days charge funds are held before becoming available. The maximum value is 31. Passing an empty string to `delay_days_override` will return `delay_days` to the default, which is the lowest available value for the account. [Learn more about controlling delay days](/connect/manage-payout-schedule).
          sig { returns(T.nilable(T.any(String, Integer))) }
          def delay_days_override; end
          sig {
            params(_delay_days_override: T.nilable(T.any(String, Integer))).returns(T.nilable(T.any(String, Integer)))
           }
          def delay_days_override=(_delay_days_override); end
          sig { params(delay_days_override: T.nilable(T.any(String, Integer))).void }
          def initialize(delay_days_override: nil); end
        end
        # A Boolean indicating whether Stripe should try to reclaim negative balances from an attached bank account. For details, see [Understanding Connect Account Balances](/connect/account-balances).
        sig { returns(T.nilable(T::Boolean)) }
        def debit_negative_balances; end
        sig {
          params(_debit_negative_balances: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
         }
        def debit_negative_balances=(_debit_negative_balances); end
        # Settings specific to the account's payouts.
        sig { returns(T.nilable(::Stripe::BalanceSettings::UpdateParams::Payments::Payouts)) }
        def payouts; end
        sig {
          params(_payouts: T.nilable(::Stripe::BalanceSettings::UpdateParams::Payments::Payouts)).returns(T.nilable(::Stripe::BalanceSettings::UpdateParams::Payments::Payouts))
         }
        def payouts=(_payouts); end
        # Settings related to the account's balance settlement timing.
        sig {
          returns(T.nilable(::Stripe::BalanceSettings::UpdateParams::Payments::SettlementTiming))
         }
        def settlement_timing; end
        sig {
          params(_settlement_timing: T.nilable(::Stripe::BalanceSettings::UpdateParams::Payments::SettlementTiming)).returns(T.nilable(::Stripe::BalanceSettings::UpdateParams::Payments::SettlementTiming))
         }
        def settlement_timing=(_settlement_timing); end
        sig {
          params(debit_negative_balances: T.nilable(T::Boolean), payouts: T.nilable(::Stripe::BalanceSettings::UpdateParams::Payments::Payouts), settlement_timing: T.nilable(::Stripe::BalanceSettings::UpdateParams::Payments::SettlementTiming)).void
         }
        def initialize(debit_negative_balances: nil, payouts: nil, settlement_timing: nil); end
      end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Settings that apply to the [Payments Balance](https://docs.stripe.com/api/balance).
      sig { returns(T.nilable(::Stripe::BalanceSettings::UpdateParams::Payments)) }
      def payments; end
      sig {
        params(_payments: T.nilable(::Stripe::BalanceSettings::UpdateParams::Payments)).returns(T.nilable(::Stripe::BalanceSettings::UpdateParams::Payments))
       }
      def payments=(_payments); end
      sig {
        params(expand: T.nilable(T::Array[String]), payments: T.nilable(::Stripe::BalanceSettings::UpdateParams::Payments)).void
       }
      def initialize(expand: nil, payments: nil); end
    end
  end
end