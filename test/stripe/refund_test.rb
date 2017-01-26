require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class RefundTest < Test::Unit::TestCase
    should "refunds should be listable" do
      refunds = Stripe::Refund.list
      assert refunds.first.kind_of?(Stripe::Refund)
    end

    should "refunds should be retrievable" do
      refund = Stripe::Refund.retrieve(API_FIXTURES[:refund][:id])
      assert refund.kind_of?(Stripe::Refund)
    end

    should "refunds should be saveable" do
      refund = Stripe::Refund.retrieve(API_FIXTURES[:refund][:id])
      refund.metadata['key'] = 'value'
      refund.save
    end

    should "refunds should be updateable" do
      _ = Stripe::Refund.update(API_FIXTURES[:refund][:id], metadata: { key: 'value' })
    end

    should "create should return a new refund" do
      _ = Stripe::Refund.create(:charge => API_FIXTURES[:charge][:id])
    end
  end
end
