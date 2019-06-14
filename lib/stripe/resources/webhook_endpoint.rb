# frozen_string_literal: true

module Stripe
  class WebhookEndpoint < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List

    OBJECT_NAME = "webhook_endpoint".freeze
  end
end
