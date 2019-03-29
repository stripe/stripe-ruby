# frozen_string_literal: true

module Stripe
  class Source < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Save

    OBJECT_NAME = "source".freeze

    custom_method :verify, http_verb: :post

    def detach(params = {}, opts = {})
      if !respond_to?(:customer) || customer.nil? || customer.empty?
        raise NotImplementedError,
              "This source object does not appear to be currently attached " \
              "to a customer object."
      end

      url = "#{Customer.resource_url}/#{CGI.escape(customer)}/sources/#{CGI.escape(id)}"
      resp, opts = request(:delete, url, params, Util.normalize_opts(opts))
      initialize_from(resp.data, opts)
    end

    def delete(params = {}, opts = {})
      detach(params, opts)
    end
    extend Gem::Deprecate
    deprecate :delete, "#detach", 2017, 10

    def source_transactions(params = {}, opts = {})
      resp, opts = request(:get, resource_url + "/source_transactions", params, Util.normalize_opts(opts))
      Util.convert_to_stripe_object(resp.data, opts)
    end

    def verify(params = {}, opts = {})
      resp, opts = request(:post, resource_url + "/verify", params, Util.normalize_opts(opts))
      initialize_from(resp.data, opts)
    end
  end
end
