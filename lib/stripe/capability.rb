# frozen_string_literal: true

module Stripe
  class Capability < APIResource
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "capability".freeze

    def resource_url
      if !respond_to?(:account) || account.nil?
        raise NotImplementedError,
              "Capabilities cannot be accessed without an account ID."
      end
      "#{Account.resource_url}/#{CGI.escape(account)}/capabilities/#{CGI.escape(id)}"
    end

    def self.retrieve(_id, _opts = {})
      raise NotImplementedError, "Capabilities cannot be retrieved without an account ID. Retrieve a capability using account.retrieve_capability('acct_123', 'acap_123')"
    end

    def self.update(_id, _params = nil, _opts = nil)
      raise NotImplementedError, "Capabilities cannot be updated without an account ID. Update a capability using `p = account.update_capability('acct_123', 'acap_123', params)"
    end
  end
end
