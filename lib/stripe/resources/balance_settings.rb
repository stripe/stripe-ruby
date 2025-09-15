# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Options for customizing account balances and payout settings for a Stripe platform's connected accounts.
  #
  # This API is only available for users enrolled in the public preview for Accounts v2 on Stripe Connect.
  # If you are not in this preview, please use the [Accounts v1 API](https://docs.stripe.com/api/accounts?api-version=2025-03-31.basil)
  # to manage your connected accounts' balance settings instead.
  class BalanceSettings < SingletonAPIResource
    include Stripe::APIOperations::SingletonSave

    OBJECT_NAME = "balance_settings"
    def self.object_name
      "balance_settings"
    end

    class Payments < Stripe::StripeObject
      class Payouts < Stripe::StripeObject
        class Schedule < Stripe::StripeObject
          # How frequently funds will be paid out. One of `manual` (payouts only created via API call), `daily`, `weekly`, or `monthly`.
          attr_reader :interval
          # The day of the month funds will be paid out. Only shown if `interval` is monthly. Payouts scheduled between the 29th and 31st of the month are sent on the last day of shorter months.
          attr_reader :monthly_payout_days
          # The days of the week when available funds are paid out, specified as an array, for example, [`monday`, `tuesday`]. Only shown if `interval` is weekly.
          attr_reader :weekly_payout_days
        end
        # The minimum balance amount to retain per currency after automatic payouts. Only funds that exceed these amounts are paid out. Learn more about the [minimum balances for automatic payouts](/payouts/minimum-balances-for-automatic-payouts).
        attr_reader :minimum_balance_by_currency
        # Details on when funds from charges are available, and when they are paid out to an external account. See our [Setting Bank and Debit Card Payouts](https://stripe.com/docs/connect/bank-transfers#payout-information) documentation for details.
        attr_reader :schedule
        # The text that appears on the bank account statement for payouts. If not set, this defaults to the platform's bank descriptor as set in the Dashboard.
        attr_reader :statement_descriptor
        # Whether the funds in this account can be paid out.
        attr_reader :status
      end

      class SettlementTiming < Stripe::StripeObject
        # The number of days charge funds are held before becoming available.
        attr_reader :delay_days
      end
      # A Boolean indicating if Stripe should try to reclaim negative balances from an attached bank account. See [Understanding Connect account balances](/connect/account-balances) for details. The default value is `false` when [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts, otherwise `true`.
      attr_reader :debit_negative_balances
      # Settings specific to the account's payouts.
      attr_reader :payouts
      # Attribute for field settlement_timing
      attr_reader :settlement_timing
    end

    class UpdateParams < Stripe::RequestParams
      class Payments < Stripe::RequestParams
        class Payouts < Stripe::RequestParams
          class Schedule < Stripe::RequestParams
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
          # The minimum balance amount to retain per currency after automatic payouts. Only funds that exceed these amounts are paid out. Learn more about the [minimum balances for automatic payouts](/payouts/minimum-balances-for-automatic-payouts).
          attr_accessor :minimum_balance_by_currency
          # Details on when funds from charges are available, and when they are paid out to an external account. For details, see our [Setting Bank and Debit Card Payouts](/connect/bank-transfers#payout-information) documentation.
          attr_accessor :schedule
          # The text that appears on the bank account statement for payouts. If not set, this defaults to the platform's bank descriptor as set in the Dashboard.
          attr_accessor :statement_descriptor

          def initialize(minimum_balance_by_currency: nil, schedule: nil, statement_descriptor: nil)
            @minimum_balance_by_currency = minimum_balance_by_currency
            @schedule = schedule
            @statement_descriptor = statement_descriptor
          end
        end

        class SettlementTiming < Stripe::RequestParams
          # Change `delay_days` for this account, which determines the number of days charge funds are held before becoming available. The maximum value is 31. Passing an empty string to `delay_days_override` will return `delay_days` to the default, which is the lowest available value for the account. [Learn more about controlling delay days](/connect/manage-payout-schedule).
          attr_accessor :delay_days_override

          def initialize(delay_days_override: nil)
            @delay_days_override = delay_days_override
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
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Attribute for field payments
    attr_reader :payments
  end
end
