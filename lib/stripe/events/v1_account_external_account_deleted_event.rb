# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs whenever an external account is deleted.
    class V1AccountExternalAccountDeletedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v1.account.external_account.deleted"
      end
    end

    # Occurs whenever an external account is deleted.
    class V1AccountExternalAccountDeletedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v1.account.external_account.deleted"
      end
    end
  end
end
