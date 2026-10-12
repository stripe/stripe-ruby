# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

class V2SearchResultObjectTest < Test::Unit::TestCase
  class TestRequestor
    attr_accessor :pages
    attr_reader :requests

    def initialize
      @pages = []
      @requests = []
    end

    def execute_request(method, path, _base_address, params:, **_opts)
      @requests << [method, path, params]
      @pages.shift
    end
  end

  class TestSearchResult < Stripe::V2::SearchResultObject; end

  should "replay the original POST body across empty pages" do
    params = { query: "widgets", sort: ["name", "-created"], limit: 2, future: { enabled: true } }
    requestor = TestRequestor.new
    first = TestSearchResult.construct_from(
      { data: [1], next_page_url: "/v2/widgets/search?page=2&limit=2" },
      {}, nil, :v2, requestor
    )
    first.filters = params
    requestor.pages = [
      TestSearchResult.construct_from(
        { data: [], next_page_url: "/v2/widgets/search?page=3&limit=2" },
        {}, nil, :v2, requestor
      ),
      TestSearchResult.construct_from({ data: [2], next_page_url: nil }, {}, nil, :v2, requestor),
    ]

    assert_equal [1, 2], first.auto_paging_each.to_a
    request_body = { query: "widgets", sort: ["name", "-created"], future: { enabled: true } }
    assert_equal [
      [:post, "/v2/widgets/search?page=2&limit=2", request_body],
      [:post, "/v2/widgets/search?page=3&limit=2", request_body],
    ], requestor.requests
  end
end
