# frozen_string_literal: true

module Stripe
  class WebhookEndpoint < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Save
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List

    OBJECT_NAME = "webhook_endpoint".freeze
  end
end
