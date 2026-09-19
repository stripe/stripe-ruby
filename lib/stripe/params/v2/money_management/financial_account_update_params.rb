# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class FinancialAccountUpdateParams < ::Stripe::RequestParams
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
          # Crypto-specific storage configuration used when adding crypto to a fiat-only FinancialAccount.
          # `custody_model` is required for the initial crypto update and cannot be changed afterward.
          attr_accessor :crypto
          # The currencies that this storage FinancialAccount can hold a balance in. Three-letter ISO currency code, in lowercase.
          # Adding currencies requires the corresponding holds_currencies storer capabilities to be enabled.
          # Removing currencies is not supported as of March 2026.
          attr_accessor :holds_currencies

          def initialize(crypto: nil, holds_currencies: nil)
            @crypto = crypto
            @holds_currencies = holds_currencies
          end
        end
        # A descriptive name for the FinancialAccount, up to 50 characters long. This name will be used in the Stripe Dashboard and embedded components.
        attr_accessor :display_name
        # Forwarding settings for a closed FinancialAccount. Post-close forwarding updates are not yet implemented.
        attr_accessor :forwarding_settings
        # Metadata associated with the FinancialAccount.
        attr_accessor :metadata
        # Parameters for updating storage-specific fields on the FinancialAccount.
        attr_accessor :storage

        def initialize(display_name: nil, forwarding_settings: nil, metadata: nil, storage: nil)
          @display_name = display_name
          @forwarding_settings = forwarding_settings
          @metadata = metadata
          @storage = storage
        end
      end
    end
  end
end
