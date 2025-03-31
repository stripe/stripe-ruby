# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A customer config was updated.
  class V2CoreAccountIncludingConfigurationCustomerUpdatedEvent < Stripe::V2::Event
    def self.lookup_type
      "v2.core.account[configuration.customer].updated"
    end
  end
end
