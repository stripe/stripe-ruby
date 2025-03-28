# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # The status of a merchant config capability was updated.
  class V2CoreAccountIncludingConfigurationMerchantCapabilityStatusUpdatedEvent < Stripe::V2::Event
    def self.lookup_type
      "v2.core.account[configuration.merchant].capability_status_updated"
    end
    # There is additional data present for this event, accessible with the `data` property.
    # See the Stripe API docs for more information.
  end
end
