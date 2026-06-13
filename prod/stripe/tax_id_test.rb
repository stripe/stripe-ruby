# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  class TaxIdTest < Test::Unit::TestCase
    context "#resource_url" do
      should "return a resource URL" do
        tax_id = Stripe::TaxId.construct_from(
          id: "txi_123",
          customer: "cus_123"
        )
        assert_equal "/v1/tax_ids/txi_123",
                     tax_id.resource_url
      end
    end

    should "be listable" do
      tax_ids = Stripe::TaxId.list
      assert_requested :get, "#{Stripe.api_base}/v1/tax_ids"
      assert tax_ids.data.is_a?(Array)
      assert tax_ids.first.is_a?(Stripe::TaxId)
    end

    should "be retrievable" do
      tax_id = Stripe::TaxId.retrieve("txi_123")
      assert_requested :get, "#{Stripe.api_base}/v1/tax_ids/txi_123"
      assert tax_id.is_a?(Stripe::TaxId)
    end

    should "be creatable" do
      tax_id = Stripe::TaxId.create(
        type: "eu_vat",
        value: "DE123456789"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/tax_ids"
      assert tax_id.is_a?(Stripe::TaxId)
    end

    context "#delete" do
      should "be deletable" do
        tax_id = Stripe::TaxId.retrieve("txi_123")
        tax_id = tax_id.delete
        assert_requested :delete, "#{Stripe.api_base}/v1/tax_ids/#{tax_id.id}"
        assert tax_id.is_a?(Stripe::TaxId)
      end
    end

    context ".delete" do
      should "be deletable" do
        tax_id = Stripe::TaxId.delete("txi_123")
        assert_requested :delete, "#{Stripe.api_base}/v1/tax_ids/txi_123"
        assert tax_id.is_a?(Stripe::TaxId)
      end
    end
  end
end
