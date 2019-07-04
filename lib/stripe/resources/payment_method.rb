# frozen_string_literal: true

module Stripe
  class PaymentMethod < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "payment_method".freeze

    custom_method :attach, http_verb: :post
    custom_method :detach, http_verb: :post

    def attach(params = {}, opts = {})
      resp, opts = request(:post, resource_url + "/attach", params, opts)
      initialize_from(resp.data, opts)
    end

    def detach(params = {}, opts = {})
      resp, opts = request(:post, resource_url + "/detach", params, opts)
      initialize_from(resp.data, opts)
    end
  end
end
