# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __dir__)

module EwStripe
  module Issuing
    class TransactionTest < Test::Unit::TestCase
      should "be listable" do
        stub_request(:get, "#{EwStripe.api_base}/v1/issuing/transactions")
          .to_return(body: JSON.generate(object: "list", data: [{ id: "ipi_123", object: "issuing.transaction" }]))

        transactions = EwStripe::Issuing::Transaction.list
        assert_requested :get, "#{EwStripe.api_base}/v1/issuing/transactions"
        assert transactions.data.is_a?(Array)
        assert transactions.data[0].is_a?(EwStripe::Issuing::Transaction)
      end

      should "be retrievable" do
        stub_request(:get, "#{EwStripe.api_base}/v1/issuing/transactions/ipi_123")
          .to_return(body: JSON.generate(id: "ipi_123", object: "issuing.transaction"))

        transaction = EwStripe::Issuing::Transaction.retrieve("ipi_123")
        assert_requested :get, "#{EwStripe.api_base}/v1/issuing/transactions/ipi_123"
        assert transaction.is_a?(EwStripe::Issuing::Transaction)
      end

      should "be saveable" do
        stub_request(:post, "#{EwStripe.api_base}/v1/issuing/transactions/ipi_123")
          .to_return(body: JSON.generate(id: "ipi_123", object: "issuing.transaction"))

        transaction = EwStripe::Issuing::Transaction.construct_from(id: "ipi_123", object: "issuing.transaction", metadata: {})
        transaction.metadata["key"] = "value"
        transaction.save
        assert_requested :post, "#{EwStripe.api_base}/v1/issuing/transactions/#{transaction.id}"
        assert transaction.is_a?(EwStripe::Issuing::Transaction)
      end

      should "be updateable" do
        stub_request(:post, "#{EwStripe.api_base}/v1/issuing/transactions/ipi_123")
          .to_return(body: JSON.generate(id: "ipi_123", object: "issuing.transaction"))

        transaction = EwStripe::Issuing::Transaction.update("ipi_123", metadata: { foo: "bar" })
        assert_requested :post, "#{EwStripe.api_base}/v1/issuing/transactions/ipi_123"
        assert transaction.is_a?(EwStripe::Issuing::Transaction)
      end
    end
  end
end
