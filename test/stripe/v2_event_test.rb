# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)
require "json"

module Stripe
  class V2EventTest < Test::Unit::TestCase
    def parse_signed_event(payload, secret = Test::WebhookHelpers::SECRET)
      @client.parse_thin_event(payload, Test::WebhookHelpers.generate_header(payload: payload), secret)
    end

    def retrieve_event(evt_id)
      @client.v2.core.events.retrieve(evt_id)
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
          assert event.is_a?(Stripe::ThinEvent)
          assert_equal "evt_234", event.id
          assert_equal "v1.billing.meter.error_report_triggered", event.type
          assert_equal "2022-02-15T00:27:45.330Z", event.created
        end

        should "parse v2 events with livemode and reason" do
          event = parse_signed_event(@v2_push_payload_with_livemode_and_reason)
          assert event.is_a?(Stripe::ThinEvent)
          assert_equal "evt_234", event.id
          assert_equal "v1.billing.meter.error_report_triggered", event.type
          assert_equal "2022-02-15T00:27:45.330Z", event.created
          assert_true event.livemode
          assert_not_nil event.reason
          assert_equal "a.b.c", event.reason[:type]
          assert_equal "r_123", event.reason[:request][:id]
          assert_equal "key", event.reason[:request][:idempotency_key]
        end

        should "raise a JSON::ParserError from an invalid JSON payload" do
          assert_raises Stripe::SignatureVerificationError do
            parse_signed_event(@v2_push_payload, "Bad secret")
          end
        end
      end

      should "retrieve event data" do
        event = parse_signed_event(@v2_push_payload)
        assert event.is_a?(Stripe::ThinEvent)

        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/core/events/evt_234")
          .to_return(body: @v2_pull_payload)
        ret_event = retrieve_event(event.id)
        assert ret_event.is_a?(Stripe::V1BillingMeterErrorReportTriggeredEvent)

        assert ret_event.data.error == "bufo"
        assert ret_event.data.reason.error_types[0].code == "meter_event_invalid_value"
      end

      should "fetch object" do
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/billing/meters/mtr_123")
          .to_return(body: JSON.generate({ "id" => "mtr_123", "object" => "billing.meter" }))
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/core/events/evt_234")
          .to_return(body: @v2_pull_payload)

        event = parse_signed_event(@v2_push_payload)
        assert event.is_a?(Stripe::ThinEvent)

        ret_event = retrieve_event(event.id)
        assert ret_event.is_a?(Stripe::V1BillingMeterErrorReportTriggeredEvent)

        mtr = @client.v1.billing.meters.retrieve("mtr_123")

        assert mtr.is_a?(Stripe::Billing::Meter)
        assert mtr.id == "mtr_123"
      end
    end
  end
end
