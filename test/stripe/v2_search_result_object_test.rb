# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

class V2SearchResultObjectTest < Test::Unit::TestCase
  class TestSearchResult < Stripe::V2::SearchResultObject
    class << self
      attr_accessor :pages, :requests
    end

    private def request_stripe_object(method:, path:, params:, **_opts)
      self.class.requests << [method, path, params]
      self.class.pages.shift
    end
  end

  should "replay the original POST body across empty pages" do
    params = { query: "widgets", sort: ["name", "-created"], limit: 2, future: { enabled: true } }
    first = TestSearchResult.construct_from({ data: [1], next_page_url: "/v2/widgets/search?page=2" }, {}, nil, :v2)
    first.filters = params
    TestSearchResult.requests = []
    TestSearchResult.pages = [
      TestSearchResult.construct_from({ data: [], next_page_url: "/v2/widgets/search?page=3" }, {}, nil, :v2),
      TestSearchResult.construct_from({ data: [2], next_page_url: nil }, {}, nil, :v2),
    ]

    assert_equal [1, 2], first.auto_paging_each.to_a
    request_body = { query: "widgets", sort: ["name", "-created"], future: { enabled: true } }
    assert_equal [
      [:post, "/v2/widgets/search?page=2&limit=2", request_body],
      [:post, "/v2/widgets/search?page=3&limit=2", request_body],
    ], TestSearchResult.requests
  end
end
