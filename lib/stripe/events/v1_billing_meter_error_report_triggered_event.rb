# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Occurs when a Meter has invalid async usage events.
  class V1BillingMeterErrorReportTriggeredEvent < Stripe::V2::Event
    def self.lookup_type
      "v1.billing.meter.error_report_triggered"
    end
    # There is additional data present for this event, accessible with the `data` property.
    # See the Stripe API docs for more information.

    # Retrieves the related object from the API. Makes an API request on every call.
    def fetch_related_object
      _request(
        method: :get,
        path: related_object.url,
        base_address: :api,
        opts: { stripe_context: context }
      )
    end
  end

  # Occurs when a Meter has invalid async usage events.
  class V1BillingMeterErrorReportTriggeredEventNotification < Stripe::EventNotification
    def self.lookup_type
      "v1.billing.meter.error_report_triggered"
    end

    attr_reader :related_object

    # Retrieves the Meter related to this EventNotification from the Stripe API. Makes an API request on every call.
    def fetch_related_object
      resp = @client.raw_request(
        :get,
        related_object.url,
        opts: { stripe_context: context },
        usage: ["fetch_related_object"]
      )
      @client.deserialize(resp.http_body, api_mode: Util.get_api_mode(related_object.url))
    end
  end
end
