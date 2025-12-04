# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when an API Key is created.
    class V2IamApiKeyCreatedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.iam.api_key.created"
      end
    end

    # Occurs when an API Key is created.
    class V2IamApiKeyCreatedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.iam.api_key.created"
      end
    end
  end
end
