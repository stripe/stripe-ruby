# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # A FundingSession is a hosted funding surface for a customer to fund a FinancialAccount.
      class FundingSession < APIResource
        OBJECT_NAME = "v2.money_management.funding_session"
        def self.object_name
          "v2.money_management.funding_session"
        end

        class FinancialAddressOptions < ::Stripe::StripeObject
          class CryptoWallet < ::Stripe::StripeObject
            # Open Enum. The currency the crypto wallet FinancialAddress settles into the FinancialAccount. Required.
            attr_reader :settlement_currency

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Options for a crypto wallet FinancialAddress. Required if `crypto_wallet` is requested.
          attr_reader :crypto_wallet

          def self.inner_class_types
            @inner_class_types = { crypto_wallet: CryptoWallet }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The ID of the Account that owns the FinancialAccount.
        attr_reader :account
        # The creation timestamp of the FundingSession.
        attr_reader :created
        # The ID of the FinancialAccount this FundingSession funds.
        attr_reader :financial_account
        # Per-type options used when creating the FinancialAddress.
        attr_reader :financial_address_options
        # Open Enum. The types of FinancialAddress that can be funded in this session.
        attr_reader :financial_address_types
        # The ID of the FundingSession. ID prefix: `fndsess`.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The URL the customer is redirected to after completing (or abandoning) the funding session.
        attr_reader :return_url
        # The short-lived hosted funding URL the customer visits to fund the FinancialAccount.
        attr_reader :url

        def self.inner_class_types
          @inner_class_types = { financial_address_options: FinancialAddressOptions }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
