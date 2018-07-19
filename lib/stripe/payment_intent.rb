# frozen_string_literal: true

module Stripe
  class PaymentIntent < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "payment_intent".freeze

    def cancel
      resp, api_key = request(:post, resource_url + "/cancel")
      initialize_from(resp.data, api_key)
    end

    def capture
      resp, api_key = request(:post, resource_url + "/capture")
      initialize_from(resp.data, api_key)
    end

    def confirm
      resp, api_key = request(:post, resource_url + "/confirm")
      initialize_from(resp.data, api_key)
    end
  end
end
