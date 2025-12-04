# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when the default API Key's secret is revealed.
    class V2IamApiKeyDefaultSecretRevealedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.iam.api_key.default_secret_revealed"
      end
    end

    # Occurs when the default API Key's secret is revealed.
    class V2IamApiKeyDefaultSecretRevealedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.iam.api_key.default_secret_revealed"
      end
    end
  end
end
