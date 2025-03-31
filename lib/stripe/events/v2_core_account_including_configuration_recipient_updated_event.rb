# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A recipient config was updated.
  class V2CoreAccountIncludingConfigurationRecipientUpdatedEvent < Stripe::V2::Event
    def self.lookup_type
      "v2.core.account[configuration.recipient].updated"
    end
  end
end
