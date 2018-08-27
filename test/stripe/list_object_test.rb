# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

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

    should "provide #auto_paging_each" do
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
      assert_equal({ expand: ["data.source"], limit: 3 }, next_list.filters)
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
                                           url: "/things")
      stub_request(:get, "#{Stripe.api_base}/things")
        .with(query: { ending_before: "2" })
        .to_return(body: JSON.generate(data: [{ id: 1 }]))
      next_list = list.previous_page
      refute next_list.empty?
    end

    should "fetch a next page through #previous_page and respect limit" do
      list = TestListObject.construct_from(data: [{ id: 2 }],
                                           url: "/things")
      list.filters = { expand: ["data.source"], limit: 3 }
      stub_request(:get, "#{Stripe.api_base}/things")
        .with(query: { "expand[]" => "data.source", "limit" => "3", "ending_before" => "2" })
        .to_return(body: JSON.generate(data: [{ id: 1 }]))
      next_list = list.previous_page
      assert_equal({ expand: ["data.source"], limit: 3 }, next_list.filters)
    end

    #
    # backward compatibility
    #

    # note that the name #all is deprecated, as is using it fetch the next page
    # in a list
    should "be able to retrieve full lists given a listobject" do
      c = Stripe::Charge.all
      assert c.is_a?(Stripe::ListObject)
      assert_equal("/v1/charges", c.resource_url)
      all = c.all
      assert all.is_a?(Stripe::ListObject)
      assert_equal("/v1/charges", all.resource_url)
      assert all.data.is_a?(Array)
    end
  end
end

# A helper class with a URL that allows us to try out pagination.
class TestListObject < Stripe::ListObject
end
