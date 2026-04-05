# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)
require "json"

module Stripe
  class V2RefTest < Test::Unit::TestCase
    context "Stripe::V2::Ref" do
      setup do
        @client = StripeClient.new("test_123")
        @ref_data = { "type" => "billing.meter", "id" => "mtr_123", "url" => "/v1/billing/meters/mtr_123" }
        @v2_ref_data = { "type" => "v2.core.account", "id" => "acct_123", "url" => "/v2/core/accounts/acct_123" }
      end

      context "construction" do
        should "accept string-keyed hash" do
          ref = Stripe::V2::Ref.new(@ref_data)
          assert_equal "billing.meter", ref.type
          assert_equal "mtr_123", ref.id
          assert_equal "/v1/billing/meters/mtr_123", ref.url
        end

        should "accept symbol-keyed hash" do
          ref = Stripe::V2::Ref.new(type: "billing.meter", id: "mtr_123", url: "/v1/billing/meters/mtr_123")
          assert_equal "billing.meter", ref.type
          assert_equal "mtr_123", ref.id
          assert_equal "/v1/billing/meters/mtr_123", ref.url
        end

        should "accept a client" do
          ref = Stripe::V2::Ref.new(@ref_data, @client)
          assert_not_nil ref
        end

        should "accept no client" do
          ref = Stripe::V2::Ref.new(@ref_data)
          assert_not_nil ref
        end
      end

      context "#fetch" do
        should "raise ArgumentError when no client is present" do
          ref = Stripe::V2::Ref.new(@ref_data)
          assert_raises ArgumentError do
            ref.fetch
          end
        end

        should "make a GET request to the url and deserialize v1 response" do
          stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/billing/meters/mtr_123")
            .to_return(body: JSON.generate({ "id" => "mtr_123", "object" => "billing.meter" }))

          ref = Stripe::V2::Ref.new(@ref_data, @client)
          result = ref.fetch

          assert_not_nil result
          assert_equal "mtr_123", result["id"]
          assert_equal "billing.meter", result["object"]
          assert_requested(:get, "#{Stripe::DEFAULT_API_BASE}/v1/billing/meters/mtr_123")
        end

        should "make a GET request to the url and deserialize v2 response" do
          stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/core/accounts/acct_123")
            .to_return(body: JSON.generate({ "id" => "acct_123", "object" => "v2.core.account" }))

          ref = Stripe::V2::Ref.new(@v2_ref_data, @client)
          result = ref.fetch

          assert_not_nil result
          assert_equal "acct_123", result["id"]
          assert_equal "v2.core.account", result["object"]
          assert_requested(:get, "#{Stripe::DEFAULT_API_BASE}/v2/core/accounts/acct_123")
        end
      end
    end
  end
end
