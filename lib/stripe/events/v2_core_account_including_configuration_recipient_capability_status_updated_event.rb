# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # The status of a recipient config capability was updated.
  class V2CoreAccountIncludingConfigurationRecipientCapabilityStatusUpdatedEvent < Stripe::V2::Event
    def self.lookup_type
      "v2.core.account[configuration.recipient].capability_status_updated"
    end
    # There is additional data present for this event, accessible with the `data` property.
    # See the Stripe API docs for more information.
  end
end
