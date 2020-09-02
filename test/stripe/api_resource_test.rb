# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class ApiResourceTest < Test::Unit::TestCase
    class CustomMethodAPIResource < APIResource
      OBJECT_NAME = "custom_method"
      custom_method :my_method, http_verb: :post
    end

    class NestedTestAPIResource < APIResource
      save_nested_resource :external_account
    end

    context ".custom_method" do
      should "call to an RPC-style method" do
        stub_request(:post, "#{Stripe.api_base}/v1/custom_methods/ch_123/my_method")
          .to_return(body: JSON.generate({}))
        CustomMethodAPIResource.my_method("ch_123")
      end

      should "raise an error if a non-ID is passed" do
        e = assert_raises ArgumentError do
          CustomMethodAPIResource.my_method(id: "ch_123")
        end
        assert_equal "id should be a string representing the ID of an API resource",
                     e.message
      end
    end

    context ".save_nested_resource" do
      should "can have a scalar set" do
        r = NestedTestAPIResource.new("test_resource")
        r.external_account = "tok_123"
        assert_equal "tok_123", r.external_account
      end

      should "set a flag if given an object source" do
        r = NestedTestAPIResource.new("test_resource")
        r.external_account = {
          object: "card",
        }
        assert_equal true, r.external_account.save_with_parent
      end
    end

    should "creating a new APIResource should not fetch over the network" do
      Stripe::Customer.new("someid")
      assert_not_requested :get, %r{#{Stripe.api_base}/.*}
    end

    should "creating a new APIResource from a hash should not fetch over the network" do
      Stripe::Customer.construct_from(id: "somecustomer",
                                      card: { id: "somecard", object: "card" },
                                      object: "customer")
      assert_not_requested :get, %r{#{Stripe.api_base}/.*}
    end

    should "setting an attribute should not cause a network request" do
      c = Stripe::Customer.new("cus_123")
      c.card = { id: "somecard", object: "card" }
      assert_not_requested :get, %r{#{Stripe.api_base}/.*}
      assert_not_requested :post, %r{#{Stripe.api_base}/.*}
    end

    should "accessing id should not issue a fetch" do
      c = Stripe::Customer.new("cus_123")
      c.id
      assert_not_requested :get, %r{#{Stripe.api_base}/.*}
    end

    should "not specifying api credentials should raise an exception" do
      Stripe.api_key = nil
      assert_raises Stripe::AuthenticationError do
        Stripe::Customer.new("cus_123").refresh
      end
    end

    should "using a nil api key should raise an exception" do
      assert_raises TypeError do
        Stripe::Customer.list({}, nil)
      end
      assert_raises TypeError do
        Stripe::Customer.list({}, api_key: nil)
      end
    end

    should "specifying api credentials containing whitespace should raise an exception" do
      Stripe.api_key = "key "
      assert_raises Stripe::AuthenticationError do
        Stripe::Customer.new("cus_123").refresh
      end
    end

    should "send expand on fetch properly" do
      stub_request(:get, "#{Stripe.api_base}/v1/charges/ch_123")
        .with(query: { "expand" => ["customer"] })
        .to_return(body: JSON.generate(charge_fixture))

      Stripe::Charge.retrieve(id: "ch_123", expand: [:customer])
    end

    should "preserve expand across refreshes" do
      stub_request(:get, "#{Stripe.api_base}/v1/charges/ch_123")
        .with(query: { "expand" => ["customer"] })
        .to_return(body: JSON.generate(charge_fixture))

      ch = Stripe::Charge.retrieve(id: "ch_123", expand: [:customer])
      ch.refresh
    end

    should "send expand when fetching through ListObject" do
      stub_request(:get, "#{Stripe.api_base}/v1/charges/ch_123")
        .to_return(body: JSON.generate(charge_fixture))

      stub_request(:get, "#{Stripe.api_base}/v1/charges/ch_123/refunds/re_123")
        .with(query: { "expand" => ["balance_transaction"] })
        .to_return(body: JSON.generate(charge_fixture))

      charge = Stripe::Charge.retrieve("ch_123")
      charge.refunds.retrieve(id: "re_123", expand: [:balance_transaction])
    end

    context "when specifying per-object credentials" do
      context "with no global API key set" do
        should "use the per-object credential when creating" do
          stub_request(:post, "#{Stripe.api_base}/v1/charges")
            .with(headers: { "Authorization" => "Bearer sk_test_local" })
            .to_return(body: JSON.generate(charge_fixture))

          Stripe::Charge.create({ source: "tok_visa" },
                                "sk_test_local")
        end
      end

      context "with a global API key set" do
        setup do
          Stripe.api_key = "global"
        end

        teardown do
          Stripe.api_key = nil
        end

        should "use the per-object credential when creating" do
          stub_request(:post, "#{Stripe.api_base}/v1/charges")
            .with(headers: { "Authorization" => "Bearer sk_test_local" })
            .to_return(body: JSON.generate(charge_fixture))

          Stripe::Charge.create({ source: "tok_visa" },
                                "sk_test_local")
        end

        should "use the per-object credential when retrieving and making other calls" do
          stub_request(:get, "#{Stripe.api_base}/v1/charges/ch_123")
            .with(headers: { "Authorization" => "Bearer sk_test_local" })
            .to_return(body: JSON.generate(charge_fixture))
          stub_request(:post, "#{Stripe.api_base}/v1/charges/ch_123/refunds")
            .with(headers: { "Authorization" => "Bearer sk_test_local" })
            .to_return(body: "{}")

          ch = Stripe::Charge.retrieve("ch_123", "sk_test_local")
          ch.refunds.create
        end
      end
    end

    context "with valid credentials" do
      should "urlencode values in GET params" do
        stub_request(:get, "#{Stripe.api_base}/v1/charges")
          .with(query: { customer: "test customer" })
          .to_return(body: JSON.generate(data: [charge_fixture]))
        charges = Stripe::Charge.list(customer: "test customer").data
        assert charges.is_a? Array
      end

      should "construct URL properly with base query parameters" do
        stub_request(:get, "#{Stripe.api_base}/v1/charges")
          .with(query: { customer: "cus_123" })
          .to_return(body: JSON.generate(data: [charge_fixture],
                                         url: "/v1/charges"))
        charges = Stripe::Charge.list(customer: "cus_123")

        stub_request(:get, "#{Stripe.api_base}/v1/charges")
          .with(query: { customer: "cus_123", created: "123" })
          .to_return(body: JSON.generate(data: [charge_fixture],
                                         url: "/v1/charges"))
        charges.list(created: 123)
      end

      should "setting a nil value for a param should exclude that param from the request" do
        stub_request(:get, "#{Stripe.api_base}/v1/charges")
          .with(query: { offset: 5, sad: false })
          .to_return(body: JSON.generate(count: 1, data: [charge_fixture]))
        Stripe::Charge.list(count: nil, offset: 5, sad: false)

        stub_request(:post, "#{Stripe.api_base}/v1/charges")
          .with(body: { "amount" => "50", "currency" => "usd" })
          .to_return(body: JSON.generate(count: 1, data: [charge_fixture]))
        Stripe::Charge.create(amount: 50, currency: "usd", card: { number: nil })
      end

      should "not trigger a warning if a known opt, such as idempotency_key, is in opts" do
        stub_request(:post, "#{Stripe.api_base}/v1/charges")
          .to_return(body: JSON.generate(charge_fixture))
        old_stderr = $stderr
        $stderr = StringIO.new
        begin
          Stripe::Charge.create({ amount: 100, currency: "usd", card: "sc_token" }, idempotency_key: "12345")
          assert $stderr.string.empty?
        ensure
          $stderr = old_stderr
        end
      end

      should "trigger a warning if a known opt, such as idempotency_key, is in params" do
        stub_request(:post, "#{Stripe.api_base}/v1/charges")
          .to_return(body: JSON.generate(charge_fixture))
        old_stderr = $stderr
        $stderr = StringIO.new
        begin
          Stripe::Charge.create(amount: 100, currency: "usd", card: "sc_token", idempotency_key: "12345")
          assert_match Regexp.new("WARNING:"), $stderr.string
        ensure
          $stderr = old_stderr
        end
      end

      should "error if the params is not a Hash" do
        stub_request(:post, "#{Stripe.api_base}/v1/charges/ch_123/capture")
          .to_return(body: JSON.generate(charge_fixture))

        e = assert_raises(ArgumentError) { Stripe::Charge.capture("ch_123", "sk_test_secret") }

        assert_equal "request params should be either a Hash or nil (was a String)", e.message
      end

      should "allow making a request with params set to nil" do
        stub_request(:post, "#{Stripe.api_base}/v1/charges/ch_123/capture")
          .to_return(body: JSON.generate(charge_fixture))

        Stripe::Charge.capture("ch_123", nil, "sk_test_secret")
      end

      should "error if a user-specified opt is given a non-nil non-string value" do
        stub_request(:post, "#{Stripe.api_base}/v1/charges")
          .to_return(body: JSON.generate(charge_fixture))

        # Works fine if not included or a string.
        Stripe::Charge.create({ amount: 100, currency: "usd" }, {})
        Stripe::Charge.create({ amount: 100, currency: "usd" }, idempotency_key: "12345")

        # Errors on a non-string.
        e = assert_raises(ArgumentError) do
          Stripe::Charge.create({ amount: 100, currency: "usd" }, idempotency_key: :foo)
        end
        assert_equal "request option 'idempotency_key' should be a string value " \
                       "(was a Symbol)",
                     e.message
      end

      should "requesting with a unicode ID should result in a request" do
        stub_request(:get, "#{Stripe.api_base}/v1/customers/%E2%98%83")
          .to_return(body: JSON.generate(make_missing_id_error), status: 404)
        c = Stripe::Customer.new("☃")
        assert_raises(Stripe::InvalidRequestError) { c.refresh }
      end

      should "requesting with no ID should result in an InvalidRequestError with no request" do
        c = Stripe::Customer.new
        assert_raises(Stripe::InvalidRequestError) { c.refresh }
      end

      should "making a GET request with parameters should have a query string and no body" do
        stub_request(:get, "#{Stripe.api_base}/v1/charges")
          .with(query: { limit: 1 })
          .to_return(body: JSON.generate(data: [charge_fixture]))
        Stripe::Charge.list(limit: 1)
      end

      should "making a POST request with parameters should have a body and no query string" do
        stub_request(:post, "#{Stripe.api_base}/v1/charges")
          .with(body: { "amount" => "100", "currency" => "usd", "card" => "sc_token" })
          .to_return(body: JSON.generate(charge_fixture))
        Stripe::Charge.create(amount: 100, currency: "usd", card: "sc_token")
      end

      should "loading an object should issue a GET request" do
        stub_request(:get, "#{Stripe.api_base}/v1/charges/ch_123")
          .to_return(body: JSON.generate(charge_fixture))
        c = Stripe::Charge.new("ch_123")
        c.refresh
      end

      should "using array accessors should be the same as the method interface" do
        stub_request(:get, "#{Stripe.api_base}/v1/charges/ch_123")
          .to_return(body: JSON.generate(charge_fixture))
        c = Stripe::Charge.new("cus_123")
        c.refresh
        assert_equal c.created, c[:created]
        assert_equal c.created, c["created"]
        c["created"] = 12_345
        assert_equal c.created, 12_345
      end

      should "updating an object should issue a POST request with only the changed properties" do
        stub_request(:post, "#{Stripe.api_base}/v1/customers/cus_123")
          .with(body: { "description" => "another_mn" })
          .to_return(body: JSON.generate(customer_fixture))
        c = Stripe::Customer.construct_from(customer_fixture)
        c.description = "another_mn"
        c.save
      end

      should "updating should merge in returned properties" do
        stub_request(:post, "#{Stripe.api_base}/v1/customers/cus_123")
          .with(body: { "description" => "another_mn" })
          .to_return(body: JSON.generate(customer_fixture))
        c = Stripe::Customer.new("cus_123")
        c.description = "another_mn"
        c.save
        assert_equal false, c.livemode
      end

      should "updating should fail if api_key is overwritten with nil" do
        c = Stripe::Customer.new
        assert_raises TypeError do
          c.save({}, api_key: nil)
        end
      end

      should "updating should use the supplied api_key" do
        stub_request(:post, "#{Stripe.api_base}/v1/customers")
          .with(headers: { "Authorization" => "Bearer sk_test_local" })
          .to_return(body: JSON.generate(customer_fixture))
        c = Stripe::Customer.new
        c.save({}, api_key: "sk_test_local")
        assert_equal false, c.livemode
      end

      should "deleting should send no props and result in an object that has no props other deleted" do
        stub_request(:delete, "#{Stripe.api_base}/v1/customers/cus_123")
          .to_return(body: JSON.generate("id" => "cus_123", "deleted" => true))
        c = Stripe::Customer.construct_from(customer_fixture)
        c.delete
      end

      should "loading all of an APIResource should return an array of recursively instantiated objects" do
        stub_request(:get, "#{Stripe.api_base}/v1/charges")
          .to_return(body: JSON.generate(data: [charge_fixture]))
        charges = Stripe::Charge.list.data
        assert charges.is_a? Array
        assert charges[0].is_a? Stripe::Charge
        assert charges[0].payment_method_details.is_a?(Stripe::StripeObject)
      end

      should "passing in a stripe_account header should pass it through on call" do
        stub_request(:get, "#{Stripe.api_base}/v1/customers/cus_123")
          .with(headers: { "Stripe-Account" => "acct_123" })
          .to_return(body: JSON.generate(customer_fixture))
        Stripe::Customer.retrieve("cus_123", stripe_account: "acct_123")
      end

      should "passing in a stripe_account header should pass it through on save" do
        stub_request(:get, "#{Stripe.api_base}/v1/customers/cus_123")
          .with(headers: { "Stripe-Account" => "acct_123" })
          .to_return(body: JSON.generate(customer_fixture))
        c = Stripe::Customer.retrieve("cus_123", stripe_account: "acct_123")

        stub_request(:post, "#{Stripe.api_base}/v1/customers/cus_123")
          .with(headers: { "Stripe-Account" => "acct_123" })
          .to_return(body: JSON.generate(customer_fixture))
        c.description = "FOO"
        c.save
      end

      should "add key to nested objects" do
        acct = Stripe::Account.construct_from(id: "myid",
                                              legal_entity: {
                                                size: "l",
                                                score: 4,
                                                height: 10,
                                              })

        stub_request(:post, "#{Stripe.api_base}/v1/accounts/myid")
          .with(body: { legal_entity: { first_name: "Bob" } })
          .to_return(body: JSON.generate("id" => "myid"))

        acct.legal_entity.first_name = "Bob"
        acct.save
      end

      should "save nothing if nothing changes" do
        acct = Stripe::Account.construct_from(id: "acct_id",
                                              metadata: {
                                                key: "value",
                                              })

        stub_request(:post, "#{Stripe.api_base}/v1/accounts/acct_id")
          .with(body: {})
          .to_return(body: JSON.generate("id" => "acct_id"))

        acct.save
      end

      should "not save nested API resources" do
        ch = Stripe::Charge.construct_from(id: "ch_id",
                                           customer: {
                                             object: "customer",
                                             id: "customer_id",
                                           })

        stub_request(:post, "#{Stripe.api_base}/v1/charges/ch_id")
          .with(body: {})
          .to_return(body: JSON.generate("id" => "ch_id"))

        ch.customer.description = "Bob"
        ch.save
      end

      should "correctly handle replaced nested objects" do
        acct = Stripe::Account.construct_from(
          id: "acct_123",
          company: {
            name: "company_name",
            address: {
              line1: "test",
              city: "San Francisco",
            },
          }
        )

        stub_request(:post, "#{Stripe.api_base}/v1/accounts/acct_123")
          .with(body: { company: { address: { line1: "Test2", city: "" } } })
          .to_return(body: JSON.generate("id" => "my_id"))

        acct.company.address = { line1: "Test2" }
        acct.save
      end

      should "correctly handle array setting" do
        acct = Stripe::Account.construct_from(id: "myid",
                                              legal_entity: {})

        stub_request(:post, "#{Stripe.api_base}/v1/accounts/myid")
          .with(body: { legal_entity: { additional_owners: [{ first_name: "Bob" }] } })
          .to_return(body: JSON.generate("id" => "myid"))

        acct.legal_entity.additional_owners = [{ first_name: "Bob" }]
        acct.save
      end

      should "correctly handle array insertion" do
        acct = Stripe::Account.construct_from(id: "myid",
                                              legal_entity: {
                                                additional_owners: [],
                                              })

        # Note that this isn't a perfect check because we're using webmock's
        # data decoding, which isn't aware of the Stripe array encoding that we
        # use here.
        stub_request(:post, "#{Stripe.api_base}/v1/accounts/myid")
          .with(body: { legal_entity: { additional_owners: [{ first_name: "Bob" }] } })
          .to_return(body: JSON.generate("id" => "myid"))

        acct.legal_entity.additional_owners << { first_name: "Bob" }
        acct.save
      end

      should "correctly handle array updates" do
        acct = Stripe::Account.construct_from(id: "myid",
                                              legal_entity: {
                                                additional_owners: [{ first_name: "Bob" }, { first_name: "Jane" }],
                                              })

        # Note that this isn't a perfect check because we're using webmock's
        # data decoding, which isn't aware of the Stripe array encoding that we
        # use here.
        stub_request(:post, "#{Stripe.api_base}/v1/accounts/myid")
          .with(body: { legal_entity: { additional_owners: [{ first_name: "Janet" }] } })
          .to_return(body: JSON.generate("id" => "myid"))

        acct.legal_entity.additional_owners[1].first_name = "Janet"
        acct.save
      end

      should "correctly handle array noops" do
        acct = Stripe::Account.construct_from(id: "myid",
                                              legal_entity: {
                                                additional_owners: [{ first_name: "Bob" }],
                                              },
                                              currencies_supported: %w[usd cad])

        stub_request(:post, "#{Stripe.api_base}/v1/accounts/myid")
          .with(body: {})
          .to_return(body: JSON.generate("id" => "myid"))

        acct.save
      end

      should "correctly handle hash noops" do
        acct = Stripe::Account.construct_from(id: "myid",
                                              legal_entity: {
                                                address: { line1: "1 Two Three" },
                                              })

        stub_request(:post, "#{Stripe.api_base}/v1/accounts/myid")
          .with(body: {})
          .to_return(body: JSON.generate("id" => "myid"))

        acct.save
      end

      should "should create a new resource when an object without an id is saved" do
        account = Stripe::Account.construct_from(id: nil,
                                                 display_name: nil)

        stub_request(:post, "#{Stripe.api_base}/v1/accounts")
          .with(body: { display_name: "stripe" })
          .to_return(body: JSON.generate("id" => "acct_123"))

        account.display_name = "stripe"
        account.save
      end

      should "set attributes as part of save" do
        account = Stripe::Account.construct_from(id: nil,
                                                 display_name: nil)

        stub_request(:post, "#{Stripe.api_base}/v1/accounts")
          .with(body: { display_name: "stripe", metadata: { key: "value" } })
          .to_return(body: JSON.generate("id" => "acct_123"))

        account.save(display_name: "stripe", metadata: { key: "value" })
      end
    end

    context "#request_stripe_object" do
      class HelloTestAPIResource < APIResource
        OBJECT_NAME = "hello"
        def say_hello(params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: resource_url + "/say",
            params: params,
            opts: opts
          )
        end
      end

      setup do
        Util.instance_variable_set(
          :@object_classes,
          Stripe::ObjectTypes.object_names_to_classes.merge(
            "hello" => HelloTestAPIResource
          )
        )
      end
      teardown do
        Util.class.instance_variable_set(:@object_classes, Stripe::ObjectTypes.object_names_to_classes)
      end

      should "make requests appropriately" do
        stub_request(:post, "#{Stripe.api_base}/v1/hellos/hi_123/say")
          .with(body: { foo: "bar" }, headers: { "Stripe-Account" => "acct_hi" })
          .to_return(body: JSON.generate("object" => "hello"))

        hello = HelloTestAPIResource.new(id: "hi_123")
        hello.say_hello({ foo: "bar" }, stripe_account: "acct_hi")
      end

      should "update attributes in-place when it returns the same thing" do
        stub_request(:post, "#{Stripe.api_base}/v1/hellos/hi_123/say")
          .to_return(body: JSON.generate("object" => "hello", "additional" => "attribute"))

        hello = HelloTestAPIResource.new(id: "hi_123")
        hello.unsaved = "a value"
        new_hello = hello.say_hello

        # Doesn't matter if you use the return variable or the instance.
        assert_equal(hello, new_hello)

        # It updates new attributes in-place.
        assert_equal("attribute", hello.additional)

        # It removes unsaved attributes, but at least lets you know about them.
        e = assert_raises(NoMethodError) { hello.unsaved }
        assert_match("The 'unsaved' attribute was set in the past", e.message)
      end

      should "instantiate a new object of the appropriate class when it is different than the host class" do
        stub_request(:post, "#{Stripe.api_base}/v1/hellos/hi_123/say")
          .to_return(body: JSON.generate("object" => "goodbye", "additional" => "attribute"))

        hello = HelloTestAPIResource.new(id: "hi_123")
        hello.unsaved = "a value"
        new_goodbye = hello.say_hello

        # The returned value and the instance are different objects.
        refute_equal(new_goodbye, hello)

        # The returned value has stuff from the server.
        assert_equal("attribute", new_goodbye.additional)
        assert_equal("goodbye", new_goodbye.object)

        # You instance doesn't have stuff from the server.
        e = assert_raises(NoMethodError) { hello.additional }
        refute_match(/was set in the past/, e.message)

        # The instance preserves unset attributes on the original instance (not sure this is good behavior?)
        assert_equal("a value", hello.unsaved)
      end
    end

    @@fixtures = {} # rubocop:disable Style/ClassVars
    setup do
      if @@fixtures.empty?
        cache_fixture(:charge) do
          Charge.retrieve("ch_123")
        end
        cache_fixture(:customer) do
          Customer.retrieve("cus_123")
        end
      end
    end

    private def charge_fixture
      @@fixtures[:charge]
    end

    private def customer_fixture
      @@fixtures[:customer]
    end

    # Expects to retrieve a fixture from stripe-mock (an API call should be
    # included in the block to yield to) and does very simple memoization.
    private def cache_fixture(key)
      return @@fixtures[key] if @@fixtures.key?(key)

      obj = yield
      @@fixtures[key] = obj.instance_variable_get(:@values).freeze
      @@fixtures[key]
    end
  end
end
