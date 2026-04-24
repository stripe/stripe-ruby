# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs whenever a user deauthorizes an application. Sent to the related application only.
    class V1AccountApplicationDeauthorizedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v1.account.application.deauthorized"
      end
    end

    # Occurs whenever a user deauthorizes an application. Sent to the related application only.
    class V1AccountApplicationDeauthorizedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v1.account.application.deauthorized"
      end
    end
  end
end
