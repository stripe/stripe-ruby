# frozen_string_literal: true

module Stripe
  class Dispute < APIResource
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "dispute".freeze

    custom_method :close, http_verb: :post

    def close(params = {}, opts = {})
      resp, opts = request(:post, resource_url + "/close", params, opts)
      Util.convert_to_stripe_object(resp.data, opts)
    end

    def close_url
      resource_url + "/close"
    end
    extend Gem::Deprecate
    deprecate :close_url, :none, 2019, 11
  end
end
