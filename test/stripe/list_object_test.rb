# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class ListObjectTest < Test::Unit::TestCase
    should "provide .empty_list" do
      list = Stripe::ListObject.empty_list
      assert list.empty?
    end

    should "provide #count via enumerable" do
      list = Stripe::ListObject.construct_from(data: [{ object: "charge" }])
      assert_equal 1, list.count
    end

    should "provide #each" do
      arr = [
        { id: 1 },
        { id: 2 },
        { id: 3 },
      ]
      expected = Util.convert_to_stripe_object(arr, {})
      list = Stripe::ListObject.construct_from(data: arr)
      assert_equal expected, list.each.to_a
    end

    should "provide #reverse_each" do
      arr = [
        { id: 1 },
        { id: 2 },
        { id: 3 },
      ]
      expected = Util.convert_to_stripe_object(arr.reverse, {})
      list = Stripe::ListObject.construct_from(data: arr)
      assert_equal expected, list.reverse_each.to_a
    end

    should "provide #auto_paging_each that supports forward pagination" do
      arr = [
        { id: 1 },
        { id: 2 },
        { id: 3 },
        { id: 4 },
        { id: 5 },
        { id: 6 },
      ]
      expected = Util.convert_to_stripe_object(arr, {})

      # Initial list object to page on. Notably, its last data element will be
      # used as a cursor to fetch the next page.
      list = TestListObject.construct_from(data: [{ id: 1 }],
                                           has_more: true,
                                           url: "/things")
      list.filters = { limit: 3 }

      # The test will start with the synthetic list object above, and use it as
      # a starting point to fetch two more pages. The second page indicates
      # that there are no more elements by setting `has_more` to `false`, and
      # iteration stops.
      stub_request(:get, "#{Stripe.api_base}/things")
        .with(query: { starting_after: "1", limit: "3" })
        .to_return(body: JSON.generate(data: [{ id: 2 }, { id: 3 }, { id: 4 }], has_more: true, url: "/things"))
      stub_request(:get, "#{Stripe.api_base}/things")
        .with(query: { starting_after: "4", limit: "3" })
        .to_return(body: JSON.generate(data: [{ id: 5 }, { id: 6 }], has_more: false, url: "/things"))

      assert_equal expected, list.auto_paging_each.to_a
    end

    should "provide #auto_paging_each that supports backward pagination with `ending_before`" do
      arr = [
        { id: 6 },
        { id: 5 },
        { id: 4 },
        { id: 3 },
        { id: 2 },
        { id: 1 },
      ]
      expected = Util.convert_to_stripe_object(arr, {})

      # Initial list object to page on. Notably, its first data element will be
      # used as a cursor to fetch the next page.
      list = TestListObject.construct_from(data: [{ id: 6 }],
                                           has_more: true,
                                           url: "/things")

      # We also add an `ending_before` filter on the list to simulate backwards
      # pagination.
      list.filters = { ending_before: 7, limit: 3 }

      # The test will start with the synthetic list object above, and use it as
      # a starting point to fetch two more pages. The second page indicates
      # that there are no more elements by setting `has_more` to `false`, and
      # iteration stops.
      stub_request(:get, "#{Stripe.api_base}/things")
        .with(query: { ending_before: "6", limit: "3" })
        .to_return(body: JSON.generate(data: [{ id: 3 }, { id: 4 }, { id: 5 }], has_more: true, url: "/things"))
      stub_request(:get, "#{Stripe.api_base}/things")
        .with(query: { ending_before: "3", limit: "3" })
        .to_return(body: JSON.generate(data: [{ id: 1 }, { id: 2 }], has_more: false, url: "/things"))

      assert_equal expected, list.auto_paging_each.to_a
    end

    should "provide #auto_paging_each that responds to a block" do
      arr = [
        { id: 1 },
        { id: 2 },
        { id: 3 },
      ]
      expected = Util.convert_to_stripe_object(arr, {})

      list = TestListObject.construct_from(data: [{ id: 1 }],
                                           has_more: true,
                                           url: "/things")
      stub_request(:get, "#{Stripe.api_base}/things")
        .with(query: { starting_after: "1" })
        .to_return(body: JSON.generate(data: [{ id: 2 }, { id: 3 }], has_more: false))

      actual = []
      list.auto_paging_each do |obj|
        actual << obj
      end

      assert_equal expected, actual
    end

    should "provide #empty?" do
      list = Stripe::ListObject.construct_from(data: [])
      assert list.empty?
      list = Stripe::ListObject.construct_from(data: [{}])
      refute list.empty?
    end

    #
    # next_page
    #

    should "fetch a next page through #next_page" do
      list = TestListObject.construct_from(data: [{ id: 1 }],
                                           has_more: true,
                                           url: "/things")
      stub_request(:get, "#{Stripe.api_base}/things")
        .with(query: { starting_after: "1" })
        .to_return(body: JSON.generate(data: [{ id: 2 }], has_more: false))
      next_list = list.next_page
      refute next_list.empty?
    end

    should "fetch a next page through #next_page and respect limit" do
      list = TestListObject.construct_from(data: [{ id: 1 }],
                                           has_more: true,
                                           url: "/things")
      list.filters = { expand: ["data.source"], limit: 3 }
      stub_request(:get, "#{Stripe.api_base}/things")
        .with(query: { "expand[]" => "data.source", "limit" => "3", "starting_after" => "1" })
        .to_return(body: JSON.generate(data: [{ id: 2 }], has_more: false))
      next_list = list.next_page
      assert_equal({ expand: ["data.source"], limit: 3, starting_after: 1 }, next_list.filters)
    end

    should "fetch an empty page through #next_page" do
      list = TestListObject.construct_from(data: [{ id: 1 }],
                                           has_more: false,
                                           url: "/things")
      next_list = list.next_page
      assert_equal Stripe::ListObject.empty_list, next_list
    end

    #
    # previous_page
    #

    should "fetch a next page through #previous_page" do
      list = TestListObject.construct_from(data: [{ id: 2 }],
                                           has_more: true,
                                           url: "/things")
      stub_request(:get, "#{Stripe.api_base}/things")
        .with(query: { ending_before: "2" })
        .to_return(body: JSON.generate(data: [{ id: 1 }], has_more: false))
      next_list = list.previous_page
      refute next_list.empty?
    end

    should "fetch a next page through #previous_page and respect limit" do
      list = TestListObject.construct_from(data: [{ id: 2 }],
                                           has_more: true,
                                           url: "/things")
      list.filters = { expand: ["data.source"], limit: 3 }
      stub_request(:get, "#{Stripe.api_base}/things")
        .with(query: { "expand[]" => "data.source", "limit" => "3", "ending_before" => "2" })
        .to_return(body: JSON.generate(data: [{ id: 1 }], has_more: false))
      next_list = list.previous_page
      assert_equal({ ending_before: 2, expand: ["data.source"], limit: 3 }, next_list.filters)
    end
  end
end

# A helper class with a URL that allows us to try out pagination.
class TestListObject < Stripe::ListObject
end
