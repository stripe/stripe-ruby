# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class SearchResultObjectTest < Test::Unit::TestCase
    should "provide .empty_list" do
      list = Stripe::SearchResultObject.empty_search_result
      assert list.empty?
    end

    should "provide #count via enumerable" do
      list = Stripe::SearchResultObject.construct_from(data: [{ object: "charge" }])
      assert_equal 1, list.count
    end

    should "provide #each" do
      arr = [
        { id: 1 },
        { id: 2 },
        { id: 3 },
      ]
      expected = Util.convert_to_stripe_object(arr, {})
      list = Stripe::SearchResultObject.construct_from(data: arr)
      assert_equal expected, list.each.to_a
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

      list = TestSearchResultObject.construct_from({ data: [{ id: 1 }],
                                                     has_more: true,
                                                     next_page: "next_page_token_1",
                                                     url: "/things",
                                                     object: "search_result", })
      list.filters = { limit: 3 }

      # The test will start with the synthetic search result object above, and uses the
      # 'next_page' token to fetch two more pages. The second page indicates
      # that there are no more elements by setting `has_more` to `false`, and
      # iteration stops.
      stub_request(:get, "#{Stripe.api_base}/things")
        .with(query: { limit: 3, page: "next_page_token_1" })
        .to_return(body: JSON.generate(data: [{ id: 2 }, { id: 3 }, { id: 4 }], has_more: true, url: "/things", next_page: "next_page_token_2", object: "search_result"))
      stub_request(:get, "#{Stripe.api_base}/things")
        .with(query: { limit: 3, page: "next_page_token_2" })
        .to_return(body: JSON.generate(data: [{ id: 5 }, { id: 6 }], has_more: false, url: "/things", next_page: nil, object: "search_result"))

      assert_equal arr, list.auto_paging_each.to_a.map(&:to_hash)
    end

    should "provide #auto_paging_each that responds to a block" do
      arr = [
        { id: 1 },
        { id: 2 },
        { id: 3 },
      ]
      expected = Util.convert_to_stripe_object(arr, {})

      list = TestSearchResultObject.construct_from(data: [{ id: 1 }],
                                                   has_more: true,
                                                   next_page: "next_page_token_1",
                                                   url: "/things")

      stub_request(:get, "#{Stripe.api_base}/things")
        .with(query: { page: "next_page_token_1" })
        .to_return(body: JSON.generate(data: [{ id: 2 }, { id: 3 }], has_more: false, object: "search_result"))

      actual = []
      list.auto_paging_each do |obj|
        actual << obj
      end

      assert_equal expected, actual
    end

    should "provide #empty?" do
      list = Stripe::SearchResultObject.construct_from(data: [])
      assert list.empty?
      list = Stripe::SearchResultObject.construct_from(data: [{}])
      refute list.empty?
    end

    #
    # next_page
    #

    should "fetch a next page through #next_page" do
      list = TestSearchResultObject.construct_from(data: [{ id: 1 }],
                                                   has_more: true,
                                                   next_page: "next_page_token_1",
                                                   url: "/things")
      stub_request(:get, "#{Stripe.api_base}/things")
        .with(query: { page: "next_page_token_1" })
        .to_return(body: JSON.generate(data: [{ id: 2 }], has_more: false, object: "search_result"))
      next_list = list.next_search_result_page
      refute next_list.empty?
      assert_equal [{ id: 2 }], next_list.auto_paging_each.to_a.map(&:to_hash)
    end

    should "fetch a next page through #next_page and respect limit" do
      list = TestSearchResultObject.construct_from(data: [{ id: 1 }],
                                                   has_more: true,
                                                   next_page: "next_page_token_1",
                                                   url: "/things",
                                                   object: "search_result")
      list.filters = { limit: 3 }
      stub_request(:get, "#{Stripe.api_base}/things")
        .with(query: { "limit": 3, page: "next_page_token_1" })
        .to_return(body: JSON.generate(data: [{ id: 2 }], has_more: false, object: "search_result"))
      next_list = list.next_search_result_page
      assert_equal({ limit: 3, page: "next_page_token_1" }, next_list.filters)
    end

    should "fetch an empty page through #next_page" do
      list = TestSearchResultObject.construct_from(data: [{ id: 1 }],
                                                   has_more: false,
                                                   url: "/things")
      next_list = list.next_search_result_page
      assert_equal Stripe::SearchResultObject.empty_search_result, next_list
    end
  end
end

# A helper class with a URL that allows us to try out pagination.
class TestSearchResultObject < Stripe::SearchResultObject
end
