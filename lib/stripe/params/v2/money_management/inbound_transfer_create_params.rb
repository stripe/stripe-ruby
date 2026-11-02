# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class InboundTransferCreateParams < ::Stripe::RequestParams
        class From < ::Stripe::RequestParams
          # An optional currency field used to specify which currency is debited from the Payment Method.
          # Since many Payment Methods support only one currency, this field is optional.
          attr_accessor :currency
          # ID of the verified bank account credential to debit for this InboundTransfer (for example, `usba_`), not a Payments API `pm_` PaymentMethod.
          attr_accessor :payment_method

          def initialize(currency: nil, payment_method: nil)
            @currency = currency
            @payment_method = payment_method
          end
        end

        class NetworkDetails < ::Stripe::RequestParams
          class Ach < ::Stripe::RequestParams
            # Optional freeform payment-related information written into the type-7 ACH
            # addenda record of the NACHA submission. Max 80 characters.
            attr_accessor :addenda

            def initialize(addenda: nil)
              @addenda = addenda
            end
          end
          # ACH-specific network details. Only applied when the transfer routes over ACH.
          attr_accessor :ach

          def initialize(ach: nil)
            @ach = ach
          end
        end

        class To < ::Stripe::RequestParams
          # The currency to credit to the FinancialAccount.
          attr_accessor :currency
          # The FinancialAccount that receives the funds.
          attr_accessor :financial_account

          def initialize(currency: nil, financial_account: nil)
            @currency = currency
            @financial_account = financial_account
          end
        end
        # The amount and currency to credit to the FinancialAccount.
        attr_accessor :amount
        # An optional, freeform description field intended to store metadata.
        attr_accessor :description
        # The verified bank account credential to debit for this InboundTransfer.
        attr_accessor :from
        # Network-specific details for the InboundTransfer.
        attr_accessor :network_details
        # An optional statement descriptor surfaced on the payer's bank statement. Max 10 characters.
        # When omitted, Stripe sends its default descriptor.
        attr_accessor :statement_descriptor
        # The FinancialAccount and currency to credit with the transferred funds.
        attr_accessor :to

        def initialize(
          amount: nil,
          description: nil,
          from: nil,
          network_details: nil,
          statement_descriptor: nil,
          to: nil
        )
          @amount = amount
          @description = description
          @from = from
          @network_details = network_details
          @statement_descriptor = statement_descriptor
          @to = to
        end
      end
    end
  end
end
