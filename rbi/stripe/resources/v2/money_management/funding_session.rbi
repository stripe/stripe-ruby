# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # A FundingSession is a hosted funding surface for a customer to fund a FinancialAccount.
      class FundingSession < APIResource
        class FinancialAddressOptions < ::Stripe::StripeObject
          class CryptoWallet < ::Stripe::StripeObject
            # Open Enum. The currency the crypto wallet FinancialAddress settles into the FinancialAccount. Required.
            sig { returns(String) }
            def settlement_currency; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Options for a crypto wallet FinancialAddress. Required if `crypto_wallet` is requested.
          sig { returns(T.nilable(CryptoWallet)) }
          def crypto_wallet; end
          def self.inner_class_types
            @inner_class_types = {crypto_wallet: CryptoWallet}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The ID of the Account that owns the FinancialAccount.
        sig { returns(String) }
        def account; end
        # The creation timestamp of the FundingSession.
        sig { returns(String) }
        def created; end
        # The ID of the FinancialAccount this FundingSession funds.
        sig { returns(String) }
        def financial_account; end
        # Per-type options used when creating the FinancialAddress.
        sig { returns(FinancialAddressOptions) }
        def financial_address_options; end
        # Open Enum. The types of FinancialAddress that can be funded in this session.
        sig { returns(T::Array[String]) }
        def financial_address_types; end
        # The ID of the FundingSession. ID prefix: `fndsess`.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The URL the customer is redirected to after completing (or abandoning) the funding session.
        sig { returns(String) }
        def return_url; end
        # The short-lived hosted funding URL the customer visits to fund the FinancialAccount.
        sig { returns(String) }
        def url; end
      end
    end
  end
end