# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # You can configure [webhook endpoints](https://stripe.com/docs/webhooks/) via the API to be
  # notified about events that happen in your Stripe account or connected
  # accounts.
  #
  # Most users configure webhooks from [the dashboard](https://dashboard.stripe.com/webhooks), which provides a user interface for registering and testing your webhook endpoints.
  #
  # Related guide: [Setting up Webhooks](https://stripe.com/docs/webhooks/configure).
  class WebhookEndpoint < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "webhook_endpoint"
  end
end
