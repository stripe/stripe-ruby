# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A SetupAttempt describes one attempted confirmation of a SetupIntent,
  # whether that confirmation is successful or unsuccessful. You can use
  # SetupAttempts to inspect details of a specific attempt at setting up a
  # payment method using a SetupIntent.
  class SetupAttempt < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = "setup_attempt"

    # Returns a list of SetupAttempts that associate with a provided SetupIntent.
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/setup_attempts", params: filters, opts: opts)
    end
  end
end
