# -*- coding: utf-8 -*-
require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class ApiResourceTest < Test::Unit::TestCase
    class NestedTestAPIResource < Stripe::APIResource
      save_nested_resource :external_account
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
          :object => 'card'
        }
        assert_equal true, r.external_account.save_with_parent
      end
    end

    should "creating a new APIResource should not fetch over the network" do
      Stripe::Customer.new("someid")
      assert_not_requested :get, %r{#{Stripe.api_base}/.*}
    end

    should "creating a new APIResource from a hash should not fetch over the network" do
      Stripe::Customer.construct_from({
        :id => "somecustomer",
        :card => {:id => "somecard", :object => "card"},
        :object => "customer"
      })
      assert_not_requested :get, %r{#{Stripe.api_base}/.*}
    end

    should "setting an attribute should not cause a network request" do
      c = Stripe::Customer.new("test_customer");
      c.card = {:id => "somecard", :object => "card"}
      assert_not_requested :get, %r{#{Stripe.api_base}/.*}
      assert_not_requested :post, %r{#{Stripe.api_base}/.*}
    end

    should "accessing id should not issue a fetch" do
      c = Stripe::Customer.new("test_customer")
      c.id
      assert_not_requested :get, %r{#{Stripe.api_base}/.*}
    end

    should "not specifying api credentials should raise an exception" do
      Stripe.api_key = nil
      assert_raises Stripe::AuthenticationError do
        Stripe::Customer.new("test_customer").refresh
      end
    end

    should "using a nil api key should raise an exception" do
      assert_raises TypeError do
        Stripe::Customer.list({}, nil)
      end
      assert_raises TypeError do
        Stripe::Customer.list({}, { :api_key => nil })
      end
    end

    should "specifying api credentials containing whitespace should raise an exception" do
      Stripe.api_key = "key "
      assert_raises Stripe::AuthenticationError do
        Stripe::Customer.new("test_customer").refresh
      end
    end

    should "send expand on fetch properly" do
      stub_request(:get, "#{Stripe.api_base}/v1/charges/ch_test_charge").
        with(query: { "expand" => ["customer"] }).
        to_return(body: JSON.generate(API_FIXTURES.fetch(:charge)))

      Stripe::Charge.retrieve({:id => 'ch_test_charge', :expand => [:customer]})
    end

    should "preserve expand across refreshes" do
      stub_request(:get, "#{Stripe.api_base}/v1/charges/ch_test_charge").
        with(query: { "expand" => ["customer"] }).
        to_return(body: JSON.generate(API_FIXTURES.fetch(:charge)))

      ch = Stripe::Charge.retrieve({:id => 'ch_test_charge', :expand => :customer})
      ch.refresh
    end

    should "send expand when fetching through ListObject" do
      stub_request(:get, "#{Stripe.api_base}/v1/customers/c_test_customer").
        to_return(body: JSON.generate(API_FIXTURES.fetch(:customer)))

      stub_request(:get, "#{Stripe.api_base}/v1/customers/c_test_customer/sources/cc_test_card").
        with(query: { "expand" => ["customer"] }).
        to_return(body: JSON.generate(API_FIXTURES.fetch(:customer)))

      customer = Stripe::Customer.retrieve('c_test_customer')
      customer.sources.retrieve({:id => 'cc_test_card', :expand => :customer})
    end

    context "when specifying per-object credentials" do
      context "with no global API key set" do
        should "use the per-object credential when creating" do
          stub_request(:post, "#{Stripe.api_base}/v1/charges").
            with(headers: {"Authorization" => "Bearer sk_test_local"}).
            to_return(body: JSON.generate(API_FIXTURES.fetch(:charge)))

          Stripe::Charge.create({:card => {:number => '4242424242424242'}},
            'sk_test_local')
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
          stub_request(:post, "#{Stripe.api_base}/v1/charges").
            with(headers: {"Authorization" => "Bearer local"}).
            to_return(body: JSON.generate(API_FIXTURES.fetch(:charge)))

          Stripe::Charge.create({:card => {:number => '4242424242424242'}},
            'local')
        end

        should "use the per-object credential when retrieving and making other calls" do
          stub_request(:get, "#{Stripe.api_base}/v1/charges/ch_test_charge").
            with(headers: {"Authorization" => "Bearer local"}).
            to_return(body: JSON.generate(API_FIXTURES.fetch(:charge)))
          stub_request(:post, "#{Stripe.api_base}/v1/charges/ch_test_charge/refunds").
            with(headers: {"Authorization" => "Bearer local"}).
            to_return(body: JSON.generate(API_FIXTURES.fetch(:refund)))

          ch = Stripe::Charge.retrieve('ch_test_charge', 'local')
          ch.refunds.create
        end
      end
    end

    context "with valid credentials" do
      should "urlencode values in GET params" do
        stub_request(:get, "#{Stripe.api_base}/v1/charges").
          with(query: { customer: "test customer" }).
          to_return(body: JSON.generate({
            data: [API_FIXTURES.fetch(:charge)]
          }))
        charges = Stripe::Charge.list(:customer => 'test customer').data
        assert charges.kind_of? Array
      end

      should "construct URL properly with base query parameters" do
        stub_request(:get, "#{Stripe.api_base}/v1/invoices").
          with(query: { customer: "test_customer" }).
          to_return(body: JSON.generate({
            data: [API_FIXTURES.fetch(:invoice)],
            url: "/v1/invoices"
          }))
        invoices = Stripe::Invoice.list(:customer => 'test_customer')

        stub_request(:get, "#{Stripe.api_base}/v1/invoices").
          with(query: { customer: "test_customer", paid: "true" }).
          to_return(body: JSON.generate({
            data: [API_FIXTURES.fetch(:invoice)],
            url: "/v1/invoices"
          }))
        invoices.list(:paid => true)
      end

      should "setting a nil value for a param should exclude that param from the request" do
        stub_request(:get, "#{Stripe.api_base}/v1/charges").
          with(query: { offset: 5, sad: false }).
          to_return(body: JSON.generate({ :count => 1, :data => [API_FIXTURES.fetch(:charge)] }))
        Stripe::Charge.list(:count => nil, :offset => 5, :sad => false)

        stub_request(:post, "#{Stripe.api_base}/v1/charges").
          with(body: { 'amount' => '50', 'currency' => 'usd' }).
          to_return(body: JSON.generate({ :count => 1, :data => [API_FIXTURES.fetch(:charge)] }))
        Stripe::Charge.create(:amount => 50, :currency => 'usd', :card => { :number => nil })
      end

      should "not trigger a warning if a known opt, such as idempotency_key, is in opts" do
        stub_request(:post, "#{Stripe.api_base}/v1/charges").
          to_return(body: JSON.generate(API_FIXTURES.fetch(:charge)))
        old_stderr = $stderr
        $stderr = StringIO.new
        begin
          Stripe::Charge.create({ :amount => 100, :currency => 'usd', :card => 'sc_token' }, { :idempotency_key => '12345' })
          assert $stderr.string.empty?
        ensure
          $stderr = old_stderr
        end
      end

      should "trigger a warning if a known opt, such as idempotency_key, is in params" do
        stub_request(:post, "#{Stripe.api_base}/v1/charges").
          to_return(body: JSON.generate(API_FIXTURES.fetch(:charge)))
        old_stderr = $stderr
        $stderr = StringIO.new
        begin
          Stripe::Charge.create({ :amount => 100, :currency => 'usd', :card => 'sc_token', :idempotency_key => '12345' })
          assert_match Regexp.new('WARNING:'), $stderr.string
        ensure
          $stderr = old_stderr
        end
      end

      should "requesting with a unicode ID should result in a request" do
        stub_request(:get, "#{Stripe.api_base}/v1/customers/%E2%98%83").
          to_return(body: JSON.generate(make_missing_id_error), status: 404)
        c = Stripe::Customer.new("☃")
        assert_raises(Stripe::InvalidRequestError) { c.refresh }
      end

      should "requesting with no ID should result in an InvalidRequestError with no request" do
        c = Stripe::Customer.new
        assert_raises(Stripe::InvalidRequestError) { c.refresh }
      end

      should "making a GET request with parameters should have a query string and no body" do
        stub_request(:get, "#{Stripe.api_base}/v1/charges").
          with(query: { limit: 1 }).
          to_return(body: JSON.generate({ :data => [API_FIXTURES.fetch(:charge)] }))
        Stripe::Charge.list({ :limit => 1 })
      end

      should "making a POST request with parameters should have a body and no query string" do
        stub_request(:post, "#{Stripe.api_base}/v1/charges").
          with(body: {'amount' => '100', 'currency' => 'usd', 'card' => 'sc_token'}).
          to_return(body: JSON.generate(API_FIXTURES.fetch(:charge)))
        Stripe::Charge.create({ :amount => 100, :currency => 'usd', :card => 'sc_token' })
      end

      should "loading an object should issue a GET request" do
        stub_request(:get, "#{Stripe.api_base}/v1/customers/test_customer").
          to_return(body: JSON.generate(API_FIXTURES.fetch(:customer)))
        c = Stripe::Customer.new("test_customer")
        c.refresh
      end

      should "using array accessors should be the same as the method interface" do
        stub_request(:get, "#{Stripe.api_base}/v1/customers/test_customer").
          to_return(body: JSON.generate(API_FIXTURES.fetch(:customer)))
        c = Stripe::Customer.new("test_customer")
        c.refresh
        assert_equal c.created, c[:created]
        assert_equal c.created, c['created']
        c['created'] = 12345
        assert_equal c.created, 12345
      end

      should "accessing a property other than id or parent on an unfetched object should fetch it" do
        stub_request(:get, "#{Stripe.api_base}/v1/charges").
          with(query: { customer: "test_customer" }).
          to_return(body: JSON.generate(API_FIXTURES.fetch(:customer)))
        c = Stripe::Customer.new("test_customer")
        c.charges
      end

      should "updating an object should issue a POST request with only the changed properties" do
        stub_request(:post, "#{Stripe.api_base}/v1/customers/c_test_customer").
          with(body: { 'description' => 'another_mn' }).
          to_return(body: JSON.generate(API_FIXTURES.fetch(:customer)))
        c = Stripe::Customer.construct_from(API_FIXTURES.fetch(:customer))
        c.description = "another_mn"
        c.save
      end

      should "updating should merge in returned properties" do
        stub_request(:post, "#{Stripe.api_base}/v1/customers/c_test_customer").
          with(body: { 'description' => 'another_mn' }).
          to_return(body: JSON.generate(API_FIXTURES.fetch(:customer)))
        c = Stripe::Customer.new("c_test_customer")
        c.description = "another_mn"
        c.save
        assert_equal false, c.livemode
      end

      should "updating should fail if api_key is overwritten with nil" do
        c = Stripe::Customer.new
        assert_raises TypeError do
          c.save({}, { :api_key => nil })
        end
      end

      should "updating should use the supplied api_key" do
        stub_request(:post, "#{Stripe.api_base}/v1/customers").
          with(headers: {"Authorization" => "Bearer sk_test_local"}).
          to_return(body: JSON.generate(API_FIXTURES.fetch(:customer)))
        c = Stripe::Customer.new
        c.save({}, { :api_key => 'sk_test_local' })
        assert_equal false, c.livemode
      end

      should "deleting should send no props and result in an object that has no props other deleted" do
        stub_request(:delete, "#{Stripe.api_base}/v1/customers/c_test_customer").
          to_return(body: JSON.generate({ "id" => "test_customer", "deleted" => true }))
        c = Stripe::Customer.construct_from(API_FIXTURES.fetch(:customer))
        c.delete
      end

      should "loading all of an APIResource should return an array of recursively instantiated objects" do
        stub_request(:get, "#{Stripe.api_base}/v1/charges").
          to_return(body: JSON.generate({
            data: [API_FIXTURES.fetch(:charge)]
          }))
        charges = Stripe::Charge.list.data
        assert charges.kind_of? Array
        assert charges[0].kind_of? Stripe::Charge
        assert charges[0].source.kind_of?(Stripe::StripeObject)
      end

      should "passing in a stripe_account header should pass it through on call" do
        stub_request(:get, "#{Stripe.api_base}/v1/customers/c_test_customer").
          with(headers: {"Stripe-Account" => "acct_abc"}).
          to_return(body: JSON.generate(API_FIXTURES.fetch(:customer)))
        Stripe::Customer.retrieve("c_test_customer", {:stripe_account => 'acct_abc'})
      end

      should "passing in a stripe_account header should pass it through on save" do
        stub_request(:get, "#{Stripe.api_base}/v1/customers/c_test_customer").
          with(headers: {"Stripe-Account" => "acct_abc"}).
          to_return(body: JSON.generate(API_FIXTURES.fetch(:customer)))
        c = Stripe::Customer.retrieve("c_test_customer", {:stripe_account => 'acct_abc'})

        stub_request(:post, "#{Stripe.api_base}/v1/customers/c_test_customer").
          with(headers: {"Stripe-Account" => "acct_abc"}).
          to_return(body: JSON.generate(API_FIXTURES.fetch(:customer)))
        c.description = 'FOO'
        c.save
      end

      should 'add key to nested objects' do
        acct = Stripe::Account.construct_from({
          :id => 'myid',
          :legal_entity => {
            :size => 'l',
            :score => 4,
            :height => 10
          }
        })

        stub_request(:post, "#{Stripe.api_base}/v1/accounts/myid").
          with(body: { legal_entity: { first_name: "Bob" } }).
          to_return(body: JSON.generate({ "id" => "myid" }))

        acct.legal_entity.first_name = 'Bob'
        acct.save
      end

      should 'save nothing if nothing changes' do
        acct = Stripe::Account.construct_from({
          :id => 'acct_id',
          :metadata => {
            :key => 'value'
          }
        })

        stub_request(:post, "#{Stripe.api_base}/v1/accounts/acct_id").
          with(body: {}).
          to_return(body: JSON.generate({ "id" => "acct_id" }))

        acct.save
      end

      should 'not save nested API resources' do
        ch = Stripe::Charge.construct_from({
          :id => 'ch_id',
          :customer => {
            :object => 'customer',
            :id => 'customer_id'
          }
        })

        stub_request(:post, "#{Stripe.api_base}/v1/charges/ch_id").
          with(body: {}).
          to_return(body: JSON.generate({ "id" => "ch_id" }))

        ch.customer.description = 'Bob'
        ch.save
      end

      should 'correctly handle replaced nested objects' do
        acct = Stripe::Account.construct_from({
          :id => 'myid',
          :legal_entity => {
            :last_name => 'Smith',
            :address => {
              :line1 => "test",
              :city => "San Francisco"
            }
          }
        })

        stub_request(:post, "#{Stripe.api_base}/v1/accounts/myid").
          with(body: { legal_entity: { address: { line1: "Test2", city: "" } } }).
          to_return(body: JSON.generate({ "id" => "my_id" }))

        acct.legal_entity.address = {:line1 => 'Test2'}
        acct.save
      end

      should 'correctly handle array setting' do
        acct = Stripe::Account.construct_from({
          :id => 'myid',
          :legal_entity => {}
        })

        stub_request(:post, "#{Stripe.api_base}/v1/accounts/myid").
          with(body: { legal_entity: { additional_owners: [{ first_name: "Bob" }] } }).
          to_return(body: JSON.generate({ "id" => "myid" }))

        acct.legal_entity.additional_owners = [{:first_name => 'Bob'}]
        acct.save
      end

      should 'correctly handle array insertion' do
        acct = Stripe::Account.construct_from({
          :id => 'myid',
          :legal_entity => {
            :additional_owners => []
          }
        })

        # Note that this isn't a perfect check because we're using webmock's
        # data decoding, which isn't aware of the Stripe array encoding that we
        # use here.
        stub_request(:post, "#{Stripe.api_base}/v1/accounts/myid").
          with(body: { legal_entity: { additional_owners: [{ first_name: "Bob" }] } }).
          to_return(body: JSON.generate({ "id" => "myid" }))

        acct.legal_entity.additional_owners << {:first_name => 'Bob'}
        acct.save
      end

      should 'correctly handle array updates' do
        acct = Stripe::Account.construct_from({
          :id => 'myid',
          :legal_entity => {
            :additional_owners => [{:first_name => 'Bob'}, {:first_name => 'Jane'}]
          }
        })

        # Note that this isn't a perfect check because we're using webmock's
        # data decoding, which isn't aware of the Stripe array encoding that we
        # use here.
        stub_request(:post, "#{Stripe.api_base}/v1/accounts/myid").
          with(body: { legal_entity: { additional_owners: [{ first_name: "Janet" }] } }).
          to_return(body: JSON.generate({ "id" => "myid" }))

        acct.legal_entity.additional_owners[1].first_name = 'Janet'
        acct.save
      end

      should 'correctly handle array noops' do
        acct = Stripe::Account.construct_from({
          :id => 'myid',
          :legal_entity => {
            :additional_owners => [{:first_name => 'Bob'}]
          },
          :currencies_supported => ['usd', 'cad']
        })

        stub_request(:post, "#{Stripe.api_base}/v1/accounts/myid").
          with(body: {}).
          to_return(body: JSON.generate({ "id" => "myid" }))

        acct.save
      end

      should 'correctly handle hash noops' do
        acct = Stripe::Account.construct_from({
          :id => 'myid',
          :legal_entity => {
            :address => {:line1 => '1 Two Three'}
          }
        })

        stub_request(:post, "#{Stripe.api_base}/v1/accounts/myid").
          with(body: {}).
          to_return(body: JSON.generate({ "id" => "myid" }))

        acct.save
      end

      should 'should create a new resource when an object without an id is saved' do
        account = Stripe::Account.construct_from({
          :id => nil,
          :display_name => nil,
        })

        stub_request(:post, "#{Stripe.api_base}/v1/accounts").
          with(body: { display_name: "stripe" }).
          to_return(body: JSON.generate({ "id" => "acct_123" }))

        account.display_name = 'stripe'
        account.save
      end

      should 'set attributes as part of save' do
        account = Stripe::Account.construct_from({
          :id => nil,
          :display_name => nil,
        })

        stub_request(:post, "#{Stripe.api_base}/v1/accounts").
          with(body: { display_name: "stripe", metadata: { key: "value" } }).
          to_return(body: JSON.generate({ "id" => "acct_123" }))

        account.save(:display_name => 'stripe', :metadata => {:key => 'value' })
      end
    end
  end
end
