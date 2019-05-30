# frozen_string_literal: true

module Stripe
  class Topup < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "topup".freeze

    custom_method :cancel, http_verb: :post

    def cancel(params = {}, opts = {})
      resp, opts = request(:post, resource_url + "/cancel", params, opts)
      Util.convert_to_stripe_object(resp.data, opts)
    end
  end
end
