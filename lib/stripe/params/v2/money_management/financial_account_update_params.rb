# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class FinancialAccountUpdateParams < ::Stripe::RequestParams
        class FlowSettings < ::Stripe::RequestParams
          class ReceivedDebits < ::Stripe::RequestParams
            class Ach < ::Stripe::RequestParams
              # Whether ACH received debits are enabled. Omit to preserve the current setting, which defaults to true. Other restrictions still apply.
              attr_accessor :enabled
              # Controls whether ACH debits without a matching active mandate are allowed or rejected.
              attr_accessor :mandate_behavior
              # Account-level per-debit limit. Set to null to clear the limit.
              attr_accessor :transaction_limit

              def initialize(enabled: nil, mandate_behavior: nil, transaction_limit: nil)
                @enabled = enabled
                @mandate_behavior = mandate_behavior
                @transaction_limit = transaction_limit
              end
            end
            # Settings for ACH received debits.
            attr_accessor :ach

            def initialize(ach: nil)
              @ach = ach
            end
          end
          # Settings for received debit flows.
          attr_accessor :received_debits

          def initialize(received_debits: nil)
            @received_debits = received_debits
          end
        end

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
        # A descriptive name for the FinancialAccount, up to 50 characters long. This name appears in the Stripe Dashboard and embedded components.
        attr_accessor :display_name
        # Sparse flow setting updates. Omitting a field leaves its current value unchanged.
        attr_accessor :flow_settings
        # Forwarding settings for a closed FinancialAccount. Post-close forwarding updates are not yet implemented.
        attr_accessor :forwarding_settings
        # Set of key-value pairs that you can attach to the FinancialAccount. Individual keys can be unset by posting
        # null to them.
        attr_accessor :metadata
        # Parameters for updating storage-specific fields on the FinancialAccount.
        attr_accessor :storage

        def initialize(
          display_name: nil,
          flow_settings: nil,
          forwarding_settings: nil,
          metadata: nil,
          storage: nil
        )
          @display_name = display_name
          @flow_settings = flow_settings
          @forwarding_settings = forwarding_settings
          @metadata = metadata
          @storage = storage
        end
      end
    end
  end
end
