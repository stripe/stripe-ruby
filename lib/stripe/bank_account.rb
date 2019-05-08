# frozen_string_literal: true

module Stripe
  class BankAccount < APIResource
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "bank_account".freeze

    def verify(params = {}, opts = {})
      resp, opts = request(:post, resource_url + "/verify", params, opts)
      initialize_from(resp.data, opts)
    end

    def resource_url
      if respond_to?(:customer)
        "#{Customer.resource_url}/#{CGI.escape(customer)}/sources/#{CGI.escape(id)}"
      elsif respond_to?(:account)
        "#{Account.resource_url}/#{CGI.escape(account)}/external_accounts/#{CGI.escape(id)}"
      end
    end

    def self.update(_id, _params = nil, _opts = nil)
      raise NotImplementedError, "Bank accounts cannot be updated without an account ID. Update a bank account by using `a = account.external_accounts.retrieve('card_id'); a.save`"
    end

    def self.retrieve(_id, _opts = nil)
      raise NotImplementedError, "Bank accounts cannot be retrieved without an account ID. Retrieve a bank account using account.external_accounts.retrieve('card_id')"
    end
  end
end
