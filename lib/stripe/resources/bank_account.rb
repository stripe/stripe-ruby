# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # These bank accounts are payment methods on `Customer` objects.
  #
  # On the other hand [External Accounts](https://stripe.com/api#external_accounts) are transfer
  # destinations on `Account` objects for connected accounts.
  # They can be bank accounts or debit cards as well, and are documented in the links above.
  #
  # Related guide: [Bank debits and transfers](https://stripe.com/payments/bank-debits-transfers)
  class BankAccount < APIResource
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "bank_account"
    def self.object_name
      "bank_account"
    end

    def verify(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: "#{Customer.resource_url}/#{customer}/sources/#{id}/verify",
        params: params,
        opts: opts
      )
    end

    def self.verify(customer, id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: "#{Customer.resource_url}/#{customer}/sources/#{id}/verify",
        params: params,
        opts: opts
      )
    end

    def resource_url
      if respond_to?(:customer)
        "#{Customer.resource_url}/#{CGI.escape(customer)}/sources/#{CGI.escape(id)}"
      elsif respond_to?(:account)
        "#{Account.resource_url}/#{CGI.escape(account)}/external_accounts/#{CGI.escape(id)}"
      end
    end

    def self.update(_id, _params = nil, _opts = nil)
      raise NotImplementedError,
            "Bank accounts cannot be updated without a customer ID or an  " \
            "account ID. Update a bank account using " \
            "`Customer.update_source('customer_id', 'bank_account_id', " \
            "update_params)` or `Account.update_external_account(" \
            "'account_id', 'bank_account_id', update_params)`"
    end

    def self.retrieve(_id, _opts = nil)
      raise NotImplementedError,
            "Bank accounts cannot be retrieve without a customer ID or an " \
            "account ID. Retrieve a bank account using " \
            "`Customer.retrieve_source('customer_id', 'bank_account_id')` " \
            "or `Account.retrieve_external_account('account_id', " \
            "'bank_account_id')`"
    end

    def self.delete(id, params = {}, opts = {})
      raise NotImplementedError,
            "Bank accounts cannot be deleted without a customer ID or an " \
            "account ID. Delete a bank account using " \
            "`Customer.delete_source('customer_id', 'bank_account_id')` " \
            "or `Account.delete_external_account('account_id', " \
            "'bank_account_id')`"
    end

    def delete(params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: resource_url.to_s,
        params: params,
        opts: opts
      )
    end

    def self.list(params = {}, opts = {})
      raise NotImplementedError,
            "Bank accounts cannot be listed without a customer ID or an " \
            "account ID. List bank accounts using " \
            "`Customer.list_sources('customer_id')` " \
            "or `Account.list_external_accounts('account_id')`"
    end
  end
end
