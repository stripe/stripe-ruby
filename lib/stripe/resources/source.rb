# frozen_string_literal: true

module Stripe
  class Source < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Save

    OBJECT_NAME = "source"

    custom_method :verify, http_verb: :post

    def verify(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: resource_url + "/verify",
        params: params,
        opts: opts
      )
    end

    def detach(params = {}, opts = {})
      if !respond_to?(:customer) || customer.nil? || customer.empty?
        raise NotImplementedError,
              "This source object does not appear to be currently attached " \
              "to a customer object."
      end

      url = "#{Customer.resource_url}/#{CGI.escape(customer)}/sources" \
            "/#{CGI.escape(id)}"
      resp, opts = request(:delete, url, params, opts)
      initialize_from(resp.data, opts)
    end

    def source_transactions(params = {}, opts = {})
      resp, opts = request(:get, resource_url + "/source_transactions", params,
                           opts)
      Util.convert_to_stripe_object(resp.data, opts)
    end
  end
end
