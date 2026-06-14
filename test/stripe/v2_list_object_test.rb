# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  class V2ListObjectTest < Test::Unit::TestCase
    should "provide .empty_list" do
      list = Stripe::V2::ListObject.empty_list
      assert list.empty?
    end

    should "provide #count via enumerable" do
      list = Stripe::V2::ListObject.construct_from({ data: [{ object: "v2.core.event" }] }, {}, nil, :v2)
      assert_equal 1, list.count
    end

    should "provide #each" do
      arr = [
        { id: 1 },
        { id: 2 },
        { id: 3 },
      ]
      expected = Util.convert_to_stripe_object(arr, {})
      list = Stripe::V2::ListObject.construct_from({ data: arr }, {}, nil, :v2)
      assert_equal expected, list.each.to_a
    end

    should "provide #reverse_each" do
      arr = [
        { id: 1 },
        { id: 2 },
        { id: 3 },
      ]
      expected = Util.convert_to_stripe_object(arr.reverse, {})
      list = Stripe::V2::ListObject.construct_from({ data: arr }, {}, nil, :v2)
      assert_equal expected, list.reverse_each.to_a
    end

    should "provide #empty?" do
      list = Stripe::V2::ListObject.construct_from(data: [])
      assert list.empty?
      list = Stripe::V2::ListObject.construct_from(data: [{}])
      refute list.empty?
    end

    context "#auto_paging_each" do
      should "provide #auto_paging_each that supports forward pagination" do
        arr = [
          { id: 1 },
          { id: 2 },
          { id: 3 },
          { id: 4 },
          { id: 5 },
          { id: 6 },
        ]
        expected = Util.convert_to_stripe_object(arr, {}, api_mode: :v2)

        list = TestV2ListObject
               .construct_from({
                 data: [{ id: 1 }],
                 next_page_url: "/v2/things?limit=3&page=page_2",
                 # TODO: Uncomment when object name is added to list object responses
                 #  object: "list"
               },
                               {}, nil, :v2, APIRequestor.new("sk_test_123"))

        # The test will start with the synthetic list object above, and use it as
        # a starting point to fetch two more pages.
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/things?limit=3&page=page_2")
          .to_return(body: JSON.generate(
            data: [{ id: 2 }, { id: 3 }, { id: 4 }], next_page_url: "/v2/things?limit=3&page=page_3"
            #  object: "list"
          ))
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/things?limit=3&page=page_3")
          .to_return(body: JSON.generate(
            data: [{ id: 5 }, { id: 6 }], next_page_url: nil
            #  object: "list"
          ))

        assert_equal expected, list.auto_paging_each.to_a
      end

      should "provide #auto_paging_each that responds to a block" do
        arr = [
          { id: 1 },
          { id: 2 },
          { id: 3 },
        ]
        expected = Util.convert_to_stripe_object(arr, {}, api_mode: :v2)

        list = TestV2ListObject.construct_from({
          data: [{ id: 1 }],
          next_page_url: "/v2/things?page=page_2", #  object: "list"
        }, {}, nil, :v2, APIRequestor.new("sk_test_123"))
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/things?page=page_2")
          .to_return(
            body: JSON.generate(data: [{ id: 2 }, { id: 3 }], next_page_url: nil)
            # object: "list"
          )

        actual = []
        list.auto_paging_each do |obj|
          actual << obj
        end

        assert_equal expected, actual
      end
    end

    context "#fetch_next_page" do
      should "fetch a next page" do
        list = TestV2ListObject.construct_from({
          data: [{ id: 1 }],
          next_page_url: "/v2/things?page=page_2",
          #  object: "list"
        }, {}, nil, :v2, APIRequestor.new("sk_test_123"))
        list.requestor = APIRequestor.new("sk_test_123")
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/things?page=page_2")
          .to_return(body: JSON.generate(
            data: [{ id: 2 }], next_page_url: nil
            # object: "list"
          ))
        next_list = list.fetch_next_page
        refute next_list.empty?
      end

      should "fetch a next page through #next_page" do
        list = TestV2ListObject.construct_from({
          data: [{ id: 1 }],
          next_page_url: "/v2/things?page=page_2",
          #  object: "list"
        }, {}, nil, :v2, APIRequestor.new("sk_test_123"))

        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/things?page=page_2")
          .to_return(body: JSON.generate(
            data: [{ id: 2 }], next_page_url: nil
            # object: "list"
          ))

        next_list = list.fetch_next_page
        assert_equal(next_list.data[0].id, 2)
      end

      should "fetch an empty page through #next_page" do
        list = TestV2ListObject.construct_from({
          data: [{ id: 1 }],
          next_page_url: nil,
          #  object: "list"
        }, {}, nil, :v2)
        next_list = list.fetch_next_page
        assert_equal Stripe::V2::ListObject.empty_list, next_list
      end
    end

    context "with StripeClient" do
      should "correctly auto-paginate" do
        arr = [
          { id: 1 },
          { id: 2 },
          { id: 3 },
          { id: 4 },
        ]
        expected = Util.convert_to_stripe_object(arr, {}, api_mode: :v2)

        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/core/events?object_id=billing.meter")
          .to_return(body: JSON.generate(
            data: [{ id: 1 }], next_page_url: "/v2/core/events?object_id=billing.meter&page=page_2"
            #  object: "list"
          ))

        client = Stripe::StripeClient.new("sk_test_iter")

        list = client.v2.core.events.list({ object_id: "billing.meter" })

        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/core/events?object_id=billing.meter&page=page_2")
          .with do |req|
            req.headers["Authorization"] == "Bearer sk_test_iter"
          end
          .to_return(body: JSON.generate(
            data: [{ id: 2 }, { id: 3 }, { id: 4 }], next_page_url: nil
            #  object: "list"
          ))

        assert_equal expected, list.auto_paging_each.to_a
      end

      should "correctly deserialize ListObject contents" do
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/core/events")
          .to_return(body: JSON.generate(data: [{ id: 1, object: "v2.core.event" }], next_page_url: "/v2/core/events?page=page_2"))

        client = Stripe::StripeClient.new("sk_test_iter")

        list = client.v2.core.events.list

        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/core/events")
          .with do |req|
            req.headers["Authorization"] == "Bearer sk_test_iter"
          end
          .to_return(body: JSON.generate(data: [{ id: 2, object: "v2.core.event" }, { id: 3, object: "v2.core.event" }, { id: 4, object: "v2.core.event" }], next_page_url: nil))

        list.each do |obj|
          assert_instance_of(Stripe::V2::Core::Event, obj)
        end
      end

      should "respect per-request api key" do
        arr = [
          { id: 1 },
          { id: 2 },
        ]
        expected = Util.convert_to_stripe_object(arr, {}, api_mode: :v2)

        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/core/events")
          .with do |req|
            req.headers["Authorization"] == "Bearer sk_test_iter_key"
          end
          .to_return(body: JSON.generate(data: [{ id: 1 }], next_page_url: "/v2/core/events?page=page_2",
                                         object: "list"))

        client = Stripe::StripeClient.new("sk_test_123")

        list = client.v2.core.events.list({}, { api_key: "sk_test_iter_key" })

        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/core/events?page=page_2")
          .with do |req|
            req.headers["Authorization"] == "Bearer sk_test_iter_key"
          end
          .to_return(body: JSON.generate(data: [{ id: 2 }], next_page_url: nil,
                                         object: "list"))

        assert_equal expected, list.auto_paging_each.to_a
      end
    end
  end
end

# A helper class with a URL that allows us to try out pagination.
class TestV2ListObject < Stripe::V2::ListObject
end
