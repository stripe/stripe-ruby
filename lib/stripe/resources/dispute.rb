# frozen_string_literal: true

module Stripe
  class Dispute < APIResource
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "dispute"

    custom_method :close, http_verb: :post

    def close(params = {}, opts = {})
      resp, opts = request(:post, resource_url + "/close", params, opts)
      initialize_from(resp.data, opts)
    end
  end
end
