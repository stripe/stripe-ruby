# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class FundingIntentCreateParams < ::Stripe::RequestParams
        class Check < ::Stripe::RequestParams
          # The ID of a File containing the back image of the check.
          sig { returns(T.nilable(String)) }
          def back_image; end
          sig { params(_back_image: T.nilable(String)).returns(T.nilable(String)) }
          def back_image=(_back_image); end
          # The ID of a File containing the front image of the check.
          sig { returns(T.nilable(String)) }
          def front_image; end
          sig { params(_front_image: T.nilable(String)).returns(T.nilable(String)) }
          def front_image=(_front_image); end
          sig { params(back_image: T.nilable(String), front_image: T.nilable(String)).void }
          def initialize(back_image: nil, front_image: nil); end
        end
        class SettlementTiming < ::Stripe::RequestParams
          # The number of days to delay the availability of funds after processing completes.
          sig { returns(T.nilable(Integer)) }
          def delay_days_override; end
          sig { params(_delay_days_override: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def delay_days_override=(_delay_days_override); end
          sig { params(delay_days_override: T.nilable(Integer)).void }
          def initialize(delay_days_override: nil); end
        end
        class To < ::Stripe::RequestParams
          # The currency of the destination FinancialAccount balance.
          sig { returns(String) }
          def currency; end
          sig { params(_currency: String).returns(String) }
          def currency=(_currency); end
          # The ID of the FinancialAccount that receives the funds.
          sig { returns(String) }
          def financial_account; end
          sig { params(_financial_account: String).returns(String) }
          def financial_account=(_financial_account); end
          sig { params(currency: String, financial_account: String).void }
          def initialize(currency: nil, financial_account: nil); end
        end
        # The amount to add to the destination.
        sig { returns(::Stripe::V2::Amount) }
        def amount; end
        sig { params(_amount: ::Stripe::V2::Amount).returns(::Stripe::V2::Amount) }
        def amount=(_amount); end
        # Details for a check FundingIntent.
        sig { returns(T.nilable(::Stripe::V2::MoneyManagement::FundingIntentCreateParams::Check)) }
        def check; end
        sig {
          params(_check: T.nilable(::Stripe::V2::MoneyManagement::FundingIntentCreateParams::Check)).returns(T.nilable(::Stripe::V2::MoneyManagement::FundingIntentCreateParams::Check))
         }
        def check=(_check); end
        # How to confirm the FundingIntent after validation.
        sig { returns(T.nilable(String)) }
        def confirmation_method; end
        sig { params(_confirmation_method: T.nilable(String)).returns(T.nilable(String)) }
        def confirmation_method=(_confirmation_method); end
        # An arbitrary string to attach to the FundingIntent.
        sig { returns(T.nilable(String)) }
        def description; end
        sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_description); end
        # Set of key-value pairs to attach to the FundingIntent.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # Controls when the funds become available after processing.
        sig {
          returns(T.nilable(::Stripe::V2::MoneyManagement::FundingIntentCreateParams::SettlementTiming))
         }
        def settlement_timing; end
        sig {
          params(_settlement_timing: T.nilable(::Stripe::V2::MoneyManagement::FundingIntentCreateParams::SettlementTiming)).returns(T.nilable(::Stripe::V2::MoneyManagement::FundingIntentCreateParams::SettlementTiming))
         }
        def settlement_timing=(_settlement_timing); end
        # The destination for the funds.
        sig { returns(::Stripe::V2::MoneyManagement::FundingIntentCreateParams::To) }
        def to; end
        sig {
          params(_to: ::Stripe::V2::MoneyManagement::FundingIntentCreateParams::To).returns(::Stripe::V2::MoneyManagement::FundingIntentCreateParams::To)
         }
        def to=(_to); end
        # The type of FundingIntent to create.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(amount: ::Stripe::V2::Amount, check: T.nilable(::Stripe::V2::MoneyManagement::FundingIntentCreateParams::Check), confirmation_method: T.nilable(String), description: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), settlement_timing: T.nilable(::Stripe::V2::MoneyManagement::FundingIntentCreateParams::SettlementTiming), to: ::Stripe::V2::MoneyManagement::FundingIntentCreateParams::To, type: String).void
         }
        def initialize(
          amount: nil,
          check: nil,
          confirmation_method: nil,
          description: nil,
          metadata: nil,
          settlement_timing: nil,
          to: nil,
          type: nil
        ); end
      end
    end
  end
end