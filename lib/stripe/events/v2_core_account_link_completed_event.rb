# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # The generated account link has been completed.
  class V2CoreAccountLinkCompletedEvent < Stripe::V2::Event
    def self.lookup_type
      "v2.core.account_link.completed"
    end
    # There is additional data present for this event, accessible with the `data` property.
    # See the Stripe API docs for more information.
  end
end
