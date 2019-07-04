# frozen_string_literal: true

module Stripe
  class Dispute < APIResource
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "dispute".freeze

    custom_method :close, http_verb: :post

    def close(params = {}, opts = {})
      resp, opts = request(:post, resource_url + "/close", params, opts)
      initialize_from(resp.data, opts)
    end

    def close_url
      resource_url + "/close"
    end
    extend Gem::Deprecate
    deprecate :close_url, :none, 2019, 11
  end
end
