# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  class RequestOptionsTest < Test::Unit::TestCase
    context "OPTS_COPYABLE" do
      should "include :apibase" do
        assert_include Stripe::RequestOptions::OPTS_COPYABLE, :api_base
      end
    end

    context "OPTS_PERSISTABLE" do
      should "not include :idempotency_key" do
        refute_includes Stripe::RequestOptions::OPTS_PERSISTABLE, :idempotency_key
      end

      should "not include :stripe_context" do
        refute_includes Stripe::RequestOptions::OPTS_PERSISTABLE, :stripe_context
      end
    end

    should "merge_config_and_opts" do
      config = StripeConfiguration.setup do |c|
        c.api_key = "sk_test_123"
        c.stripe_account = "acct_123"
        c.stripe_context = "wksp_123"
        c.api_version = "2018-08-02"
      end
      request_opts = {
        api_key: "sk_test_456",
        stripe_account: "acct_456",
        stripe_context: "wksp_456",
        stripe_version: "2018-08-03",
        idempotency_key: "idemp_123",
      }
      merged_opts = RequestOptions.merge_config_and_opts(config, request_opts)
      assert_equal "sk_test_456", merged_opts[:api_key]
      assert_equal "acct_456", merged_opts[:stripe_account]
      assert_equal "wksp_456", merged_opts[:stripe_context]
      assert_equal "2018-08-03", merged_opts[:stripe_version]
      assert_equal "idemp_123", merged_opts[:idempotency_key]
    end

    context "extract_opts_from_hash" do
      should "extract from hash with symbol keys" do
        opts = {
          api_key: "sk_test_123",
          stripe_account: "acct_123",
          stripe_context: "wksp_123",
          stripe_version: "2018-08-02",
          idempotency_key: "idemp_123",
          "A-Header" => "header",
        }
        request_opts = RequestOptions.extract_opts_from_hash(opts)
        assert_equal "sk_test_123", request_opts[:api_key]
        assert_equal "acct_123", request_opts[:stripe_account]
        assert_equal "wksp_123", request_opts[:stripe_context]
        assert_equal "2018-08-02", request_opts[:stripe_version]
        assert_equal "idemp_123", request_opts[:idempotency_key]
        assert_equal({ "A-Header" => "header" }, request_opts[:headers])
      end

      should "extract from string opts" do
        opts = "sk_test_123"
        request_opts = RequestOptions.extract_opts_from_hash(opts)
        assert_equal "sk_test_123", request_opts[:api_key]
        refute request_opts.key?(:headers)
      end

      should "normalize headers" do
        opts = {
          "a-header" => "header",
          "b-header" => "header",
        }
        request_opts = RequestOptions.extract_opts_from_hash(opts)
        assert_equal({ "A-Header" => "header", "B-Header" => "header" }, request_opts[:headers])
      end
    end

    context "combine_opts" do
      should "correctly combine user specified options" do
        object_opts = { api_key: "sk_123", stripe_version: "2022-11-15" }
        request_opts = { api_key: "sk_456", stripe_account: "acct_123" }
        combined = RequestOptions.combine_opts(object_opts, request_opts)
        assert_equal(combined[:stripe_version], "2022-11-15")
        assert_equal(combined[:api_key], "sk_456")
        assert_equal(combined[:stripe_account], "acct_123")
      end

      should "correctly only retain per-request custom keys" do
        object_opts = { api_key: "sk_123", stripe_version: "2022-11-15" , headers: {"Test-Header": "foo"}}
        request_opts = { api_key: "sk_456", stripe_account: "acct_123" , headers: {"Cool-Header": "bar"}}
        combined = RequestOptions.combine_opts(object_opts, request_opts)
        assert_equal("2022-11-15", combined[:stripe_version])
        assert_equal("sk_456", combined[:api_key])
        assert_equal( "acct_123", combined[:stripe_account])
        assert !combined.key?(:test_header)
        assert_equal({ :"Cool-Header" => "bar" }, combined[:headers])
      end
    end
  end
end
