# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A merchant config was updated.
  class V2CoreAccountIncludingConfigurationMerchantUpdatedEvent < Stripe::V2::Event
    def self.lookup_type
      "v2.core.account[configuration.merchant].updated"
    end
  end
end
