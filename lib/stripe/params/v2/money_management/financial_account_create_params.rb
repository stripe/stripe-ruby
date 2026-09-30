# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class FinancialAccountCreateParams < ::Stripe::RequestParams
        class Storage < ::Stripe::RequestParams
          class DepositInsuranceEligibility < ::Stripe::RequestParams
            # The bank where funds are stored.
            attr_accessor :bank_name
            # Currencies eligible for deposit insurance at this bank under this scheme.
            attr_accessor :currencies
            # The deposit insurance scheme.
            attr_accessor :type

            def initialize(bank_name: nil, currencies: nil, type: nil)
              @bank_name = bank_name
              @currencies = currencies
              @type = type
            end
          end
          # Array of eligibility objects, segmented by bank name and deposit insurance scheme.
          attr_accessor :deposit_insurance_eligibility
          # The currencies that this FinancialAccount can hold.
          attr_accessor :holds_currencies

          def initialize(deposit_insurance_eligibility: nil, holds_currencies: nil)
            @deposit_insurance_eligibility = deposit_insurance_eligibility
            @holds_currencies = holds_currencies
          end
        end
        # A descriptive name for the FinancialAccount, up to 50 characters long. This name will be used in the Stripe Dashboard and embedded components.
        attr_accessor :display_name
        # Metadata associated with the FinancialAccount.
        attr_accessor :metadata
        # Parameters specific to creating `storage` type FinancialAccounts.
        attr_accessor :storage
        # The type of FinancialAccount to create.
        attr_accessor :type

        def initialize(display_name: nil, metadata: nil, storage: nil, type: nil)
          @display_name = display_name
          @metadata = metadata
          @storage = storage
          @type = type
        end
      end
    end
  end
end
