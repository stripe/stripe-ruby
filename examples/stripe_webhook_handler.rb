# frozen_string_literal: true
# typed: false

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
