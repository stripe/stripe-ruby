# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class FinancialAccountCloseParams < ::Stripe::RequestParams
        class ForwardingSettings < ::Stripe::RequestParams
          # ID of the FinancialAccount that supplies funds to cover negative balances
          # during or after this FinancialAccount's closure.
          sig { returns(T.nilable(String)) }
          def payment_method; end
          sig { params(_payment_method: T.nilable(String)).returns(T.nilable(String)) }
          def payment_method=(_payment_method); end
          # ID of the FinancialAccount that receives funds forwarded from this FinancialAccount when it closes.
          sig { returns(T.nilable(String)) }
          def payout_method; end
          sig { params(_payout_method: T.nilable(String)).returns(T.nilable(String)) }
          def payout_method=(_payout_method); end
          # Whether to skip forwarding exportable self-custodied wallet balances. Defaults to false. This does not skip non-exportable or fiat balances, inbound-pending checks, or negative-balance requirements.
          sig { returns(T.nilable(T::Boolean)) }
          def skip_exportable_balances; end
          sig {
            params(_skip_exportable_balances: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
           }
          def skip_exportable_balances=(_skip_exportable_balances); end
          sig {
            params(payment_method: T.nilable(String), payout_method: T.nilable(String), skip_exportable_balances: T.nilable(T::Boolean)).void
           }
          def initialize(
            payment_method: nil,
            payout_method: nil,
            skip_exportable_balances: nil
          ); end
        end
        # Settings that specify where to send positive balances and how to cover negative balances.
        # You must provide these settings if the FinancialAccount has a non-zero balance.
        sig {
          returns(T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountCloseParams::ForwardingSettings))
         }
        def forwarding_settings; end
        sig {
          params(_forwarding_settings: T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountCloseParams::ForwardingSettings)).returns(T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountCloseParams::ForwardingSettings))
         }
        def forwarding_settings=(_forwarding_settings); end
        sig {
          params(forwarding_settings: T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountCloseParams::ForwardingSettings)).void
         }
        def initialize(forwarding_settings: nil); end
      end
    end
  end
end