# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs whenever the source of a customer's discount changes.
    class V1CustomerDiscountSourceChangedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v1.customer.discount.source_changed"
      end
    end

    # Occurs whenever the source of a customer's discount changes.
    class V1CustomerDiscountSourceChangedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v1.customer.discount.source_changed"
      end
    end
  end
end
