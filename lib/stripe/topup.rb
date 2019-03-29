# frozen_string_literal: true

module Stripe
  class Topup < APIResource
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Save

    OBJECT_NAME = "topup".freeze

    custom_method :cancel, http_verb: :post

    def cancel
      resp, api_key = request(:post, resource_url + "/cancel")
      initialize_from(resp.data, api_key)
    end
  end
end
