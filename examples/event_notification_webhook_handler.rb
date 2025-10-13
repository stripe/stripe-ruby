# frozen_string_literal: true
# typed: false

# event_notification_webhook_handler.rb - receive and process event notification like the
# v1.billing.meter.error_report_triggered event.
#
# In this example, we:
#     - create a StripeClient called client
#     - use client.parse_event_notification to parse the received event notification webhook body
#     - call event_notification.fetch_event to retrieve the full event object
#     - if it is a V1BillingMeterErrorReportTriggeredEvent event type, call
#       event_notification.fetch_related_object to retrieve the Billing Meter object associated
#       with the event.
#     - if it is an UnknownEventNotification, check the type property to see if it matches
#       a known event type and handle it accordingly

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

  if event_notification.instance_of?(Stripe::Events::V1BillingMeterErrorReportTriggeredEventNotification)
    # there's basic info about the related object in the notification
    puts "Received event for meter id:", event_notification.related_object.id

    # or you can fetch the full object form the API for more details
    meter = event_notification.fetch_related_object
    puts "Meter #{meter.display_name} (#{meter.id}) had a problem"

    # And you can always fetch the full event:
    event = event_notification.fetch_event
    puts "More info:", event.data.developer_message_summary
  elsif event_notification.instance_of?(Stripe::Events::UnknownEventNotification)
    # Events that were introduced after this SDK version release are
    # represented as `UnknownEventNotification`s.
    # They're valid, the SDK just doesn't have corresponding classes for them.
    # You must match on the "type" property instead.
    if event_notification.type == "some.new.event"
      # your logic goes here
    end
  end

  # Record the failures and alert your team
  status 200
end
