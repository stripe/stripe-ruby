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
      d = Stripe::Dispute.all
      assert d.data.kind_of? Array
      d.each do |dispute|
        assert dispute.kind_of?(Stripe::Dispute)
      end
    end

    should "disputes should be closeable" do
      @mock.expects(:get).never
      @mock.expects(:post).once.returns(make_response({:id => 'dp_test_dispute', :status => 'lost'}))
      d = Stripe::Dispute.new('test_dispute')
      d.close
    end

    should "disputes should be updateable" do
      @mock.expects(:get).once.returns(make_response(make_dispute))
      @mock.expects(:post).once.returns(make_response(make_dispute))
      d = Stripe::Dispute.new('test_dispute')
      d.refresh
      d.metadata = {'dispute_info' => 'abcde'}
      d.save
    end
  end
end
