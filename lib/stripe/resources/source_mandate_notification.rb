# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Source mandate notifications should be created when a notification related to
  # a source mandate must be sent to the payer. They will trigger a webhook or
  # deliver an email to the customer.
  class SourceMandateNotification < APIResource
    OBJECT_NAME = "source_mandate_notification"
    def self.object_name
      "source_mandate_notification"
    end
  end
end
