# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when an API Key is updated.
    class V2IamApiKeyUpdatedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.iam.api_key.updated"
      end
    end

    # Occurs when an API Key is updated.
    class V2IamApiKeyUpdatedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.iam.api_key.updated"
      end
    end
  end
end
