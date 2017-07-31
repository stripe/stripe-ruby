require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class RecipientTest < Test::Unit::TestCase
    should "be listable" do
      recipients = Stripe::Recipient.list
      assert_requested :get, "#{Stripe.api_base}/v1/recipients"
      assert recipients.data.kind_of?(Array)
      assert recipients.data[0].kind_of?(Stripe::Recipient)
    end

    should "be retrievable" do
      recipient = Stripe::Recipient.retrieve("rp_123")
      assert_requested :get, "#{Stripe.api_base}/v1/recipients/rp_123"
      assert recipient.kind_of?(Stripe::Recipient)
    end

    should "be creatable" do
      recipient = Stripe::Recipient.create(
        name: "Noah Jackson",
        type: "individual"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/recipients"
      assert recipient.kind_of?(Stripe::Recipient)
    end

    should "be saveable" do
      recipient = Stripe::Recipient.retrieve("rp_123")
      recipient.metadata['key'] = 'value'
      recipient.save
      assert_requested :post, "#{Stripe.api_base}/v1/recipients/#{recipient.id}"
    end

    should "be updateable" do
      recipient = Stripe::Recipient.update("rp_123", metadata: {foo: 'bar'})
      assert_requested :post, "#{Stripe.api_base}/v1/recipients/rp_123"
      assert recipient.kind_of?(Stripe::Recipient)
    end

    should "be deletable" do
      recipient = Stripe::Recipient.retrieve("rp_123")
      recipient = recipient.delete
      assert_requested :delete, "#{Stripe.api_base}/v1/recipients/#{recipient.id}"
      assert recipient.kind_of?(Stripe::Recipient)
    end
  end
end

