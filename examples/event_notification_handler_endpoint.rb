# frozen_string_literal: true
# typed: false

# event_notification_handler_endpoint.rb - receive and process event notifications (AKA thin events) like
# "v1.billing.meter.error_report_triggered" using EventNotificationHandler.

# In this example, we:
#     - write a fallback callback to handle unrecognized event notifications
#     - create a StripeClient called client
#     - Initialize an EventNotificationHandler with the client, webhook secret, and fallback callback
#     - register a pre_handle hook that deduplicates events by id before any callback runs
#     - register a specific handler for the "v1.billing.meter.error_report_triggered" event notification type
#     - use handler.handle() to process the received notification webhook body

require "stripe"
require "sinatra"

api_key = ENV.fetch("STRIPE_API_KEY", nil)
# Retrieve the webhook secret from the environment variable
webhook_secret = ENV.fetch("WEBHOOK_SECRET", nil)

client = Stripe::StripeClient.new(api_key)

handler = client.notification_handler(webhook_secret) do |notif, _client, _details|
  puts "Received unhandled notification:", notif.type
end

# Handles events delivered through a channel that has already authenticated them, such as
# AWS EventBridge or Azure Event Grid. Those payloads carry no Stripe-Signature header, so
# this handler skips verification. Callbacks are registered separately from the one above.
unverified_handler = client.notification_handler_without_verification do |notif, _client, _details|
  puts "Received unhandled notification:", notif.type
end

# Webhooks can be delivered more than once, so we track ids we've already
# processed. In production, back this with something durable and shared
# across processes (e.g. Redis or a database table) instead of an in-memory Set.
seen_event_ids = Set.new

# Runs before any registered callback. Returning false here skips handling
# entirely for this delivery, which is useful for deduplicating webhooks.
dedupe_events = lambda do |event_notification, _client|
  if seen_event_ids.include?(event_notification.id)
    puts "Skipping already-processed event:", event_notification.id
    next false
  end

  seen_event_ids.add(event_notification.id)
  true
end
handler.pre_handle(&dedupe_events)
unverified_handler.pre_handle(&dedupe_events)

# can be anywhere in your codebase with access to `handler`
handler.on_v1_billing_meter_error_report_triggered do |event_notification, _client|
  meter = event_notification.fetch_related_object
  puts "Meter #{meter.display_name} (#{meter.id}) had a problem"
end

unverified_handler.on_v1_billing_meter_error_report_triggered do |event_notification, _client|
  meter = event_notification.fetch_related_object
  puts "Meter #{meter.display_name} (#{meter.id}) had a problem"
end

post "/webhook" do
  webhook_body = request.body.read
  sig_header = request.env["HTTP_STRIPE_SIGNATURE"]

  begin
    handler.handle(webhook_body, sig_header)
    status 200
  rescue Stripe::SignatureVerificationError => e
    puts "Signature verification failed:", e.message
    status 400
  end
end

post "/webhook-from-cloud-provider" do
  # handle takes only the body here; there's no signature to check
  unverified_handler.handle(request.body.read)
  status 200
end
