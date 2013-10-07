require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class ListObjectTest < Test::Unit::TestCase
    should "be able to retrieve full lists given a listobject" do
      @mock.expects(:get).twice.returns(test_response(test_charge_array))
      c = Stripe::Charge.all
      assert c.kind_of?(Stripe::ListObject)
      assert_equal('/v1/charges', c.url)
      all = c.all
      assert all.kind_of?(Stripe::ListObject)
      assert_equal('/v1/charges', all.url)
      assert all.data.kind_of?(Array)
    end
  end
end