require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class RefundTest < Test::Unit::TestCase
    TEST_ID = "re_1234"

    should "refunds should be listable" do
      refunds = Stripe::Refund.list
      assert refunds.first.kind_of?(Stripe::Refund)
    end

    should "refunds should be retrievable" do
      refund = Stripe::Refund.retrieve(TEST_ID)
      assert refund.kind_of?(Stripe::Refund)
    end

    should "refunds should be saveable" do
      refund = Stripe::Refund.retrieve(TEST_ID)
      refund.metadata['key'] = 'value'
      refund.save
    end

    should "refunds should be updateable" do
      _ = Stripe::Refund.update('update_refund', metadata: { key: 'value' })
    end

    should "create should return a new refund" do
      _ = Stripe::Refund.create(:charge => 'test_charge')
    end
  end
end
