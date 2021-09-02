# File generated from our OpenAPI spec
# frozen_string_literal: true

module EwStripe
  class WebhookEndpoint < APIResource
    extend EwStripe::APIOperations::Create
    include EwStripe::APIOperations::Delete
    extend EwStripe::APIOperations::List
    include EwStripe::APIOperations::Save

    OBJECT_NAME = "webhook_endpoint"
  end
end
