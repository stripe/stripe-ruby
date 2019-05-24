# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class RecipientTest < Test::Unit::TestCase
    should "be listable" do
      recipients = Stripe::Recipient.list
      assert_requested :get, "#{Stripe.api_base}/v1/recipients"
      assert recipients.data.is_a?(Array)
      assert recipients.data[0].is_a?(Stripe::Recipient)
    end

    should "be retrievable" do
      recipient = Stripe::Recipient.retrieve("rp_123")
      assert_requested :get, "#{Stripe.api_base}/v1/recipients/rp_123"
      assert recipient.is_a?(Stripe::Recipient)
    end

    should "be creatable" do
      recipient = Stripe::Recipient.create(
        name: "Noah Jackson",
        type: "individual"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/recipients"
      assert recipient.is_a?(Stripe::Recipient)
    end

    should "be saveable" do
      recipient = Stripe::Recipient.retrieve("rp_123")
      recipient.metadata["key"] = "value"
      recipient.save
      assert_requested :post, "#{Stripe.api_base}/v1/recipients/#{recipient.id}"
    end

    should "be updateable" do
      recipient = Stripe::Recipient.update("rp_123", metadata: { foo: "bar" })
      assert_requested :post, "#{Stripe.api_base}/v1/recipients/rp_123"
      assert recipient.is_a?(Stripe::Recipient)
    end

    should "be deletable" do
    end

    context "#delete" do
      should "be deletable" do
        recipient = Stripe::Recipient.retrieve("rp_123")
        recipient = recipient.delete
        assert_requested :delete, "#{Stripe.api_base}/v1/recipients/#{recipient.id}"
        assert recipient.is_a?(Stripe::Recipient)
      end
    end

    context ".delete" do
      should "be deletable" do
        recipient = Stripe::Recipient.delete("rp_123")
        assert_requested :delete, "#{Stripe.api_base}/v1/recipients/rp_123"
        assert recipient.is_a?(Stripe::Recipient)
      end
    end
  end
end
