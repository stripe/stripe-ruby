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

    should "specifying invalid api credentials should raise an exception" do
      Stripe.api_key = "invalid"
      assert_raises Stripe::AuthenticationError do
        stub_request(:get, "#{Stripe.api_base}/v1/customers/failing_customer").
          to_return(body: JSON.generate(make_invalid_api_key_error), status: 401)
        Stripe::Customer.retrieve("failing_customer")
      end
    end

    should "AuthenticationErrors should have an http status, http body, and JSON body" do
      Stripe.api_key = "invalid"
      begin
        stub_request(:get, "#{Stripe.api_base}/v1/customers/failing_customer").
          to_return(body: JSON.generate(make_invalid_api_key_error), status: 401)
        Stripe::Customer.retrieve("failing_customer")
      rescue Stripe::AuthenticationError => e
        assert_equal(401, e.http_status)
        assert_equal(true, !!e.http_body)
        assert_equal(true, !!e.json_body[:error][:message])
        assert_equal(make_invalid_api_key_error[:error][:message], e.json_body[:error][:message])
      end
    end

    should "send expand on fetch properly" do
      stub_request(:get, "#{Stripe.api_base}/v1/charges/ch_test_charge").
        with(query: { "expand" => ["customer"] }).
        to_return(body: JSON.generate(make_charge))

      Stripe::Charge.retrieve({:id => 'ch_test_charge', :expand => [:customer]})
    end

    should "preserve expand across refreshes" do
      stub_request(:get, "#{Stripe.api_base}/v1/charges/ch_test_charge").
        with(query: { "expand" => ["customer"] }).
        to_return(body: JSON.generate(make_charge))

      ch = Stripe::Charge.retrieve({:id => 'ch_test_charge', :expand => [:customer]})
      ch.refresh
    end

    should "send expand when fetching through ListObject" do
      stub_request(:get, "#{Stripe.api_base}/v1/customers/c_test_customer").
        to_return(body: JSON.generate(make_customer))

      stub_request(:get, "#{Stripe.api_base}/v1/customers/c_test_customer/sources/cc_test_card").
        with(query: { "expand" => ["customer"] }).
        to_return(body: JSON.generate(make_customer))

      customer = Stripe::Customer.retrieve('c_test_customer')
      customer.sources.retrieve({:id => 'cc_test_card', :expand => [:customer]})
    end

    should "send stripe account as header when set" do
      stripe_account = "acct_0000"
      stub_request(:post, "#{Stripe.api_base}/v1/charges").
        with(headers: {"Stripe-Account" => stripe_account}).
        to_return(body: JSON.generate(make_customer))

      Stripe::Charge.create({:card => {:number => '4242424242424242'}},
                            {:stripe_account => stripe_account, :api_key => 'sk_test_local'})
    end

    should "not send stripe account as header when not set" do
      stub_request(:post, "#{Stripe.api_base}/v1/charges").
        with { |req|
          req.headers["Stripe-Account"].nil?
        }.to_return(body: JSON.generate(make_charge))

      Stripe::Charge.create({:card => {:number => '4242424242424242'}},
        'sk_test_local')
    end

    should "handle error response with empty body" do
      stub_request(:post, "#{Stripe.api_base}/v1/charges").
        to_return(body: '', status: 500)

      e = assert_raises Stripe::APIError do
        Stripe::Charge.create
      end

      assert_equal 'Invalid response object from API: "" (HTTP response code was 500)', e.message
    end

    should "handle error response with non-object error value" do
      stub_request(:post, "#{Stripe.api_base}/v1/charges").
        to_return(body: JSON.generate({ error: "foo" }), status: 500)

      e = assert_raises Stripe::APIError do
        Stripe::Charge.create
      end

      assert_equal 'Invalid response object from API: "{\"error\":\"foo\"}" (HTTP response code was 500)', e.message
    end

    should "have default open and read timeouts" do
      assert_equal Stripe.open_timeout, 30
      assert_equal Stripe.read_timeout, 80
    end

    context "when specifying per-object credentials" do
      context "with no global API key set" do
        should "use the per-object credential when creating" do
          stub_request(:post, "#{Stripe.api_base}/v1/charges").
            with(headers: {"Authorization" => "Bearer sk_test_local"}).
            to_return(body: JSON.generate(make_charge))

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
            to_return(body: JSON.generate(make_charge))

          Stripe::Charge.create({:card => {:number => '4242424242424242'}},
            'local')
        end

        should "use the per-object credential when retrieving and making other calls" do
          stub_request(:get, "#{Stripe.api_base}/v1/charges/ch_test_charge").
            with(headers: {"Authorization" => "Bearer local"}).
            to_return(body: JSON.generate(make_charge))
          stub_request(:post, "#{Stripe.api_base}/v1/charges/ch_test_charge/refunds").
            with(headers: {"Authorization" => "Bearer local"}).
            to_return(body: JSON.generate(make_refund))

          ch = Stripe::Charge.retrieve('ch_test_charge', 'local')
          ch.refunds.create
        end
      end
    end

    context "with valid credentials" do
      should "send along the idempotency-key header" do
        stub_request(:post, "#{Stripe.api_base}/v1/charges").
          with(headers: {"Idempotency-Key" => "bar"}).
          to_return(body: JSON.generate(make_charge))

        Stripe::Charge.create({:card => {:number => '4242424242424242'}}, {
          :idempotency_key => 'bar',
          :api_key => 'local',
        })
      end

      should "urlencode values in GET params" do
        stub_request(:get, "#{Stripe.api_base}/v1/charges").
          with(query: { customer: "test customer" }).
          to_return(body: JSON.generate(make_charge_array))
        charges = Stripe::Charge.list(:customer => 'test customer').data
        assert charges.kind_of? Array
      end

      should "construct URL properly with base query parameters" do
        response = JSON.generate(make_invoice_customer_array)
        stub_request(:get, "#{Stripe.api_base}/v1/invoices").
          with(query: { customer: "test_customer" }).
          to_return(body: response)
        invoices = Stripe::Invoice.list(:customer => 'test_customer')

        stub_request(:get, "#{Stripe.api_base}/v1/invoices").
          with(query: { customer: "test_customer", paid: "true" }).
          to_return(body: response)
        invoices.list(:paid => true)
      end

      should "a 400 should give an InvalidRequestError with http status, body, and JSON body" do
        stub_request(:post, "#{Stripe.api_base}/v1/charges").
          to_return(body: JSON.generate(make_missing_id_error), status: 400)
        begin
          Stripe::Charge.create
        rescue Stripe::InvalidRequestError => e
          assert_equal(400, e.http_status)
          assert_equal(true, !!e.http_body)
          assert_equal(true, e.json_body.kind_of?(Hash))
        end
      end

      should "a 401 should give an AuthenticationError with http status, body, and JSON body" do
        stub_request(:post, "#{Stripe.api_base}/v1/charges").
          to_return(body: JSON.generate(make_missing_id_error), status: 401)
        begin
          Stripe::Charge.create
        rescue Stripe::AuthenticationError => e
          assert_equal(401, e.http_status)
          assert_equal(true, !!e.http_body)
          assert_equal(true, e.json_body.kind_of?(Hash))
        end
      end

      should "a 402 should give a CardError with http status, body, and JSON body" do
        stub_request(:post, "#{Stripe.api_base}/v1/charges").
          to_return(body: JSON.generate(make_missing_id_error), status: 402)
        begin
          Stripe::Charge.create
        rescue Stripe::CardError => e
          assert_equal(402, e.http_status)
          assert_equal(true, !!e.http_body)
          assert_equal(true, e.json_body.kind_of?(Hash))
        end
      end

      should "a 403 should give a PermissionError with http status, body, and JSON body" do
        stub_request(:post, "#{Stripe.api_base}/v1/charges").
          to_return(body: JSON.generate(make_missing_id_error), status: 403)
        begin
          Stripe::Charge.create
        rescue Stripe::PermissionError => e
          assert_equal(403, e.http_status)
          assert_equal(true, !!e.http_body)
          assert_equal(true, e.json_body.kind_of?(Hash))
        end
      end

      should "a 404 should give an InvalidRequestError with http status, body, and JSON body" do
        stub_request(:post, "#{Stripe.api_base}/v1/charges").
          to_return(body: JSON.generate(make_missing_id_error), status: 404)
        begin
          Stripe::Charge.create
        rescue Stripe::InvalidRequestError => e
          assert_equal(404, e.http_status)
          assert_equal(true, !!e.http_body)
          assert_equal(true, e.json_body.kind_of?(Hash))
        end
      end

      should "a 429 should give a RateLimitError with http status, body, and JSON body" do
        error = make_rate_limit_error
        response = make_response(error, 429)
        @mock.expects(:get).once.raises(
          Faraday::ClientError.new(error[:error][:message], response)
        )
        begin
          Stripe::Charge.create
        rescue Stripe::RateLimitError => e
          assert_equal(429, e.http_status)
          assert_equal(true, !!e.http_body)
          assert_equal(true, e.json_body.kind_of?(Hash))
        end
      end

      should "setting a nil value for a param should exclude that param from the request" do
        stub_request(:get, "#{Stripe.api_base}/v1/charges").
          with(query: { offset: 5, sad: false }).
          to_return(body: JSON.generate({ :count => 1, :data => [make_charge] }))
        Stripe::Charge.list(:count => nil, :offset => 5, :sad => false)

        stub_request(:post, "#{Stripe.api_base}/v1/charges").
          with(body: {  'amount' => '50', 'currency' => 'usd' }).
          to_return(body: JSON.generate({ :count => 1, :data => [make_charge] }))
        Stripe::Charge.create(:amount => 50, :currency => 'usd', :card => { :number => nil })
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
          to_return(body: JSON.generate({ :data => [make_charge] }))
        Stripe::Charge.list({ :limit => 1 })
      end

      should "making a POST request with parameters should have a body and no query string" do
        stub_request(:post, "#{Stripe.api_base}/v1/charges").
          with(body: {'amount' => '100', 'currency' => 'usd', 'card' => 'sc_token'}).
          to_return(body: JSON.generate(make_charge))
        Stripe::Charge.create({ :amount => 100, :currency => 'usd', :card => 'sc_token' })
      end

      should "loading an object should issue a GET request" do
        stub_request(:get, "#{Stripe.api_base}/v1/customers/test_customer").
          to_return(body: JSON.generate(make_customer))
        c = Stripe::Customer.new("test_customer")
        c.refresh
      end

      should "set response on success" do
        @mock.expects(:post).once.returns(make_response(make_charge, 200))
        charge = Stripe::Charge.create(:amount => 50, :currency => 'usd', :card => { :number => nil })
        assert_equal 200, charge.response.http_status
      end

      should "using array accessors should be the same as the method interface" do
        stub_request(:get, "#{Stripe.api_base}/v1/customers/test_customer").
          to_return(body: JSON.generate(make_customer))
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
          to_return(body: JSON.generate(make_customer))
        c = Stripe::Customer.new("test_customer")
        c.charges
      end

      should "updating an object should issue a POST request with only the changed properties" do
        stub_request(:post, "#{Stripe.api_base}/v1/customers/c_test_customer").
          with(body: { 'description' => 'another_mn' }).
          to_return(body: JSON.generate(make_customer))
        c = Stripe::Customer.construct_from(make_customer)
        c.description = "another_mn"
        c.save
      end

      should "updating should merge in returned properties" do
        stub_request(:post, "#{Stripe.api_base}/v1/customers/c_test_customer").
          with(body: { 'description' => 'another_mn' }).
          to_return(body: JSON.generate(make_customer))
        c = Stripe::Customer.new("c_test_customer")
        c.description = "another_mn"
        c.save
        assert_equal false, c.livemode
      end

      should "updating should send along the idempotency-key header" do
        stub_request(:post, "#{Stripe.api_base}/v1/customers").
          with(headers: {"Idempotency-Key" => "bar"}).
          to_return(body: JSON.generate(make_customer))
        c = Stripe::Customer.new
        c.save({}, { :idempotency_key => 'bar' })
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
          to_return(body: JSON.generate(make_customer))
        c = Stripe::Customer.new
        c.save({}, { :api_key => 'sk_test_local' })
        assert_equal false, c.livemode
      end

      should "deleting should send no props and result in an object that has no props other deleted" do
        stub_request(:delete, "#{Stripe.api_base}/v1/customers/c_test_customer").
          to_return(body: JSON.generate({ "id" => "test_customer", "deleted" => true }))
        c = Stripe::Customer.construct_from(make_customer)
        c.delete
        assert_equal true, c.deleted

        assert_raises NoMethodError do
          c.livemode
        end
      end

      should "loading an object with properties that have specific types should instantiate those classes" do
        stub_request(:get, "#{Stripe.api_base}/v1/charges/test_charge").
          to_return(body: JSON.generate(make_charge))
        c = Stripe::Charge.retrieve("test_charge")
        assert c.card.kind_of?(Stripe::StripeObject) && c.card.object == 'card'
      end

      should "loading all of an APIResource should return an array of recursively instantiated objects" do
        stub_request(:get, "#{Stripe.api_base}/v1/charges").
          to_return(body: JSON.generate(make_charge_array))
        c = Stripe::Charge.list.data
        assert c.kind_of? Array
        assert c[0].kind_of? Stripe::Charge
        assert c[0].card.kind_of?(Stripe::StripeObject) && c[0].card.object == 'card'
      end

      should "passing in a stripe_account header should pass it through on call" do
        stub_request(:get, "#{Stripe.api_base}/v1/customers/c_test_customer").
          with(headers: {"Stripe-Account" => "acct_abc"}).
          to_return(body: JSON.generate(make_customer))
        Stripe::Customer.retrieve("c_test_customer", {:stripe_account => 'acct_abc'})
      end

      should "passing in a stripe_account header should pass it through on save" do
        stub_request(:get, "#{Stripe.api_base}/v1/customers/c_test_customer").
          with(headers: {"Stripe-Account" => "acct_abc"}).
          to_return(body: JSON.generate(make_customer))
        c = Stripe::Customer.retrieve("c_test_customer", {:stripe_account => 'acct_abc'})

        stub_request(:post, "#{Stripe.api_base}/v1/customers/c_test_customer").
          with(headers: {"Stripe-Account" => "acct_abc"}).
          to_return(body: JSON.generate(make_customer))
        c.description = 'FOO'
        c.save
      end

      context "error checking" do

        should "404s should raise an InvalidRequestError" do
          stub_request(:get, "#{Stripe.api_base}/v1/customers/test_customer").
            to_return(body: JSON.generate(make_missing_id_error), status: 404)

          rescued = false
          begin
            Stripe::Customer.new("test_customer").refresh
            assert false #shouldn't get here either
          rescue Stripe::InvalidRequestError => e # we don't use assert_raises because we want to examine e
            rescued = true
            assert e.kind_of? Stripe::InvalidRequestError
            assert_equal "id", e.param
            assert_equal "Missing id", e.message
          end

          assert_equal true, rescued
        end

        should "5XXs should raise an APIError" do
          stub_request(:get, "#{Stripe.api_base}/v1/customers/test_customer").
            to_return(body: JSON.generate(make_api_error), status: 500)

          rescued = false
          begin
            Stripe::Customer.new("test_customer").refresh
            assert false #shouldn't get here either
          rescue Stripe::APIError => e # we don't use assert_raises because we want to examine e
            rescued = true
            assert e.kind_of? Stripe::APIError
          end

          assert_equal true, rescued
        end

        should "402s should raise a CardError" do
          stub_request(:get, "#{Stripe.api_base}/v1/customers/test_customer").
            to_return(body: JSON.generate(make_invalid_exp_year_error), status: 402)

          rescued = false
          begin
            Stripe::Customer.new("test_customer").refresh
            assert false #shouldn't get here either
          rescue Stripe::CardError => e # we don't use assert_raises because we want to examine e
            rescued = true
            assert e.kind_of? Stripe::CardError
            assert_equal "invalid_expiry_year", e.code
            assert_equal "exp_year", e.param
            assert_equal "Your card's expiration year is invalid", e.message
          end

          assert_equal true, rescued
        end
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

    context "with retries" do
      setup do
        Stripe.stubs(:max_network_retries).returns(2)
      end

      should 'retry failed network requests if specified and raise if error persists' do
        Stripe.expects(:sleep_time).at_least_once.returns(0)
        stub_request(:post, "#{Stripe.api_base}/v1/charges").
          to_raise(Errno::ECONNREFUSED.new)

        err = assert_raises Stripe::APIConnectionError do
          Stripe::Charge.create(:amount => 50, :currency => 'usd', :card => { :number => nil })
        end
        assert_match(/Request was retried 2 times/, err.message)
      end

      should 'retry failed network requests if specified and return successful response' do
        Stripe.expects(:sleep_time).at_least_once.returns(0)

        i = 0
        stub_request(:post, "#{Stripe.api_base}/v1/charges").
          to_return { |_|
            if i < 2
              i += 1
              raise Errno::ECONNREFUSED.new
            else
              { body: JSON.generate({"id" => "myid"}) }
            end
          }

        result = Stripe::Charge.create(:amount => 50, :currency => 'usd', :card => { :number => nil })
        assert_equal "myid", result.id
      end

      should 'not add an idempotency key to GET requests' do
        SecureRandom.expects(:uuid).times(0)
        stub_request(:get, "#{Stripe.api_base}/v1/charges").
          with { |req|
            req.headers['Idempotency-Key'].nil?
          }.to_return(body: JSON.generate(make_charge_array))
        Stripe::Charge.list
      end

      should 'ensure there is always an idempotency_key on POST requests' do
        SecureRandom.expects(:uuid).at_least_once.returns("random_key")
        stub_request(:post, "#{Stripe.api_base}/v1/charges").
          with(headers: {"Idempotency-Key" => "random_key"}).
          to_return(body: JSON.generate(make_charge))

        Stripe::Charge.create(:amount => 50, :currency => 'usd', :card => { :number => nil })
      end

      should 'ensure there is always an idempotency_key on DELETE requests' do
        SecureRandom.expects(:uuid).at_least_once.returns("random_key")

        c = Stripe::Customer.construct_from(make_customer)
        stub_request(:delete, "#{Stripe.api_base}/v1/customers/#{c.id}").
          with(headers: {"Idempotency-Key" => "random_key"}).
          to_return(body: JSON.generate(make_charge))

        c.delete
      end

      should 'not override a provided idempotency_key' do
        # Note that this expectation looks like `:idempotency_key` instead of
        # the header `Idempotency-Key` because it's user provided as seen
        # below. The ones injected by the library itself look like headers
        # (`Idempotency-Key`), but rest-client does allow this symbol
        # formatting and will properly override the system generated one as
        # expected.
        stub_request(:post, "#{Stripe.api_base}/v1/charges").
          with(headers: {"Idempotency-Key" => "provided_key"}).
          to_return(body: JSON.generate(make_charge))

        Stripe::Charge.create({:amount => 50, :currency => 'usd', :card => { :number => nil }}, {:idempotency_key => 'provided_key'})
      end

    end

    context ".should_retry?" do
      setup do
        Stripe.stubs(:max_network_retries).returns(2)
      end

      should 'retry on timeout' do
        assert Stripe.should_retry?(Faraday::TimeoutError.new(""), 0)
      end

      should 'retry on a failed connection' do
        assert Stripe.should_retry?(Faraday::ConnectionFailed.new(""), 0)
      end

      should 'retry on a conflict' do
        error = make_rate_limit_error
        response = make_response(error, 429)
        e = Faraday::ClientError.new(error[:error][:message], response)
        assert Stripe.should_retry?(e, 0)
      end

      should 'not retry at maximum count' do
        refute Stripe.should_retry?(RuntimeError.new, Stripe.max_network_retries)
      end

      should 'not retry on a certificate validation error' do
        refute Stripe.should_retry?(Faraday::SSLError.new(""), 0)
      end
    end

    context ".sleep_time" do
      should "should grow exponentially" do
        Stripe.stubs(:rand).returns(1)
        Stripe.stubs(:max_network_retry_delay).returns(999)
        assert_equal(Stripe.initial_network_retry_delay, Stripe.sleep_time(1))
        assert_equal(Stripe.initial_network_retry_delay * 2, Stripe.sleep_time(2))
        assert_equal(Stripe.initial_network_retry_delay * 4, Stripe.sleep_time(3))
        assert_equal(Stripe.initial_network_retry_delay * 8, Stripe.sleep_time(4))
      end

      should "enforce the max_network_retry_delay" do
        Stripe.stubs(:rand).returns(1)
        Stripe.stubs(:initial_network_retry_delay).returns(1)
        Stripe.stubs(:max_network_retry_delay).returns(2)
        assert_equal(1, Stripe.sleep_time(1))
        assert_equal(2, Stripe.sleep_time(2))
        assert_equal(2, Stripe.sleep_time(3))
        assert_equal(2, Stripe.sleep_time(4))
      end

      should "add some randomness" do
        random_value = 0.8
        Stripe.stubs(:rand).returns(random_value)
        Stripe.stubs(:initial_network_retry_delay).returns(1)
        Stripe.stubs(:max_network_retry_delay).returns(8)

        base_value = Stripe.initial_network_retry_delay * (0.5 * (1 + random_value))

        # the initial value cannot be smaller than the base,
        # so the randomness is ignored
        assert_equal(Stripe.initial_network_retry_delay, Stripe.sleep_time(1))

        # after the first one, the randomness is applied
        assert_equal(base_value * 2, Stripe.sleep_time(2))
        assert_equal(base_value * 4, Stripe.sleep_time(3))
        assert_equal(base_value * 8, Stripe.sleep_time(4))
      end
    end
  end
end
