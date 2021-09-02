# frozen_string_literal: true

module EwStripe
  class AlipayAccount < APIResource
    include EwStripe::APIOperations::Save
    include EwStripe::APIOperations::Delete

    OBJECT_NAME = "alipay_account"

    def resource_url
      if !respond_to?(:customer) || customer.nil?
        raise NotImplementedError,
              "Alipay accounts cannot be accessed without a customer ID."
      end

      "#{Customer.resource_url}/#{CGI.escape(customer)}/sources" \
      "/#{CGI.escape(id)}"
    end

    def self.update(_id, _params = nil, _opts = nil)
      raise NotImplementedError,
            "Alipay accounts cannot be updated without a customer ID. " \
            "Update an Alipay account using `Customer.update_source(" \
            "'customer_id', 'alipay_account_id', update_params)`"
    end

    def self.retrieve(_id, _opts = nil)
      raise NotImplementedError,
            "Alipay accounts cannot be retrieved without a customer ID. " \
            "Retrieve an Alipay account using `Customer.retrieve_source(" \
            "'customer_id', 'alipay_account_id')`"
    end
  end
end
