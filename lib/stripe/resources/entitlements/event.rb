# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Entitlements
    # An entitlement event either grants or revokes an entitlement to a feature for a customer.
    class Event < APIResource
      extend Stripe::APIOperations::Create

      OBJECT_NAME = "entitlements.event"
    end
  end
end
