# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  class WebhookEndpointTest < Test::Unit::TestCase
    should "be listable" do
      webhook_endpoints = Stripe::WebhookEndpoint.list
      assert_requested :get, "#{Stripe.api_base}/v1/webhook_endpoints"
      assert webhook_endpoints.data.is_a?(Array)
      assert webhook_endpoints.first.is_a?(Stripe::WebhookEndpoint)
    end

    should "be retrievable" do
      webhook_endpoint = Stripe::WebhookEndpoint.retrieve("we_123")
      assert_requested :get, "#{Stripe.api_base}/v1/webhook_endpoints/we_123"
      assert webhook_endpoint.is_a?(Stripe::WebhookEndpoint)
    end

    should "be creatable" do
      webhook_endpoint = Stripe::WebhookEndpoint.create(
        enabled_events: ["charge.succeeded"],
        url: "https://stripe.com"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/webhook_endpoints"
      assert webhook_endpoint.is_a?(Stripe::WebhookEndpoint)
    end

    should "be saveable" do
      webhook_endpoint = Stripe::WebhookEndpoint.retrieve("we_123")
      webhook_endpoint.enabled_events = ["charge.succeeded"]
      webhook_endpoint.save
      assert_requested :post, "#{Stripe.api_base}/v1/webhook_endpoints/#{webhook_endpoint.id}"
    end

    should "be updateable" do
      webhook_endpoint = Stripe::WebhookEndpoint.update("we_123", enabled_events: ["charge.succeeded"])
      assert_requested :post, "#{Stripe.api_base}/v1/webhook_endpoints/we_123"
      assert webhook_endpoint.is_a?(Stripe::WebhookEndpoint)
    end
  end
end
