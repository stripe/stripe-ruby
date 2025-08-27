# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Occurs when a payment method error alert is firing.
  class V2CoreHealthPaymentMethodErrorFiringEvent < Stripe::V2::Event
    def self.lookup_type
      "v2.core.health.payment_method_error.firing"
    end
    # There is additional data present for this event, accessible with the `data` property.
    # See the Stripe API docs for more information.
  end
end
