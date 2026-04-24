# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs whenever a user authorizes an application. Sent to the related application only.
    class V1AccountApplicationAuthorizedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v1.account.application.authorized"
      end
    end

    # Occurs whenever a user authorizes an application. Sent to the related application only.
    class V1AccountApplicationAuthorizedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v1.account.application.authorized"
      end
    end
  end
end
