require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class RecipientTest < Test::Unit::TestCase

    should "recipient should be retrievable" do
      @mock.expects(:get).once.returns(make_response(make_recipient))
      r = Stripe::Recipient.retrieve('test_recipient')
      assert_equal 'rp_test_recipient', r.id
    end

    should "recipient should be updateable" do
      @mock.expects(:post).once.
        with("https://api.stripe.com/v1/recipients/test_recipient", nil, "metadata[foo]=bar").
        returns(make_response(make_recipient(metadata: {foo: 'bar'})))
      r = Stripe::Recipient.update('test_recipient', metadata: {foo: 'bar'})
      assert_equal 'bar', r.metadata['foo']
    end
  end
end

