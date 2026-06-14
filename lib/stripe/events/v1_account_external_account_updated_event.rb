# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs whenever an external account is updated.
    class V1AccountExternalAccountUpdatedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v1.account.external_account.updated"
      end
    end

    # Occurs whenever an external account is updated.
    class V1AccountExternalAccountUpdatedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v1.account.external_account.updated"
      end
    end
  end
end
