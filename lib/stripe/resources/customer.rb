# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # This object represents a customer of your business. Use it to create recurring charges and track payments that belong to the same customer.
  #
  # Related guide: [Save a card during payment](https://stripe.com/docs/payments/save-during-payment)
  class Customer < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::Search
    include Stripe::APIOperations::Save
    extend Stripe::APIOperations::NestedResource

    OBJECT_NAME = "customer"

    nested_resource_class_methods :balance_transaction, operations: %i[create retrieve update list]
    nested_resource_class_methods :cash_balance_transaction, operations: %i[retrieve list]
    nested_resource_class_methods :tax_id, operations: %i[create retrieve delete list]

    # Retrieve funding instructions for a customer cash balance. If funding instructions do not yet exist for the customer, new
    # funding instructions will be created. If funding instructions have already been created for a given customer, the same
    # funding instructions will be retrieved. In other words, we will return the same funding instructions each time.
    def create_funding_instructions(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/customers/%<customer>s/funding_instructions", { customer: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Removes the currently applied discount on a customer.
    def delete_discount(params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/customers/%<customer>s/discount", { customer: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Returns a list of PaymentMethods for a given Customer
    def list_payment_methods(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/customers/%<customer>s/payment_methods", { customer: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Retrieves a PaymentMethod object for a given Customer.
    def retrieve_payment_method(payment_method, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/customers/%<customer>s/payment_methods/%<payment_method>s", { customer: CGI.escape(self["id"]), payment_method: CGI.escape(payment_method) }),
        params: params,
        opts: opts
      )
    end

    # Retrieve funding instructions for a customer cash balance. If funding instructions do not yet exist for the customer, new
    # funding instructions will be created. If funding instructions have already been created for a given customer, the same
    # funding instructions will be retrieved. In other words, we will return the same funding instructions each time.
    def self.create_funding_instructions(customer, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/customers/%<customer>s/funding_instructions", { customer: CGI.escape(customer) }),
        params: params,
        opts: opts
      )
    end

    # Removes the currently applied discount on a customer.
    def self.delete_discount(customer, params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/customers/%<customer>s/discount", { customer: CGI.escape(customer) }),
        params: params,
        opts: opts
      )
    end

    # Returns a list of PaymentMethods for a given Customer
    def self.list_payment_methods(customer, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/customers/%<customer>s/payment_methods", { customer: CGI.escape(customer) }),
        params: params,
        opts: opts
      )
    end

    # Retrieves a PaymentMethod object for a given Customer.
    def self.retrieve_payment_method(customer, payment_method, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/customers/%<customer>s/payment_methods/%<payment_method>s", { customer: CGI.escape(customer), payment_method: CGI.escape(payment_method) }),
        params: params,
        opts: opts
      )
    end

    save_nested_resource :source
    nested_resource_class_methods :source,
                                  operations: %i[create retrieve update delete list]

    # The API request for deleting a card or bank account and for detaching a
    # source object are the same.
    class << self
      alias detach_source delete_source
    end

    def self.search(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/customers/search", params: params, opts: opts)
    end

    def self.search_auto_paging_each(params = {}, opts = {}, &blk)
      search(params, opts).auto_paging_each(&blk)
    end

    # Retrieves a customer's cash balance.
    def self.retrieve_cash_balance(customer, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/customers/%<customer>s/cash_balance", { customer: CGI.escape(customer) }),
        params: params,
        opts: opts
      )
    end

    # Changes the settings on a customer's cash balance.
    def self.update_cash_balance(customer, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/customers/%<customer>s/cash_balance", { customer: CGI.escape(customer) }),
        params: params,
        opts: opts
      )
    end

    def test_helpers
      TestHelpers.new(self)
    end

    class TestHelpers < APIResourceTestHelpers
      RESOURCE_CLASS = Customer

      # Create an incoming testmode bank transfer
      def self.fund_cash_balance(customer, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/test_helpers/customers/%<customer>s/fund_cash_balance", { customer: CGI.escape(customer) }),
          params: params,
          opts: opts
        )
      end

      # Create an incoming testmode bank transfer
      def fund_cash_balance(params = {}, opts = {})
        @resource.request_stripe_object(
          method: :post,
          path: format("/v1/test_helpers/customers/%<customer>s/fund_cash_balance", { customer: CGI.escape(@resource["id"]) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
