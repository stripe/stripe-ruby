# frozen_string_literal: true
# typed: false

# event_notification_webhook_handler.rb - receive and process event notifications like the
# v1.billing.meter.error_report_triggered event.
#
# In this example, we:
#     - create a StripeClient called client
#     - use client.parse_event_notification to parse the received event notification webhook body
#     - call client.v2.core.events.retrieve to retrieve the full event object
#     - if it is a V1BillingMeterErrorReportTriggeredEvent event type, call
#       event.fetchRelatedObject to retrieve the Billing Meter object associated
#       with the event.

require "stripe"
require "sinatra"

api_key = ENV.fetch("STRIPE_API_KEY", nil)
# Retrieve the webhook secret from the environment variable
webhook_secret = ENV.fetch("WEBHOOK_SECRET", nil)

client = Stripe::StripeClient.new(api_key)

post "/webhook" do
  webhook_body = request.body.read
  sig_header = request.env["HTTP_STRIPE_SIGNATURE"]
  event_notification = client.parse_event_notification(webhook_body, sig_header, webhook_secret)

  if event_notification.is_a?(Stripe::Events::V1BillingMeterErrorReportTriggeredEventNotification)
    # our type is narrowed now
    meter = event_notification.fetch_related_object
    puts("Meter ID: #{meter.id}")

    # can also fetch the full event, including data
    event = event_notification.fetch_event
    puts("Summary: #{event.data.developer_message_summary}")
  end

  # Record the failures and alert your team
  status 200
end
