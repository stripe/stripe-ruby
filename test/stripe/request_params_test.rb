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
          customer: nil,
          customer_details: {
            address: {
              city: "Test City",
              country: "US",
              line1: "123 Test Street",
              line2: nil,
              postal_code: "12345",
              state: nil,
            },
            address_source: nil,
            ip_address: nil,
            tax_ids: [
              { type: "us_ein", value: "12-3456789" },
              { type: "eu_vat", value: "DE123456789" },
            ],
            taxability_override: nil,
          },
          expand: %i[customer_details line_items],
          line_items: [
            { amount: 2000, metadata: nil, product: nil, quantity: 2, reference: "item_1", tax_behavior: "exclusive", tax_code: nil },
            { amount: 1500, metadata: nil, product: nil, quantity: 1, reference: "item_2", tax_behavior: "inclusive", tax_code: nil },
          ],
          ship_from_details: nil,
          shipping_cost: nil,
          tax_date: nil,
        }
        assert_equal expected, params.to_h
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

      should "serialize all fields even if some fields are set after initialization for V1 classes" do
        params = FooCreateParams.new

        params.fun = "games"

        result = params.to_h

        assert_equal "games", result[:fun]
        assert result.key?(:team), "V1 classes should include all fields even if not explicitly set"
        assert_nil result[:team]
      end

      should "serialize all fields including nil defaults for V1 classes" do
        params = FooCreateParams.new(fun: "games")

        result = params.to_h

        assert_equal "games", result[:fun]
        assert result.key?(:team), "V1 classes should include all fields even if not explicitly set"
        assert_nil result[:team]
      end
    end
  end
end
