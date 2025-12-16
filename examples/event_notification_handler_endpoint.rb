# frozen_string_literal: true
# typed: false

# event_notification_handler_endpoint.rb - receive and process event notifications (AKA thin events) like
# "v1.billing.meter.error_report_triggered" using EventNotificationHandler.

# In this example, we:
#     - write a fallback callback to handle unrecognized event notifications
#     - create a StripeClient called client
#     - Initialize an EventNotificationHandler with the client, webhook secret, and fallback callback
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

handler.on_v1_billing_meter_error_report_triggered do |event_notification, _client|
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
