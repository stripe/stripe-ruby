# frozen_string_literal: true

module Stripe
  class Review < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = "review".freeze

    custom_method :approve, http_verb: :post

    def approve(params = {}, opts = {})
      resp, opts = request(:post, resource_url + "/approve", params, opts)
      Util.convert_to_stripe_object(resp.data, opts)
    end
  end
end
