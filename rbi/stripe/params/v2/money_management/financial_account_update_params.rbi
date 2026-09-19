# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class FinancialAccountUpdateParams < ::Stripe::RequestParams
        class ForwardingSettings < ::Stripe::RequestParams
          # The address to send forwarded payments to.
          sig { returns(T.nilable(String)) }
          def payment_method; end
          sig { params(_payment_method: T.nilable(String)).returns(T.nilable(String)) }
          def payment_method=(_payment_method); end
          # The address to send forwarded payouts to.
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
          # Crypto-specific storage configuration used when adding crypto to a fiat-only FinancialAccount.
          # `custody_model` is required for the initial crypto update and cannot be changed afterward.
          sig {
            returns(T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountUpdateParams::Storage::Crypto))
           }
          def crypto; end
          sig {
            params(_crypto: T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountUpdateParams::Storage::Crypto)).returns(T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountUpdateParams::Storage::Crypto))
           }
          def crypto=(_crypto); end
          # The currencies that this storage FinancialAccount can hold a balance in. Three-letter ISO currency code, in lowercase.
          # Adding currencies requires the corresponding holds_currencies storer capabilities to be enabled.
          # Removing currencies is not supported as of March 2026.
          sig { returns(T.nilable(T::Array[String])) }
          def holds_currencies; end
          sig {
            params(_holds_currencies: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def holds_currencies=(_holds_currencies); end
          sig {
            params(crypto: T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountUpdateParams::Storage::Crypto), holds_currencies: T.nilable(T::Array[String])).void
           }
          def initialize(crypto: nil, holds_currencies: nil); end
        end
        # A descriptive name for the FinancialAccount, up to 50 characters long. This name will be used in the Stripe Dashboard and embedded components.
        sig { returns(T.nilable(String)) }
        def display_name; end
        sig { params(_display_name: T.nilable(String)).returns(T.nilable(String)) }
        def display_name=(_display_name); end
        # Forwarding settings for a closed FinancialAccount. Post-close forwarding updates are not yet implemented.
        sig {
          returns(T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountUpdateParams::ForwardingSettings))
         }
        def forwarding_settings; end
        sig {
          params(_forwarding_settings: T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountUpdateParams::ForwardingSettings)).returns(T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountUpdateParams::ForwardingSettings))
         }
        def forwarding_settings=(_forwarding_settings); end
        # Metadata associated with the FinancialAccount.
        sig { returns(T.nilable(T::Hash[String, T.nilable(String)])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, T.nilable(String)])).returns(T.nilable(T::Hash[String, T.nilable(String)]))
         }
        def metadata=(_metadata); end
        # Parameters for updating storage-specific fields on the FinancialAccount.
        sig {
          returns(T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountUpdateParams::Storage))
         }
        def storage; end
        sig {
          params(_storage: T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountUpdateParams::Storage)).returns(T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountUpdateParams::Storage))
         }
        def storage=(_storage); end
        sig {
          params(display_name: T.nilable(String), forwarding_settings: T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountUpdateParams::ForwardingSettings), metadata: T.nilable(T::Hash[String, T.nilable(String)]), storage: T.nilable(::Stripe::V2::MoneyManagement::FinancialAccountUpdateParams::Storage)).void
         }
        def initialize(
          display_name: nil,
          forwarding_settings: nil,
          metadata: nil,
          storage: nil
        ); end
      end
    end
  end
end