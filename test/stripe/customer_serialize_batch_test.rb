# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  class CustomerSerializeBatchTest < Test::Unit::TestCase
    UUID_PATTERN = /\A[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}\z/.freeze

    setup do
      @client = Stripe::StripeClient.new("sk_test_123")
      @service = @client.v1.customers
    end

    should "serialize_batch_update produces correct structure" do
      result = @service.serialize_batch_update("cus_123", { description: "test customer" })
      parsed = JSON.parse(result)

      assert_match UUID_PATTERN, parsed["id"]
      assert_equal({ "customer" => "cus_123" }, parsed["path_params"])
      assert_equal({ "description" => "test customer" }, parsed["params"])
      assert_equal Stripe::ApiVersion::CURRENT, parsed["stripe_version"]
      assert !parsed.key?("context"), "context key should be absent when stripe_context is not provided"
    end

    should "serialize_batch_update generates unique ids" do
      result1 = @service.serialize_batch_update("cus_123", {})
      result2 = @service.serialize_batch_update("cus_123", {})
      parsed1 = JSON.parse(result1)
      parsed2 = JSON.parse(result2)

      assert_not_equal parsed1["id"], parsed2["id"]
    end

    should "serialize_batch_update with stripe_context" do
      result = @service.serialize_batch_update("cus_123", {}, { stripe_context: "acct_123" })
      parsed = JSON.parse(result)

      assert_equal "acct_123", parsed["context"]
    end

    should "serialize_batch_update with empty params" do
      result = @service.serialize_batch_update("cus_123")
      parsed = JSON.parse(result)

      assert_match UUID_PATTERN, parsed["id"]
      assert_equal({ "customer" => "cus_123" }, parsed["path_params"])
      assert_equal({}, parsed["params"])
      assert_equal Stripe::ApiVersion::CURRENT, parsed["stripe_version"]
    end

    should "serialize_batch_update with metadata" do
      params = { metadata: { "key1" => "value1", "key2" => "value2" } }
      result = @service.serialize_batch_update("cus_123", params)
      parsed = JSON.parse(result)

      assert_equal({ "key1" => "value1", "key2" => "value2" }, parsed["params"]["metadata"])
    end

    should "serialize_batch_update with custom stripe_version" do
      result = @service.serialize_batch_update("cus_123", {}, { stripe_version: "2024-01-01" })
      parsed = JSON.parse(result)

      assert_equal "2024-01-01", parsed["stripe_version"]
    end

    should "serialize_batch_update with nil stripe_version falls back to default" do
      result = @service.serialize_batch_update("cus_123", {}, { stripe_version: nil })
      parsed = JSON.parse(result)

      assert_equal Stripe::ApiVersion::CURRENT, parsed["stripe_version"]
    end
  end
end
