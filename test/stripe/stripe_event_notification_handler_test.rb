# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)
require "json"

module Stripe
  class StripeEventNotificationHandlerTest < Test::Unit::TestCase
    V1_BILLING_METER_PAYLOAD = {
      "id" => "evt_123",
      "object" => "v2.core.event",
      "type" => "v1.billing.meter.error_report_triggered",
      "livemode" => false,
      "created" => "2022-02-15T00:27:45.330Z",
      "context" => "event_context_456",
      "related_object" => {
        "id" => "mtr_123",
        "type" => "billing.meter",
        "url" => "/v1/billing/meters/mtr_123",
      },
    }.to_json

    V2_ACCOUNT_CREATED_PAYLOAD = {
      "id" => "evt_789",
      "object" => "v2.core.event",
      "type" => "v2.core.account.created",
      "livemode" => false,
      "created" => "2022-02-15T00:27:45.330Z",
      "context" => nil,
      "related_object" => {
        "id" => "acct_abc",
        "type" => "account",
        "url" => "/v2/core/accounts/acct_abc",
      },
    }.to_json

    V2_ACCOUNT_UPDATED_PAYLOAD = {
      "id" => "evt_999",
      "object" => "v2.core.event",
      "type" => "v2.core.account.updated",
      "livemode" => false,
      "created" => "2022-02-15T00:27:45.330Z",
      "context" => "event_context_999",
      "related_object" => {
        "id" => "acct_xyz",
        "type" => "account",
        "url" => "/v2/core/accounts/acct_xyz",
      },
    }.to_json

    UNKNOWN_EVENT_PAYLOAD = {
      "id" => "evt_unknown",
      "object" => "v2.core.event",
      "type" => "llama.created",
      "livemode" => false,
      "created" => "2022-02-15T00:27:45.330Z",
      "context" => "event_context_unknown",
      "related_object" => {
        "id" => "llama_123",
        "type" => "llama",
        "url" => "/v1/llamas/llama_123",
      },
    }.to_json

    setup do
      @client = StripeClient.new("sk_test_123")
      @on_unhandled_calls = []
      @on_unhandled_handler = lambda { |notif, client, details|
        @on_unhandled_calls << { notif: notif, client: client, details: details }
      }
    end

    context "StripeEventNotificationHandler" do
      should "raise ArgumentError when initialized without block" do
        assert_raises(ArgumentError, "You must pass a block to respond to unhandled events") do
          StripeEventNotificationHandler.new(@client, Test::WebhookHelpers::SECRET)
        end
      end

      should "route event to registered handler" do
        handler = StripeEventNotificationHandler.new(@client, Test::WebhookHelpers::SECRET, &@on_unhandled_handler)

        handler_called = false
        received_notif = nil
        received_client = nil

        handler.on_v1_billing_meter_error_report_triggered do |notif, client|
          handler_called = true
          received_notif = notif
          received_client = client
        end

        sig_header = Test::WebhookHelpers.generate_header(payload: V1_BILLING_METER_PAYLOAD)
        handler.handle(V1_BILLING_METER_PAYLOAD, sig_header)

        assert handler_called
        assert_not_nil received_notif
        assert received_notif.is_a?(Stripe::Events::V1BillingMeterErrorReportTriggeredEventNotification)
        assert_equal "v1.billing.meter.error_report_triggered", received_notif.type
        assert_equal "evt_123", received_notif.id
        assert_not_nil received_client
        assert_equal 0, @on_unhandled_calls.length
      end

      should "route different events to correct handlers" do
        handler = StripeEventNotificationHandler.new(@client, Test::WebhookHelpers::SECRET, &@on_unhandled_handler)

        billing_handler_called = false
        account_handler_num_calls = 0

        handler.on_v1_billing_meter_error_report_triggered do |notif, _client|
          billing_handler_called = true
          assert notif.is_a?(Stripe::Events::V1BillingMeterErrorReportTriggeredEventNotification)
        end

        handler.on_v2_core_account_created do |notif, _client|
          account_handler_num_calls += 1
          assert notif.is_a?(Stripe::Events::V2CoreAccountCreatedEventNotification)
        end

        sig_header1 = Test::WebhookHelpers.generate_header(payload: V1_BILLING_METER_PAYLOAD)
        handler.handle(V1_BILLING_METER_PAYLOAD, sig_header1)

        sig_header2 = Test::WebhookHelpers.generate_header(payload: V2_ACCOUNT_CREATED_PAYLOAD)
        handler.handle(V2_ACCOUNT_CREATED_PAYLOAD, sig_header2)

        sig_header2 = Test::WebhookHelpers.generate_header(payload: V2_ACCOUNT_CREATED_PAYLOAD)
        handler.handle(V2_ACCOUNT_CREATED_PAYLOAD, sig_header2)

        assert billing_handler_called
        assert_equal 2, account_handler_num_calls
        assert_equal 0, @on_unhandled_calls.length
      end

      should "handler receives correct event type and data" do
        handler = StripeEventNotificationHandler.new(@client, Test::WebhookHelpers::SECRET, &@on_unhandled_handler)

        received_event = nil
        received_client = nil

        handler.on_v1_billing_meter_error_report_triggered do |notif, client|
          received_event = notif
          received_client = client
        end

        sig_header = Test::WebhookHelpers.generate_header(payload: V1_BILLING_METER_PAYLOAD)
        handler.handle(V1_BILLING_METER_PAYLOAD, sig_header)

        assert received_event.is_a?(Stripe::Events::V1BillingMeterErrorReportTriggeredEventNotification)
        assert_equal "v1.billing.meter.error_report_triggered", received_event.type
        assert_equal "evt_123", received_event.id
        assert_equal "mtr_123", received_event.related_object.id
        assert received_client.is_a?(StripeClient)
      end

      should "not allow registering handlers after handling events" do
        handler = StripeEventNotificationHandler.new(@client, Test::WebhookHelpers::SECRET, &@on_unhandled_handler)

        handler.on_v1_billing_meter_error_report_triggered do |_notif, _client|
          # Handler body
        end

        sig_header = Test::WebhookHelpers.generate_header(payload: V1_BILLING_METER_PAYLOAD)
        handler.handle(V1_BILLING_METER_PAYLOAD, sig_header)

        e = assert_raises(RuntimeError) do
          handler.on_v2_core_account_created do |_notif, _client|
            # Handler body
          end
        end
        assert_match(/Cannot register new event handlers after handling events/, e.message)
      end

      should "not allow registering duplicate handlers" do
        handler = StripeEventNotificationHandler.new(@client, Test::WebhookHelpers::SECRET, &@on_unhandled_handler)

        handler.on_v1_billing_meter_error_report_triggered do |_notif, _client|
          # First handler
        end

        e = assert_raises(ArgumentError) do
          handler.on_v1_billing_meter_error_report_triggered do |_notif, _client|
            # Duplicate handler
          end
        end
        assert_match(/Handler already registered for event type/, e.message)
      end

      should "route unknown event to on_unhandled handler" do
        handler = StripeEventNotificationHandler.new(@client, Test::WebhookHelpers::SECRET, &@on_unhandled_handler)

        sig_header = Test::WebhookHelpers.generate_header(payload: UNKNOWN_EVENT_PAYLOAD)
        handler.handle(UNKNOWN_EVENT_PAYLOAD, sig_header)

        assert_equal 1, @on_unhandled_calls.length

        call = @on_unhandled_calls[0]
        assert call[:notif].is_a?(Stripe::Events::UnknownEventNotification)
        assert_equal "llama.created", call[:notif].type
        assert call[:client].is_a?(StripeClient)
        assert call[:details].is_a?(UnhandledNotificationDetails)
        assert_equal false, call[:details].is_known_event_type
      end

      should "route known unregistered event to on_unhandled handler" do
        handler = StripeEventNotificationHandler.new(@client, Test::WebhookHelpers::SECRET, &@on_unhandled_handler)

        sig_header = Test::WebhookHelpers.generate_header(payload: V1_BILLING_METER_PAYLOAD)
        handler.handle(V1_BILLING_METER_PAYLOAD, sig_header)

        assert_equal 1, @on_unhandled_calls.length

        call = @on_unhandled_calls[0]
        assert call[:notif].is_a?(Stripe::Events::V1BillingMeterErrorReportTriggeredEventNotification)
        assert_equal "v1.billing.meter.error_report_triggered", call[:notif].type
        assert call[:client].is_a?(StripeClient)
        assert call[:details].is_a?(UnhandledNotificationDetails)
        assert_equal true, call[:details].is_known_event_type
      end

      should "not call on_unhandled for registered events" do
        handler = StripeEventNotificationHandler.new(@client, Test::WebhookHelpers::SECRET, &@on_unhandled_handler)

        handler.on_v1_billing_meter_error_report_triggered do |_notif, _client|
          # Handler body
        end

        sig_header = Test::WebhookHelpers.generate_header(payload: V1_BILLING_METER_PAYLOAD)
        handler.handle(V1_BILLING_METER_PAYLOAD, sig_header)

        assert_equal 0, @on_unhandled_calls.length
      end

      should "raise error when handler is registered without block" do
        handler = StripeEventNotificationHandler.new(@client, Test::WebhookHelpers::SECRET, &@on_unhandled_handler)

        e = assert_raises(ArgumentError) do
          handler.on_v1_billing_meter_error_report_triggered
        end
        assert_match(/Block required to register event handler/, e.message)
      end

      should "validate webhook signature" do
        handler = StripeEventNotificationHandler.new(@client, Test::WebhookHelpers::SECRET, &@on_unhandled_handler)

        assert_raises(Stripe::SignatureVerificationError) do
          handler.handle(V1_BILLING_METER_PAYLOAD, "invalid_signature")
        end
      end

      should "return empty list when no event types registered" do
        handler = StripeEventNotificationHandler.new(@client, Test::WebhookHelpers::SECRET, &@on_unhandled_handler)

        assert_equal [], handler.registered_event_types
      end

      should "return single registered event type" do
        handler = StripeEventNotificationHandler.new(@client, Test::WebhookHelpers::SECRET, &@on_unhandled_handler)

        handler.on_v1_billing_meter_error_report_triggered do |_notif, _client|
          # Handler body
        end

        assert_equal ["v1.billing.meter.error_report_triggered"], handler.registered_event_types
      end

      should "return multiple registered event types" do
        handler = StripeEventNotificationHandler.new(@client, Test::WebhookHelpers::SECRET, &@on_unhandled_handler)

        # Register in non-alphabetical order
        handler.on_v2_core_account_updated do |_notif, _client|
          # Handler body
        end
        handler.on_v1_billing_meter_error_report_triggered do |_notif, _client|
          # Handler body
        end
        handler.on_v2_core_account_created do |_notif, _client|
          # Handler body
        end

        assert_equal ["v1.billing.meter.error_report_triggered", "v2.core.account.created", "v2.core.account.updated"], handler.registered_event_types
      end

      should "handler can raise errors without breaking handler" do
        handler = StripeEventNotificationHandler.new(@client, Test::WebhookHelpers::SECRET, &@on_unhandled_handler)

        handler.on_v1_billing_meter_error_report_triggered do |_notif, _client|
          raise StandardError, "Handler error!"
        end

        sig_header = Test::WebhookHelpers.generate_header(payload: V1_BILLING_METER_PAYLOAD)

        e = assert_raises(StandardError) do
          handler.handle(V1_BILLING_METER_PAYLOAD, sig_header)
        end
        assert_equal "Handler error!", e.message
      end

      should "on_unhandled handler can raise errors" do
        error_handler = lambda { |_notif, _client, _details|
          raise StandardError, "Unhandled error!"
        }

        handler = StripeEventNotificationHandler.new(@client, Test::WebhookHelpers::SECRET, &error_handler)

        sig_header = Test::WebhookHelpers.generate_header(payload: UNKNOWN_EVENT_PAYLOAD)

        e = assert_raises(StandardError) do
          handler.handle(UNKNOWN_EVENT_PAYLOAD, sig_header)
        end
        assert_equal "Unhandled error!", e.message
      end

      should "handler uses event stripe_context" do
        client_with_context = StripeClient.new("sk_test_123", stripe_context: "original_context_123")
        handler = StripeEventNotificationHandler.new(client_with_context, Test::WebhookHelpers::SECRET, &@on_unhandled_handler)

        received_context = nil

        handler.on_v1_billing_meter_error_report_triggered do |_notif, client|
          received_context = client.requestor.config.stripe_context
        end

        assert_equal "original_context_123", client_with_context.requestor.config.stripe_context.to_s

        sig_header = Test::WebhookHelpers.generate_header(payload: V1_BILLING_METER_PAYLOAD)
        handler.handle(V1_BILLING_METER_PAYLOAD, sig_header)

        assert_equal "event_context_456", received_context.to_s
      end

      should "restore stripe_context after handler success" do
        client_with_context = StripeClient.new("sk_test_123", stripe_context: "original_context_123")
        handler = StripeEventNotificationHandler.new(client_with_context, Test::WebhookHelpers::SECRET, &@on_unhandled_handler)

        handler.on_v1_billing_meter_error_report_triggered do |_notif, client|
          assert_equal "event_context_456", client.requestor.config.stripe_context.to_s
        end

        assert_equal "original_context_123", client_with_context.requestor.config.stripe_context.to_s

        sig_header = Test::WebhookHelpers.generate_header(payload: V1_BILLING_METER_PAYLOAD)
        handler.handle(V1_BILLING_METER_PAYLOAD, sig_header)

        assert_equal "original_context_123", client_with_context.requestor.config.stripe_context.to_s
      end

      should "restore stripe_context after handler error" do
        client_with_context = StripeClient.new("sk_test_123", stripe_context: "original_context_123")
        handler = StripeEventNotificationHandler.new(client_with_context, Test::WebhookHelpers::SECRET, &@on_unhandled_handler)

        handler.on_v1_billing_meter_error_report_triggered do |_notif, client|
          assert_equal "event_context_456", client.requestor.config.stripe_context.to_s
          raise StandardError, "Handler error!"
        end

        assert_equal "original_context_123", client_with_context.requestor.config.stripe_context.to_s

        sig_header = Test::WebhookHelpers.generate_header(payload: V1_BILLING_METER_PAYLOAD)

        e = assert_raises(StandardError) do
          handler.handle(V1_BILLING_METER_PAYLOAD, sig_header)
        end
        assert_equal "Handler error!", e.message

        assert_equal "original_context_123", client_with_context.requestor.config.stripe_context.to_s
      end

      should "set stripe_context to nil when event has no context" do
        client_with_context = StripeClient.new("sk_test_123", stripe_context: "original_context_123")
        handler = StripeEventNotificationHandler.new(client_with_context, Test::WebhookHelpers::SECRET, &@on_unhandled_handler)

        received_context = "not_nil"

        handler.on_v2_core_account_created do |_notif, client|
          received_context = client.requestor.config.stripe_context
        end

        assert_equal "original_context_123", client_with_context.requestor.config.stripe_context.to_s

        sig_header = Test::WebhookHelpers.generate_header(payload: V2_ACCOUNT_CREATED_PAYLOAD)
        handler.handle(V2_ACCOUNT_CREATED_PAYLOAD, sig_header)

        assert_nil received_context
        assert_equal "original_context_123", client_with_context.requestor.config.stripe_context.to_s
      end

      should "handler client retains configuration except context" do
        api_key = "sk_test_custom_key"
        original_context = "original_context_xyz"

        client_with_config = StripeClient.new(api_key, stripe_context: original_context)
        handler = StripeEventNotificationHandler.new(client_with_config, Test::WebhookHelpers::SECRET, &@on_unhandled_handler)

        received_api_key = nil
        received_context = nil

        handler.on_v1_billing_meter_error_report_triggered do |_notif, client|
          received_api_key = client.requestor.config.api_key
          received_context = client.requestor.config.stripe_context
        end

        sig_header = Test::WebhookHelpers.generate_header(payload: V1_BILLING_METER_PAYLOAD)
        handler.handle(V1_BILLING_METER_PAYLOAD, sig_header)

        assert_equal api_key, received_api_key
        assert_equal "event_context_456", received_context.to_s
        assert_equal original_context, client_with_config.requestor.config.stripe_context.to_s
      end
    end
  end
end
