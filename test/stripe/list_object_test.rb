require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class ListObjectTest < Test::Unit::TestCase
    should "provide .empty_list" do
      list = Stripe::ListObject.empty_list
      assert list.empty?
    end

    should "provide #count via enumerable" do
      list = Stripe::ListObject.construct_from(make_charge_array)
      assert_equal 3, list.count
    end

    should "provide #each" do
      arr = [
        { :id => 1 },
        { :id => 2 },
        { :id => 3 },
      ]
      expected = Util.convert_to_stripe_object(arr, {})
      list = Stripe::ListObject.construct_from({ :data => arr })
      assert_equal expected, list.each.to_a
    end

    should "provide #auto_paging_each" do
      arr = [
        { :id => 1 },
        { :id => 2 },
        { :id => 3 },
      ]
      expected = Util.convert_to_stripe_object(arr, {})

      list = TestListObject.construct_from({ :data => [{ :id => 1 }], :has_more => true })
      @mock.expects(:get).once.with("#{Stripe.api_base}/things?starting_after=1", nil, nil).
        returns(make_response({ :data => [{ :id => 2 }, { :id => 3}], :has_more => false }))

      assert_equal expected, list.auto_paging_each.to_a
    end

    should "provide #auto_paging_each that responds to a block" do
      arr = [
        { :id => 1 },
        { :id => 2 },
        { :id => 3 },
      ]
      expected = Util.convert_to_stripe_object(arr, {})

      list = TestListObject.construct_from({ :data => [{ :id => 1 }], :has_more => true })
      @mock.expects(:get).once.with("#{Stripe.api_base}/things?starting_after=1", nil, nil).
        returns(make_response({ :data => [{ :id => 2 }, { :id => 3}], :has_more => false }))

      actual = []
      list.auto_paging_each do |obj|
        actual << obj
      end

      assert_equal expected, actual
    end

    should "provide #empty?" do
      list = Stripe::ListObject.construct_from({ :data => [] })
      assert list.empty?
      list = Stripe::ListObject.construct_from({ :data => [{}] })
      refute list.empty?
    end

    #
    # next_page
    #

    should "fetch a next page through #next_page" do
      list = TestListObject.construct_from({ :data => [{ :id => 1 }], :has_more => true })
      @mock.expects(:get).once.with("#{Stripe.api_base}/things?starting_after=1", nil, nil).
        returns(make_response({ :data => [{ :id => 2 }], :has_more => false }))
      next_list = list.next_page
      refute next_list.empty?
    end

    should "fetch a next page through #next_page and respect limit" do
      list = TestListObject.construct_from({ :data => [{ :id => 1 }], :has_more => true })
      list.limit = 3
      @mock.expects(:get).once.with("#{Stripe.api_base}/things?limit=3&starting_after=1", nil, nil).
        returns(make_response({ :data => [{ :id => 2 }], :has_more => false }))
      next_list = list.next_page
      assert_equal 3, next_list.limit
    end

    should "fetch an empty page through #next_page" do
      list = TestListObject.construct_from({ :data => [{ :id => 1 }], :has_more => false })
      next_list = list.next_page
      assert_equal Stripe::ListObject.empty_list, next_list
    end

    #
    # previous_page
    #

    should "fetch a next page through #previous_page" do
      list = TestListObject.construct_from({ :data => [{ :id => 2 }] })
      @mock.expects(:get).once.with("#{Stripe.api_base}/things?ending_before=2", nil, nil).
        returns(make_response({ :data => [{ :id => 1 }] }))
      next_list = list.previous_page
      refute next_list.empty?
    end

    should "fetch a next page through #previous_page and respect limit" do
      list = TestListObject.construct_from({ :data => [{ :id => 2 }] })
      list.limit = 3
      @mock.expects(:get).once.with("#{Stripe.api_base}/things?ending_before=2&limit=3", nil, nil).
        returns(make_response({ :data => [{ :id => 1 }] }))
      next_list = list.previous_page
      assert_equal 3, next_list.limit
    end

    #
    # backward compatibility
    #

    # note that the name #all is deprecated, as is using it fetch the next page
    # in a list
    should "be able to retrieve full lists given a listobject" do
      @mock.expects(:get).twice.returns(make_response(make_charge_array))
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

# A helper class with a URL that allows us to try out pagination.
class TestListObject < Stripe::ListObject
  def url
    "/things"
  end
end
