# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # "Options for customizing account balances within Stripe."
  class BalanceSettings < SingletonAPIResource
    include Stripe::APIOperations::SingletonSave

    OBJECT_NAME = "balance_settings"
    def self.object_name
      "balance_settings"
    end

    class Payouts < Stripe::StripeObject
      class Schedule < Stripe::StripeObject
        # How frequently funds will be paid out. One of `manual` (payouts only created via API call), `daily`, `weekly`, or `monthly`.
        attr_reader :interval
        # The day of the month funds will be paid out. Only shown if `interval` is monthly. Payouts scheduled between the 29th and 31st of the month are sent on the last day of shorter months.
        attr_reader :monthly_anchor
        # The day of the week funds will be paid out, of the style 'monday', 'tuesday', etc. Only shown if `interval` is weekly.
        attr_reader :weekly_anchor
      end
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

    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class UpdateParams < Stripe::RequestParams
      class Payouts < Stripe::RequestParams
        class Schedule < Stripe::RequestParams
          # How frequently available funds are paid out. One of: `daily`, `manual`, `weekly`, or `monthly`. Default is `daily`.
          attr_accessor :interval
          # The day of the month when available funds are paid out, specified as a number between 1--31. Payouts nominally scheduled between the 29th and 31st of the month are instead sent on the last day of a shorter month. Required and applicable only if `interval` is `monthly`.
          attr_accessor :monthly_anchor
          # The day of the week when available funds are paid out (required and applicable only if `interval` is `weekly`.)
          attr_accessor :weekly_anchor

          def initialize(interval: nil, monthly_anchor: nil, weekly_anchor: nil)
            @interval = interval
            @monthly_anchor = monthly_anchor
            @weekly_anchor = weekly_anchor
          end
        end
        # Details on when funds from charges are available, and when they are paid out to an external account. For details, see our [Setting Bank and Debit Card Payouts](/connect/bank-transfers#payout-information) documentation.
        attr_accessor :schedule
        # The text that appears on the bank account statement for payouts. If not set, this defaults to the platform's bank descriptor as set in the Dashboard.
        attr_accessor :statement_descriptor

        def initialize(schedule: nil, statement_descriptor: nil)
          @schedule = schedule
          @statement_descriptor = statement_descriptor
        end
      end

      class SettlementTiming < Stripe::RequestParams
        # The number of days charge funds are held before becoming available. May also be set to `minimum`, representing the lowest available value for the account country. Default is `minimum`. The `delay_days` parameter remains at the last configured value if `payouts.schedule.interval` is `manual`. [Learn more about controlling payout delay days](/connect/manage-payout-schedule).
        attr_accessor :delay_days

        def initialize(delay_days: nil)
          @delay_days = delay_days
        end
      end
      # A Boolean indicating whether Stripe should try to reclaim negative balances from an attached bank account. For details, see [Understanding Connect Account Balances](/connect/account-balances).
      attr_accessor :debit_negative_balances
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Settings specific to the account's payouts.
      attr_accessor :payouts
      # Settings related to the account's balance settlement timing.
      attr_accessor :settlement_timing

      def initialize(
        debit_negative_balances: nil,
        expand: nil,
        payouts: nil,
        settlement_timing: nil
      )
        @debit_negative_balances = debit_negative_balances
        @expand = expand
        @payouts = payouts
        @settlement_timing = settlement_timing
      end
    end
    # A Boolean indicating if Stripe should try to reclaim negative balances from an attached bank account. See [Understanding Connect account balances](/connect/account-balances) for details. The default value is `false` when [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts, otherwise `true`.
    attr_reader :debit_negative_balances
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Settings specific to the account's payouts.
    attr_reader :payouts
    # Attribute for field settlement_timing
    attr_reader :settlement_timing
  end
end
