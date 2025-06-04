# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  class WebhookTest < Test::Unit::TestCase
    EVENT_PAYLOAD = <<~PAYLOAD
      {
        "id": "evt_test_webhook",
        "object": "event"
      }
    PAYLOAD

    context ".compute_signature" do
      should "compute a signature which can then be verified" do
        timestamp = Time.now
        signature = Stripe::Webhook::Signature.compute_signature(
          timestamp,
          EVENT_PAYLOAD,
          Test::WebhookHelpers::SECRET
        )
        header = Test::WebhookHelpers.generate_header(payload: EVENT_PAYLOAD, timestamp: timestamp, signature: signature)
        assert(Stripe::Webhook::Signature.verify_header(EVENT_PAYLOAD, header, Test::WebhookHelpers::SECRET))
      end
    end

    context ".generate_header" do
      should "generate a header in valid format" do
        timestamp = Time.now
        signature = Stripe::Webhook::Signature.compute_signature(
          timestamp,
          EVENT_PAYLOAD,
          Test::WebhookHelpers::SECRET
        )
        scheme = "v1"
        header = Stripe::Webhook::Signature.generate_header(
          timestamp,
          signature,
          scheme: scheme
        )
        assert_equal("t=#{timestamp.to_i},#{scheme}=#{signature}", header)
      end
    end

    context ".construct_event" do
      should "return an Event instance from a valid JSON payload and valid signature header" do
        header = Test::WebhookHelpers.generate_header(payload: EVENT_PAYLOAD)
        event = Stripe::Webhook.construct_event(EVENT_PAYLOAD, header, Test::WebhookHelpers::SECRET)
        assert event.is_a?(Stripe::Event)
      end

      should "raise a JSON::ParserError from an invalid JSON payload" do
        assert_raises JSON::ParserError do
          payload = "this is not valid JSON"
          header = Test::WebhookHelpers.generate_header(payload: payload)
          Stripe::Webhook.construct_event(payload, header, Test::WebhookHelpers::SECRET)
        end
      end

      should "raise a SignatureVerificationError from a valid JSON payload and an invalid signature header" do
        header = "bad_header"
        assert_raises Stripe::SignatureVerificationError do
          Stripe::Webhook.construct_event(EVENT_PAYLOAD, header, Test::WebhookHelpers::SECRET)
        end
      end

      should "can call refresh on Event data object" do
        payload = {
          "id": "evt_123",
          "object": "event",
          "data": {
            "object": {
              "id": "cus_123",
              "object": "customer",
            }
          }
        }.to_json

        header = Test::WebhookHelpers.generate_header(payload: payload)
        event = Stripe::Webhook.construct_event(payload, header, Test::WebhookHelpers::SECRET)
        assert event.is_a?(Stripe::Event)

        event.data.object.refresh
        assert_equal("cus_123", event.data.object.id)
      end
    end

    context ".verify_signature_header" do
      should "raise a SignatureVerificationError when the header does not have the expected format" do
        header = "i'm not even a real signature header"
        e = assert_raises(Stripe::SignatureVerificationError) do
          Stripe::Webhook::Signature.verify_header(EVENT_PAYLOAD, header, "secret")
        end
        assert_match("Unable to extract timestamp and signatures from header", e.message)
      end

      should "raise a SignatureVerificationError when there are no signatures with the expected scheme" do
        header = Test::WebhookHelpers.generate_header(payload: EVENT_PAYLOAD, scheme: "v0")
        e = assert_raises(Stripe::SignatureVerificationError) do
          Stripe::Webhook::Signature.verify_header(EVENT_PAYLOAD, header, "secret")
        end
        assert_match("No signatures found with expected scheme", e.message)
      end

      should "raise a SignatureVerificationError when there are no valid signatures for the payload" do
        header = Test::WebhookHelpers.generate_header(payload: EVENT_PAYLOAD, signature: "bad_signature")
        e = assert_raises(Stripe::SignatureVerificationError) do
          Stripe::Webhook::Signature.verify_header(EVENT_PAYLOAD, header, "secret")
        end
        assert_match("No signatures found matching the expected signature for payload", e.message)
      end

      should "raise a SignatureVerificationError when the timestamp is not within the tolerance" do
        header = Test::WebhookHelpers.generate_header(payload: EVENT_PAYLOAD, timestamp: Time.now - 15)
        e = assert_raises(Stripe::SignatureVerificationError) do
          Stripe::Webhook::Signature.verify_header(EVENT_PAYLOAD, header, Test::WebhookHelpers::SECRET, tolerance: 10)
        end
        assert_match("Timestamp outside the tolerance zone", e.message)
      end

      should "return true when the header contains a valid signature and the timestamp is within the tolerance" do
        header = Test::WebhookHelpers.generate_header(payload: EVENT_PAYLOAD)
        assert(Stripe::Webhook::Signature.verify_header(EVENT_PAYLOAD, header, Test::WebhookHelpers::SECRET, tolerance: 10))
      end

      should "return true when the header contains at least one valid signature" do
        header = Test::WebhookHelpers.generate_header(payload: EVENT_PAYLOAD) + ",v1=bad_signature"
        assert(Stripe::Webhook::Signature.verify_header(EVENT_PAYLOAD, header, Test::WebhookHelpers::SECRET, tolerance: 10))
      end

      should "return true when the header contains a valid signature and the timestamp is off but no tolerance is provided" do
        header = Test::WebhookHelpers.generate_header(payload: EVENT_PAYLOAD, timestamp: Time.at(12_345))
        assert(Stripe::Webhook::Signature.verify_header(EVENT_PAYLOAD, header, Test::WebhookHelpers::SECRET))
      end
    end
  end
end
