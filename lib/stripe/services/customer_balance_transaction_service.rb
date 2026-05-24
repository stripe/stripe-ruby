# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class CustomerBalanceTransactionService < StripeService
    # Creates an immutable transaction that updates the customer's credit [balance](https://docs.stripe.com/docs/billing/customer/balance).
    def create(customer, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/customers/%<customer>s/balance_transactions", { customer: CGI.escape(customer) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Returns a list of transactions that updated the customer's [balances](https://docs.stripe.com/docs/billing/customer/balance).
    def list(customer, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/customers/%<customer>s/balance_transactions", { customer: CGI.escape(customer) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves a specific customer balance transaction that updated the customer's [balances](https://docs.stripe.com/docs/billing/customer/balance).
    def retrieve(customer, transaction, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/customers/%<customer>s/balance_transactions/%<transaction>s", { customer: CGI.escape(customer), transaction: CGI.escape(transaction) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Serializes a CustomerBalanceTransaction create request into a batch job JSONL line.
    def serialize_batch_create(customer, params = {}, opts = {})
      request_id = SecureRandom.uuid
      stripe_version = opts[:stripe_version] || Stripe.api_version

      request_body = {
        id: request_id,
        params: params,
        stripe_version: stripe_version,
      }
      request_body[:path_params] = { customer: customer }
      request_body[:context] = opts[:stripe_context] if opts[:stripe_context]
      JSON.generate(request_body)
    end

    # Serializes a CustomerBalanceTransaction update request into a batch job JSONL line.
    def serialize_batch_update(customer, transaction, params = {}, opts = {})
      request_id = SecureRandom.uuid
      stripe_version = opts[:stripe_version] || Stripe.api_version

      request_body = {
        id: request_id,
        params: params,
        stripe_version: stripe_version,
      }
      request_body[:path_params] = { customer: customer, transaction: transaction }
      request_body[:context] = opts[:stripe_context] if opts[:stripe_context]
      JSON.generate(request_body)
    end

    # Most credit balance transaction fields are immutable, but you may update its description and metadata.
    def update(customer, transaction, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/customers/%<customer>s/balance_transactions/%<transaction>s", { customer: CGI.escape(customer), transaction: CGI.escape(transaction) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
