# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  class AuthorizationScopeTest < Test::Unit::TestCase
    setup do
      @original_account = Stripe.stripe_account
      @original_context = Stripe.config.stripe_context
      Stripe.stripe_account = "acct_default_b"
      Stripe.config.stripe_context = "acct_default_b"
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
        body = request.method == :delete ? @product_body.merge(deleted: true) : @product_body
        { body: JSON.generate(body), headers: { "Content-Type" => "application/json" } }
      end
      stub_request(:get, "#{Stripe.api_base}/v2/core/events/evt_123").to_return do |request|
        @requests << request
        # Pull payloads echo the authentication path used to retrieve the event.
        context = request.headers["Stripe-Context"] || request.headers["Stripe-Account"]
        { body: JSON.generate(@event_body.merge(context: context)), headers: { "Content-Type" => "application/json" } }
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
        Stripe.config.stripe_context = "acct_default_b"
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
        other = StripeClient.new("sk_test_123", api_base: Stripe.api_base, stripe_context: "acct_worker_b")
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

        assert_scope(@requests, "acct_default_b", "acct_default_b")
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
      %i[stripe_account stripe_context].each do |selector|
        %i[client request].each do |source|
          should "snapshot mutable #{selector} supplied through #{source}" do
            value = +"acct_event_a"
            client_opts = source == :client ? { selector => value } : {}
            request_opts = source == :request ? { selector => value } : {}
            client = StripeClient.new("sk_test_123", api_base: Stripe.api_base, **client_opts)
            product = client.v1.products.retrieve("prod_shared", {}, request_opts)

            value.replace("acct_worker_b")
            product.delete
            restored = Marshal.load(Marshal.dump(product))
            restored.delete
            product.refresh

            context = selector == :stripe_context ? "acct_event_a" : nil
            account = selector == :stripe_account ? "acct_event_a" : nil
            assert_scope(@requests, context, account)
            assert_bound_scope(product, context, account)
            assert_bound_scope(restored, context, account)
            assert_equal "acct_event_a", product.marshal_dump[2][selector]
            assert_equal "acct_event_a", product.instance_variable_get(:@opts)[selector]
            assert_predicate product.instance_variable_get(:@requestor).config.public_send(selector), :frozen?
            assert_predicate product.instance_variable_get(:@opts)[selector], :frozen?
            refute_predicate value, :frozen?

            client.v1.products.retrieve("prod_shared", {}, request_opts)
            assert_scope(@requests.last(1), selector == :stripe_context ? "acct_worker_b" : nil,
                         selector == :stripe_account ? "acct_worker_b" : nil)
          end
        end
        should "copy mutable #{selector} when cloning a requestor's authorization scope" do
          value = +"acct_event_a"
          client = StripeClient.new("sk_test_123", api_base: Stripe.api_base)
          scoped = client.instance_variable_get(:@requestor).with_authorization_scope(selector => value)
          value.replace("acct_worker_b")
          product = scoped.execute_request(:get, @product_path, :api)
          Marshal.load(Marshal.dump(product)).delete

          assert_scope(@requests, selector == :stripe_context ? "acct_event_a" : nil,
                       selector == :stripe_account ? "acct_event_a" : nil)
          assert_equal "acct_event_a", scoped.config.public_send(selector)
          assert_predicate scoped.config.public_send(selector), :frozen?
          refute_predicate value, :frozen?
        end
        should "reuse connections across #{selector} overrides while retaining resource scope" do
          APIRequestor.clear_all_connection_managers
          requests = []
          %w[first second].each do |name|
            stub_request(:any, "#{Stripe.api_base}/v1/products/prod_#{name}").to_return do |request|
              requests << request
              { body: JSON.generate(id: "prod_#{name}", object: "product", deleted: request.method == :delete) }
            end
          end
          client = StripeClient.new("sk_test_123", api_base: Stripe.api_base)
          config = client.instance_variable_get(:@requestor).config
          # Warm the certificate store so its lazy initialization does not change the pool key.
          config.ca_store
          first = client.v1.products.retrieve("prod_first", {}, **{ selector => "acct_first" })
          second = client.v1.products.retrieve("prod_second", {}, **{ selector => "acct_second" })
          manager = APIRequestor.default_connection_manager(config)

          first.refresh
          client.request { Marshal.load(Marshal.dump(second)).delete }

          assert_equal 1, APIRequestor.current_thread_context.default_connection_managers.length
          assert_same manager, APIRequestor.default_connection_manager(first.instance_variable_get(:@requestor).config)
          header = selector == :stripe_account ? "Stripe-Account" : "Stripe-Context"
          assert_equal(%w[acct_first acct_second acct_first acct_second], requests.map { |request| request.headers[header] })
        ensure
          APIRequestor.clear_all_connection_managers
        end
      end

      should "reject nil in internal initialization instead of selecting an ambient requestor" do
        product = @client.with_stripe_context("acct_event_a").deserialize(@product_body)
        error = assert_raises(ArgumentError) do
          product.send(:initialize_from, @product_body, {}, api_mode: :v1, requestor: nil)
        end

        assert_match(/requestor must not be nil/, error.message)
        product.delete
        assert_scope(@requests, "acct_event_a", nil)
      end

      %i[omitted null].each do |event_context|
        %i[stripe_account stripe_context].each do |client_selector|
          should "clear #{client_selector} for a direct notification with #{event_context} context" do
            if event_context == :omitted
              @event_body.delete(:context)
            else
              @event_body[:context] = nil
            end
            @client = StripeClient.new("sk_test_123", api_base: Stripe.api_base, **{ client_selector => "acct_client_b" })
            event = notification.fetch_event
            product = event.fetch_related_object
            Marshal.load(Marshal.dump(product)).delete

            assert_nil event.context
            assert_scope(@requests, nil, nil)
            assert_bound_scope(event, nil, nil)
            assert_bound_scope(product, nil, nil)
          end
        end
      end

      %i[stripe_account stripe_context].each do |client_selector|
        should "use the echoed #{client_selector} scope for a directly retrieved event" do
          client = StripeClient.new("sk_test_123", api_base: Stripe.api_base, **{ client_selector => "acct_event_a" })
          event = client.v2.core.events.retrieve("evt_123")
          product = event.fetch_related_object
          Marshal.load(Marshal.dump(product)).delete

          assert_equal "acct_event_a", event.context
          assert_scope(@requests.first(1), client_selector == :stripe_context ? "acct_event_a" : nil,
                       client_selector == :stripe_account ? "acct_event_a" : nil)
          assert_scope(@requests.last(2), "acct_event_a", nil)
          assert_bound_scope(event, "acct_event_a", nil)
          assert_bound_scope(product, "acct_event_a", nil)
        end
      end

      should "return null context for an event retrieved without scope headers" do
        client = StripeClient.new("sk_test_123", api_base: Stripe.api_base)
        event = client.v2.core.events.retrieve("evt_123")
        restored = Marshal.load(Marshal.dump(event))
        product = restored.fetch_related_object
        Marshal.load(Marshal.dump(product)).delete

        assert_nil event.context
        assert_scope(@requests, nil, nil)
        assert_bound_scope(restored, nil, nil)
        assert_bound_scope(product, nil, nil)
      end

      should "bind a directly retrieved event to its payload context without changing the client" do
        client = StripeClient.new("sk_test_123", api_base: Stripe.api_base, stripe_context: "acct_client_b")
        event = client.v2.core.events.retrieve("evt_123", {}, stripe_context: "acct_event_a")
        product = event.fetch_related_object
        product.delete
        client.v1.products.retrieve("prod_shared")

        assert_equal "acct_event_a", event.context
        assert_scope(@requests.first(1), "acct_event_a", nil)
        assert_scope(@requests[1, 2], "acct_event_a", nil)
        assert_scope(@requests.last(1), "acct_client_b", nil)
        assert_bound_scope(event, "acct_event_a", nil)
        assert_bound_scope(product, "acct_event_a", nil)
      end

      should "retain an API key override when constructing a scoped event" do
        event = @client.with_stripe_context("acct_event_a").v2.core.events.retrieve("evt_123", {}, api_key: "rk_restricted")
        product = event.fetch_related_object
        Marshal.load(Marshal.dump(product)).delete

        @requests.each { |request| assert_equal "Bearer rk_restricted", request.headers["Authorization"] }
        assert_scope(@requests.last(2), "acct_event_a", nil)
      end

      should "preserve explicit per-request context overrides on ordinary resources" do
        client = StripeClient.new("sk_test_123", api_base: Stripe.api_base, stripe_context: "acct_client_b")
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

      should "record a bound resource's response in another client's block without changing its scope" do
        product = @client.with_stripe_context("acct_event_a").v1.products.retrieve("prod_shared")
        other = StripeClient.new("sk_other", api_base: Stripe.api_base, stripe_context: "acct_worker_b")
        result, response = other.request do
          product.delete
          :deleted
        end

        assert_equal :deleted, result
        assert_equal product.last_response, response
        assert_equal true, response.data[:deleted]
        assert_scope(@requests, "acct_event_a", nil)
        @requests.each { |request| assert_equal "Bearer sk_test_123", request.headers["Authorization"] }
        assert_bound_scope(product, "acct_event_a", nil)
      end

      should "retain an explicit account when merging options with a configured context" do
        config = StripeConfiguration.new
        config.stripe_context = "acct_client_b"
        opts = RequestOptions.merge_config_and_opts(config, stripe_account: "acct_explicit_a")

        assert_equal "acct_client_b", opts[:stripe_context]
        assert_equal "acct_explicit_a", opts[:stripe_account]
      end

      should "scope expanded active objects through construction and Marshal" do
        client = @client.with_stripe_context("acct_event_a")
        customer_body = { id: "cus_123", object: "customer" }
        stub_request(:delete, "#{Stripe.api_base}/v1/customers/cus_123").to_return do |request|
          @requests << request
          { body: JSON.generate(customer_body.merge(deleted: true)), headers: { "Content-Type" => "application/json" } }
        end
        parent = client.deserialize({ id: "in_123", object: "invoice", customer: customer_body })
        restored = Marshal.load(Marshal.dump(parent))
        restored.customer.delete

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
        @client.with_stripe_context("acct_event_a").v2.core.events.retrieve("evt_123").fetch_related_object
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
