# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  class TransferTest < Test::Unit::TestCase
    should "be listable" do
      transfers = Stripe::Transfer.list
      assert_requested :get, "#{Stripe.api_base}/v1/transfers"
      assert transfers.data.is_a?(Array)
      assert transfers.data[0].is_a?(Stripe::Transfer)
    end

    should "be retrievable" do
      transfer = Stripe::Transfer.retrieve("tr_123")
      assert_requested :get, "#{Stripe.api_base}/v1/transfers/tr_123"
      assert transfer.is_a?(Stripe::Transfer)
    end

    should "be creatable" do
      transfer = Stripe::Transfer.create(
        amount: 100,
        currency: "USD",
        destination: "acct_123"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/transfers"
      assert transfer.is_a?(Stripe::Transfer)
    end

    should "be saveable" do
      transfer = Stripe::Transfer.retrieve("tr_123")
      transfer.metadata["key"] = "value"
      transfer.save
      assert_requested :post, "#{Stripe.api_base}/v1/transfers/#{transfer.id}"
    end

    should "be updateable" do
      transfer = Stripe::Transfer.update("tr_123", metadata: { foo: "bar" })
      assert_requested :post, "#{Stripe.api_base}/v1/transfers/tr_123"
      assert transfer.is_a?(Stripe::Transfer)
    end

    context "#create_reversal" do
      should "create a reversal" do
        reversal = Stripe::Transfer.create_reversal(
          "tr_123",
          amount: 100
        )
        assert_requested :post, "#{Stripe.api_base}/v1/transfers/tr_123/reversals"
        assert reversal.is_a?(Stripe::Reversal)
      end
    end

    context "#retrieve_reversal" do
      should "retrieve a reversal" do
        reversal = Stripe::Transfer.retrieve_reversal(
          "tr_123",
          "trr_123"
        )
        assert_requested :get, "#{Stripe.api_base}/v1/transfers/tr_123/reversals/trr_123"
        assert reversal.is_a?(Stripe::Reversal)
      end
    end

    context "#update_reversal" do
      should "update a reversal" do
        reversal = Stripe::Transfer.update_reversal(
          "tr_123",
          "trr_123",
          metadata: { foo: "bar" }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/transfers/tr_123/reversals/trr_123"
        assert reversal.is_a?(Stripe::Reversal)
      end
    end

    context "#list_reversals" do
      should "list the transfer's reversals" do
        reversals = Stripe::Transfer.list_reversals(
          "tr_123"
        )
        assert_requested :get, "#{Stripe.api_base}/v1/transfers/tr_123/reversals"
        assert reversals.is_a?(Stripe::ListObject)
        assert reversals.data.is_a?(Array)
      end
    end

    should "retrieve a reversal with expand" do
      reversal = Stripe::Transfer.retrieve_reversal(
        "tr_123",
        "trr_123",
        { expand: %w[transfer] },
        {}
      )
      assert_requested :get, "#{Stripe.api_base}/v1/transfers/tr_123/reversals/trr_123?expand%5B%5D=transfer"
      assert reversal.is_a?(Stripe::Reversal)
    end

    should "be retrievable with opts and params" do
      transfer_reversal = Stripe::Transfer.retrieve_reversal("tr_123",
                                                             "trr_123",
                                                             { expand: ["available"] },
                                                             { stripe_account: "acct_123" })
      assert_requested :get, "#{Stripe.api_base}/v1/transfers/tr_123/reversals/trr_123?expand[]=available" do |req|
        assert_equal("acct_123", req.headers["Stripe-Account"])
        true
      end
      assert transfer_reversal.is_a?(Stripe::Reversal)
    end
    should "be retrievable with params and an explicitly empty opts" do
      transfer_reversal = Stripe::Transfer.retrieve_reversal(
        "tr_123",
        "trr_123",
        { expand: ["available"] },
        {}
      )
      assert_requested :get, "#{Stripe.api_base}/v1/transfers/tr_123/reversals/trr_123?expand[]=available" do |req|
        assert_nil(req.headers["Stripe-Account"])
        true
      end
      assert transfer_reversal.is_a?(Stripe::Reversal)
    end
  end
end
