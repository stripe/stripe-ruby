# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)
require "json"

module Stripe
  class V2EventTest < Test::Unit::TestCase
    def parse_signed_event(payload, secret = Test::WebhookHelpers::SECRET)
      @client.parse_event_notification(payload, Test::WebhookHelpers.generate_header(payload: payload), secret)
    end

    context "V2 Events" do
      setup do
        @client = StripeClient.new("test_123", stripe_context: "wksp_123")

        @v2_payload_no_related_object = {
          "id" => "evt_234",
          "object" => "v2.core.event",
          "type" => "financial_account.balance.opened",
          "created" => "2022-02-15T00:27:45.330Z",
        }.to_json

        @v2_payload_fake_event = {
          "id" => "evt_234",
          "object" => "v2.core.event",
          "type" => "whatever",
          "created" => "2022-02-15T00:27:45.330Z",
        }.to_json

        @v2_push_payload = {
          "id" => "evt_234",
          "object" => "v2.core.event",
          "type" => "v1.billing.meter.error_report_triggered",
          "created" => "2022-02-15T00:27:45.330Z",
          "related_object" => {
            "id" => "mtr_123",
            "type" => "billing.meter",
            "url" => "/v1/billing/meters/mtr_123",
          },
        }.to_json

        @v2_push_payload_with_livemode_and_reason = {
          "id" => "evt_234",
          "object" => "v2.core.event",
          "type" => "v1.billing.meter.error_report_triggered",
          "created" => "2022-02-15T00:27:45.330Z",
          "related_object" => {
            "id" => "mtr_123",
            "type" => "billing.meter",
            "url" => "/v1/billing/meters/mtr_123",
          },
          "livemode" => true,
          "reason" => {
            "type" => "a.b.c",
            "request" => {
              "id" => "r_123",
              "idempotency_key" => "key",
            },
          },
        }.to_json

        @v2_pull_payload = {
          "id" => "evt_234",
          "object" => "v2.core.event",
          "type" => "v1.billing.meter.error_report_triggered",
          "created" => "2022-02-15T00:27:45.330Z",
          "related_object" => {
            "id" => "mtr_123",
            "type" => "billing.meter",
            "url" => "/v1/billing/meters/mtr_123",
          },
          "data" => {
            "error" => "bufo",
            "reason" => {
              "error_count" => 1,
              "error_types" => [
                {
                  "code" => "meter_event_invalid_value",
                  "error_count" => 1,
                  "sample_errors" => [
                    {
                      "error_message" => "choose a better value",
                      "request" => {
                        "identifier" => "a",
                      },
                    },
                  ],
                },
              ],
            },
          },
        }.to_json
      end

      context ".event_signing" do
        should "parse v2 events" do
          event = parse_signed_event(@v2_push_payload)
          assert event.is_a?(Stripe::EventNotification)
          assert_equal "evt_234", event.id
          assert_equal "v1.billing.meter.error_report_triggered", event.type
          assert_equal "2022-02-15T00:27:45.330Z", event.created
          assert_nil event.reason
        end

        should "parse v2 events with livemode and reason" do
          event = parse_signed_event(@v2_push_payload_with_livemode_and_reason)
          assert event.is_a?(Stripe::EventNotification)
          assert event.related_object.is_a?(Stripe::RelatedObject)
          assert event.reason.is_a?(Stripe::EventReason)

          assert_equal "evt_234", event.id
          assert_equal "v1.billing.meter.error_report_triggered", event.type
          assert_equal "2022-02-15T00:27:45.330Z", event.created
          assert_true event.livemode
          assert_not_nil event.reason
          assert_equal "a.b.c", event.reason.type
          assert_equal "r_123", event.reason.request.id
          assert_equal "key", event.reason.request.idempotency_key
        end

        should "raise a JSON::ParserError from an invalid JSON payload" do
          assert_raises Stripe::SignatureVerificationError do
            parse_signed_event(@v2_push_payload, "Bad secret")
          end
        end
      end

      context "Event notifications" do
        should "parse event notifications and pull data" do
          event_notif = parse_signed_event(@v2_push_payload)
          assert event_notif.instance_of?(Stripe::V1BillingMeterErrorReportTriggeredEventNotification)

          stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/billing/meters/mtr_123")
            .to_return(body: JSON.generate({ "id" => "mtr_123", "object" => "billing.meter" }))
          stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/core/events/evt_234")
            .to_return(body: @v2_pull_payload)

          meter = event_notif.fetch_related_object
          assert meter.instance_of?(Stripe::Billing::Meter)
          assert meter.id == "mtr_123"

          event = event_notif.fetch_event
          assert event.is_a?(Stripe::V1BillingMeterErrorReportTriggeredEvent)
          assert_equal "a", event.data.reason.error_types.first.sample_errors.first.request.identifier
        end

        should "correctly retrieve events" do
          event_notif = parse_signed_event(@v2_push_payload)
          stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/core/events/evt_234")
            .to_return(body: @v2_pull_payload)

          event = @client.v2.core.events.retrieve(event_notif.id)

          assert event.is_a?(Stripe::V1BillingMeterErrorReportTriggeredEvent)
          assert event.data.error == "bufo"
          assert event.data.reason.error_types[0].code == "meter_event_invalid_value"
        end

        should "parse unknown events" do
          event_notif = parse_signed_event(@v2_payload_fake_event)
          assert event_notif.instance_of?(Stripe::UnknownEventNotification)

          stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/core/events/evt_234")
            .to_return(body: {
              "id" => "evt_234",
              "object" => "v2.core.event",
              "type" => "whatever",
              "created" => "2022-02-15T00:27:45.330Z",
            }.to_json)

          event = event_notif.fetch_event
          assert event.instance_of?(Stripe::V2::Event)
        end
      end
    end
  end
end
