# frozen_string_literal: true

module Stripe
  class AlipayAccount < APIResource
    include Stripe::APIOperations::Save
    include Stripe::APIOperations::Delete

    OBJECT_NAME = "alipay_account".freeze

    def resource_url
      if !respond_to?(:customer) || customer.nil?
        raise NotImplementedError,
              "Alipay accounts cannot be accessed without a customer ID."
      end

      "#{Customer.resource_url}/#{CGI.escape(customer)}/sources/#{CGI.escape(id)}"
    end

    def self.update(_id, _params = nil, _opts = nil)
      raise NotImplementedError, "Alipay accounts cannot be updated without a customer ID. Update an Alipay account by `a = customer.sources.retrieve('alipay_account_id'); a.save`"
    end

    def self.retrieve(_id, _opts = nil)
      raise NotImplementedError, "Alipay accounts cannot be retrieved without a customer ID. Retrieve an Alipay account using customer.sources.retrieve('alipay_account_id')"
    end
  end
end
