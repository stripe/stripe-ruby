# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # The singleton wallet export for a FinancialAccount.
      class FinancialAccountWalletExport < APIResource
        OBJECT_NAME = "v2.money_management.financial_account_wallet_export"
        def self.object_name
          "v2.money_management.financial_account_wallet_export"
        end

        class Wallet < ::Stripe::StripeObject
          # Public address of the exported wallet.
          attr_reader :address
          # Network on which each stablecoin currency is stored. Keys are lowercase currency codes.
          attr_reader :currency_networks
          # Network family for the wallet address.
          attr_reader :network_type

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # End of the fixed one-hour credentials retrieval window. Null until the first successful credential export; remains readable after expiry.
        attr_reader :credentials_available_until
        # FinancialAccount whose wallet is being exported.
        attr_reader :financial_account
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Current wallet export status. The lifecycle is pending, ready, then complete.
        attr_reader :status
        # Public wallet metadata. Null while pending or ready, and retained after the credential window expires.
        attr_reader :wallets

        def self.inner_class_types
          @inner_class_types = { wallets: Wallet }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
