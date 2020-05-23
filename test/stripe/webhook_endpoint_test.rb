# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class WebhookEndpointTest < Test::Unit::TestCase
    should "be listable" do
      webhook_endpoints = StripeClient.new.webhook_endpoints.list
      assert_requested :get, "#{Stripe.api_base}/v1/webhook_endpoints"
      assert webhook_endpoints.data.is_a?(Array)
      assert webhook_endpoints.first.is_a?(Stripe::WebhookEndpoint)
    end

    should "be retrievable" do
      webhook_endpoint = StripeClient.new.webhook_endpoints.retrieve("we_123")
      assert_requested :get, "#{Stripe.api_base}/v1/webhook_endpoints/we_123"
      assert webhook_endpoint.is_a?(Stripe::WebhookEndpoint)
    end

    should "be creatable" do
      webhook_endpoint = StripeClient.new.webhook_endpoints.create(
        enabled_events: ["charge.succeeded"],
        url: "https://stripe.com"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/webhook_endpoints"
      assert webhook_endpoint.is_a?(Stripe::WebhookEndpoint)
    end

    should "be saveable" do
      webhook_endpoint = StripeClient.new.webhook_endpoints.retrieve("we_123")
      webhook_endpoint.enabled_events = ["charge.succeeded"]
      webhook_endpoint.save
      assert_requested :post, "#{Stripe.api_base}/v1/webhook_endpoints/#{webhook_endpoint.id}"
    end

    should "be updateable" do
      webhook_endpoint = StripeClient.new.webhook_endpoints.update("we_123", enabled_events: ["charge.succeeded"])
      assert_requested :post, "#{Stripe.api_base}/v1/webhook_endpoints/we_123"
      assert webhook_endpoint.is_a?(Stripe::WebhookEndpoint)
    end

    context "#delete" do
      should "be deletable" do
        webhook_endpoint = StripeClient.new.webhook_endpoints.retrieve("we_123")
        webhook_endpoint = webhook_endpoint.delete
        assert_requested :delete, "#{Stripe.api_base}/v1/webhook_endpoints/#{webhook_endpoint.id}"
        assert webhook_endpoint.is_a?(Stripe::WebhookEndpoint)
      end
    end

    context ".delete" do
      should "be deletable" do
        webhook_endpoint = StripeClient.new.webhook_endpoints.delete("we_123")
        assert_requested :delete, "#{Stripe.api_base}/v1/webhook_endpoints/we_123"
        assert webhook_endpoint.is_a?(Stripe::WebhookEndpoint)
      end
    end
  end
end
