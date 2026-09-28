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

        @v2_push_payload_null_related_object_id = {
          "id" => "evt_234",
          "object" => "v2.core.event",
          "type" => "v1.billing.meter.error_report_triggered",
          "created" => "2022-02-15T00:27:45.330Z",
          "related_object" => {
            "id" => nil,
            "type" => "billing.meter",
            "url" => "/v1/billing/meters/mtr_123",
          },
        }.to_json

        @v2_push_payload_no_related_object_id = {
          "id" => "evt_234",
          "object" => "v2.core.event",
          "type" => "v1.billing.meter.error_report_triggered",
          "created" => "2022-02-15T00:27:45.330Z",
          "related_object" => {
            "type" => "billing.meter",
            "url" => "/v1/billing/meters/mtr_123",
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
        should "raise an ArgumentError when given a v1 payload" do
          v1_payload = { "id" => "evt_123", "object" => "event", "type" => "charge.succeeded" }.to_json
          header = Test::WebhookHelpers.generate_header(payload: v1_payload)
          e = assert_raises(ArgumentError) do
            @client.parse_event_notification(v1_payload, header, Test::WebhookHelpers::SECRET)
          end
          assert_match(/construct_event/, e.message)
        end

        should "parse v2 events" do
          event = parse_signed_event(@v2_push_payload)
          assert event.is_a?(Stripe::V2::Core::EventNotification)
          assert_equal "evt_234", event.id
          assert_equal "v2.core.event", event.object
          assert_equal "v1.billing.meter.error_report_triggered", event.type
          assert_equal "2022-02-15T00:27:45.330Z", event.created
          assert_nil event.reason
        end

        should "parse v2 events with livemode and reason" do
          event = parse_signed_event(@v2_push_payload_with_livemode_and_reason)
          assert event.is_a?(Stripe::V2::Core::EventNotification)
          assert event.related_object.is_a?(Stripe::V2::Core::RelatedObject)
          assert event.reason.is_a?(Stripe::V2::Core::EventReason)

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
          assert event_notif.instance_of?(Stripe::Events::V1BillingMeterErrorReportTriggeredEventNotification)

          stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/billing/meters/mtr_123")
            .to_return(body: JSON.generate({ "id" => "mtr_123", "object" => "billing.meter" }))
          stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/core/events/evt_234")
            .to_return(body: @v2_pull_payload)

          meter = event_notif.fetch_related_object
          assert meter.instance_of?(Stripe::Billing::Meter)
          assert meter.id == "mtr_123"

          event = event_notif.fetch_event
          assert event.is_a?(Stripe::Events::V1BillingMeterErrorReportTriggeredEvent)
          assert_equal "a", event.data.reason.error_types.first.sample_errors.first.request.identifier

          assert_requested(:get, "#{Stripe::DEFAULT_API_BASE}/v1/billing/meters/mtr_123",
                           headers: { "Stripe-Request-Trigger" => "event=evt_234" })
          assert_requested(:get, "#{Stripe::DEFAULT_API_BASE}/v2/core/events/evt_234",
                           headers: { "Stripe-Request-Trigger" => "event=evt_234" })
        end

        should "correctly retrieve events" do
          event_notif = parse_signed_event(@v2_push_payload)
          stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/core/events/evt_234")
            .to_return(body: @v2_pull_payload)

          event = @client.v2.core.events.retrieve(event_notif.id)

          assert event.is_a?(Stripe::Events::V1BillingMeterErrorReportTriggeredEvent)
          assert event.data.error == "bufo"
          assert event.data.reason.error_types[0].code == "meter_event_invalid_value"
        end

        should "parse unknown events" do
          event_notif = parse_signed_event(@v2_payload_fake_event)
          assert event_notif.instance_of?(Stripe::Events::UnknownEventNotification)

          stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/core/events/evt_234")
            .to_return(body: {
              "id" => "evt_234",
              "object" => "v2.core.event",
              "type" => "whatever",
              "created" => "2022-02-15T00:27:45.330Z",
            }.to_json)

          event = event_notif.fetch_event
          assert event.instance_of?(Stripe::V2::Core::Event)
        end
      end

      context "Related objects" do
        should "default related_object_class to RelatedObject, and keep it private" do
          event_notif = parse_signed_event(@v2_push_payload)
          assert_equal Stripe::V2::Core::RelatedObject,
                       event_notif.send(:related_object_class)
          # it's an internal hook, not part of the public surface
          assert_false event_notif.respond_to?(:related_object_class)
          assert_raises NoMethodError do
            event_notif.related_object_class
          end
        end

        should "deserialize a related object whose id is explicitly null" do
          event_notif = parse_signed_event(@v2_push_payload_null_related_object_id)
          assert event_notif.related_object.is_a?(Stripe::V2::Core::RelatedObject)
          assert_nil event_notif.related_object.id
          assert_equal "billing.meter", event_notif.related_object.type
          assert_equal "/v1/billing/meters/mtr_123", event_notif.related_object.url

          stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/billing/meters/mtr_123")
            .to_return(body: JSON.generate({ "id" => "mtr_123", "object" => "billing.meter" }))

          meter = event_notif.fetch_related_object
          assert meter.instance_of?(Stripe::Billing::Meter)
        end

        should "deserialize a related object with no id key at all" do
          # `Hash#[]` returns nil for a missing key, so an absent `id` is
          # indistinguishable from a null one -- no error either way.
          event_notif = parse_signed_event(@v2_push_payload_no_related_object_id)
          assert event_notif.related_object.is_a?(Stripe::V2::Core::RelatedObject)
          assert_nil event_notif.related_object.id
          assert_equal "billing.meter", event_notif.related_object.type
          assert_equal "/v1/billing/meters/mtr_123", event_notif.related_object.url

          stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/billing/meters/mtr_123")
            .to_return(body: JSON.generate({ "id" => "mtr_123", "object" => "billing.meter" }))

          meter = event_notif.fetch_related_object
          assert meter.instance_of?(Stripe::Billing::Meter)
        end

        should "expose only type and url on a RelatedSingletonObject" do
          related_object = Stripe::V2::Core::RelatedSingletonObject.new(
            { type: "v2.core.account", url: "/v2/core/accounts" }
          )

          assert_equal "v2.core.account", related_object.type
          assert_equal "/v2/core/accounts", related_object.url
          assert_false related_object.respond_to?(:id)
        end

        should "use the related_object_class override declared by a subclass" do
          # No generated singleton event exists yet, so stand in for one.
          singleton_notification_class = Class.new(Stripe::V2::Core::EventNotification) do
            attr_reader :related_object

            private def related_object_class
              Stripe::V2::Core::RelatedSingletonObject
            end
          end

          event_notif = singleton_notification_class.new(
            {
              id: "evt_234",
              object: "v2.core.event",
              type: "v2.core.account.deleted",
              related_object: { type: "v2.core.account", url: "/v2/core/accounts" },
            },
            @client
          )

          assert event_notif.related_object.is_a?(Stripe::V2::Core::RelatedSingletonObject)
          assert_equal "v2.core.account", event_notif.related_object.type
          assert_equal "/v2/core/accounts", event_notif.related_object.url
          assert_false event_notif.related_object.respond_to?(:id)
        end
      end
    end
  end
end
