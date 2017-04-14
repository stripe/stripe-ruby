require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class StripeObjectTest < Test::Unit::TestCase
    should "implement #==" do
      obj1 = Stripe::StripeObject.construct_from({ :id => 1, :foo => "bar" })
      obj2 = Stripe::StripeObject.construct_from({ :id => 1, :foo => "bar" })
      obj3 = Stripe::StripeObject.construct_from({ :id => 1, :foo => "rab" })

      assert obj1 == obj2
      refute obj1 == obj3
    end

    should "implement #deleted?" do
      obj = Stripe::StripeObject.construct_from({})
      refute obj.deleted?

      obj = Stripe::StripeObject.construct_from({ :deleted => false })
      refute obj.deleted?

      obj = Stripe::StripeObject.construct_from({ :deleted => true })
      assert obj.deleted?
    end

    should "implement #respond_to" do
      obj = Stripe::StripeObject.construct_from({ :id => 1, :foo => 'bar' })
      assert obj.respond_to?(:id)
      assert obj.respond_to?(:foo)
      assert !obj.respond_to?(:baz)
    end

    should "marshal be insensitive to strings vs. symbols when constructin" do
      obj = Stripe::StripeObject.construct_from({ :id => 1, 'name' => 'Stripe' })
      assert_equal 1, obj[:id]
      assert_equal 'Stripe', obj[:name]
    end

    should "marshal a stripe object correctly" do
      obj = Stripe::StripeObject.construct_from(
        { :id => 1, :name => 'Stripe' },
        {
          :api_key => 'apikey',
          # StripeClient is not serializable and is expected to be removed
          # when marshalling StripeObjects
          :client => StripeClient.active_client,
        }
      )
      m = Marshal.load(Marshal.dump(obj))
      assert_equal 1, m.id
      assert_equal 'Stripe', m.name
      expected_hash = {:api_key => 'apikey'}
      assert_equal expected_hash, m.instance_variable_get('@opts')
    end

    should "recursively call to_hash on its values" do
      # deep nested hash (when contained in an array) or StripeObject
      nested_hash = { :id => 7, :foo => 'bar' }
      nested = Stripe::StripeObject.construct_from(nested_hash)

      obj = Stripe::StripeObject.construct_from({
        :id     => 1,
        # simple hash that contains a StripeObject to help us test deep
        # recursion
        :nested => { :object => 'list', :data => [nested] },
        :list   => [nested]
      })

      expected_hash = {
        :id     => 1,
        :nested => { :object => 'list', :data => [nested_hash] },
        :list   => [nested_hash]
      }
      assert_equal expected_hash, obj.to_hash
    end

    should "assign question mark accessors for booleans" do
      obj = Stripe::StripeObject.construct_from({ :id => 1, :bool => true, :not_bool => 'bar' })
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
      obj = Stripe::StripeObject.construct_from({ :id => 1, :name => 'Stripe' })
      obj.update_attributes(:name => 'STRIPE')
      assert_equal "STRIPE", obj.name

      # unfortunately, we even assign unknown properties to duplicate the
      # behavior that we currently have via magic accessors with
      # method_missing
      obj.update_attributes(:unknown => 'foo')
      assert_equal "foo", obj.unknown
    end

    should "#update_attributes with a hash" do
      obj = Stripe::StripeObject.construct_from({})
      obj.update_attributes(:metadata => { :foo => 'bar' })
      assert_equal Stripe::StripeObject, obj.metadata.class
    end

    should "create accessors when #update_attributes is called" do
      obj = Stripe::StripeObject.construct_from({})
      assert_equal false, obj.send(:metaclass).method_defined?(:foo)
      obj.update_attributes(:foo => 'bar')
      assert_equal true, obj.send(:metaclass).method_defined?(:foo)
    end

    should "warn that #refresh_from is deprecated" do
      old_stderr = $stderr
      $stderr = StringIO.new
      begin
        obj = Stripe::StripeObject.construct_from({})
        obj.refresh_from({}, {})
        message = "NOTE: Stripe::StripeObject#refresh_from is " +
          "deprecated; use #update_attributes instead"
        assert_match Regexp.new(message), $stderr.string
      ensure
        $stderr = old_stderr
      end
    end

    should "pass opts down to children when initializing" do
      opts = { :custom => "opts" }

      # customer comes with a `sources` list that makes a convenient object to
      # perform tests on
      obj = Stripe::StripeObject.construct_from({
        sources: [
          {}
        ]
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
      obj.metadata = { :foo => "bar" }
      assert_equal({ :metadata => { :foo => "bar" } },
        obj.serialize_params)
    end

    should "#serialize_params on a basic object" do
      obj = Stripe::StripeObject.construct_from({ :foo => nil })
      obj.update_attributes(:foo => "bar")
      assert_equal({ :foo => "bar" }, obj.serialize_params)
    end

    should "#serialize_params on a more complex object" do
      obj = Stripe::StripeObject.construct_from({
        :foo => Stripe::StripeObject.construct_from({
          :bar => nil,
          :baz => nil,
        }),
      })
      obj.foo.bar = "newbar"
      assert_equal({ :foo => { :bar => "newbar" } },
        obj.serialize_params)
    end

    should "#serialize_params on an array" do
      obj = Stripe::StripeObject.construct_from({
        :foo => nil,
      })
      obj.foo = ["new-value"]
      assert_equal({ :foo => ["new-value"] },
        obj.serialize_params)
    end

    should "#serialize_params on an array that shortens" do
      obj = Stripe::StripeObject.construct_from({
        :foo => ["0-index", "1-index", "2-index"],
      })
      obj.foo = ["new-value"]
      assert_equal({ :foo => ["new-value"] },
        obj.serialize_params)
    end

    should "#serialize_params on an array that lengthens" do
      obj = Stripe::StripeObject.construct_from({
        :foo => ["0-index", "1-index", "2-index"],
      })
      obj.foo = ["new-value"] * 4
      assert_equal({ :foo => ["new-value"] * 4 },
        obj.serialize_params)
    end

    should "#serialize_params on an array of hashes" do
      obj = Stripe::StripeObject.construct_from({
        :foo => nil,
      })
      obj.foo = [
        Stripe::StripeObject.construct_from({
          :bar => nil
        })
      ]
      obj.foo[0].bar = "baz"
      assert_equal({ :foo => [{ :bar => "baz" }] },
        obj.serialize_params)
    end

    should "#serialize_params doesn't include unchanged values" do
      obj = Stripe::StripeObject.construct_from({ :foo => nil })
      assert_equal({}, obj.serialize_params)
    end

    should "#serialize_params on an array that is unchanged" do
      obj = Stripe::StripeObject.construct_from({
        :foo => ["0-index", "1-index", "2-index"],
      })
      obj.foo = ["0-index", "1-index", "2-index"]
      assert_equal({}, obj.serialize_params)
    end

    should "#serialize_params with a StripeObject" do
      obj = Stripe::StripeObject.construct_from({})

      # using an #update_attributes will end up converting a Hash into a
      # StripeObject
      obj.metadata =
        Stripe::StripeObject.construct_from({ :foo => 'bar' })

      serialized = obj.serialize_params
      assert_equal({ :foo => "bar" }, serialized[:metadata])
    end

    should "#serialize_params with a StripeObject that's been replaced" do
      obj = Stripe::StripeObject.construct_from({
        :metadata => Stripe::StripeObject.construct_from({ :bar => 'foo' })
      })

      # Here we replace the object wholesale which means that the client must
      # be able to blank out the values that were in the old object, but which
      # are no longer present in the new one.
      obj.metadata =
        Stripe::StripeObject.construct_from({ :baz => 'foo' })

      serialized = obj.serialize_params
      assert_equal({ :bar => "", :baz => 'foo' }, serialized[:metadata])
    end

    should "#serialize_params with an array of StripeObjects" do
      obj = Stripe::StripeObject.construct_from({})
      obj.metadata = [
        Stripe::StripeObject.construct_from({ :foo => 'bar' })
      ]

      serialized = obj.serialize_params
      assert_equal([{ :foo => "bar" }], serialized[:metadata])
    end

    should "#serialize_params and remove embedded APIResources" do
      obj = Stripe::StripeObject.construct_from({
        :customer => Customer.construct_from({})
      })

      serialized = obj.serialize_params
      assert_equal({}, serialized)
    end

    should "#serialize_params and remove embedded APIResources unless flagged with save_with_parent" do
      c = Customer.construct_from({})
      c.save_with_parent = true

      obj = Stripe::StripeObject.construct_from({
        :customer => c,
      })

      serialized = obj.serialize_params
      assert_equal({ :customer => {} }, serialized)
    end

    should "#serialize_params takes a force option" do
      obj = Stripe::StripeObject.construct_from({
        :id => 'id',
        :metadata => Stripe::StripeObject.construct_from({ :foo => 'bar' })
      })

      serialized = obj.serialize_params(:force => true)
      assert_equal({ :id => 'id', :metadata => { :foo => 'bar' } }, serialized)
    end

    should "#dirty! forces an object and its subobjects to be saved" do
      obj = Stripe::StripeObject.construct_from({
        :id => 'id',
        :metadata => Stripe::StripeObject.construct_from({ :foo => 'bar' })
      })

      # note that `force` and `dirty!` are for different things, but are
      # functionally equivalent
      obj.dirty!

      serialized = obj.serialize_params
      assert_equal({ :id => 'id', :metadata => { :foo => 'bar' } }, serialized)
    end

    should "#to_s will call to_s for all embedded stripe objects" do
      obj = Stripe::StripeObject.construct_from({
        id: 'id',
        #embeded list object
        refunds: Stripe::ListObject.construct_from({ data: [
          #embedded object in list
          Stripe::StripeObject.construct_from({
            id: 'id',
            #embedded object in an object in a list object
            metadata: Stripe::StripeObject.construct_from({
              foo: 'bar',
            })
          })
        ]}),
        # embeded stripe object
        metadata: Stripe::StripeObject.construct_from({
          foo: 'bar',
        })
      })
      expected = JSON.pretty_generate({
        id: 'id',
        refunds: {
          data: [
            {id: 'id', metadata: {foo: 'bar'}}
          ]
        },
        metadata: { foo: 'bar' }
      })

      assert_equal(expected, obj.to_s)
    end

    should "warn that .serialize_params is deprecated" do
      old_stderr = $stderr
      $stderr = StringIO.new
      begin
        obj = Stripe::StripeObject.construct_from({})
        Stripe::StripeObject.serialize_params(obj)
        message = "NOTE: Stripe::StripeObject.serialize_params is " +
          "deprecated; use #serialize_params instead"
        assert_match Regexp.new(message), $stderr.string
      ensure
        $stderr = old_stderr
      end
    end

    should "error on setting a property to an empty string" do
      obj = Stripe::StripeObject.construct_from({ :foo => 'bar' })
      e = assert_raises ArgumentError do
        obj.foo = ""
      end
      assert_match %r{\(object\).foo = nil}, e.message
    end
  end
end
