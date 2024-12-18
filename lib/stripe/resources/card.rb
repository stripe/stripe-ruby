# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # You can store multiple cards on a customer in order to charge the customer
  # later. You can also store multiple debit cards on a recipient in order to
  # transfer to those cards later.
  #
  # Related guide: [Card payments with Sources](https://stripe.com/docs/sources/cards)
  class Card < APIResource
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "card"
    def self.object_name
      "card"
    end

    def resource_url
      if respond_to?(:customer) && !customer.nil? && !customer.empty?
        "#{Customer.resource_url}/#{CGI.escape(customer)}/sources/#{CGI.escape(id)}"
      elsif respond_to?(:account) && !account.nil? && !account.empty?
        "#{Account.resource_url}/#{CGI.escape(account)}/external_accounts/#{CGI.escape(id)}"
      end
    end

    def self.update(_id, _params = nil, _opts = nil)
      raise NotImplementedError,
            "Card cannot be updated without a customer ID or an account ID. " \
            "Update a card using `Customer.update_source('customer_id', " \
            "'card_id', update_params)` or `Account.update_external_account(" \
            "'account_id', 'card_id', update_params)`"
    end

    def self.retrieve(_id, _opts = nil)
      raise NotImplementedError,
            "Card cannot be retrieved without a customer ID or an account " \
            "ID. Retrieve a card using `Customer.retrieve_source(" \
            "'customer_id', 'card_id')` or " \
            "`Account.retrieve_external_account('account_id', 'card_id')`"
    end

    def self.delete(id, params = {}, opts = {})
      raise NotImplementedError,
            "Card cannot be deleted without a customer ID or an account " \
            "ID. Delete a card using `Customer.delete_source(" \
            "'customer_id', 'card_id')` or " \
            "`Account.delete_external_account('account_id', 'card_id')`"
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
            "Cards cannot be listed without a customer ID or an account " \
            "ID. List cards using `Customer.list_sources(" \
            "'customer_id')` or " \
            "`Account.list_external_accounts('account_id')`"
    end
  end
end
