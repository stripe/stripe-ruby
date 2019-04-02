# frozen_string_literal: true

module Stripe
  class Dispute < APIResource
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "dispute".freeze

    custom_method :close, http_verb: :post

    def close(params = {}, opts = {})
      resp, opts = request(:post, close_url, params, opts)
      initialize_from(resp.data, opts)
    end

    def close_url
      resource_url + "/close"
    end
  end
end
