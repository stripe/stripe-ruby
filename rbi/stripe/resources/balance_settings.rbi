# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # "Options for customizing account balances within Stripe."
  class BalanceSettings < SingletonAPIResource
    class Payouts < Stripe::StripeObject
      class Schedule < Stripe::StripeObject
        # How frequently funds will be paid out. One of `manual` (payouts only created via API call), `daily`, `weekly`, or `monthly`.
        sig { returns(T.nilable(String)) }
        attr_reader :interval
        # The day of the month funds will be paid out. Only shown if `interval` is monthly. Payouts scheduled between the 29th and 31st of the month are sent on the last day of shorter months.
        sig { returns(Integer) }
        attr_reader :monthly_anchor
        # The day of the week funds will be paid out, of the style 'monday', 'tuesday', etc. Only shown if `interval` is weekly.
        sig { returns(String) }
        attr_reader :weekly_anchor
      end
      # Details on when funds from charges are available, and when they are paid out to an external account. See our [Setting Bank and Debit Card Payouts](https://stripe.com/docs/connect/bank-transfers#payout-information) documentation for details.
      sig { returns(T.nilable(Schedule)) }
      attr_reader :schedule
      # The text that appears on the bank account statement for payouts. If not set, this defaults to the platform's bank descriptor as set in the Dashboard.
      sig { returns(T.nilable(String)) }
      attr_reader :statement_descriptor
      # Whether the funds in this account can be paid out.
      sig { returns(String) }
      attr_reader :status
    end
    class SettlementTiming < Stripe::StripeObject
      # The number of days charge funds are held before becoming available.
      sig { returns(Integer) }
      attr_reader :delay_days
    end
    # A Boolean indicating if Stripe should try to reclaim negative balances from an attached bank account. See [Understanding Connect account balances](/connect/account-balances) for details. The default value is `false` when [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts, otherwise `true`.
    sig { returns(T.nilable(T::Boolean)) }
    attr_reader :debit_negative_balances
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # Settings specific to the account's payouts.
    sig { returns(T.nilable(Payouts)) }
    attr_reader :payouts
    # Attribute for field settlement_timing
    sig { returns(SettlementTiming) }
    attr_reader :settlement_timing
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      class Payouts < Stripe::RequestParams
        class Schedule < Stripe::RequestParams
          # How frequently available funds are paid out. One of: `daily`, `manual`, `weekly`, or `monthly`. Default is `daily`.
          sig { returns(T.nilable(String)) }
          attr_accessor :interval
          # The day of the month when available funds are paid out, specified as a number between 1--31. Payouts nominally scheduled between the 29th and 31st of the month are instead sent on the last day of a shorter month. Required and applicable only if `interval` is `monthly`.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :monthly_anchor
          # The day of the week when available funds are paid out (required and applicable only if `interval` is `weekly`.)
          sig { returns(T.nilable(String)) }
          attr_accessor :weekly_anchor
          sig {
            params(interval: T.nilable(String), monthly_anchor: T.nilable(Integer), weekly_anchor: T.nilable(String)).void
           }
          def initialize(interval: nil, monthly_anchor: nil, weekly_anchor: nil); end
        end
        # Details on when funds from charges are available, and when they are paid out to an external account. For details, see our [Setting Bank and Debit Card Payouts](/connect/bank-transfers#payout-information) documentation.
        sig { returns(T.nilable(::Stripe::BalanceSettings::UpdateParams::Payouts::Schedule)) }
        attr_accessor :schedule
        # The text that appears on the bank account statement for payouts. If not set, this defaults to the platform's bank descriptor as set in the Dashboard.
        sig { returns(T.nilable(String)) }
        attr_accessor :statement_descriptor
        sig {
          params(schedule: T.nilable(::Stripe::BalanceSettings::UpdateParams::Payouts::Schedule), statement_descriptor: T.nilable(String)).void
         }
        def initialize(schedule: nil, statement_descriptor: nil); end
      end
      class SettlementTiming < Stripe::RequestParams
        # The number of days charge funds are held before becoming available. May also be set to `minimum`, representing the lowest available value for the account country. Default is `minimum`. The `delay_days` parameter remains at the last configured value if `payouts.schedule.interval` is `manual`. [Learn more about controlling payout delay days](/connect/manage-payout-schedule).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :delay_days
        sig { params(delay_days: T.nilable(Integer)).void }
        def initialize(delay_days: nil); end
      end
      # A Boolean indicating whether Stripe should try to reclaim negative balances from an attached bank account. For details, see [Understanding Connect Account Balances](/connect/account-balances).
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :debit_negative_balances
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Settings specific to the account's payouts.
      sig { returns(T.nilable(::Stripe::BalanceSettings::UpdateParams::Payouts)) }
      attr_accessor :payouts
      # Settings related to the account's balance settlement timing.
      sig { returns(T.nilable(::Stripe::BalanceSettings::UpdateParams::SettlementTiming)) }
      attr_accessor :settlement_timing
      sig {
        params(debit_negative_balances: T.nilable(T::Boolean), expand: T.nilable(T::Array[String]), payouts: T.nilable(::Stripe::BalanceSettings::UpdateParams::Payouts), settlement_timing: T.nilable(::Stripe::BalanceSettings::UpdateParams::SettlementTiming)).void
       }
      def initialize(
        debit_negative_balances: nil,
        expand: nil,
        payouts: nil,
        settlement_timing: nil
      ); end
    end
  end
end