# frozen_string_literal: true

require ::File.expand_path("../../../test_helper", __FILE__)

module Stripe
  module Issuing
    class TransactionTest < Test::Unit::TestCase
      should "be listable" do
        stub_request(:get, "#{Stripe.api_base}/v1/issuing/transactions")
          .to_return(body: JSON.generate(object: "list", data: [{ id: "ipi_123", object: "issuing.transaction" }]))

        transactions = Stripe::Issuing::Transaction.list
        assert_requested :get, "#{Stripe.api_base}/v1/issuing/transactions"
        assert transactions.data.is_a?(Array)
        assert transactions.data[0].is_a?(Stripe::Issuing::Transaction)
      end

      should "be retrievable" do
        stub_request(:get, "#{Stripe.api_base}/v1/issuing/transactions/ipi_123")
          .to_return(body: JSON.generate(id: "ipi_123", object: "issuing.transaction"))

        transaction = Stripe::Issuing::Transaction.retrieve("ipi_123")
        assert_requested :get, "#{Stripe.api_base}/v1/issuing/transactions/ipi_123"
        assert transaction.is_a?(Stripe::Issuing::Transaction)
      end

      should "be saveable" do
        stub_request(:post, "#{Stripe.api_base}/v1/issuing/transactions/ipi_123")
          .to_return(body: JSON.generate(id: "ipi_123", object: "issuing.transaction"))

        transaction = Stripe::Issuing::Transaction.construct_from(id: "ipi_123", object: "issuing.transaction", metadata: {})
        transaction.metadata["key"] = "value"
        transaction.save
        assert_requested :post, "#{Stripe.api_base}/v1/issuing/transactions/#{transaction.id}"
        assert transaction.is_a?(Stripe::Issuing::Transaction)
      end

      should "be updateable" do
        stub_request(:post, "#{Stripe.api_base}/v1/issuing/transactions/ipi_123")
          .to_return(body: JSON.generate(id: "ipi_123", object: "issuing.transaction"))

        transaction = Stripe::Issuing::Transaction.update("ipi_123", metadata: { foo: "bar" })
        assert_requested :post, "#{Stripe.api_base}/v1/issuing/transactions/ipi_123"
        assert transaction.is_a?(Stripe::Issuing::Transaction)
      end
    end
  end
end
