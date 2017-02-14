require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class RecipientTest < Test::Unit::TestCase
    FIXTURE = API_FIXTURES.fetch(:transfer_recipient)

    should "be listable" do
      recipients = Stripe::Recipient.list
      assert_requested :get, "#{Stripe.api_base}/v1/recipients"
      assert recipients.data.kind_of?(Array)
      assert recipients.data[0].kind_of?(Stripe::Recipient)
    end

    should "be retrievable" do
      recipient = Stripe::Recipient.retrieve(FIXTURE[:id])
      assert_requested :get, "#{Stripe.api_base}/v1/recipients/#{FIXTURE[:id]}"
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
      recipient = Stripe::Recipient.retrieve(FIXTURE[:id])
      recipient.metadata['key'] = 'value'
      recipient.save
      assert_requested :post, "#{Stripe.api_base}/v1/recipients/#{FIXTURE[:id]}"
    end

    should "be updateable" do
      recipient = Stripe::Recipient.update(FIXTURE[:id], metadata: {foo: 'bar'})
      assert_requested :post, "#{Stripe.api_base}/v1/recipients/#{FIXTURE[:id]}"
      assert recipient.kind_of?(Stripe::Recipient)
    end

    should "be deletable" do
      recipient = Stripe::Recipient.retrieve(FIXTURE[:id])
      recipient = recipient.delete
      assert_requested :delete, "#{Stripe.api_base}/v1/recipients/#{FIXTURE[:id]}"
      assert recipient.kind_of?(Stripe::Recipient)
    end
  end
end

