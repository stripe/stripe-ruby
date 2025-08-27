# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Occurs when an issuing authorization request timeout alert is resolved.
  class V2CoreHealthIssuingAuthorizationRequestTimeoutResolvedEvent < Stripe::V2::Event
    def self.lookup_type
      "v2.core.health.issuing_authorization_request_timeout.resolved"
    end
    # There is additional data present for this event, accessible with the `data` property.
    # See the Stripe API docs for more information.
  end
end
