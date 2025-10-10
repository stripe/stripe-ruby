# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when the generated AccountLink is completed.
    class V2CoreAccountLinkReturnedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.core.account_link.returned"
      end

      class V2CoreAccountLinkReturnedEventData < ::Stripe::StripeObject
        # Open Enum. The use case type of the account link that has been completed.
        attr_reader :use_case
        # The ID of the v2 account.
        attr_reader :account_id
        # Configurations on the Account that was onboarded via the account link.
        attr_reader :configurations

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V2CoreAccountLinkReturnedEventData }
      end
      attr_reader :data
    end

    # Occurs when the generated AccountLink is completed.
    class V2CoreAccountLinkReturnedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.core.account_link.returned"
      end
    end
  end
end
