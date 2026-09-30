# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class FinancialAccountCreateParams < ::Stripe::RequestParams
        class Savings < ::Stripe::RequestParams
          # The currencies that this savings FinancialAccount can hold. Three-letter ISO currency code, in lowercase.
          attr_accessor :holds_currencies

          def initialize(holds_currencies: nil)
            @holds_currencies = holds_currencies
          end
        end

        class Storage < ::Stripe::RequestParams
          class Crypto < ::Stripe::RequestParams
            # The blockchain network configured for each crypto currency. Keys are lowercase currency codes and must identify crypto currencies also present in `holds_currencies`.
            attr_accessor :currency_networks
            # Describes who controls the private keys for the crypto storage.
            attr_accessor :custody_model

            def initialize(currency_networks: nil, custody_model: nil)
              @currency_networks = currency_networks
              @custody_model = custody_model
            end
          end

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
          # Crypto-specific storage configuration. Only populated when `storage.crypto` is passed in the `include` parameter and the FinancialAccount stores crypto assets. Fiat currencies remain configured only through `holds_currencies`.
          attr_accessor :crypto
          # Array of eligibility objects, segmented by bank name and deposit insurance scheme.
          attr_accessor :deposit_insurance_eligibility
          # The usage type for funds in this FinancialAccount. Can be used to specify that the funds are for Consumer activity.
          attr_accessor :funds_usage_type
          # The currencies that this FinancialAccount can hold.
          attr_accessor :holds_currencies

          def initialize(
            crypto: nil,
            deposit_insurance_eligibility: nil,
            funds_usage_type: nil,
            holds_currencies: nil
          )
            @crypto = crypto
            @deposit_insurance_eligibility = deposit_insurance_eligibility
            @funds_usage_type = funds_usage_type
            @holds_currencies = holds_currencies
          end
        end
        # A descriptive name for the FinancialAccount, up to 50 characters long. This name will be used in the Stripe Dashboard and embedded components.
        attr_accessor :display_name
        # Metadata associated with the FinancialAccount.
        attr_accessor :metadata
        # Parameters specific to creating `savings` type FinancialAccounts.
        attr_accessor :savings
        # Parameters specific to creating `storage` type FinancialAccounts.
        attr_accessor :storage
        # The type of FinancialAccount to create.
        attr_accessor :type

        def initialize(display_name: nil, metadata: nil, savings: nil, storage: nil, type: nil)
          @display_name = display_name
          @metadata = metadata
          @savings = savings
          @storage = storage
          @type = type
        end
      end
    end
  end
end
