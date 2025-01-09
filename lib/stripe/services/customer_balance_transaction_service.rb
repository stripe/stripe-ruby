# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class CustomerBalanceTransactionService < StripeService
    class ListParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil)
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @starting_after = starting_after
      end
    end

    class CreateParams < Stripe::RequestParams
      # The integer amount in **cents (or local equivalent)** to apply to the customer's credit balance.
      attr_accessor :amount
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). Specifies the [`invoice_credit_balance`](https://stripe.com/docs/api/customers/object#customer_object-invoice_credit_balance) that this transaction will apply to. If the customer's `currency` is not set, it will be updated to this value.
      attr_accessor :currency
      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata

      def initialize(amount: nil, currency: nil, description: nil, expand: nil, metadata: nil)
        @amount = amount
        @currency = currency
        @description = description
        @expand = expand
        @metadata = metadata
      end
    end

    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class UpdateParams < Stripe::RequestParams
      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata

      def initialize(description: nil, expand: nil, metadata: nil)
        @description = description
        @expand = expand
        @metadata = metadata
      end
    end

    # Creates an immutable transaction that updates the customer's credit [balance](https://stripe.com/docs/billing/customer/balance).
    def create(customer, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/customers/%<customer>s/balance_transactions", { customer: CGI.escape(customer) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Returns a list of transactions that updated the customer's [balances](https://stripe.com/docs/billing/customer/balance).
    def list(customer, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/customers/%<customer>s/balance_transactions", { customer: CGI.escape(customer) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves a specific customer balance transaction that updated the customer's [balances](https://stripe.com/docs/billing/customer/balance).
    def retrieve(customer, transaction, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/customers/%<customer>s/balance_transactions/%<transaction>s", { customer: CGI.escape(customer), transaction: CGI.escape(transaction) }),
        params: params,
        opts: opts,
        base_address: :api
      )
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
