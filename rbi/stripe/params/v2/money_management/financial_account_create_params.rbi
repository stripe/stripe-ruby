# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class FinancialAccountCreateParams < ::Stripe::RequestParams
        class Savings < ::Stripe::RequestParams
          # The currencies that this savings FinancialAccount can hold. Three-letter ISO currency code, in lowercase.
          sig { returns(T::Array[String]) }
          def holds_currencies; end
          sig { params(_holds_currencies: T::Array[String]).returns(T::Array[String]) }
          def holds_currencies=(_holds_currencies); end
          sig { params(holds_currencies: T::Array[String]).void }
          def initialize(holds_currencies: nil); end
        end
        class Storage < ::Stripe::RequestParams
          class Crypto < ::Stripe::RequestParams
            # The blockchain network configured for each crypto currency. Keys are lowercase currency codes and must identify crypto currencies also present in `holds_currencies`.
            sig { returns(T::Hash[String, String]) }
            def currency_networks; end
            sig {
              params(_currency_networks: T::Hash[String, String]).returns(T::Hash[String, String])
             }
            def currency_networks=(_currency_networks); end
            # Describes who controls the private keys for the crypto storage.
            sig { returns(String) }
            def custody_model; end
            sig { params(_custody_model: String).returns(String) }
            def custody_model=(_custody_model); end
            sig { params(currency_networks: T::Hash[String, String], custody_model: String).void }
            def initialize(currency_networks: nil, custody_model: nil); end
          end
          class DepositInsuranceEligibility < ::Stripe::RequestParams
            # The bank where funds are stored.
            sig { returns(String) }
            def bank_name; end
            sig { params(_bank_name: String).returns(String) }
            def bank_name=(_bank_name); end
            # Currencies eligible for deposit insurance at this bank under this scheme.
            sig { returns(T::Array[String]) }
            def currencies; end
            sig { params(_currencies: T::Array[String]).returns(T::Array[String]) }
            def currencies=(_currencies); end
            # The deposit insurance scheme.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(bank_name: String, currencies: T::Array[String], type: String).void }
            def initialize(bank_name: nil, currencies: nil, type: nil); end
          end
          # Crypto-specific storage configuration. Only populated when `storage.crypto` is passed in the `include` parameter and the FinancialAccount stores crypto assets. Fiat currencies remain configured only through `holds_currencies`.
          sig {
            returns(T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountCreateParams::Storage::Crypto))
           }
          def crypto; end
          sig {
            params(_crypto: T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountCreateParams::Storage::Crypto)).returns(T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountCreateParams::Storage::Crypto))
           }
          def crypto=(_crypto); end
          # Array of eligibility objects, segmented by bank name and deposit insurance scheme.
          sig {
            returns(T.nilable(T::Array[::Stripe::V2::MoneyManagement::FinancialAccountCreateParams::Storage::DepositInsuranceEligibility]))
           }
          def deposit_insurance_eligibility; end
          sig {
            params(_deposit_insurance_eligibility: T.nilable(T::Array[::Stripe::V2::MoneyManagement::FinancialAccountCreateParams::Storage::DepositInsuranceEligibility])).returns(T.nilable(T::Array[::Stripe::V2::MoneyManagement::FinancialAccountCreateParams::Storage::DepositInsuranceEligibility]))
           }
          def deposit_insurance_eligibility=(_deposit_insurance_eligibility); end
          # The usage type for funds in this FinancialAccount. Can be used to specify that the funds are for Consumer activity.
          sig { returns(T.nilable(String)) }
          def funds_usage_type; end
          sig { params(_funds_usage_type: T.nilable(String)).returns(T.nilable(String)) }
          def funds_usage_type=(_funds_usage_type); end
          # The currencies that this FinancialAccount can hold.
          sig { returns(T::Array[String]) }
          def holds_currencies; end
          sig { params(_holds_currencies: T::Array[String]).returns(T::Array[String]) }
          def holds_currencies=(_holds_currencies); end
          sig {
            params(crypto: T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountCreateParams::Storage::Crypto), deposit_insurance_eligibility: T.nilable(T::Array[::Stripe::V2::MoneyManagement::FinancialAccountCreateParams::Storage::DepositInsuranceEligibility]), funds_usage_type: T.nilable(String), holds_currencies: T::Array[String]).void
           }
          def initialize(
            crypto: nil,
            deposit_insurance_eligibility: nil,
            funds_usage_type: nil,
            holds_currencies: nil
          ); end
        end
        # A descriptive name for the FinancialAccount, up to 50 characters long. This name will be used in the Stripe Dashboard and embedded components.
        sig { returns(T.nilable(String)) }
        def display_name; end
        sig { params(_display_name: T.nilable(String)).returns(T.nilable(String)) }
        def display_name=(_display_name); end
        # Metadata associated with the FinancialAccount.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # Parameters specific to creating `savings` type FinancialAccounts.
        sig {
          returns(T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountCreateParams::Savings))
         }
        def savings; end
        sig {
          params(_savings: T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountCreateParams::Savings)).returns(T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountCreateParams::Savings))
         }
        def savings=(_savings); end
        # Parameters specific to creating `storage` type FinancialAccounts.
        sig {
          returns(T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountCreateParams::Storage))
         }
        def storage; end
        sig {
          params(_storage: T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountCreateParams::Storage)).returns(T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountCreateParams::Storage))
         }
        def storage=(_storage); end
        # The type of FinancialAccount to create.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(display_name: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), savings: T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountCreateParams::Savings), storage: T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountCreateParams::Storage), type: String).void
         }
        def initialize(display_name: nil, metadata: nil, savings: nil, storage: nil, type: nil); end
      end
    end
  end
end