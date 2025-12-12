# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  class StripeObjectTest < Test::Unit::TestCase
    should "implement #==" do
      obj1 = Stripe::StripeObject.construct_from(id: 1, foo: "bar")
      obj2 = Stripe::StripeObject.construct_from(id: 1, foo: "bar")
      obj3 = Stripe::StripeObject.construct_from(id: 1, foo: "rab")

      assert obj1 == obj2
      refute obj1 == obj3
    end

    should "implement #deleted?" do
      obj = Stripe::StripeObject.construct_from({})
      refute obj.deleted?

      obj = Stripe::StripeObject.construct_from(deleted: false)
      refute obj.deleted?

      obj = Stripe::StripeObject.construct_from(deleted: true)
      assert obj.deleted?
    end

    should "implement #respond_to" do
      obj = Stripe::StripeObject.construct_from(id: 1, foo: "bar")
      assert obj.respond_to?(:id)
      assert obj.respond_to?(:foo)
      assert !obj.respond_to?(:baz)
    end

    should "marshal be insensitive to strings vs. symbols when constructin" do
      obj = Stripe::StripeObject.construct_from(:id => 1, "name" => "Stripe")
      assert_equal 1, obj[:id]
      assert_equal "Stripe", obj[:name]
    end

    context "#deep_copy" do
      should "produce a deep copy" do
        opts = {
          api_base: Stripe.api_base,
          api_key: "apikey",
        }
        values = {
          id: 1,
          name: "Stripe",
          arr: [
            StripeObject.construct_from({ id: "index0" }, opts),
            "index1",
            2,
          ],
          map: {
            "0": StripeObject.construct_from({ id: "index0" }, opts),
            "1": "index1",
            "2": 2,
          },
        }

        # it's not good to test methods with `#send` like this, but I've done
        # it in the interest of trying to keep `.deep_copy` as internal as
        # possible
        copy_values = Stripe::StripeObject.send(:deep_copy, values, api_mode: :v1)

        # we can't compare the hashes directly because they have embedded
        # objects which are different from each other
        assert_equal values[:id], copy_values[:id]
        assert_equal values[:name], copy_values[:name]

        assert_equal values[:arr].length, copy_values[:arr].length

        # internal values of the copied StripeObject should be the same
        # (including opts), but the object itself should be new (hence the
        # refutation of equality on #object_id)
        assert_equal values[:arr][0][:id], copy_values[:arr][0][:id]
        refute_equal values[:arr][0].object_id, copy_values[:arr][0].object_id
        assert_equal values[:arr][0].instance_variable_get(:@opts),
                     copy_values[:arr][0].instance_variable_get(:@opts)

        # scalars however, can be compared
        assert_equal values[:arr][1], copy_values[:arr][1]
        assert_equal values[:arr][2], copy_values[:arr][2]

        # and a similar story with the hash
        assert_equal values[:map].keys, copy_values[:map].keys
        assert_equal values[:map][:"0"][:id], copy_values[:map][:"0"][:id]
        refute_equal values[:map][:"0"].object_id, copy_values[:map][:"0"].object_id
        assert_equal values[:map][:"0"].instance_variable_get(:@opts),
                     copy_values[:map][:"0"].instance_variable_get(:@opts)
        assert_equal values[:map][:"1"], copy_values[:map][:"1"]
        assert_equal values[:map][:"2"], copy_values[:map][:"2"]
      end

      should "not copy a client" do
        opts = {
          api_key: "apikey",
          client: APIRequestor.active_requestor,
        }
        values = { id: 1, name: "Stripe" }

        obj = Stripe::StripeObject.construct_from(values, opts)
        copy_obj = Stripe::StripeObject.send(:deep_copy, obj, api_mode: :v1)

        assert_equal values, copy_obj.instance_variable_get(:@values)
        assert_equal opts.reject { |k, _v| k == :client },
                     copy_obj.instance_variable_get(:@opts)
      end

      should "return an instance of the same class" do
        class TestObject < Stripe::StripeObject; end # rubocop:todo Lint/ConstantDefinitionInBlock

        obj = TestObject.construct_from(id: 1)
        copy_obj = obj.class.send(:deep_copy, obj, api_mode: :v1)

        assert_equal obj.class, copy_obj.class
      end
    end

    context "#eql?" do
      should "produce true for two equivalent Stripe objects" do
        obj1 = Stripe::StripeObject.construct_from(id: 1, name: "Stripe")
        obj2 = Stripe::StripeObject.construct_from(id: 1, name: "Stripe")
        assert obj1.eql?(obj2)
      end

      should "produce false for non-equivalent Stripe objects" do
        obj1 = Stripe::StripeObject.construct_from(id: 1, name: "Stripe")
        obj2 = Stripe::StripeObject.construct_from(id: 2, name: "Stripe")
        refute obj1.eql?(obj2)
      end

      should "produce false for different types" do
        obj1 = Stripe::StripeObject.construct_from(id: 1, name: "Stripe")
        obj2 = 7
        refute obj1.eql?(obj2)
      end
    end

    context "#hash" do
      should "produce the same hash for two equivalent Stripe objects" do
        obj1 = Stripe::StripeObject.construct_from(id: 1, name: "Stripe")
        obj2 = Stripe::StripeObject.construct_from(id: 1, name: "Stripe")
        assert_equal obj1.hash, obj2.hash
      end

      should "produce different hashes for non-equivalent Stripe objects" do
        obj1 = Stripe::StripeObject.construct_from(id: 1, name: "Stripe")
        obj2 = Stripe::StripeObject.construct_from(id: 2, name: "Stripe")
        refute_equal obj1.hash, obj2.hash
      end

      should "produce different hashes for different types" do
        obj1 = Stripe::StripeObject.construct_from(id: 1, name: "Stripe")
        obj2 = 7
        refute_equal obj1.hash, obj2.hash
      end
    end

    context "#to_hash" do
      should "skip calling to_hash on nil" do
        module NilWithToHash
          def to_hash
            raise "Can't call to_hash on nil"
          end
        end
        ::NilClass.include NilWithToHash

        hash_with_nil = { id: 3, foo: nil }
        obj = StripeObject.construct_from(hash_with_nil)
        expected_hash = { id: 3, foo: nil }
        assert_equal expected_hash, obj.to_hash
      ensure
        ::NilClass.send(:undef_method, :to_hash)
      end

      should "recursively call to_hash on its values" do
        # deep nested hash (when contained in an array) or StripeObject
        nested_hash = { id: 7, foo: "bar" }
        nested = Stripe::StripeObject.construct_from(nested_hash)

        obj = Stripe::StripeObject.construct_from(id: 1,
                                                  # simple hash that contains a StripeObject to help us test deep
                                                  # recursion
                                                  nested: { object: "list", data: [nested] },
                                                  list: [nested])

        expected_hash = {
          id: 1,
          nested: { object: "list", data: [nested_hash] },
          list: [nested_hash],
        }
        assert_equal expected_hash, obj.to_hash
      end
    end

    should "assign question mark accessors for booleans" do
      obj = Stripe::StripeObject.construct_from(id: 1, bool: true, not_bool: "bar")
      assert obj.respond_to?(:bool?)
      assert obj.bool?
      refute obj.respond_to?(:not_bool?)
    end

    should "assign question mark accessors for booleans added after initialization" do
      obj = Stripe::StripeObject.new
      obj.bool = true
      assert obj.respond_to?(:bool?)
      assert obj.bool?
    end

    should "mass assign values with #update_attributes" do
      obj = Stripe::StripeObject.construct_from(id: 1, name: "Stripe")

      obj.update_attributes({ name: "STRIPE" })

      assert_equal "STRIPE", obj.name

      # unfortunately, we even assign unknown properties to duplicate the
      # behavior that we currently have via magic accessors with
      # method_missing
      obj.update_attributes({ unknown: "foo" })

      assert_equal "foo", obj.unknown
    end

    should "#update_attributes with a hash" do
      obj = Stripe::StripeObject.construct_from({})
      obj.update_attributes({ metadata: { foo: "bar" } })
      assert_equal Stripe::StripeObject, obj.metadata.class
    end

    should "create accessors when #update_attributes is called" do
      obj = Stripe::StripeObject.construct_from({})
      assert_equal false, obj.send(:metaclass).method_defined?(:foo)
      obj.update_attributes({ foo: "bar" })
      assert_equal true, obj.send(:metaclass).method_defined?(:foo)
    end

    should "nonstandard keys in response hashes work" do
      stub_request(:post, "#{Stripe.api_base}/v1/customers")
        .to_return(body: JSON.generate(object: "customer", email: "test@example.com", metadata: { "this-is?a.test" => "foo" }))
      c = Stripe::Customer.create({ email: "test@example.com", metadata: { "this-is?a.test" => "foo" } })
      assert_equal "foo", c.metadata["this-is?a.test"]
    end

    should "pass opts down to children when initializing" do
      opts = { custom: "opts" }

      # customer comes with a `sources` list that makes a convenient object to
      # perform tests on
      obj = Stripe::StripeObject.construct_from({
        sources: [
          {},
        ],
      }, opts)

      source = obj.sources.first
      # Pulling `@opts` as an instance variable here is not ideal, but it's
      # important enough argument that the test here is worth it. we should
      # consider exposing it publicly on a future pull (and possibly renaming
      # it to something more useful).
      assert_equal opts, source.instance_variable_get(:@opts)
    end

    should "#serialize_params on an empty object" do
      obj = Stripe::StripeObject.construct_from({})
      assert_equal({}, obj.serialize_params)
    end

    should "#serialize_params on a new object with a subobject" do
      obj = Stripe::StripeObject.new
      obj.metadata = { foo: "bar" }
      assert_equal({ metadata: { foo: "bar" } },
                   obj.serialize_params)
    end

    should "#serialize_params on a basic object" do
      obj = Stripe::StripeObject.construct_from(foo: nil)
      obj.update_attributes({ foo: "bar" })
      assert_equal({ foo: "bar" }, obj.serialize_params)
    end

    should "#serialize_params on a more complex object" do
      obj = Stripe::StripeObject.construct_from(foo: Stripe::StripeObject.construct_from(bar: nil,
                                                                                         baz: nil))
      obj.foo.bar = "newbar"
      assert_equal({ foo: { bar: "newbar" } },
                   obj.serialize_params)
    end

    should "#serialize_params on an array" do
      obj = Stripe::StripeObject.construct_from(foo: nil)
      obj.foo = ["new-value"]
      assert_equal({ foo: ["new-value"] },
                   obj.serialize_params)
    end

    should "#serialize_params on an array that shortens" do
      obj = Stripe::StripeObject.construct_from(foo: %w[0-index 1-index 2-index])
      obj.foo = ["new-value"]
      assert_equal({ foo: ["new-value"] },
                   obj.serialize_params)
    end

    should "#serialize_params on an array that lengthens" do
      obj = Stripe::StripeObject.construct_from(foo: %w[0-index 1-index 2-index])
      obj.foo = ["new-value"] * 4
      assert_equal({ foo: ["new-value"] * 4 },
                   obj.serialize_params)
    end

    should "#serialize_params on an array of hashes" do
      obj = Stripe::StripeObject.construct_from(foo: nil)
      obj.foo = [
        Stripe::StripeObject.construct_from(bar: nil),
      ]
      obj.foo[0].bar = "baz"
      assert_equal({ foo: [{ bar: "baz" }] },
                   obj.serialize_params)
    end

    should "#serialize_params doesn't include unchanged values" do
      obj = Stripe::StripeObject.construct_from(foo: nil)
      assert_equal({}, obj.serialize_params)
    end

    should "#serialize_params on an array that is unchanged" do
      obj = Stripe::StripeObject.construct_from(foo: %w[0-index 1-index 2-index])
      obj.foo = %w[0-index 1-index 2-index]
      assert_equal({}, obj.serialize_params)
    end

    should "#serialize_params with a StripeObject" do
      obj = Stripe::StripeObject.construct_from({})

      # using an #update_attributes will end up converting a Hash into a
      # StripeObject
      obj.metadata =
        Stripe::StripeObject.construct_from(foo: "bar")

      serialized = obj.serialize_params
      assert_equal({ foo: "bar" }, serialized[:metadata])
    end

    should "#serialize_params with StripeObject that's been replaced" do
      obj = Stripe::StripeObject.construct_from(source: Stripe::StripeObject.construct_from(bar: "foo"))

      # Here we replace the object wholesale.
      obj.source =
        Stripe::StripeObject.construct_from(baz: "foo")

      serialized = obj.serialize_params
      assert_equal({ baz: "foo" }, serialized[:source])
    end

    should "#serialize_params with StripeObject that's been replaced which is `metadata`" do
      class WithAdditiveObjectParam < Stripe::StripeObject # rubocop:todo Lint/ConstantDefinitionInBlock
        additive_object_param :metadata
      end

      obj = WithAdditiveObjectParam.construct_from(metadata: Stripe::StripeObject.construct_from(bar: "foo"))

      # Here we replace the object wholesale. Because it's `metadata`, the
      # client must be able to blank out the values that were in the old
      # object, but which are no longer present in the new one.
      obj.metadata =
        Stripe::StripeObject.construct_from(baz: "foo")

      serialized = obj.serialize_params
      assert_equal({ bar: "", baz: "foo" }, serialized[:metadata])
    end

    should "#serialize_params with an array of StripeObjects" do
      obj = Stripe::StripeObject.construct_from({})
      obj.metadata = [
        Stripe::StripeObject.construct_from(foo: "bar"),
      ]

      serialized = obj.serialize_params
      assert_equal([{ foo: "bar" }], serialized[:metadata])
    end

    should "#serialize_params and embed an API resource that's been set and has an ID" do
      customer = Customer.construct_from(id: "cus_123")
      obj = Stripe::StripeObject.construct_from({})

      # the key here is that the property is set explicitly (and therefore
      # marked as unsaved), which is why it gets included below
      obj.customer = customer

      serialized = obj.serialize_params
      assert_equal({ customer: customer }, serialized)
    end

    should "#serialize_params and not include API resources that have not been set" do
      customer = Customer.construct_from(id: "cus_123")
      obj = Stripe::StripeObject.construct_from(customer: customer)

      serialized = obj.serialize_params
      assert_equal({}, serialized)
    end

    should "#serialize_params serializes API resources flagged with save_with_parent" do
      c = Customer.construct_from({})
      c.save_with_parent = true

      obj = Stripe::StripeObject.construct_from(customer: c)

      serialized = obj.serialize_params
      assert_equal({ customer: {} }, serialized)
    end

    should "#serialize_params should raise an error on other embedded API resources" do
      # This customer doesn't have an ID and therefore the library doesn't know
      # what to do with it and throws an ArgumentError because it's probably
      # not what the user expected to happen.
      customer = Customer.construct_from({})

      obj = Stripe::StripeObject.construct_from({})
      obj.customer = customer

      e = assert_raises(ArgumentError) do
        obj.serialize_params
      end
      assert_equal "Cannot save property `customer` containing " \
                   "an API resource. It doesn't appear to be persisted and is " \
                   "not marked as `save_with_parent`.", e.message
    end

    should "#serialize_params takes a force option" do
      obj = Stripe::StripeObject.construct_from(id: "id",
                                                metadata: Stripe::StripeObject.construct_from(foo: "bar"))

      serialized = obj.serialize_params(force: true)
      assert_equal({ id: "id", metadata: { foo: "bar" } }, serialized)
    end

    should "#dirty! forces an object and its subobjects to be saved" do
      obj = Stripe::StripeObject.construct_from(id: "id",
                                                metadata: Stripe::StripeObject.construct_from(foo: "bar"))

      # NOTE: that `force` and `dirty!` are for different things, but are
      # functionally equivalent
      obj.dirty!

      serialized = obj.serialize_params
      assert_equal({ id: "id", metadata: { foo: "bar" } }, serialized)
    end

    should "#to_s will call to_s for all embedded stripe objects" do
      obj = Stripe::StripeObject.construct_from(id: "id",
                                                # embedded list object
                                                refunds: Stripe::ListObject.construct_from(data: [
                                                  # embedded object in list
                                                  Stripe::StripeObject.construct_from(id: "id",
                                                                                      # embedded object in an object in a list object
                                                                                      metadata: Stripe::StripeObject.construct_from(foo: "bar")),
                                                ]),
                                                # embedded stripe object
                                                metadata: Stripe::StripeObject.construct_from(foo: "bar"))
      expected = JSON.pretty_generate(id: "id",
                                      refunds: {
                                        data: [
                                          { id: "id", metadata: { foo: "bar" } },
                                        ],
                                      },
                                      metadata: { foo: "bar" })

      assert_equal(expected, obj.to_s)
    end

    should "error on setting a property to an empty string" do
      obj = Stripe::StripeObject.construct_from(foo: "bar")
      e = assert_raises ArgumentError do
        obj.foo = ""
      end
      assert_match(/\(object\).foo = nil/, e.message)
    end

    should "marshal and unmarshal using custom encoder and decoder" do
      obj = Stripe::StripeObject.construct_from(
        { id: 1, name: "Stripe" },
        api_key: "apikey",
        client: APIRequestor.active_requestor
      )
      m = Marshal.load(Marshal.dump(obj))
      assert_equal 1, m.id
      assert_equal "Stripe", m.name
      expected_hash = { api_key: "apikey" }
      assert_equal expected_hash, m.instance_variable_get("@opts")
    end

    context "#method" do
      should "act as a getter if no arguments are provided" do
        obj = Stripe::StripeObject.construct_from(id: 1, method: "foo")
        assert_equal "foo", obj.method
      end

      should "call Object#method if an argument is provided" do
        obj = Stripe::StripeObject.construct_from(id: 1, method: "foo")
        assert obj.method(:id).is_a?(Method)
      end
    end

    should "ignore properties that are reserved names" do
      obj = Stripe::StripeObject.construct_from(metadata: { class: "something" })

      # See comment on `StripeObject::RESERVED_FIELD_NAMES`
      assert_equal Stripe::StripeObject, obj.metadata.class

      # Value still accessible with hash syntax
      assert_equal "something", obj.metadata[:class]
    end

    context "#last_response" do
      should "return raw response in last_response of object" do
        obj = Stripe::StripeObject.construct_from({}, {}, { foo: "bar" })
        assert_equal({ foo: "bar" }, obj.last_response)
      end
    end

    context "requestor" do
      should "make requests on the object returned from services" do
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/core/events/evt_123")
          .to_return(body: JSON.generate(object: "v2.core.event"))

        client = Stripe::StripeClient.new("fake_key")

        evt = client.v2.core.events.retrieve("evt_123")

        assert_not_nil evt.instance_variable_get(:@requestor)

        obj = evt.instance_variable_get(:@requestor).execute_request(:get, "/v2/core/events/evt_123", :api)
        assert_equal "fake_key", obj.instance_variable_get(:@opts)[:api_key]
      end

      should "use the same options" do
        req = nil
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acc_123")
          .with { |request| req = request }
          .to_return(body: JSON.generate(object: "account"))

        client = Stripe::StripeClient.new("sk_test_fake_key", stripe_account: "foo")

        acc = client.v1.accounts.retrieve("acc_123")
        assert_equal "foo", req.headers["Stripe-Account"]

        obj = acc.instance_variable_get(:@requestor).execute_request(:get, "/v1/accounts/acc_123", :api)

        assert_equal "sk_test_fake_key", obj.instance_variable_get(:@opts)[:api_key]
        assert_equal "foo", req.headers["Stripe-Account"]
      end

      should "carry through later request options" do
        req = nil
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acc_123")
          .with { |request| req = request }
          .to_return(body: JSON.generate(object: "account"))

        client = Stripe::StripeClient.new("sk_test_fake_key")

        acc = client.v1.accounts.retrieve("acc_123", {})

        new_acc = acc.send(:_request, method: :get, path: "/v1/accounts/acc_123", opts: { stripe_account: "foo" }, base_address: :api)
        assert_equal "foo", req.headers["Stripe-Account"]

        new_acc.send(:_request, method: :get, path: "/v1/accounts/acc_123", base_address: :api)
        assert_equal "foo", req.headers["Stripe-Account"]
      end

      should "use the same options for v2" do
        req = nil
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/core/events/evt_123")
          .with { |request| req = request }
          .to_return(body: JSON.generate(object: "v2.core.event"))

        client = Stripe::StripeClient.new("sk_test_123", stripe_account: "foo")

        evt = client.v2.core.events.retrieve("evt_123")
        assert_equal "foo", req.headers["Stripe-Account"]

        evt.instance_variable_get(:@requestor).execute_request(:get, "/v2/core/events/evt_123", :api)
        assert_equal "foo", req.headers["Stripe-Account"]
      end
    end

    context "inner class type deserialization" do
      should "deserialize inner types to their correct classes" do
        # Test data with inner types
        test_data = {
          "id" => "acct_test123",
          "object" => "account",
          "business_profile" => {
            "name" => "Test Business",
            "annual_revenue" => {
              "amount" => 1_000_000,
              "currency" => "usd",
              "fiscal_year_end" => "2023-12-31",
            },
            "monthly_estimated_revenue" => {
              "amount" => 100_000,
              "currency" => "usd",
            },
            "support_address" => {
              "city" => "San Francisco",
              "country" => "US",
              "line1" => "123 Test St",
              "postal_code" => "94102",
              "state" => "CA",
            },
          },
          "company" => {
            "name" => "Test Company",
            "address" => {
              "city" => "San Francisco",
              "country" => "US",
              "line1" => "456 Company Ave",
              "postal_code" => "94103",
              "state" => "CA",
            },
            "verification" => {
              "document" => {
                "back" => "file_back_123",
                "front" => "file_front_123",
                "details" => "Document verified",
                "details_code" => "document_valid",
              },
            },
          },
        }

        # Convert the test data to a Stripe object
        account = Stripe::Util.convert_to_stripe_object(test_data)

        # Verify the main account object
        assert account.is_a?(Stripe::Account)
        assert_equal "acct_test123", account.id

        # Verify business_profile inner types
        assert account.business_profile.is_a?(Stripe::Account::BusinessProfile)
        assert_equal "Test Business", account.business_profile.name

        # Verify annual_revenue inner type
        annual_revenue = account.business_profile.annual_revenue
        assert annual_revenue.is_a?(Stripe::Account::BusinessProfile::AnnualRevenue)
        assert_equal 1_000_000, annual_revenue.amount
        assert_equal "usd", annual_revenue.currency
        assert_equal "2023-12-31", annual_revenue.fiscal_year_end

        # Verify monthly_estimated_revenue inner type
        monthly_revenue = account.business_profile.monthly_estimated_revenue
        assert monthly_revenue.is_a?(Stripe::Account::BusinessProfile::MonthlyEstimatedRevenue)
        assert_equal 100_000, monthly_revenue.amount
        assert_equal "usd", monthly_revenue.currency

        # Verify support_address inner type
        support_address = account.business_profile.support_address
        assert support_address.is_a?(Stripe::Account::BusinessProfile::SupportAddress)
        assert_equal "San Francisco", support_address.city
        assert_equal "US", support_address.country
        assert_equal "123 Test St", support_address.line1

        # Verify company inner types
        assert account.company.is_a?(Stripe::Account::Company)
        assert_equal "Test Company", account.company.name

        # Verify company address inner type
        company_address = account.company.address
        assert company_address.is_a?(Stripe::Account::Company::Address)
        assert_equal "San Francisco", company_address.city
        assert_equal "US", company_address.country

        # Verify company verification document inner type
        verification = account.company.verification
        assert verification.is_a?(Stripe::Account::Company::Verification)
        document = verification.document
        assert document.is_a?(Stripe::Account::Company::Verification::Document)
        assert_equal "file_back_123", document.back
        assert_equal "file_front_123", document.front
        assert_equal "Document verified", document.details
      end

      should "handle nil inner class types gracefully" do
        # Test that the system gracefully handles when inner_class_types returns nil
        test_data = {
          "id" => "acct_test123",
          "object" => "account",
          "business_profile" => {
            "name" => "Test Business",
          },
        }

        account = Stripe::Util.convert_to_stripe_object(test_data)
        assert account.is_a?(Stripe::Account)
        assert account.business_profile.is_a?(Stripe::Account::BusinessProfile)
        assert_nil account.company
      end

      should "handle empty inner class types gracefully" do
        # Test that the system gracefully handles when inner_class_types returns empty hash
        test_data = {
          "id" => "acct_test123",
          "object" => "account",
          "metadata" => {
            "key1" => "value1",
            "key2" => "value2",
          },
        }

        account = Stripe::Util.convert_to_stripe_object(test_data)
        assert account.is_a?(Stripe::Account)
        # metadata should be a generic StripeObject since it doesn't have inner_class_types defined
        assert account.metadata.is_a?(Stripe::StripeObject)
      end

      should "handle nested inner types correctly" do
        # Test that nested inner types are handled correctly
        test_data = {
          "id" => "acct_test123",
          "object" => "account",
          "settings" => {
            "bacs_debit_payments" => {
              "display_name" => "Test Business",
              "service_user_number" => "123456789",
            },
          },
        }

        account = Stripe::Util.convert_to_stripe_object(test_data)
        assert account.is_a?(Stripe::Account)
        assert account.settings.is_a?(Stripe::Account::Settings)
        assert account.settings.bacs_debit_payments.is_a?(Stripe::Account::Settings::BacsDebitPayments)
        assert_equal "Test Business", account.settings.bacs_debit_payments.display_name
        assert_equal "123456789", account.settings.bacs_debit_payments.service_user_number
      end

      should "preserve existing functionality for non-inner types" do
        # Test that regular fields still work as expected
        test_data = {
          "id" => "acct_test123",
          "object" => "account",
          "business_type" => "individual",
          "charges_enabled" => true,
          "country" => "US",
        }

        account = Stripe::Util.convert_to_stripe_object(test_data)
        assert account.is_a?(Stripe::Account)
        assert_equal "acct_test123", account.id
        assert_equal "account", account.object
        assert_equal "individual", account.business_type
        assert_equal true, account.charges_enabled
        assert_equal "US", account.country
      end

      should "work correctly with retrieve operation" do
        # Test that inner class types work with retrieve
        account = Stripe::Account.retrieve("acct_test123")
        assert account.is_a?(Stripe::Account)

        # If the account has business_profile, it should be the correct class
        if account.respond_to?(:business_profile) && account.business_profile
          assert account.business_profile.is_a?(Stripe::Account::BusinessProfile)
        end

        # If the account has company, it should be the correct class
        assert account.company.is_a?(Stripe::Account::Company) if account.respond_to?(:company) && account.company
      end

      should "work correctly with refresh operation" do
        # Test that inner class types work with refresh
        account = Stripe::Account.retrieve("acct_test123")
        assert account.is_a?(Stripe::Account)

        # Refresh the account
        account.refresh
        assert account.is_a?(Stripe::Account)

        # If the account has business_profile, it should still be the correct class after refresh
        if account.respond_to?(:business_profile) && account.business_profile
          assert account.business_profile.is_a?(Stripe::Account::BusinessProfile)
        end

        # If the account has company, it should still be the correct class after refresh
        assert account.company.is_a?(Stripe::Account::Company) if account.respond_to?(:company) && account.company
      end
    end

    should "raise special error for Invoice.payment_intent" do
      is_good_error = lambda do |e|
        e.message.include?("multiple-partial-payments-on-invoices")
      end

      i = Stripe::Invoice.construct_from({})

      # Test attribute access
      e = assert_raises(NoMethodError) do
        i.payment_intent
      end
      assert is_good_error.call(e)

      # Test hash access
      e = assert_raises(KeyError) do
        i[:payment_intent]
      end
      assert is_good_error.call(e)

      # Only that property gets the special error
      e = assert_raises(NoMethodError) do
        i.blah
      end
      assert !is_good_error.call(e)

      # Other properties don't get the special error with hash access
      assert_nil i[:blah]

      # Other classes don't have that special error
      so = Stripe::StripeObject.construct_from({})
      e = assert_raises(NoMethodError) do
        so.payment_intent
      end
      assert !is_good_error.call(e)

      # Hash access on non-Invoice objects returns nil
      assert_nil so[:payment_intent]
    end
  end
end
