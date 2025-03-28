# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # This event occurs when the account's requirements are updated.
  class V2CoreAccountIncludingRequirementsUpdatedEvent < Stripe::V2::Event
    def self.lookup_type
      "v2.core.account[requirements].updated"
    end
  end
end
