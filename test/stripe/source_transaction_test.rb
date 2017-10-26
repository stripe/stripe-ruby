require File.expand_path("../../test_helper", __FILE__)

module Stripe
  class SourceTransactionTest < Test::Unit::TestCase
    setup do
      @source = Stripe::Source.retrieve("src_123")
    end

    should "be listable" do
      # TODO: remove the stub once stripe-mock supports /v1/sources/src_.../source_transactions
      stub_request(:get, "#{Stripe.api_base}/v1/sources/#{@source.id}/source_transactions")
        .to_return(body: JSON.generate(
          object: "list",
          data: [
            {
              object: "source_transaction",
            },
          ]
        ))

      transactions = @source.source_transactions

      assert_requested :get, "#{Stripe.api_base}/v1/sources/#{@source.id}/source_transactions"
      assert transactions.data.is_a?(Array)
      assert transactions.first.is_a?(Stripe::SourceTransaction)
    end
  end
end
