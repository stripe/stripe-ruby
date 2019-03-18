# frozen_string_literal: true

module Stripe
  class PaymentMethod < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Save
    extend Stripe::APIOperations::List

    OBJECT_NAME = "payment_method".freeze

    def attach(params = {}, opts = {})
      url = resource_url + "/attach"
      resp, opts = request(:post, url, params, opts)
      initialize_from(resp.data, opts)
    end

    def detach(params = {}, opts = {})
      url = resource_url + "/detach"
      resp, opts = request(:post, url, params, opts)
      initialize_from(resp.data, opts)
    end
  end
end
