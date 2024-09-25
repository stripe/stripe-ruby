# frozen_string_literal: true

require "stripe"
require "date"

class MeterEventManager
  attr_accessor :api_key, :meter_event_session

  def initialize(api_key)
    @api_key = api_key
    @meter_event_session = nil
  end

  def refresh_meter_event_session
    return unless @meter_event_session.nil? || DateTime.parse(@meter_event_session.expires_at) <= DateTime.now

    # Create a new meter event session in case the existing session expired
    client = Stripe::StripeClient.new(api_key)
    @meter_event_session = client.v2.billing.meter_event_session.create
  end

  def send_meter_event(meter_event)
    # Refresh the meter event session if necessary
    refresh_meter_event_session

    # Create a meter event with the current session's authentication token
    client = Stripe::StripeClient.new(meter_event_session.authentication_token)
    client.v2.billing.meter_event_stream.create(
      events: [meter_event]
    )
  end
end

# Send meter events
api_key = "{{API_KEY}}"
customer_id = "{{CUSTOMER_ID}}"

manager = MeterEventManager.new(api_key)
manager.send_meter_event(
  {
    event_name: "alpaca_ai_tokens",
    payload: {
      "stripe_customer_id" => customer_id,
      "value" => "25",
    },
  }
)
