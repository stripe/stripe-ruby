# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class BalanceSettingsService < StripeService
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
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
            # The days of the week when available funds are paid out, specified as an array, e.g., [`monday`, `tuesday`]. (required and applicable only if `interval` is `weekly`.)
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
          # Details on when funds from charges are available, and when they are paid out to an external account. For details, see our [Setting Bank and Debit Card Payouts](/connect/bank-transfers#payout-information) documentation.
          sig {
            returns(T.nilable(::Stripe::BalanceSettingsService::UpdateParams::Payments::Payouts::Schedule))
           }
          def schedule; end
          sig {
            params(_schedule: T.nilable(::Stripe::BalanceSettingsService::UpdateParams::Payments::Payouts::Schedule)).returns(T.nilable(::Stripe::BalanceSettingsService::UpdateParams::Payments::Payouts::Schedule))
           }
          def schedule=(_schedule); end
          # The text that appears on the bank account statement for payouts. If not set, this defaults to the platform's bank descriptor as set in the Dashboard.
          sig { returns(T.nilable(String)) }
          def statement_descriptor; end
          sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
          def statement_descriptor=(_statement_descriptor); end
          sig {
            params(schedule: T.nilable(::Stripe::BalanceSettingsService::UpdateParams::Payments::Payouts::Schedule), statement_descriptor: T.nilable(String)).void
           }
          def initialize(schedule: nil, statement_descriptor: nil); end
        end
        class SettlementTiming < Stripe::RequestParams
          # The number of days charge funds are held before becoming available. May also be set to `minimum`, representing the lowest available value for the account country. Default is `minimum`. The `delay_days` parameter remains at the last configured value if `payouts.schedule.interval` is `manual`. [Learn more about controlling payout delay days](/connect/manage-payout-schedule).
          sig { returns(T.nilable(Integer)) }
          def delay_days_override; end
          sig { params(_delay_days_override: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def delay_days_override=(_delay_days_override); end
          sig { params(delay_days_override: T.nilable(Integer)).void }
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
        sig {
          returns(T.nilable(::Stripe::BalanceSettingsService::UpdateParams::Payments::Payouts))
         }
        def payouts; end
        sig {
          params(_payouts: T.nilable(::Stripe::BalanceSettingsService::UpdateParams::Payments::Payouts)).returns(T.nilable(::Stripe::BalanceSettingsService::UpdateParams::Payments::Payouts))
         }
        def payouts=(_payouts); end
        # Settings related to the account's balance settlement timing.
        sig {
          returns(T.nilable(::Stripe::BalanceSettingsService::UpdateParams::Payments::SettlementTiming))
         }
        def settlement_timing; end
        sig {
          params(_settlement_timing: T.nilable(::Stripe::BalanceSettingsService::UpdateParams::Payments::SettlementTiming)).returns(T.nilable(::Stripe::BalanceSettingsService::UpdateParams::Payments::SettlementTiming))
         }
        def settlement_timing=(_settlement_timing); end
        sig {
          params(debit_negative_balances: T.nilable(T::Boolean), payouts: T.nilable(::Stripe::BalanceSettingsService::UpdateParams::Payments::Payouts), settlement_timing: T.nilable(::Stripe::BalanceSettingsService::UpdateParams::Payments::SettlementTiming)).void
         }
        def initialize(debit_negative_balances: nil, payouts: nil, settlement_timing: nil); end
      end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Settings that apply to the [Payments Balance](https://docs.stripe.com/api/balance).
      sig { returns(::Stripe::BalanceSettingsService::UpdateParams::Payments) }
      def payments; end
      sig {
        params(_payments: ::Stripe::BalanceSettingsService::UpdateParams::Payments).returns(::Stripe::BalanceSettingsService::UpdateParams::Payments)
       }
      def payments=(_payments); end
      sig {
        params(expand: T.nilable(T::Array[String]), payments: ::Stripe::BalanceSettingsService::UpdateParams::Payments).void
       }
      def initialize(expand: nil, payments: nil); end
    end
    # Retrieves balance settings for a given connected account.
    #  Related guide: [Making API calls for connected accounts](https://docs.stripe.com/connect/authentication)
    sig {
      params(params: T.any(::Stripe::BalanceSettingsService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::BalanceSettings)
     }
    def retrieve(params = {}, opts = {}); end

    # Updates balance settings for a given connected account.
    #  Related guide: [Making API calls for connected accounts](https://docs.stripe.com/connect/authentication)
    sig {
      params(params: T.any(::Stripe::BalanceSettingsService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::BalanceSettings)
     }
    def update(params = {}, opts = {}); end
  end
end