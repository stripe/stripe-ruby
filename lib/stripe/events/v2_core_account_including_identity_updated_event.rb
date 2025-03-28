# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # This event occurs when identity is updated.
  class V2CoreAccountIncludingIdentityUpdatedEvent < Stripe::V2::Event
    def self.lookup_type
      "v2.core.account[identity].updated"
    end
  end
end
