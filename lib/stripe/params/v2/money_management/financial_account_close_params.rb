# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class FinancialAccountCloseParams < ::Stripe::RequestParams
        class ForwardingSettings < ::Stripe::RequestParams
          # ID of the FinancialAccount that supplies funds to cover negative balances
          # during or after this FinancialAccount's closure.
          attr_accessor :payment_method
          # ID of the FinancialAccount that receives funds forwarded from this FinancialAccount when it closes.
          attr_accessor :payout_method
          # Whether to skip forwarding exportable self-custodied wallet balances. Defaults to false. This does not skip non-exportable or fiat balances, inbound-pending checks, or negative-balance requirements.
          attr_accessor :skip_exportable_balances

          def initialize(payment_method: nil, payout_method: nil, skip_exportable_balances: nil)
            @payment_method = payment_method
            @payout_method = payout_method
            @skip_exportable_balances = skip_exportable_balances
          end
        end
        # Settings that specify where to send positive balances and how to cover negative balances.
        # You must provide these settings if the FinancialAccount has a non-zero balance.
        attr_accessor :forwarding_settings

        def initialize(forwarding_settings: nil)
          @forwarding_settings = forwarding_settings
        end
      end
    end
  end
end
