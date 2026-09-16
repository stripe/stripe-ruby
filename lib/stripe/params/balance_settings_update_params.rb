# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class BalanceSettingsUpdateParams < ::Stripe::RequestParams
    class Payments < ::Stripe::RequestParams
      class Payouts < ::Stripe::RequestParams
        class AutomaticTransferRulesByCurrency < ::Stripe::RequestParams
          # The ID of the FinancialAccount that funds will be transferred to during automatic transfers.
          attr_accessor :payout_method
          # The maximum amount in minor units to transfer to the FinancialAccount. Required and only applicable when `type` is `transfer_up_to_amount`.
          attr_accessor :transfer_up_to_amount
          # The type of automatic transfer rule.
          attr_accessor :type

          def initialize(payout_method: nil, transfer_up_to_amount: nil, type: nil)
            @payout_method = payout_method
            @transfer_up_to_amount = transfer_up_to_amount
            @type = type
          end
        end

        class Schedule < ::Stripe::RequestParams
          # How frequently available funds are paid out. One of: `daily`, `manual`, `weekly`, or `monthly`. Default is `daily`.
          attr_accessor :interval
          # The days of the month when available funds are paid out, specified as an array of numbers between 1--31. Payouts nominally scheduled between the 29th and 31st of the month are instead sent on the last day of a shorter month. Required and applicable only if `interval` is `monthly`.
          attr_accessor :monthly_payout_days
          # The days of the week when available funds are paid out, specified as an array, e.g., [`monday`, `tuesday`]. Required and applicable only if `interval` is `weekly`.
          attr_accessor :weekly_payout_days

          def initialize(interval: nil, monthly_payout_days: nil, weekly_payout_days: nil)
            @interval = interval
            @monthly_payout_days = monthly_payout_days
            @weekly_payout_days = weekly_payout_days
          end
        end
        # Configures per-currency rules for automatically transferring funds from the payments balance to a FinancialAccount.
        attr_accessor :automatic_transfer_rules_by_currency
        # The minimum balance amount to retain per currency after automatic payouts. Only funds that exceed these amounts are paid out. Learn more about the [minimum balances for automatic payouts](/payouts/minimum-balances-for-automatic-payouts).
        attr_accessor :minimum_balance_by_currency
        # Details on when funds from charges are available, and when they are paid out to an external account. For details, see our [Setting Bank and Debit Card Payouts](/connect/bank-transfers#payout-information) documentation.
        attr_accessor :schedule
        # The text that appears on the bank account statement for payouts. If not set, this defaults to the platform's bank descriptor as set in the Dashboard.
        attr_accessor :statement_descriptor

        def initialize(
          automatic_transfer_rules_by_currency: nil,
          minimum_balance_by_currency: nil,
          schedule: nil,
          statement_descriptor: nil
        )
          @automatic_transfer_rules_by_currency = automatic_transfer_rules_by_currency
          @minimum_balance_by_currency = minimum_balance_by_currency
          @schedule = schedule
          @statement_descriptor = statement_descriptor
        end
      end

      class SettlementTiming < ::Stripe::RequestParams
        class StartOfDay < ::Stripe::RequestParams
          # Hour at which the customized start of day begins according to the given timezone. Must be a [supported customized start of day hour](/connect/customized-start-of-day#available-timezones-and-cutoffs).
          attr_accessor :hour
          # Minutes at which the customized start of day begins according to the given timezone. Must be either 0 or 30.
          attr_accessor :minutes
          # Timezone for the customized start of day. Must be a [supported customized start of day timezone](/connect/customized-start-of-day#available-timezones-and-cutoffs).
          attr_accessor :timezone

          def initialize(hour: nil, minutes: nil, timezone: nil)
            @hour = hour
            @minutes = minutes
            @timezone = timezone
          end
        end
        # Change `delay_days` for this account, which determines the number of days charge funds are held before becoming available. The maximum value is 31. Passing an empty string to `delay_days_override` will return `delay_days` to the default, which is the lowest available value for the account. [Learn more about controlling delay days](/connect/manage-payout-schedule).
        attr_accessor :delay_days_override
        # Customized start of day configuration for automatic payouts to group and send payments in local timezones with a customized day starting time. For details, see our [Customized start of day](/connect/customized-start-of-day) documentation.
        attr_accessor :start_of_day

        def initialize(delay_days_override: nil, start_of_day: nil)
          @delay_days_override = delay_days_override
          @start_of_day = start_of_day
        end
      end
      # A Boolean indicating whether Stripe should try to reclaim negative balances from an attached bank account. For details, see [Understanding Connect Account Balances](/connect/account-balances).
      attr_accessor :debit_negative_balances
      # Settings specific to the account's payouts.
      attr_accessor :payouts
      # Settings related to the account's balance settlement timing.
      attr_accessor :settlement_timing

      def initialize(debit_negative_balances: nil, payouts: nil, settlement_timing: nil)
        @debit_negative_balances = debit_negative_balances
        @payouts = payouts
        @settlement_timing = settlement_timing
      end
    end
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # Settings that apply to the [Payments Balance](https://docs.stripe.com/api/balance).
    attr_accessor :payments

    def initialize(expand: nil, payments: nil)
      @expand = expand
      @payments = payments
    end
  end
end
