# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class SubscriptionAttachCadenceParams < ::Stripe::RequestParams
    # The Billing Cadence which controls the timing of recurring invoice generation for this subscription. If unset, the subscription will bill according to its own configured schedule and create its own invoices. If set, this subscription will be billed by the cadence instead, potentially sharing invoices with the other subscriptions linked to that Cadence.
    attr_accessor :billing_cadence
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand

    def initialize(billing_cadence: nil, expand: nil)
      @billing_cadence = billing_cadence
      @expand = expand
    end
  end
end
