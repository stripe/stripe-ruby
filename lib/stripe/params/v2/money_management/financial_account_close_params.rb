# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class FinancialAccountCloseParams < ::Stripe::RequestParams
        class ForwardingSettings < ::Stripe::RequestParams
          # The address to send forwarded payments to.
          attr_accessor :payment_method
          # The address to send forwarded payouts to.
          attr_accessor :payout_method
          # Whether to skip forwarding exportable self-custodied wallet balances. Defaults to false. This does not skip non-exportable or fiat balances, inbound-pending checks, or negative-balance requirements.
          attr_accessor :skip_exportable_balances

          def initialize(payment_method: nil, payout_method: nil, skip_exportable_balances: nil)
            @payment_method = payment_method
            @payout_method = payout_method
            @skip_exportable_balances = skip_exportable_balances
          end
        end
        # The addresses to forward any incoming transactions to.
        attr_accessor :forwarding_settings

        def initialize(forwarding_settings: nil)
          @forwarding_settings = forwarding_settings
        end
      end
    end
  end
end
