# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when an API Key's permissions are updated.
    class V2IamApiKeyPermissionsUpdatedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.iam.api_key.permissions_updated"
      end
    end

    # Occurs when an API Key's permissions are updated.
    class V2IamApiKeyPermissionsUpdatedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.iam.api_key.permissions_updated"
      end
    end
  end
end
