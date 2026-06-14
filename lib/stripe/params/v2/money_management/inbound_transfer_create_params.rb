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
          # ID of the Payment Method using which IBT will be made.
          attr_accessor :payment_method

          def initialize(currency: nil, payment_method: nil)
            @currency = currency
            @payment_method = payment_method
          end
        end

        class To < ::Stripe::RequestParams
          # The currency in which funds will land in.
          attr_accessor :currency
          # The FinancialAccount that funds will land in.
          attr_accessor :financial_account

          def initialize(currency: nil, financial_account: nil)
            @currency = currency
            @financial_account = financial_account
          end
        end
        # The amount, in specified currency, by which the FinancialAccount balance will increase due to the InboundTransfer.
        attr_accessor :amount
        # An optional, freeform description field intended to store metadata.
        attr_accessor :description
        # Object containing details about where the funds will originate from.
        attr_accessor :from
        # Object containing details about where the funds will land.
        attr_accessor :to

        def initialize(amount: nil, description: nil, from: nil, to: nil)
          @amount = amount
          @description = description
          @from = from
          @to = to
        end
      end
    end
  end
end
