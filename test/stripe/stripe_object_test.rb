# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

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
        copy_values = Stripe::StripeObject.send(:deep_copy, values)

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
          client: StripeClient.active_client,
        }
        values = { id: 1, name: "Stripe" }

        obj = Stripe::StripeObject.construct_from(values, opts)
        copy_obj = Stripe::StripeObject.send(:deep_copy, obj)

        assert_equal values, copy_obj.instance_variable_get(:@values)
        assert_equal opts.reject { |k, _v| k == :client },
                     copy_obj.instance_variable_get(:@opts)
      end

      should "return an instance of the same class" do
        class TestObject < Stripe::StripeObject; end

        obj = TestObject.construct_from(id: 1)
        copy_obj = obj.class.send(:deep_copy, obj)

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
        begin
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
      class WithAdditiveObjectParam < Stripe::StripeObject
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

      # note that `force` and `dirty!` are for different things, but are
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
        client: StripeClient.active_client
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
  end
end
