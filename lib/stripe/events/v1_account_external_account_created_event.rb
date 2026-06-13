# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs whenever an external account is created.
    class V1AccountExternalAccountCreatedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v1.account.external_account.created"
      end
    end

    # Occurs whenever an external account is created.
    class V1AccountExternalAccountCreatedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v1.account.external_account.created"
      end
    end
  end
end
