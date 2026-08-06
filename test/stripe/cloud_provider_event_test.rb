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

  RAW_V1_EVENT_PAYLOAD = JSON.generate({
    "id" => "evt_test_123",
    "object" => "event",
    "api_version" => "2023-10-16",
    "created" => 1_709_836_076,
    "data" => { "object" => { "id" => "cus_123", "object" => "customer" } },
    "livemode" => true,
    "pending_webhooks" => 0,
    "request" => { "id" => "req_123", "idempotency_key" => nil },
    "type" => "customer.created",
  })

  RAW_V2_EVENT_PAYLOAD = JSON.generate({
    "id" => "evt_234",
    "object" => "v2.core.event",
    "type" => "v1.billing.meter.error_report_triggered",
    "created" => "2022-02-15T00:27:45.330Z",
    "related_object" => {
      "id" => "mtr_123",
      "type" => "billing.meter",
      "url" => "/v1/billing/meters/mtr_123",
    },
  })

  def setup
    @client = Stripe::StripeClient.new("sk_test_fake")
  end

  # parse_event_notification_without_verification tests

  def test_parse_notification_from_eventbridge
    notification = @client.parse_event_notification_without_verification(EVENTBRIDGE_V2_PAYLOAD)
    assert_instance_of Stripe::Events::V1BillingMeterErrorReportTriggeredEventNotification, notification
    assert_equal "evt_234", notification.id
    assert_equal "v1.billing.meter.error_report_triggered", notification.type
  end

  def test_parse_notification_from_event_grid
    notification = @client.parse_event_notification_without_verification(EVENTGRID_V2_PAYLOAD)
    assert_instance_of Stripe::Events::V1BillingMeterErrorReportTriggeredEventNotification, notification
    assert_equal "evt_234", notification.id
    assert_equal "v1.billing.meter.error_report_triggered", notification.type
  end

  def test_parse_notification_raises_when_cloud_event_contains_v1_event
    error = assert_raises(ArgumentError) do
      @client.parse_event_notification_without_verification(EVENTBRIDGE_V1_PAYLOAD)
    end
    assert_match(/construct_event/, error.message)
  end

  def test_parse_notification_invalid_json
    assert_raises(JSON::ParserError) do
      @client.parse_event_notification_without_verification("not valid json")
    end
  end

  def test_parse_notification_unrecognized_format
    error = assert_raises(ArgumentError) do
      @client.parse_event_notification_without_verification('{"foo": "bar"}')
    end
    assert_match(/Unrecognized event format/, error.message)
  end

  def test_parse_raw_v2_event_notification
    notification = @client.parse_event_notification_without_verification(RAW_V2_EVENT_PAYLOAD)
    assert_instance_of Stripe::Events::V1BillingMeterErrorReportTriggeredEventNotification, notification
    assert_equal "evt_234", notification.id
    assert_equal "v1.billing.meter.error_report_triggered", notification.type
  end

  def test_construct_event_without_verification_via_webhook_module
    event = Stripe::Webhook.construct_event_without_verification(EVENTBRIDGE_V1_PAYLOAD)
    assert_instance_of Stripe::Event, event
    assert_equal "evt_test_123", event.id
    assert_equal "customer.created", event.type
  end

  def test_construct_event_via_webhook_module_rejects_v2_thin_event
    error = assert_raises(ArgumentError) do
      Stripe::Webhook.construct_event_without_verification(RAW_V2_EVENT_PAYLOAD)
    end
    assert_match(/thin event notification/, error.message)
  end

  def test_azure_envelope_missing_data_falls_through_construct_event
    payload = JSON.generate({
      "specversion" => "1.0",
      "type" => "customer.created",
      "source" => "/providers/stripe/ed_test_123",
      "id" => "test-missing-data",
    })
    error = assert_raises(ArgumentError) do
      Stripe::Webhook.construct_event_without_verification(payload)
    end
    assert_match(/Unrecognized event format/i, error.message)
  end

  def test_azure_envelope_missing_data_falls_through_parse_notification
    payload = JSON.generate({
      "specversion" => "1.0",
      "type" => "customer.created",
      "source" => "/providers/stripe/ed_test_123",
      "id" => "test-missing-data",
    })
    error = assert_raises(ArgumentError) do
      @client.parse_event_notification_without_verification(payload)
    end
    assert_match(/Unrecognized event format/i, error.message)
  end

  def test_unexpected_object_type_in_event_notification
    payload = JSON.generate({
      "version" => "0",
      "detail" => {
        "object" => "customer",
        "type" => "customer.created",
        "id" => "cus_123",
      },
    })
    error = assert_raises(ArgumentError) do
      @client.parse_event_notification_without_verification(payload)
    end
    assert_match(/Unexpected object type/, error.message)
  end
end
