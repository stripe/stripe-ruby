# frozen_string_literal: true

module Stripe
  class Dispute < APIResource
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "dispute".freeze

    custom_method :close, http_verb: :post

    def close(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: resource_url + "/close",
        params: params,
        opts: opts
      )
    end

    def close_url
      resource_url + "/close"
    end
    extend Gem::Deprecate
    deprecate :close_url, :none, 2019, 11
  end
end
