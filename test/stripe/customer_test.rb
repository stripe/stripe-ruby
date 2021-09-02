# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module EwStripe
  class CustomerTest < Test::Unit::TestCase
    should "be listable" do
      customers = EwStripe::Customer.list
      assert_requested :get, "#{EwStripe.api_base}/v1/customers"
      assert customers.data.is_a?(Array)
      assert customers.first.is_a?(EwStripe::Customer)
    end

    should "be retrievable" do
      customer = EwStripe::Customer.retrieve("cus_123")
      assert_requested :get, "#{EwStripe.api_base}/v1/customers/cus_123"
      assert customer.is_a?(EwStripe::Customer)
    end

    should "be creatable" do
      customer = EwStripe::Customer.create
      assert_requested :post, "#{EwStripe.api_base}/v1/customers"
      assert customer.is_a?(EwStripe::Customer)
    end

    should "be saveable" do
      customer = EwStripe::Customer.retrieve("cus_123")
      customer.metadata["key"] = "value"
      customer.save
      assert_requested :post, "#{EwStripe.api_base}/v1/customers/#{customer.id}"
    end

    should "be updateable" do
      customer = EwStripe::Customer.update("cus_123", metadata: { key: "value" })
      assert_requested :post, "#{EwStripe.api_base}/v1/customers/cus_123"
      assert customer.is_a?(EwStripe::Customer)
    end

    context "#delete" do
      should "be deletable" do
        customer = EwStripe::Customer.retrieve("cus_123")
        customer = customer.delete
        assert_requested :delete, "#{EwStripe.api_base}/v1/customers/#{customer.id}"
        assert customer.is_a?(EwStripe::Customer)
      end
    end

    context ".delete" do
      should "be deletable" do
        customer = EwStripe::Customer.delete("cus_123")
        assert_requested :delete, "#{EwStripe.api_base}/v1/customers/cus_123"
        assert customer.is_a?(EwStripe::Customer)
      end
    end

    context "#delete_discount" do
      should "delete a discount" do
        customer = EwStripe::Customer.retrieve("cus_123")
        discount = customer.delete_discount
        assert_requested :delete, "#{EwStripe.api_base}/v1/customers/cus_123/discount"
        assert discount.is_a?(EwStripe::Discount)
      end
    end

    context ".delete_discount" do
      should "delete a discount" do
        discount = EwStripe::Customer.delete_discount("cus_123")
        assert_requested :delete, "#{EwStripe.api_base}/v1/customers/cus_123/discount"
        assert discount.is_a?(EwStripe::Discount)
      end
    end

    context "#create_source" do
      should "create a source" do
        EwStripe::Customer.create_source(
          "cus_123",
          source: "tok_123"
        )
        assert_requested :post, "#{EwStripe.api_base}/v1/customers/cus_123/sources"
      end
    end

    context "#retrieve_source" do
      should "retrieve a source" do
        EwStripe::Customer.retrieve_source(
          "cus_123",
          "ba_123"
        )
        assert_requested :get, "#{EwStripe.api_base}/v1/customers/cus_123/sources/ba_123"
      end
    end

    context "#update_source" do
      should "update a source" do
        EwStripe::Customer.update_source(
          "cus_123",
          "ba_123",
          metadata: { foo: "bar" }
        )
        assert_requested :post, "#{EwStripe.api_base}/v1/customers/cus_123/sources/ba_123"
      end
    end

    context "#delete_source" do
      should "delete a source" do
        EwStripe::Customer.delete_source(
          "cus_123",
          "ba_123"
        )
        assert_requested :delete, "#{EwStripe.api_base}/v1/customers/cus_123/sources/ba_123"
      end
    end

    context "#list_sources" do
      should "list the customer's sources" do
        sources = EwStripe::Customer.list_sources(
          "cus_123"
        )
        assert_requested :get, "#{EwStripe.api_base}/v1/customers/cus_123/sources"
        assert sources.is_a?(EwStripe::ListObject)
        assert sources.data.is_a?(Array)
      end
    end

    context "source field" do
      should "allow setting source with token" do
        c = EwStripe::Customer.new("test_customer")
        c.source = "tok_123"
        assert_equal "tok_123", c.source
      end

      should "allow setting source with hash and set flag" do
        c = EwStripe::Customer.new("test_customer")
        c.source = {
          object: "card",
        }
        assert_equal true, c.source.save_with_parent
      end
    end

    context "#create_tax_id" do
      should "create a tax id" do
        EwStripe::Customer.create_tax_id(
          "cus_123",
          type: "eu_vat",
          value: "11111"
        )
        assert_requested :post, "#{EwStripe.api_base}/v1/customers/cus_123/tax_ids"
      end
    end

    context "#retrieve_tax_id" do
      should "retrieve a tax id" do
        EwStripe::Customer.retrieve_tax_id(
          "cus_123",
          "txi_123"
        )
        assert_requested :get, "#{EwStripe.api_base}/v1/customers/cus_123/tax_ids/txi_123"
      end
    end

    context "#delete_tax_id" do
      should "delete a tax id" do
        EwStripe::Customer.delete_tax_id(
          "cus_123",
          "txi_123"
        )
        assert_requested :delete, "#{EwStripe.api_base}/v1/customers/cus_123/tax_ids/txi_123"
      end
    end

    context "#list_tax_ids" do
      should "list the customer's tax ids" do
        sources = EwStripe::Customer.list_tax_ids(
          "cus_123"
        )
        assert_requested :get, "#{EwStripe.api_base}/v1/customers/cus_123/tax_ids"
        assert sources.is_a?(EwStripe::ListObject)
        assert sources.data.is_a?(Array)
      end
    end

    context "#create_balance_transaction" do
      should "create a customer balance transaction" do
        EwStripe::Customer.create_balance_transaction(
          "cus_123",
          amount: 1234,
          currency: "usd"
        )
        assert_requested :post, "#{EwStripe.api_base}/v1/customers/cus_123/balance_transactions"
      end
    end

    context "#retrieve_balance_transaction" do
      should "retrieve a customer balance transaction" do
        EwStripe::Customer.retrieve_balance_transaction(
          "cus_123",
          "cbtxn_123"
        )
        assert_requested :get, "#{EwStripe.api_base}/v1/customers/cus_123/balance_transactions/cbtxn_123"
      end
    end

    context "#update_balance_transaction" do
      should "update a customer balance transaction" do
        EwStripe::Customer.update_balance_transaction(
          "cus_123",
          "cbtxn_123",
          description: "new"
        )
        assert_requested :post, "#{EwStripe.api_base}/v1/customers/cus_123/balance_transactions/cbtxn_123"
      end
    end

    context "#list_balance_transactions" do
      should "list the customer balance transactions" do
        sources = EwStripe::Customer.list_balance_transactions(
          "cus_123"
        )
        assert_requested :get, "#{EwStripe.api_base}/v1/customers/cus_123/balance_transactions"
        assert sources.is_a?(EwStripe::ListObject)
        assert sources.data.is_a?(Array)
      end
    end
  end
end
