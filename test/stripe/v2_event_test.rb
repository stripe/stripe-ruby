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
          "object" => "event",
          "type" => "financial_account.balance.opened",
          "created" => "2022-02-15T00:27:45.330Z",
        }.to_json

        @v2_payload_no_data = {
          "id" => "evt_234",
          "object" => "event",
          "type" => "financial_account.balance.opened",
          "created" => "2022-02-15T00:27:45.330Z",
          "related_object" => {
            "id" => "fa_123",
            "type" => "financial_account",
            "url" => "/v2/financial_accounts/fa_123",
            "stripe_context" => "acct_123",
          },
        }.to_json

        @v2_payload_with_data = {
          "id" => "evt_234",
          "object" => "event",
          "type" => "financial_account.balance.opened",
          "created" => "2022-02-15T00:27:45.330Z",
          "related_object" => {
            "id" => "fa_123",
            "type" => "financial_account",
            "url" => "/v2/financial_accounts/fa_123",
            "stripe_context" => "acct_123",
          },
          "data" => {
            "containing_compartment_id" => "compid",
            "id" => "foo",
            "type" => "bufo",
          },
        }.to_json
      end

      context ".event_signing" do
        should "parse v2 events" do
          event = parse_signed_event(@v2_payload_no_data)
          assert event.is_a?(Stripe::ThinEvent)
          assert_equal "evt_234", event.id
          assert_equal "financial_account.balance.opened", event.type
          assert_equal "2022-02-15T00:27:45.330Z", event.created
        end

        should "raise a JSON::ParserError from an invalid JSON payload" do
          assert_raises Stripe::SignatureVerificationError do
            parse_signed_event(@v2_payload_no_data, "Bad secret")
          end
        end
      end

      should "fetch data" do
        event = parse_signed_event(@v2_payload_no_data)
        assert event.is_a?(Stripe::ThinEvent)

        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/core/events/evt_234")
          .to_return(body: @v2_payload_with_data)
        ret_event = retrieve_event(event.id)
        assert ret_event.is_a?(Stripe::FinancialAccountBalanceOpenedEvent)

        assert ret_event.data.type == "bufo"
        assert ret_event.data.containing_compartment_id == "compid"
      end

      should "fetch object" do
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/financial_accounts/fa_123")
          .to_return(body: JSON.generate({ "id" => "fa_123", "object" => "financial_account" }))
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/core/events/evt_234")
          .to_return(body: @v2_payload_with_data)

        event = parse_signed_event(@v2_payload_no_data)
        assert event.is_a?(Stripe::ThinEvent)

        ret_event = retrieve_event(event.id)
        assert ret_event.is_a?(Stripe::FinancialAccountBalanceOpenedEvent)

        fa = @client.v2.financial_accounts.retrieve(ret_event.related_object.id)

        assert fa.is_a?(Stripe::V2::FinancialAccount)
        assert fa.id == "fa_123"
      end
    end
  end
end
