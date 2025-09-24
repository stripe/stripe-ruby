# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class FinancialAddressService < StripeService
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

        class CreateParams < Stripe::RequestParams
          class SepaBankAccount < Stripe::RequestParams
            # The originating country of the SEPA Bank account.
            attr_accessor :country

            def initialize(country: nil)
              @country = country
            end
          end
          # The ID of the FinancialAccount the new FinancialAddress should be associated with.
          attr_accessor :financial_account
          # Optional SEPA Bank account options, used to configure the type of SEPA Bank account to create, such as the originating country.
          attr_accessor :sepa_bank_account
          # The type of FinancialAddress details to provision.
          attr_accessor :type

          def initialize(financial_account: nil, sepa_bank_account: nil, type: nil)
            @financial_account = financial_account
            @sepa_bank_account = sepa_bank_account
            @type = type
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
        # ** raises FeatureNotEnabledError
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

        # Retrieve a FinancialAddress. By default, the FinancialAddress will be returned in its unexpanded state, revealing only the last 4 digits of the account number.
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
