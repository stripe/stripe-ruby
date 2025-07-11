# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class FinancialAccountService < StripeService
        class ListParams < Stripe::RequestParams
          # The page limit.
          attr_accessor :limit
          # The status of the FinancialAccount to filter by. By default, closed FinancialAccounts are not returned.
          attr_accessor :status

          def initialize(limit: nil, status: nil)
            @limit = limit
            @status = status
          end
        end

        class CreateParams < Stripe::RequestParams
          class Storage < Stripe::RequestParams
            # The currencies that this FinancialAccount can hold.
            attr_accessor :holds_currencies

            def initialize(holds_currencies: nil)
              @holds_currencies = holds_currencies
            end
          end
          # Metadata associated with the FinancialAccount.
          attr_accessor :metadata
          # Parameters specific to creating `storage` type FinancialAccounts.
          attr_accessor :storage
          # The type of FinancialAccount to create.
          attr_accessor :type

          def initialize(metadata: nil, storage: nil, type: nil)
            @metadata = metadata
            @storage = storage
            @type = type
          end
        end

        class RetrieveParams < Stripe::RequestParams; end

        class CloseParams < Stripe::RequestParams
          class ForwardingSettings < Stripe::RequestParams
            # The address to send forwarded payments to.
            attr_accessor :payment_method
            # The address to send forwarded payouts to.
            attr_accessor :payout_method

            def initialize(payment_method: nil, payout_method: nil)
              @payment_method = payment_method
              @payout_method = payout_method
            end
          end
          # The addresses to forward any incoming transactions to.
          attr_accessor :forwarding_settings

          def initialize(forwarding_settings: nil)
            @forwarding_settings = forwarding_settings
          end
        end

        # Closes a FinancialAccount with or without forwarding settings.
        #
        # ** raises NonZeroBalanceError
        def close(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/money_management/financial_accounts/%<id>s/close", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Creates a new FinancialAccount.
        #
        # ** raises AlreadyExistsError
        # ** raises FeatureNotEnabledError
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/money_management/financial_accounts",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Lists FinancialAccounts in this compartment.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/money_management/financial_accounts",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves the details of an existing FinancialAccount.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/money_management/financial_accounts/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
