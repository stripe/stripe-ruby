# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  class RequestParamsTest < Test::Unit::TestCase
    class FooCreateParams < Stripe::RequestParams
      attr_accessor :fun, :team

      def initialize(fun: nil, team: nil)
        @fun = fun
        @team = team
      end

      class Fun < Stripe::RequestParams
        attr_accessor :games

        def initialize(games: nil)
          @games = games
        end
      end
    end

    # Used in ".coerce_params" context
    class Int64Params < Stripe::RequestParams
      attr_accessor :amount, :name, :items

      def initialize(amount: nil, name: nil, items: nil)
        @amount = amount
        @name = name
        @items = items
      end

      def self.field_encodings
        {
          amount: :int64_string,
          items: { kind: :array, element: { kind: :object, fields: { qty: :int64_string } } },
        }
      end
    end

    # Used in ".coerce_params" context
    class PlainParams < Stripe::RequestParams
      attr_accessor :foo

      def initialize(foo: nil)
        @foo = foo
      end
    end

    # Used in "#to_h with field_encodings" context
    class AmountParams < Stripe::RequestParams
      attr_accessor :amount, :label

      def initialize(amount: nil, label: nil)
        @amount = amount
        @label = label
      end

      def self.field_encodings
        { amount: :int64_string }
      end
    end

    context "#to_h" do
      should "convert to hash" do
        params = FooCreateParams.new(
          fun: FooCreateParams::Fun.new(games: %w[chess go]),
          team: "blue"
        )
        expected = { fun: { games: %w[chess go] }, team: "blue" }
        assert_equal expected, params.to_h
      end

      should "convert nested lists" do
        params = FooCreateParams.new(
          fun: [FooCreateParams::Fun.new(games: "chess"), FooCreateParams::Fun.new(games: "go"), FooCreateParams::Fun.new(games: "sorry")],
          team: 42
        )
        expected = { fun: [{ games: "chess" }, { games: "go" }, { games: "sorry" }], team: 42 }
        assert_equal expected, params.to_h
      end

      should "make request with params class" do
        stub_request(:post, "#{Stripe.api_base}/v1/customers")
          .with do |req|
            assert req.body == "name=foo"
          end
          .to_return(body: JSON.generate(object: "customer"))
        params = Stripe::CustomerCreateParams.new(name: "foo")
        cus = Stripe::Customer.create(params)
        assert cus.is_a?(Stripe::Customer)
      end
    end

    context "different request types" do
      should "create a customer with params class" do
        stub_request(:post, "#{Stripe.api_base}/v1/customers")
          .with(body: "name=foo")
          .to_return(body: JSON.generate(object: "customer", id: "cus_123", name: "foo"))

        params = Stripe::CustomerCreateParams.new(name: "foo")
        customer = Stripe::Customer.create(params)

        assert customer.is_a?(Stripe::Customer)
        assert_equal "cus_123", customer.id
        assert_equal "foo", customer.name
      end

      should "update a customer with params class" do
        stub_request(:post, "#{Stripe.api_base}/v1/customers/cus_123")
          .with(body: "name=bar")
          .to_return(body: JSON.generate(object: "customer", id: "cus_123", name: "bar"))

        params = Stripe::CustomerUpdateParams.new(name: "bar")
        customer = Stripe::Customer.update("cus_123", params)

        assert customer.is_a?(Stripe::Customer)
        assert_equal "cus_123", customer.id
        assert_equal "bar", customer.name
      end

      # NOTE: Resource-based retrieve expand is a special case...
      should "retrieve a customer with params class" do
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_123?expand[]=foo")
          .to_return(body: JSON.generate(object: "customer", id: "cus_123", name: "foo"))

        @client = Stripe::StripeClient.new("sk_test_123")
        customer = @client.v1.customers.retrieve("cus_123", Stripe::CustomerRetrieveParams.new(expand: [:foo]))

        assert customer.is_a?(Stripe::Customer)
      end

      should "list customers with params class" do
        stub_request(:get, "#{Stripe.api_base}/v1/customers")
          .to_return(body: JSON.generate(object: "list", data: [{ id: "cus_123", name: "foo" }, { id: "cus_456", name: "bar" }]))

        customers = Stripe::Customer.list

        assert customers.is_a?(Stripe::ListObject)
        assert_equal 2, customers.data.size
        assert_equal "cus_123", customers.data[0].id
        assert_equal "foo", customers.data[0].name
        assert_equal "cus_456", customers.data[1].id
        assert_equal "bar", customers.data[1].name
      end

      should "search customers with params class" do
        stub_request(:get, "#{Stripe.api_base}/v1/customers/search")
          .with(query: { query: "name:'foo'" })
          .to_return(body: JSON.generate(object: "search_result", data: [{ id: "cus_123", name: "foo" }]))

        params = Stripe::CustomerSearchParams.new(query: "name:'foo'")
        customers = Stripe::Customer.search(params)

        assert customers.is_a?(Stripe::SearchResultObject)
        assert_equal 1, customers.data.size
        assert_equal "cus_123", customers.data[0].id
        assert_equal "foo", customers.data[0].name
      end

      should "request params work in raw request" do
        expected_body = JSON.generate(id: "cus_123", name: "foo")
        req = nil

        stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/customers")
          .with(body: "name=foo")
          .with { |request| req = request }
          .to_return(body: expected_body)

        @client = Stripe::StripeClient.new("sk_test_123")
        resp = @client.raw_request(:post, "/v1/customers", params: Stripe::CustomerCreateParams.new(name: "foo"))

        assert_equal expected_body, resp.http_body
      end

      should "create tax calculation with complex nested parameters and arrays" do
        stub_request(:post, "#{Stripe.api_base}/v1/tax/calculations")
          .with do |req|
            body_params = URI.decode_www_form(req.body).to_h
            assert_equal "usd", body_params["currency"]
            assert_equal "Test City", body_params["customer_details[address][city]"]
            assert_equal "US", body_params["customer_details[address][country]"]
            assert_equal "123 Test Street", body_params["customer_details[address][line1]"]
            assert_equal "us_ein", body_params["customer_details[tax_ids][0][type]"]
            assert_equal "12-3456789", body_params["customer_details[tax_ids][0][value]"]
            assert_equal "eu_vat", body_params["customer_details[tax_ids][1][type]"]
            assert_equal "DE123456789", body_params["customer_details[tax_ids][1][value]"]
            assert_equal "2000", body_params["line_items[0][amount]"]
            assert_equal "2", body_params["line_items[0][quantity]"]
            assert_equal "item_1", body_params["line_items[0][reference]"]
            assert_equal "exclusive", body_params["line_items[0][tax_behavior]"]
            assert_equal "1500", body_params["line_items[1][amount]"]
            assert_equal "1", body_params["line_items[1][quantity]"]
            assert_equal "item_2", body_params["line_items[1][reference]"]
            assert_equal "inclusive", body_params["line_items[1][tax_behavior]"]
          end
          .to_return(body: JSON.generate(object: "tax.calculation", currency: "usd"))

        params = Stripe::Tax::CalculationCreateParams.new(
          currency: "usd",
          expand: %i[customer_details line_items],
          customer_details: Stripe::Tax::CalculationCreateParams::CustomerDetails.new(
            address: Stripe::Tax::CalculationCreateParams::CustomerDetails::Address.new(
              city: "Test City",
              country: "US",
              line1: "123 Test Street",
              postal_code: "12345"
            ),
            tax_ids: [
              Stripe::Tax::CalculationCreateParams::CustomerDetails::TaxId.new(
                type: "us_ein",
                value: "12-3456789"
              ),
              Stripe::Tax::CalculationCreateParams::CustomerDetails::TaxId.new(
                type: "eu_vat",
                value: "DE123456789"
              ),
            ]
          ),
          line_items: [
            Stripe::Tax::CalculationCreateParams::LineItem.new(
              amount: 2000,
              quantity: 2,
              reference: "item_1",
              tax_behavior: "exclusive"
            ),
            Stripe::Tax::CalculationCreateParams::LineItem.new(
              amount: 1500,
              quantity: 1,
              reference: "item_2",
              tax_behavior: "inclusive"
            ),
          ]
        )
        calculation = Stripe::Tax::Calculation.create(params)

        assert calculation.is_a?(Stripe::Tax::Calculation)
        assert_equal "usd", calculation.currency
      end
    end

    context "complex nested parameters" do
      should "handle deeply nested structures with arrays and metadata" do
        params = Stripe::Tax::CalculationCreateParams.new(
          currency: "usd",
          expand: %i[customer_details line_items],
          customer_details: Stripe::Tax::CalculationCreateParams::CustomerDetails.new(
            address: Stripe::Tax::CalculationCreateParams::CustomerDetails::Address.new(
              city: "Test City",
              country: "US",
              line1: "123 Test Street",
              postal_code: "12345"
            ),
            tax_ids: [
              Stripe::Tax::CalculationCreateParams::CustomerDetails::TaxId.new(
                type: "us_ein",
                value: "12-3456789"
              ),
              Stripe::Tax::CalculationCreateParams::CustomerDetails::TaxId.new(
                type: "eu_vat",
                value: "DE123456789"
              ),
            ]
          ),
          line_items: [
            Stripe::Tax::CalculationCreateParams::LineItem.new(
              amount: 2000,
              quantity: 2,
              reference: "item_1",
              tax_behavior: "exclusive"
            ),
            Stripe::Tax::CalculationCreateParams::LineItem.new(
              amount: 1500,
              quantity: 1,
              reference: "item_2",
              tax_behavior: "inclusive"
            ),
          ]
        )
        expected = {
          currency: "usd",
          customer_details: {
            address: {
              city: "Test City",
              country: "US",
              line1: "123 Test Street",
              postal_code: "12345",
            },
            tax_ids: [
              { type: "us_ein", value: "12-3456789" },
              { type: "eu_vat", value: "DE123456789" },
            ],
          },
          expand: %i[customer_details line_items],
          line_items: [
            { amount: 2000, quantity: 2, reference: "item_1", tax_behavior: "exclusive" },
            { amount: 1500, quantity: 1, reference: "item_2", tax_behavior: "inclusive" },
          ],
        }
        assert_equal expected, params.to_h
      end
    end

    context ".coerce_value" do
      should "return nil as-is" do
        assert_nil Stripe::RequestParams.coerce_value(nil, :int64_string)
        assert_nil Stripe::RequestParams.coerce_value(nil, { kind: :object, fields: {} })
      end

      should "convert Integer to String for int64_string encoding" do
        assert_equal "42", Stripe::RequestParams.coerce_value(42, :int64_string)
        assert_equal "0", Stripe::RequestParams.coerce_value(0, :int64_string)
        assert_equal "-7", Stripe::RequestParams.coerce_value(-7, :int64_string)
      end

      should "pass through String for int64_string encoding" do
        assert_equal "42", Stripe::RequestParams.coerce_value("42", :int64_string)
        assert_equal "hello", Stripe::RequestParams.coerce_value("hello", :int64_string)
      end

      should "convert Array of Integers for int64_string encoding" do
        assert_equal %w[1 2 3], Stripe::RequestParams.coerce_value([1, 2, 3], :int64_string)
      end

      should "handle mixed Array for int64_string encoding" do
        assert_equal %w[1 already 3], Stripe::RequestParams.coerce_value([1, "already", 3], :int64_string)
      end

      should "return value as-is for unknown encoding symbol" do
        assert_equal 42, Stripe::RequestParams.coerce_value(42, :unknown_encoding)
        assert_equal "hello", Stripe::RequestParams.coerce_value("hello", :something_else)
      end

      should "coerce object fields recursively" do
        encoding = {
          kind: :object,
          fields: { amount: :int64_string, name: nil },
        }
        input = { amount: 100, name: "test", extra: "untouched" }
        expected = { amount: "100", name: "test", extra: "untouched" }
        assert_equal expected, Stripe::RequestParams.coerce_value(input, encoding)
      end

      should "coerce object fields with string keys" do
        encoding = {
          kind: :object,
          fields: { amount: :int64_string, name: nil },
        }
        input = { "amount" => 100, "name" => "test", "extra" => "untouched" }
        expected = { "amount" => "100", "name" => "test", "extra" => "untouched" }
        assert_equal expected, Stripe::RequestParams.coerce_value(input, encoding)
      end

      should "coerce deeply nested objects with string keys" do
        encoding = {
          kind: :object,
          fields: {
            inner: { kind: :object, fields: { val: :int64_string } },
          },
        }
        input = { "inner" => { "val" => 99, "other" => "keep" }, "top" => "also keep" }
        expected = { "inner" => { "val" => "99", "other" => "keep" }, "top" => "also keep" }
        assert_equal expected, Stripe::RequestParams.coerce_value(input, encoding)
      end

      should "coerce array of objects with string keys" do
        encoding = {
          kind: :array,
          element: { kind: :object, fields: { id: :int64_string } },
        }
        input = [{ "id" => 1, "name" => "a" }, { "id" => 2, "name" => "b" }]
        expected = [{ "id" => "1", "name" => "a" }, { "id" => "2", "name" => "b" }]
        assert_equal expected, Stripe::RequestParams.coerce_value(input, encoding)
      end

      should "return non-Hash as-is for object encoding" do
        encoding = { kind: :object, fields: { amount: :int64_string } }
        assert_equal "not a hash", Stripe::RequestParams.coerce_value("not a hash", encoding)
        assert_equal 42, Stripe::RequestParams.coerce_value(42, encoding)
      end

      should "coerce array elements" do
        encoding = { kind: :array, element: :int64_string }
        assert_equal %w[1 2 3], Stripe::RequestParams.coerce_value([1, 2, 3], encoding)
      end

      should "return non-Array as-is for array encoding" do
        encoding = { kind: :array, element: :int64_string }
        assert_equal "not an array", Stripe::RequestParams.coerce_value("not an array", encoding)
      end

      should "coerce array of objects" do
        encoding = {
          kind: :array,
          element: { kind: :object, fields: { id: :int64_string } },
        }
        input = [{ id: 1, name: "a" }, { id: 2, name: "b" }]
        expected = [{ id: "1", name: "a" }, { id: "2", name: "b" }]
        assert_equal expected, Stripe::RequestParams.coerce_value(input, encoding)
      end

      should "coerce deeply nested object-in-object" do
        encoding = {
          kind: :object,
          fields: {
            inner: { kind: :object, fields: { val: :int64_string } },
          },
        }
        input = { inner: { val: 99, other: "keep" }, top: "also keep" }
        expected = { inner: { val: "99", other: "keep" }, top: "also keep" }
        assert_equal expected, Stripe::RequestParams.coerce_value(input, encoding)
      end

      should "handle object encoding with missing fields key" do
        encoding = { kind: :object }
        input = { amount: 100 }
        assert_equal({ amount: 100 }, Stripe::RequestParams.coerce_value(input, encoding))
      end

      should "return value as-is for unknown composite kind" do
        encoding = { kind: :unknown }
        assert_equal 42, Stripe::RequestParams.coerce_value(42, encoding)
      end
    end

    context ".coerce_params" do
      should "return non-Hash input as-is" do
        assert_nil Int64Params.coerce_params(nil)
        assert_equal "string", Int64Params.coerce_params("string")
        assert_equal 42, Int64Params.coerce_params(42)
      end

      should "return Hash as-is when no encodings are defined" do
        input = { foo: 123, bar: "hello" }
        assert_equal input, PlainParams.coerce_params(input)
      end

      should "coerce fields with encodings and pass through others" do
        input = { amount: 500, name: "test" }
        expected = { amount: "500", name: "test" }
        assert_equal expected, Int64Params.coerce_params(input)
      end

      should "coerce nested array-of-objects encoding" do
        input = {
          amount: 42,
          name: "order",
          items: [{ qty: 10, label: "a" }, { qty: 20, label: "b" }],
        }
        expected = {
          amount: "42",
          name: "order",
          items: [{ qty: "10", label: "a" }, { qty: "20", label: "b" }],
        }
        assert_equal expected, Int64Params.coerce_params(input)
      end

      should "handle nil values in encoded fields" do
        input = { amount: nil, name: "test" }
        expected = { amount: nil, name: "test" }
        assert_equal expected, Int64Params.coerce_params(input)
      end

      should "coerce fields with string keys" do
        input = { "amount" => 500, "name" => "test" }
        expected = { "amount" => "500", "name" => "test" }
        assert_equal expected, Int64Params.coerce_params(input)
      end

      should "coerce nested array-of-objects with string keys" do
        input = {
          "amount" => 42,
          "name" => "order",
          "items" => [{ "qty" => 10, "label" => "a" }, { "qty" => 20, "label" => "b" }],
        }
        expected = {
          "amount" => "42",
          "name" => "order",
          "items" => [{ "qty" => "10", "label" => "a" }, { "qty" => "20", "label" => "b" }],
        }
        assert_equal expected, Int64Params.coerce_params(input)
      end
    end

    context "#to_h with field_encodings" do
      should "coerce int64_string fields when serializing via to_h" do
        params = AmountParams.new(amount: 9_999_999_999, label: "big")
        result = params.to_h
        assert_equal "9999999999", result[:amount]
        assert_equal "big", result[:label]
      end

      should "leave non-integer amount alone in to_h" do
        params = AmountParams.new(amount: "already_string", label: "ok")
        result = params.to_h
        assert_equal "already_string", result[:amount]
        assert_equal "ok", result[:label]
      end
    end

    context "V2 RequestParams explicit key tracking" do
      should "only serialize explicitly set fields for V2 classes" do
        params = Stripe::V2::Billing::MeterEventCreateParams.new(
          event_name: "my_event",
          payload: { stripe_customer_id: "cus_123", value: "25" }
        )

        result = params.to_h

        assert_equal "my_event", result[:event_name]
        assert_equal({ stripe_customer_id: "cus_123", value: "25" }, result[:payload])
        refute result.key?(:identifier), "identifier was not set and should not be in the hash"
        refute result.key?(:timestamp), "timestamp was not set and should not be in the hash"
      end

      should "serialize fields explicitly set to nil for V2 classes" do
        params = Stripe::V2::Billing::MeterEventCreateParams.new(
          event_name: "my_event",
          identifier: nil,
          payload: { stripe_customer_id: "cus_123", value: "25" }
        )

        result = params.to_h

        assert_equal "my_event", result[:event_name]
        assert result.key?(:identifier), "identifier was explicitly set to nil and should be in the hash"
        assert_nil result[:identifier]
        assert_equal({ stripe_customer_id: "cus_123", value: "25" }, result[:payload])
        refute result.key?(:timestamp), "timestamp was not set and should not be in the hash"
      end

      should "serialize fields explicitly set after initialization for V2 classes" do
        params = Stripe::V2::Billing::MeterEventCreateParams.new(
          event_name: "my_event",
          payload: { stripe_customer_id: "cus_123", value: "25" }
        )

        params.identifier = "Something"
        params.timestamp = nil

        result = params.to_h

        assert_equal "my_event", result[:event_name]
        assert_equal "Something", result[:identifier]
        assert_equal({ stripe_customer_id: "cus_123", value: "25" }, result[:payload])
        assert result.key?(:timestamp)
        assert_nil result[:timestamp]
      end

      should "only serialize explicitly set fields for V1 classes set after initialization" do
        params = FooCreateParams.new

        params.fun = "games"

        result = params.to_h

        assert_equal "games", result[:fun]
        refute result.key?(:team), "team was not set and should not be in the hash"
      end

      should "only serialize explicitly set fields for V1 classes" do
        params = FooCreateParams.new(fun: "games")

        result = params.to_h

        assert_equal "games", result[:fun]
        refute result.key?(:team), "team was not set and should not be in the hash"
      end

      should "serialize fields explicitly set to nil for V1 classes" do
        params = FooCreateParams.new(fun: "games", team: nil)

        result = params.to_h

        assert_equal "games", result[:fun]
        assert result.key?(:team), "team was explicitly set to nil and should be in the hash"
        assert_nil result[:team]
      end
    end
  end
end
