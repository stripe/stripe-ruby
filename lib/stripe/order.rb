# frozen_string_literal: true

module Stripe
  class Order < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "order".freeze

    custom_method :pay, http_verb: :post
    custom_method :return_order, http_verb: :post, http_path: "returns"

    def pay(params = {}, opts = {})
      resp, opts = request(:post, resource_url + "/pay", params, opts)
      initialize_from(resp.data, opts)
    end

    def return_order(params = {}, opts = {})
      resp, opts = request(:post, resource_url + "/returns", params, opts)
      initialize_from(resp.data, opts)
    end
  end
end
