# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class BalanceSettingsService < StripeService
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      sig { params(expand: T::Array[String]).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      class Payouts < Stripe::RequestParams
        class Schedule < Stripe::RequestParams
          # How frequently available funds are paid out. One of: `daily`, `manual`, `weekly`, or `monthly`. Default is `daily`.
          sig { returns(String) }
          attr_accessor :interval
          # The day of the month when available funds are paid out, specified as a number between 1--31. Payouts nominally scheduled between the 29th and 31st of the month are instead sent on the last day of a shorter month. Required and applicable only if `interval` is `monthly`.
          sig { returns(Integer) }
          attr_accessor :monthly_anchor
          # The day of the week when available funds are paid out (required and applicable only if `interval` is `weekly`.)
          sig { returns(String) }
          attr_accessor :weekly_anchor
          sig { params(interval: String, monthly_anchor: Integer, weekly_anchor: String).void }
          def initialize(interval: nil, monthly_anchor: nil, weekly_anchor: nil); end
        end
        # Details on when funds from charges are available, and when they are paid out to an external account. For details, see our [Setting Bank and Debit Card Payouts](/connect/bank-transfers#payout-information) documentation.
        sig { returns(::Stripe::BalanceSettingsService::UpdateParams::Payouts::Schedule) }
        attr_accessor :schedule
        # The text that appears on the bank account statement for payouts. If not set, this defaults to the platform's bank descriptor as set in the Dashboard.
        sig { returns(String) }
        attr_accessor :statement_descriptor
        sig {
          params(schedule: ::Stripe::BalanceSettingsService::UpdateParams::Payouts::Schedule, statement_descriptor: String).void
         }
        def initialize(schedule: nil, statement_descriptor: nil); end
      end
      class SettlementTiming < Stripe::RequestParams
        # The number of days charge funds are held before becoming available. May also be set to `minimum`, representing the lowest available value for the account country. Default is `minimum`. The `delay_days` parameter remains at the last configured value if `payouts.schedule.interval` is `manual`. [Learn more about controlling payout delay days](/connect/manage-payout-schedule).
        sig { returns(Integer) }
        attr_accessor :delay_days
        sig { params(delay_days: Integer).void }
        def initialize(delay_days: nil); end
      end
      # A Boolean indicating whether Stripe should try to reclaim negative balances from an attached bank account. For details, see [Understanding Connect Account Balances](/connect/account-balances).
      sig { returns(T::Boolean) }
      attr_accessor :debit_negative_balances
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # Settings specific to the account's payouts.
      sig { returns(::Stripe::BalanceSettingsService::UpdateParams::Payouts) }
      attr_accessor :payouts
      # Settings related to the account's balance settlement timing.
      sig { returns(::Stripe::BalanceSettingsService::UpdateParams::SettlementTiming) }
      attr_accessor :settlement_timing
      sig {
        params(debit_negative_balances: T::Boolean, expand: T::Array[String], payouts: ::Stripe::BalanceSettingsService::UpdateParams::Payouts, settlement_timing: ::Stripe::BalanceSettingsService::UpdateParams::SettlementTiming).void
       }
      def initialize(
        debit_negative_balances: nil,
        expand: nil,
        payouts: nil,
        settlement_timing: nil
      ); end
    end
    # Retrieves balance settings for a given connected account.
    #  Related guide: [Making API calls for connected accounts](https://stripe.com/connect/authentication)
    sig {
      params(params: T.any(::Stripe::BalanceSettingsService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::BalanceSettings)
     }
    def retrieve(params = {}, opts = {}); end

    # Updates balance settings for a given connected account.
    #  Related guide: [Making API calls for connected accounts](https://stripe.com/connect/authentication)
    sig {
      params(params: T.any(::Stripe::BalanceSettingsService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::BalanceSettings)
     }
    def update(params = {}, opts = {}); end
  end
end