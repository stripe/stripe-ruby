# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class TaxIdTest < Test::Unit::TestCase
    context "#resource_url" do
      should "return a resource URL" do
        tax_id = Stripe::TaxId.construct_from(
          id: "txi_123",
          customer: "cus_123"
        )
        assert_equal "/v1/customers/cus_123/tax_ids/txi_123",
                     tax_id.resource_url
      end

      should "raise without a customer" do
        tax_id = Stripe::TaxId.construct_from(id: "txi_123")
        assert_raises NotImplementedError do
          tax_id.resource_url
        end
      end
    end

    should "raise on #retrieve" do
      assert_raises NotImplementedError do
        Stripe::TaxId.retrieve("txi_123")
      end
    end
  end
end
