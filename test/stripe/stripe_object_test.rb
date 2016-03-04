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
      obj = Stripe::StripeObject.construct_from({ :id => 1, :name => 'Stripe' }, {:api_key => 'apikey'})
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
      customer = Stripe::Customer.construct_from(make_customer, opts)

      source = customer.sources.first
      # Pulling `@opts` as an instance variable here is not ideal, but it's
      # important enough argument that the test here is worth it. we should
      # consider exposing it publicly on a future pull (and possibly renaming
      # it to something more useful).
      assert_equal opts, source.instance_variable_get(:@opts)
    end

    should "#serialize_params on an empty object" do
      obj = Stripe::StripeObject.construct_from({})
      assert_equal({}, Stripe::StripeObject.serialize_params(obj))
    end

    should "#serialize_params on a new object with a subobject" do
      obj = Stripe::StripeObject.new
      obj.metadata = { :foo => "bar" }
      assert_equal({ :metadata => { :foo => "bar" } },
        Stripe::StripeObject.serialize_params(obj))
    end

    should "#serialize_params on a basic object" do
      obj = Stripe::StripeObject.construct_from({ :foo => nil })
      obj.update_attributes(:foo => "bar")
      assert_equal({ :foo => "bar" }, Stripe::StripeObject.serialize_params(obj))
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
        Stripe::StripeObject.serialize_params(obj))
    end

    should "#serialize_params on an array" do
      obj = Stripe::StripeObject.construct_from({
        :foo => nil,
      })
      obj.foo = ["new-value"]
      assert_equal({ :foo => ["new-value"] },
        Stripe::StripeObject.serialize_params(obj))
    end

    should "#serialize_params on an array that shortens" do
      obj = Stripe::StripeObject.construct_from({
        :foo => ["0-index", "1-index", "2-index"],
      })
      obj.foo = ["new-value"]
      assert_equal({ :foo => ["new-value"] },
        Stripe::StripeObject.serialize_params(obj))
    end

    should "#serialize_params on an array that lengthens" do
      obj = Stripe::StripeObject.construct_from({
        :foo => ["0-index", "1-index", "2-index"],
      })
      obj.foo = ["new-value"] * 4
      assert_equal({ :foo => ["new-value"] * 4 },
        Stripe::StripeObject.serialize_params(obj))
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
        Stripe::StripeObject.serialize_params(obj))
    end

    should "#serialize_params doesn't include unchanged values" do
      obj = Stripe::StripeObject.construct_from({ :foo => nil })
      assert_equal({}, Stripe::StripeObject.serialize_params(obj))
    end

    should "#serialize_params on an array that is unchanged" do
      obj = Stripe::StripeObject.construct_from({
        :foo => ["0-index", "1-index", "2-index"],
      })
      obj.foo = ["0-index", "1-index", "2-index"]
      assert_equal({}, Stripe::StripeObject.serialize_params(obj))
    end

    should "#serialize_params with a StripeObject" do
      obj = Stripe::StripeObject.construct_from({})

      # using an #update_attributes will end up converting a Hash into a
      # StripeObject
      obj.metadata =
        Stripe::StripeObject.construct_from({ :foo => 'bar' })

      serialized = Stripe::StripeObject.serialize_params(obj)
      assert_equal({ :foo => "bar" }, serialized[:metadata])
    end
  end
end
