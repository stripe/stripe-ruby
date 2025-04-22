# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class FinancialAddressService < StripeService
        class CreateParams < Stripe::RequestParams
          class CryptoProperties < Stripe::RequestParams
            # The blockchain network of the crypto wallet.
            attr_accessor :network

            def initialize(network: nil)
              @network = network
            end
          end
          # Properties needed to create a FinancialAddress for an FA with USDC currency.
          attr_accessor :crypto_properties
          # Open Enum. The currency the FinancialAddress should support. Currently, only the `usd` and `gbp` values are supported.
          attr_accessor :currency
          # The ID of the FinancialAccount the new FinancialAddress should be associated with.
          attr_accessor :financial_account

          def initialize(crypto_properties: nil, currency: nil, financial_account: nil)
            @crypto_properties = crypto_properties
            @currency = currency
            @financial_account = financial_account
          end
        end

        class ListParams < Stripe::RequestParams
          # The ID of the FinancialAccount for which FinancialAddresses are to be returned.
          attr_accessor :financial_account
          # Open Enum. A list of fields to reveal in the FinancialAddresses returned.
          attr_accessor :include
          # The page limit.
          attr_accessor :limit

          def initialize(financial_account: nil, include: nil, limit: nil)
            @financial_account = financial_account
            @include = include
            @limit = limit
          end
        end

        class RetrieveParams < Stripe::RequestParams
          # Open Enum. A list of fields to reveal in the FinancialAddresses returned.
          attr_accessor :include

          def initialize(include: nil)
            @include = include
          end
        end

        # Create a new FinancialAddress for a FinancialAccount.
        #
        # ** raises FinancialAccountNotOpenError
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/money_management/financial_addresses",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # List all FinancialAddresses for a FinancialAccount.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/money_management/financial_addresses",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve a FinancialAddress. By default, the FinancialAddress will be returned in it's unexpanded state, revealing only the last 4 digits of the account number.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/money_management/financial_addresses/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
