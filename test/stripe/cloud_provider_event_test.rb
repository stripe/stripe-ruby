# frozen_string_literal: true

require "stripe"
require "test/unit"

class CloudProviderEventTest < Test::Unit::TestCase
  EVENTBRIDGE_V1_PAYLOAD = JSON.generate({
    "version" => "0",
    "id" => "17e8dff5-d6cd-3770-ace9-aeac02b6ac3f",
    "detail-type" => "customer.created",
    "source" => "aws.partner/stripe.com/ed_123",
    "account" => "506417113029",
    "time" => "2024-03-07T18:27:56Z",
    "region" => "us-west-2",
    "resources" => [],
    "detail" => {
      "id" => "evt_test_123",
      "object" => "event",
      "api_version" => "2023-10-16",
      "created" => 1_709_836_076,
      "data" => { "object" => { "id" => "cus_123", "object" => "customer" } },
      "livemode" => true,
      "pending_webhooks" => 0,
      "request" => { "id" => "req_123", "idempotency_key" => nil },
      "type" => "customer.created",
    },
  })

  EVENTGRID_V1_PAYLOAD = JSON.generate({
    "specversion" => "1.0",
    "type" => "customer.created",
    "source" => "/providers/stripe/ed_test_123",
    "id" => "9aeb0fdf-c01e-0131-0922-9eb54906e209",
    "time" => "2025-07-11T14:30:00Z",
    "subject" => nil,
    "dataContentType" => "application/cloudevents+json",
    "data" => {
      "id" => "evt_test_456",
      "object" => "event",
      "api_version" => "2023-10-16",
      "created" => 1_709_836_076,
      "data" => { "object" => { "id" => "cus_456", "object" => "customer" } },
      "livemode" => false,
      "pending_webhooks" => 0,
      "request" => { "id" => "req_456", "idempotency_key" => nil },
      "type" => "customer.created",
    },
  })

  EVENTBRIDGE_V2_PAYLOAD = JSON.generate({
    "version" => "0",
    "id" => "17e8dff5-d6cd-3770-ace9-aeac02b6ac3f",
    "detail-type" => "v1.billing.meter.error_report_triggered",
    "source" => "aws.partner/stripe.com/ed_123",
    "account" => "506417113029",
    "time" => "2024-03-07T18:27:56Z",
    "region" => "us-west-2",
    "resources" => [],
    "detail" => {
      "id" => "evt_234",
      "object" => "v2.core.event",
      "type" => "v1.billing.meter.error_report_triggered",
      "created" => "2022-02-15T00:27:45.330Z",
      "related_object" => {
        "id" => "mtr_123",
        "type" => "billing.meter",
        "url" => "/v1/billing/meters/mtr_123",
      },
    },
  })

  EVENTGRID_V2_PAYLOAD = JSON.generate({
    "specversion" => "1.0",
    "type" => "v1.billing.meter.error_report_triggered",
    "source" => "/providers/stripe/ed_test_123",
    "id" => "9aeb0fdf-c01e-0131-0922-9eb54906e209",
    "time" => "2025-07-11T14:30:00Z",
    "subject" => nil,
    "dataContentType" => "application/cloudevents+json",
    "data" => {
      "id" => "evt_234",
      "object" => "v2.core.event",
      "type" => "v1.billing.meter.error_report_triggered",
      "created" => "2022-02-15T00:27:45.330Z",
      "related_object" => {
        "id" => "mtr_123",
        "type" => "billing.meter",
        "url" => "/v1/billing/meters/mtr_123",
      },
    },
  })

  def setup
    @client = Stripe::StripeClient.new("sk_test_fake")
  end

  # construct_event_from_cloud_provider tests

  def test_eventbridge
    event = @client.construct_event_from_cloud_provider(EVENTBRIDGE_V1_PAYLOAD)
    assert_instance_of Stripe::Event, event
    assert_equal "evt_test_123", event.id
    assert_equal "customer.created", event.type
  end

  def test_event_grid
    event = @client.construct_event_from_cloud_provider(EVENTGRID_V1_PAYLOAD)
    assert_instance_of Stripe::Event, event
    assert_equal "evt_test_456", event.id
    assert_equal "customer.created", event.type
  end

  def test_invalid_json
    assert_raises(JSON::ParserError) do
      @client.construct_event_from_cloud_provider("not valid json")
    end
  end

  def test_raw_event_suggests_construct_event
    raw_event = '{"id":"evt_test_123","object":"event","type":"customer.created"}'
    error = assert_raises(ArgumentError) do
      @client.construct_event_from_cloud_provider(raw_event)
    end
    assert_match(/construct_event/, error.message)
  end

  def test_unrecognized_format
    error = assert_raises(ArgumentError) do
      @client.construct_event_from_cloud_provider('{"foo":"bar"}')
    end
    assert_match(/Unrecognized cloud event format/, error.message)
  end

  # parse_event_notification_from_cloud_provider tests

  def test_parse_notification_from_eventbridge
    notification = @client.parse_event_notification_from_cloud_provider(EVENTBRIDGE_V2_PAYLOAD)
    assert_instance_of Stripe::Events::V1BillingMeterErrorReportTriggeredEventNotification, notification
    assert_equal "evt_234", notification.id
    assert_equal "v1.billing.meter.error_report_triggered", notification.type
  end

  def test_parse_notification_from_event_grid
    notification = @client.parse_event_notification_from_cloud_provider(EVENTGRID_V2_PAYLOAD)
    assert_instance_of Stripe::Events::V1BillingMeterErrorReportTriggeredEventNotification, notification
    assert_equal "evt_234", notification.id
    assert_equal "v1.billing.meter.error_report_triggered", notification.type
  end

  def test_parse_notification_raises_when_cloud_event_contains_v1_event
    error = assert_raises(ArgumentError) do
      @client.parse_event_notification_from_cloud_provider(EVENTBRIDGE_V1_PAYLOAD)
    end
    assert_match(/construct_event/, error.message)
  end
end
