require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class DisputeTest < Test::Unit::TestCase
    should "disputes should be retrievable" do
      @mock.expects(:get).once.returns(make_response(make_dispute))
      d = Stripe::Dispute.retrieve('dp_test_dispute')
      assert d.kind_of?(Stripe::Dispute)
    end

    should "disputes should be listable" do
      @mock.expects(:get).once.returns(make_response(make_dispute_array))
      d = Stripe::Dispute.list
      assert d.data.kind_of? Array
      d.each do |dispute|
        assert dispute.kind_of?(Stripe::Dispute)
      end
    end

    should "disputes should be closeable" do
      @mock.expects(:get).never
      @mock.expects(:post).with(
        "#{Stripe.api_base}/v1/disputes/test_dispute/close",
        nil,
        ''
      ).once.returns(make_response({:id => 'dp_test_dispute', :status => 'lost'}))
      d = Stripe::Dispute.new('test_dispute')
      d.close
    end

    should "disputes should be updateable" do
      @mock.expects(:post).once.
        with("https://api.stripe.com/v1/disputes/test_dispute", nil, "metadata[foo]=bar").
        returns(make_response(make_dispute(metadata: {foo: 'bar'})))
      d = Stripe::Dispute.update("test_dispute", metadata: {foo: 'bar'})
      assert_equal('bar', d.metadata['foo'])
    end

    should "disputes should be saveable" do
      @mock.expects(:get).once.returns(make_response(make_dispute))
      @mock.expects(:post).with(
        "#{Stripe.api_base}/v1/disputes/dp_test_dispute",
        nil,
        'evidence[customer_name]=customer'
      ).once.returns(make_response(make_dispute))

      d = Stripe::Dispute.new('test_dispute')
      d.refresh
      d.evidence['customer_name'] = 'customer'
      d.save
    end
  end
end
