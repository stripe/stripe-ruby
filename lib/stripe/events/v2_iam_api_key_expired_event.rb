# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when an API Key is expired.
    class V2IamApiKeyExpiredEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.iam.api_key.expired"
      end
    end

    # Occurs when an API Key is expired.
    class V2IamApiKeyExpiredEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.iam.api_key.expired"
      end
    end
  end
end
