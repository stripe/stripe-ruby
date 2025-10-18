# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class OutboundSetupIntentUpdateParams < ::Stripe::RequestParams
        class PayoutMethodData < ::Stripe::RequestParams
          class BankAccount < ::Stripe::RequestParams
            # The account number or IBAN of the bank account.
            attr_accessor :account_number
            # Closed Enum. The type of the bank account (checking or savings).
            attr_accessor :bank_account_type
            # The branch number of the bank account, if present.
            attr_accessor :branch_number
            # The country code of the bank account.
            attr_accessor :country
            # The routing number of the bank account, if present.
            attr_accessor :routing_number
            # The swift code of the bank account, if present.
            attr_accessor :swift_code

            def initialize(
              account_number: nil,
              bank_account_type: nil,
              branch_number: nil,
              country: nil,
              routing_number: nil,
              swift_code: nil
            )
              @account_number = account_number
              @bank_account_type = bank_account_type
              @branch_number = branch_number
              @country = country
              @routing_number = routing_number
              @swift_code = swift_code
            end
          end

          class Card < ::Stripe::RequestParams
            # The expiration month of the card.
            attr_accessor :exp_month
            # The expiration year of the card.
            attr_accessor :exp_year
            # The card number. This can only be passed when creating a new credential on an outbound setup intent in the requires_payout_method state.
            attr_accessor :number

            def initialize(exp_month: nil, exp_year: nil, number: nil)
              @exp_month = exp_month
              @exp_year = exp_year
              @number = number
            end
          end
          # Closed Enum. The type of payout method to be created/updated.
          attr_accessor :type
          # The type specific details of the bank account payout method.
          attr_accessor :bank_account
          # The type specific details of the card payout method.
          attr_accessor :card

          def initialize(type: nil, bank_account: nil, card: nil)
            @type = type
            @bank_account = bank_account
            @card = card
          end
        end
        # If provided, the existing payout method resource to link to this outbound setup intent.
        attr_accessor :payout_method
        # If no payout_method provided, used to create the underlying credential that is set up for outbound money movement.
        # If a payout_method provided, used to update data on the credential linked to this setup intent.
        attr_accessor :payout_method_data

        def initialize(payout_method: nil, payout_method_data: nil)
          @payout_method = payout_method
          @payout_method_data = payout_method_data
        end
      end
    end
  end
end
