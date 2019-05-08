# frozen_string_literal: true

module Stripe
  class Payout < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "payout".freeze

    custom_method :cancel, http_verb: :post

    def cancel(params = {}, opts = {})
      resp, opts = request(:post, resource_url + "/cancel", params, opts)
      initialize_from(resp.data, opts)
    end

    def cancel_url
      resource_url + "/cancel"
    end
    extend Gem::Deprecate
    deprecate :cancel_url, :none, 2019, 11
  end
end
