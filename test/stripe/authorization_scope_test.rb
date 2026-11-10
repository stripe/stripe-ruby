# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  class AuthorizationScopeTest < Test::Unit::TestCase
    setup do
      @original_account = Stripe.stripe_account
      @original_context = Stripe.config.stripe_context
      Stripe.stripe_account = "acct_default_b"
      Stripe.config.stripe_context = "ctx_default_b"
      @requests = []
      @product_path = "/v1/products/prod_shared"
      @product_body = { id: "prod_shared", object: "product" }
      @event_body = {
        id: "evt_123", object: "v2.core.event", type: "v1.product.updated",
        created: "2022-02-15T00:27:45.330Z", context: "acct_event_a",
        related_object: { id: "prod_shared", type: "product", url: @product_path },
      }
      @client = StripeClient.new("sk_test_123", api_base: Stripe.api_base, stripe_account: "acct_client_b")
      stub_request(:any, "#{Stripe.api_base}#{@product_path}").to_return do |request|
        @requests << request
        { body: JSON.generate(@product_body), headers: { "Content-Type" => "application/json" } }
      end
      stub_request(:get, "#{Stripe.api_base}/v2/core/events/evt_123").to_return do |request|
        @requests << request
        { body: JSON.generate(@event_body), headers: { "Content-Type" => "application/json" } }
      end
    end

    teardown do
      Stripe.stripe_account = @original_account
      Stripe.config.stripe_context = @original_context
    end

    context "Marshal restoration" do
      %i[notification notification_event direct_event deserialize service].each do |source|
        should "preserve context for a #{source} Product without refreshing first" do
          product = fetch_product(source)
          restored = Marshal.load(Marshal.dump(product))
          restored.delete
          restored.refresh

          assert_scope(@requests.last(2), "acct_event_a", nil)
          assert_scope(@requests.select { |request| request.uri.path == @product_path }, "acct_event_a", nil)
          assert_bound_scope(restored, "acct_event_a", nil)
        end
      end

      should "preserve context after the ticket's refresh negative control" do
        product = notification.fetch_related_object
        product.refresh
        restored = Marshal.load(Marshal.dump(product))
        restored.delete

        assert_equal %i[get get delete], @requests.map(&:method)
        assert_scope(@requests, "acct_event_a", nil)
      end

      should "restore an explicitly unscoped notification resource without ambient selectors" do
        @event_body.delete(:context)
        product = notification.fetch_related_object
        restored = Marshal.load(Marshal.dump(product))
        restored.refresh
        restored.delete

        assert_scope(@requests, nil, nil)
        assert_bound_scope(restored, nil, nil)
      end

      should "snapshot absent scope before the global defaults change" do
        Stripe.stripe_account = nil
        Stripe.config.stripe_context = nil
        product = Product.retrieve("prod_shared")
        Stripe.stripe_account = "acct_default_b"
        Stripe.config.stripe_context = "ctx_default_b"
        restored = Marshal.load(Marshal.dump(product))
        product.delete
        restored.delete

        assert_scope(@requests, nil, nil)
      end

      should "preserve an account-only resource without inheriting the ambient context" do
        product = @client.v1.products.retrieve("prod_shared")
        restored = Marshal.load(Marshal.dump(product))
        restored.delete

        assert_scope(@requests, nil, "acct_client_b")
        assert_bound_scope(restored, nil, "acct_client_b")
      end

      should "preserve scope when loading inside another client's request block" do
        blob = Marshal.dump(notification.fetch_related_object)
        other = StripeClient.new("sk_test_123", api_base: Stripe.api_base, stripe_context: "ctx_worker_b")
        other.request do
          # The cache entry was produced above from a trusted SDK object.
          restored = Marshal.load(blob) # rubocop:disable Security/MarshalLoad
          restored.delete
        end

        assert_scope(@requests, "acct_event_a", nil)
      end

      should "preserve the restored requestor for legacy save and streaming requests" do
        restored = Marshal.load(Marshal.dump(notification.fetch_related_object))
        restored.save(name: "Updated product")
        chunks = []
        restored.send(:request_stream, method: :get, path: @product_path, params: {}) { |chunk| chunks << chunk }

        assert_equal %i[get post get], @requests.map(&:method)
        assert_scope(@requests, "acct_event_a", nil)
        assert_equal [JSON.generate(@product_body)], chunks
      end

      should "not serialize additional client credentials or transport configuration" do
        client = StripeClient.new("sk_private_client_only", api_base: Stripe.api_base, stripe_context: "acct_event_a")
        product = client.deserialize(@product_body)
        values, opts, scope, mode = product.marshal_dump

        assert_equal @product_body, values
        assert_empty opts
        assert_equal({ stripe_account: nil, stripe_context: "acct_event_a" }, scope)
        assert_equal :v1, mode
        refute_includes Marshal.dump(product), "sk_private_client_only"
        refute_includes Marshal.dump(product), Stripe.api_base
      end

      should "retain legacy loading behavior for blobs without scope metadata" do
        product = Product.allocate
        product.marshal_load([@product_body, {}])
        product.delete

        assert_scope(@requests, "ctx_default_b", "acct_default_b")
      end

      should "preserve the v2 API mode and event context across restoration" do
        event = notification.fetch_event
        restored = Marshal.load(Marshal.dump(event))
        product = restored.fetch_related_object
        Marshal.load(Marshal.dump(product)).delete

        assert_equal :v2, restored.instance_variable_get(:@api_mode)
        assert_scope(@requests, "acct_event_a", nil)
        assert_bound_scope(restored, "acct_event_a", nil)
      end
    end

    context "Event construction" do
      should "reject nil in internal initialization instead of selecting an ambient requestor" do
        product = @client.with_stripe_context("acct_event_a").deserialize(@product_body)
        error = assert_raises(ArgumentError) do
          product.send(:initialize_from, @product_body, {}, api_mode: :v1, requestor: nil)
        end

        assert_match(/requestor must not be nil/, error.message)
        product.delete
        assert_scope(@requests, "acct_event_a", nil)
      end

      [nil, ""].each do |event_context|
        %i[stripe_account stripe_context].each do |client_selector|
          should "clear #{client_selector} for a direct event with context #{event_context.inspect}" do
            @event_body[:context] = event_context
            client = StripeClient.new("sk_test_123", api_base: Stripe.api_base, **{ client_selector => "acct_client_b" })
            event = client.v2.core.events.retrieve("evt_123")
            product = event.fetch_related_object
            Marshal.load(Marshal.dump(product)).delete

            assert_scope(@requests.last(2), nil, nil)
            assert_bound_scope(event, nil, nil)
            assert_bound_scope(product, nil, nil)
          end
        end
      end

      should "bind a directly retrieved event to its payload context without changing the client" do
        client = StripeClient.new("sk_test_123", api_base: Stripe.api_base, stripe_context: "ctx_client_b")
        event = client.v2.core.events.retrieve("evt_123")
        product = event.fetch_related_object
        product.delete
        client.v1.products.retrieve("prod_shared")

        assert_scope(@requests.first(1), "ctx_client_b", nil)
        assert_scope(@requests[1, 2], "acct_event_a", nil)
        assert_scope(@requests.last(1), "ctx_client_b", nil)
        assert_bound_scope(event, "acct_event_a", nil)
        assert_bound_scope(product, "acct_event_a", nil)
      end

      should "retain an API key override when constructing a scoped event" do
        event = @client.v2.core.events.retrieve("evt_123", {}, api_key: "rk_restricted")
        product = event.fetch_related_object
        Marshal.load(Marshal.dump(product)).delete

        @requests.each { |request| assert_equal "Bearer rk_restricted", request.headers["Authorization"] }
        assert_scope(@requests.last(2), "acct_event_a", nil)
      end

      should "preserve explicit per-request context overrides on ordinary resources" do
        client = StripeClient.new("sk_test_123", api_base: Stripe.api_base, stripe_context: "ctx_client_b")
        product = client.v1.products.retrieve("prod_shared", {}, stripe_context: StripeContext.parse("acct_event_a"))
        restored = Marshal.load(Marshal.dump(product))
        restored.delete

        assert_scope(@requests, "acct_event_a", nil)
        assert_bound_scope(product, "acct_event_a", nil)
        assert_bound_scope(restored, "acct_event_a", nil)
      end

      should "retain the client's response tracking when a constructed resource makes requests" do
        client = @client.with_stripe_context("acct_event_a")
        result, response = client.request do
          product = client.v1.products.retrieve("prod_shared")
          product.delete
        end

        assert_equal result.last_response, response
        assert_scope(@requests, "acct_event_a", nil)
      end

      should "retain an explicit account instead of silently dropping it for the client context" do
        client = StripeClient.new("sk_test_123", api_base: Stripe.api_base, stripe_context: "ctx_client_b")
        client.v1.products.delete("prod_shared", {}, stripe_account: "acct_explicit_a")

        assert_scope(@requests, "ctx_client_b", "acct_explicit_a")
      end

      should "scope expanded active objects through construction and Marshal" do
        client = @client.with_stripe_context("acct_event_a")
        parent = client.deserialize({ id: "cus_123", object: "customer", default_source: @product_body })
        restored = Marshal.load(Marshal.dump(parent))
        restored.default_source.delete

        assert_scope(@requests, "acct_event_a", nil)
      end

      should "retain scope on restored collection items and subsequent pages" do
        client = @client.with_stripe_context("acct_event_a")
        list = client.deserialize({ object: "list", url: "/v1/products", has_more: true, data: [@product_body] })
        stub_request(:get, "#{Stripe.api_base}/v1/products")
          .with(query: { starting_after: "prod_shared" })
          .to_return do |request|
            @requests << request
            { body: JSON.generate(object: "list", url: "/v1/products", has_more: false, data: [@product_body]) }
          end
        restored = Marshal.load(Marshal.dump(list))
        products = restored.auto_paging_each.to_a
        products.each(&:delete)

        assert_equal 2, products.length
        assert_scope(@requests, "acct_event_a", nil)
        products.each { |product| assert_bound_scope(product, "acct_event_a", nil) }
      end
    end

    private def notification
      payload = JSON.generate(@event_body)
      @client.parse_event_notification(payload, Test::WebhookHelpers.generate_header(payload: payload), Test::WebhookHelpers::SECRET)
    end

    private def fetch_product(source)
      case source
      when :notification
        notification.fetch_related_object
      when :notification_event
        notification.fetch_event.fetch_related_object
      when :direct_event
        @client.v2.core.events.retrieve("evt_123").fetch_related_object
      when :deserialize
        @client.with_stripe_context("acct_event_a").deserialize(@product_body)
      when :service
        @client.with_stripe_context("acct_event_a").v1.products.retrieve("prod_shared")
      else
        raise ArgumentError, "Unknown product source: #{source}"
      end
    end

    private def assert_scope(requests, context, account)
      assert_not_empty requests
      requests.each do |request|
        assert_equal context, request.headers["Stripe-Context"]
        assert_equal account, request.headers["Stripe-Account"]
      end
    end

    private def assert_bound_scope(resource, context, account)
      config = resource.instance_variable_get(:@requestor).config
      actual_context = config.stripe_context&.to_s
      actual_context = nil if actual_context == ""
      assert_equal context, actual_context
      assert_equal account, config.stripe_account
    end
  end
end
