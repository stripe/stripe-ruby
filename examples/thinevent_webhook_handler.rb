# frozen_string_literal: true
# typed: false

# thinevent_webhook_handler.rb - receive and process thin events like the
# v1.billing.meter.error_report_triggered event.
#
# In this example, we:
#     - create a StripeClient called client
#     - use client.parse_thin_event to parse the received thin event webhook body
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
  thin_event = client.parse_thin_event(webhook_body, sig_header, webhook_secret)

  # Fetch the event data to understand the failure
  event = client.v2.core.events.retrieve(thin_event.id)
  if event.instance_of? Stripe::V1BillingMeterErrorReportTriggeredEvent
    meter = event.fetch_related_object
    meter_id = meter.id
    puts "Success!", meter_id
  end

  # Record the failures and alert your team
  status 200
end
