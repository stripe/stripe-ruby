# frozen_string_literal: true

module Stripe
  class Charge < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "charge"

    custom_method :capture, http_verb: :post

    def capture(params = {}, opts = {})
      resp, opts = request(:post, resource_url + "/capture", params, opts)
      initialize_from(resp.data, opts)
    end
  end
end
