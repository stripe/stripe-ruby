# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # The singleton wallet export for a FinancialAccount.
      class FinancialAccountWalletExport < APIResource
        class Wallet < ::Stripe::StripeObject
          # Public address of the exported wallet.
          sig { returns(String) }
          def address; end
          # Network on which each stablecoin currency is stored. Keys are lowercase currency codes.
          sig { returns(T::Hash[String, String]) }
          def currency_networks; end
          # Network family for the wallet address.
          sig { returns(String) }
          def network_type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # End of the fixed one-hour credentials retrieval window. Null until the first successful credential export; remains readable after expiry.
        sig { returns(T.nilable(String)) }
        def credentials_available_until; end
        # FinancialAccount whose wallet is being exported.
        sig { returns(String) }
        def financial_account; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Current wallet export status. The lifecycle is pending, ready, then complete.
        sig { returns(String) }
        def status; end
        # Public wallet metadata. Null while pending or ready, and retained after the credential window expires.
        sig { returns(T.nilable(T::Array[Wallet])) }
        def wallets; end
      end
    end
  end
end