# frozen_string_literal: true

module Stripe
  class SetupIntent < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "setup_intent".freeze

    custom_method :cancel, http_verb: :post
    custom_method :confirm, http_verb: :post

    def cancel(params = {}, opts = {})
      resp, opts = request(:post, resource_url + "/cancel", params, opts)
      initialize_from(resp.data, opts)
    end

    def confirm(params = {}, opts = {})
      resp, opts = request(:post, resource_url + "/confirm", params, opts)
      initialize_from(resp.data, opts)
    end
  end
end
