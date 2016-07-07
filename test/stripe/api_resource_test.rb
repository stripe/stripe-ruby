# -*- coding: utf-8 -*-
require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class ApiResourceTest < Test::Unit::TestCase
    should "creating a new APIResource should not fetch over the network" do
      @mock.expects(:get).never
      Stripe::Customer.new("someid")
    end

    should "creating a new APIResource from a hash should not fetch over the network" do
      @mock.expects(:get).never
      Stripe::Customer.construct_from({
        :id => "somecustomer",
        :card => {:id => "somecard", :object => "card"},
        :object => "customer"
      })
    end

    should "setting an attribute should not cause a network request" do
      @mock.expects(:get).never
      @mock.expects(:post).never
      c = Stripe::Customer.new("test_customer");
      c.card = {:id => "somecard", :object => "card"}
    end

    should "accessing id should not issue a fetch" do
      @mock.expects(:get).never
      c = Stripe::Customer.new("test_customer")
      c.id
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
      response = make_response(make_invalid_api_key_error, 401)
      assert_raises Stripe::AuthenticationError do
        @mock.expects(:get).once.raises(RestClient::ExceptionWithResponse.new(response, 401))
        Stripe::Customer.retrieve("failing_customer")
      end
    end

    should "AuthenticationErrors should have an http status, http body, and JSON body" do
      Stripe.api_key = "invalid"
      response = make_response(make_invalid_api_key_error, 401)
      begin
        @mock.expects(:get).once.raises(RestClient::ExceptionWithResponse.new(response, 401))
        Stripe::Customer.retrieve("failing_customer")
      rescue Stripe::AuthenticationError => e
        assert_equal(401, e.http_status)
        assert_equal(true, !!e.http_body)
        assert_equal(true, !!e.json_body[:error][:message])
        assert_equal(make_invalid_api_key_error[:error][:message], e.json_body[:error][:message])
      end
    end

    should "send expand on fetch properly" do
      @mock.expects(:get).once.
        with("#{Stripe.api_base}/v1/charges/ch_test_charge?expand[]=customer", nil, nil).
        returns(make_response(make_charge))

      Stripe::Charge.retrieve({:id => 'ch_test_charge', :expand => [:customer]})
    end

    should "preserve expand across refreshes" do
      @mock.expects(:get).twice.
        with("#{Stripe.api_base}/v1/charges/ch_test_charge?expand[]=customer", nil, nil).
        returns(make_response(make_charge))

      ch = Stripe::Charge.retrieve({:id => 'ch_test_charge', :expand => [:customer]})
      ch.refresh
    end

    should "send expand when fetching through ListObject" do
      @mock.expects(:get).once.
        with("#{Stripe.api_base}/v1/customers/c_test_customer", nil, nil).
        returns(make_response(make_customer))

      @mock.expects(:get).once.
        with("#{Stripe.api_base}/v1/customers/c_test_customer/sources/cc_test_card?expand[]=customer", nil, nil).
        returns(make_response(make_card))

      customer = Stripe::Customer.retrieve('c_test_customer')
      customer.sources.retrieve({:id => 'cc_test_card', :expand => [:customer]})
    end

    should "send stripe account as header when set" do
      stripe_account = "acct_0000"
      Stripe.expects(:execute_request).with do |opts|
        opts[:headers][:stripe_account] == stripe_account
      end.returns(make_response(make_charge))

      Stripe::Charge.create({:card => {:number => '4242424242424242'}},
                            {:stripe_account => stripe_account, :api_key => 'sk_test_local'})
    end

    should "not send stripe account as header when not set" do
      Stripe.expects(:execute_request).with do |opts|
        opts[:headers][:stripe_account].nil?
      end.returns(make_response(make_charge))

      Stripe::Charge.create({:card => {:number => '4242424242424242'}},
        'sk_test_local')
    end

    should "handle error response with empty body" do
      response = make_response('', 500)
      @mock.expects(:post).once.raises(RestClient::ExceptionWithResponse.new(response, 500))

      e = assert_raises Stripe::APIError do
        Stripe::Charge.create
      end

      assert_equal 'Invalid response object from API: "" (HTTP response code was 500)', e.message
    end

    should "handle error response with non-object error value" do
      response = make_response('{"error": "foo"}', 500)
      @mock.expects(:post).once.raises(RestClient::ExceptionWithResponse.new(response, 500))

      e = assert_raises Stripe::APIError do
        Stripe::Charge.create
      end

      assert_equal 'Invalid response object from API: "{\"error\": \"foo\"}" (HTTP response code was 500)', e.message
    end

    should "have default open and read timeouts" do
      assert_equal Stripe.open_timeout, 30
      assert_equal Stripe.read_timeout, 80
    end

    should "allow configurable open and read timeouts" do
      original_timeouts = Stripe.open_timeout, Stripe.read_timeout

      begin
        Stripe.open_timeout = 999
        Stripe.read_timeout = 998

        Stripe.expects(:execute_request).with do |opts|
          opts[:open_timeout] == 999 && opts[:timeout] == 998
        end.returns(make_response(make_charge))

        Stripe::Charge.create({:card => {:number => '4242424242424242'}},
          'sk_test_local')
      ensure
        Stripe.open_timeout, Stripe.read_timeout = original_timeouts
      end
    end

    context "when specifying per-object credentials" do
      context "with no global API key set" do
        should "use the per-object credential when creating" do
          Stripe.expects(:execute_request).with do |opts|
            opts[:headers][:authorization] == 'Bearer sk_test_local'
          end.returns(make_response(make_charge))

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
          Stripe.expects(:execute_request).with do |opts|
            opts[:headers][:authorization] == 'Bearer local'
          end.returns(make_response(make_charge))

          Stripe::Charge.create({:card => {:number => '4242424242424242'}},
            'local')
        end

        should "use the per-object credential when retrieving and making other calls" do
          Stripe.expects(:execute_request).with do |opts|
            opts[:url] == "#{Stripe.api_base}/v1/charges/ch_test_charge" &&
              opts[:headers][:authorization] == 'Bearer local'
          end.returns(make_response(make_charge))
          Stripe.expects(:execute_request).with do |opts|
            opts[:url] == "#{Stripe.api_base}/v1/charges/ch_test_charge/refunds" &&
              opts[:headers][:authorization] == 'Bearer local'
          end.returns(make_response(make_refund))

          ch = Stripe::Charge.retrieve('ch_test_charge', 'local')
          ch.refunds.create
        end
      end
    end

    context "with valid credentials" do
      should "send along the idempotency-key header" do
        Stripe.expects(:execute_request).with do |opts|
          opts[:headers][:idempotency_key] == 'bar'
        end.returns(make_response(make_charge))

        Stripe::Charge.create({:card => {:number => '4242424242424242'}}, {
          :idempotency_key => 'bar',
          :api_key => 'local',
        })
      end

      should "urlencode values in GET params" do
        response = make_response(make_charge_array)
        @mock.expects(:get).with("#{Stripe.api_base}/v1/charges?customer=test+customer", nil, nil).returns(response)
        charges = Stripe::Charge.list(:customer => 'test customer').data
        assert charges.kind_of? Array
      end

      should "construct URL properly with base query parameters" do
        response = make_response(make_invoice_customer_array)
        @mock.expects(:get).with("#{Stripe.api_base}/v1/invoices?customer=test_customer", nil, nil).returns(response)
        invoices = Stripe::Invoice.list(:customer => 'test_customer')

        @mock.expects(:get).with("#{Stripe.api_base}/v1/invoices?customer=test_customer&paid=true", nil, nil).returns(response)
        invoices.list(:paid => true)
      end

      should "a 400 should give an InvalidRequestError with http status, body, and JSON body" do
        response = make_response(make_missing_id_error, 400)
        @mock.expects(:get).once.raises(RestClient::ExceptionWithResponse.new(response, 404))
        begin
          Stripe::Customer.retrieve("foo")
        rescue Stripe::InvalidRequestError => e
          assert_equal(400, e.http_status)
          assert_equal(true, !!e.http_body)
          assert_equal(true, e.json_body.kind_of?(Hash))
        end
      end

      should "a 401 should give an AuthenticationError with http status, body, and JSON body" do
        response = make_response(make_missing_id_error, 401)
        @mock.expects(:get).once.raises(RestClient::ExceptionWithResponse.new(response, 404))
        begin
          Stripe::Customer.retrieve("foo")
        rescue Stripe::AuthenticationError => e
          assert_equal(401, e.http_status)
          assert_equal(true, !!e.http_body)
          assert_equal(true, e.json_body.kind_of?(Hash))
        end
      end

      should "a 402 should give a CardError with http status, body, and JSON body" do
        response = make_response(make_missing_id_error, 402)
        @mock.expects(:get).once.raises(RestClient::ExceptionWithResponse.new(response, 404))
        begin
          Stripe::Customer.retrieve("foo")
        rescue Stripe::CardError => e
          assert_equal(402, e.http_status)
          assert_equal(true, !!e.http_body)
          assert_equal(true, e.json_body.kind_of?(Hash))
        end
      end

      should "a 404 should give an InvalidRequestError with http status, body, and JSON body" do
        response = make_response(make_missing_id_error, 404)
        @mock.expects(:get).once.raises(RestClient::ExceptionWithResponse.new(response, 404))
        begin
          Stripe::Customer.retrieve("foo")
        rescue Stripe::InvalidRequestError => e
          assert_equal(404, e.http_status)
          assert_equal(true, !!e.http_body)
          assert_equal(true, e.json_body.kind_of?(Hash))
        end
      end

      should "a 429 should give a RateLimitError with http status, body, and JSON body" do
        response = make_response(make_rate_limit_error, 429)
        @mock.expects(:get).once.raises(RestClient::ExceptionWithResponse.new(response, 429))
        begin
          Stripe::Customer.retrieve("foo")
        rescue Stripe::RateLimitError => e
          assert_equal(429, e.http_status)
          assert_equal(true, !!e.http_body)
          assert_equal(true, e.json_body.kind_of?(Hash))
        end
      end

      should "setting a nil value for a param should exclude that param from the request" do
        @mock.expects(:get).with do |url, api_key, params|
          uri = URI(url)
          query = CGI.parse(uri.query)
          (url =~ %r{^#{Stripe.api_base}/v1/charges?} &&
           query.keys.sort == ['offset', 'sad'])
        end.returns(make_response({ :count => 1, :data => [make_charge] }))
        Stripe::Charge.list(:count => nil, :offset => 5, :sad => false)

        @mock.expects(:post).with do |url, api_key, params|
          url == "#{Stripe.api_base}/v1/charges" &&
            api_key.nil? &&
            CGI.parse(params) == { 'amount' => ['50'], 'currency' => ['usd'] }
        end.returns(make_response({ :count => 1, :data => [make_charge] }))
        Stripe::Charge.create(:amount => 50, :currency => 'usd', :card => { :number => nil })
      end

      should "requesting with a unicode ID should result in a request" do
        response = make_response(make_missing_id_error, 404)
        @mock.expects(:get).once.with("#{Stripe.api_base}/v1/customers/%E2%98%83", nil, nil).raises(RestClient::ExceptionWithResponse.new(response, 404))
        c = Stripe::Customer.new("☃")
        assert_raises(Stripe::InvalidRequestError) { c.refresh }
      end

      should "requesting with no ID should result in an InvalidRequestError with no request" do
        c = Stripe::Customer.new
        assert_raises(Stripe::InvalidRequestError) { c.refresh }
      end

      should "making a GET request with parameters should have a query string and no body" do
        params = { :limit => 1 }
        @mock.expects(:get).once.with("#{Stripe.api_base}/v1/charges?limit=1", nil, nil).
          returns(make_response({ :data => [make_charge] }))
        Stripe::Charge.list(params)
      end

      should "making a POST request with parameters should have a body and no query string" do
        params = { :amount => 100, :currency => 'usd', :card => 'sc_token' }
        @mock.expects(:post).once.with do |url, get, post|
          get.nil? && CGI.parse(post) == {'amount' => ['100'], 'currency' => ['usd'], 'card' => ['sc_token']}
        end.returns(make_response(make_charge))
        Stripe::Charge.create(params)
      end

      should "loading an object should issue a GET request" do
        @mock.expects(:get).once.returns(make_response(make_customer))
        c = Stripe::Customer.new("test_customer")
        c.refresh
      end

      should "using array accessors should be the same as the method interface" do
        @mock.expects(:get).once.returns(make_response(make_customer))
        c = Stripe::Customer.new("test_customer")
        c.refresh
        assert_equal c.created, c[:created]
        assert_equal c.created, c['created']
        c['created'] = 12345
        assert_equal c.created, 12345
      end

      should "accessing a property other than id or parent on an unfetched object should fetch it" do
        @mock.expects(:get).once.returns(make_response(make_customer))
        c = Stripe::Customer.new("test_customer")
        c.charges
      end

      should "updating an object should issue a POST request with only the changed properties" do
        @mock.expects(:post).with do |url, api_key, params|
          url == "#{Stripe.api_base}/v1/customers/c_test_customer" && api_key.nil? && CGI.parse(params) == {'description' => ['another_mn']}
        end.once.returns(make_response(make_customer))
        c = Stripe::Customer.construct_from(make_customer)
        c.description = "another_mn"
        c.save
      end

      should "updating should merge in returned properties" do
        @mock.expects(:post).once.returns(make_response(make_customer))
        c = Stripe::Customer.new("c_test_customer")
        c.description = "another_mn"
        c.save
        assert_equal false, c.livemode
      end

      should "updating should send along the idempotency-key header" do
        Stripe.expects(:execute_request).with do |opts|
          opts[:headers][:idempotency_key] == 'bar'
        end.returns(make_response(make_customer))
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
        Stripe.expects(:execute_request).with do |opts|
          opts[:headers][:authorization] == 'Bearer sk_test_local'
        end.returns(make_response(make_customer))
        c = Stripe::Customer.new
        c.save({}, { :api_key => 'sk_test_local' })
        assert_equal false, c.livemode
      end

      should "deleting should send no props and result in an object that has no props other deleted" do
        @mock.expects(:get).never
        @mock.expects(:post).never
        @mock.expects(:delete).with("#{Stripe.api_base}/v1/customers/c_test_customer", nil, nil).once.returns(make_response({ "id" => "test_customer", "deleted" => true }))
        c = Stripe::Customer.construct_from(make_customer)
        c.delete
        assert_equal true, c.deleted

        assert_raises NoMethodError do
          c.livemode
        end
      end

      should "loading an object with properties that have specific types should instantiate those classes" do
        @mock.expects(:get).once.returns(make_response(make_charge))
        c = Stripe::Charge.retrieve("test_charge")
        assert c.card.kind_of?(Stripe::StripeObject) && c.card.object == 'card'
      end

      should "loading all of an APIResource should return an array of recursively instantiated objects" do
        @mock.expects(:get).once.returns(make_response(make_charge_array))
        c = Stripe::Charge.list.data
        assert c.kind_of? Array
        assert c[0].kind_of? Stripe::Charge
        assert c[0].card.kind_of?(Stripe::StripeObject) && c[0].card.object == 'card'
      end

      should "passing in a stripe_account header should pass it through on call" do
        Stripe.expects(:execute_request).with do |opts|
          opts[:method] == :get &&
          opts[:url] == "#{Stripe.api_base}/v1/customers/c_test_customer" &&
          opts[:headers][:stripe_account] == 'acct_abc'
        end.once.returns(make_response(make_customer))
        Stripe::Customer.retrieve("c_test_customer", {:stripe_account => 'acct_abc'})
      end

      should "passing in a stripe_account header should pass it through on save" do
        Stripe.expects(:execute_request).with do |opts|
          opts[:method] == :get &&
          opts[:url] == "#{Stripe.api_base}/v1/customers/c_test_customer" &&
          opts[:headers][:stripe_account] == 'acct_abc'
        end.once.returns(make_response(make_customer))
        c = Stripe::Customer.retrieve("c_test_customer", {:stripe_account => 'acct_abc'})

        Stripe.expects(:execute_request).with do |opts|
          opts[:method] == :post &&
          opts[:url] == "#{Stripe.api_base}/v1/customers/c_test_customer" &&
          opts[:headers][:stripe_account] == 'acct_abc' &&
          opts[:payload] == 'description=FOO'
        end.once.returns(make_response(make_customer))
        c.description = 'FOO'
        c.save
      end

      context "error checking" do

        should "404s should raise an InvalidRequestError" do
          response = make_response(make_missing_id_error, 404)
          @mock.expects(:get).once.raises(RestClient::ExceptionWithResponse.new(response, 404))

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
          response = make_response(make_api_error, 500)
          @mock.expects(:get).once.raises(RestClient::ExceptionWithResponse.new(response, 500))

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
          response = make_response(make_invalid_exp_year_error, 402)
          @mock.expects(:get).once.raises(RestClient::ExceptionWithResponse.new(response, 402))

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

        @mock.expects(:post).once.with("#{Stripe.api_base}/v1/accounts/myid", nil, 'legal_entity[first_name]=Bob').returns(make_response({"id" => "myid"}))

        acct.legal_entity.first_name = 'Bob'
        acct.save
      end

      should 'save nothing if nothing changes' do
        acct = Stripe::Account.construct_from({
          :id => 'myid',
          :metadata => {
            :key => 'value'
          }
        })

        @mock.expects(:post).once.with("#{Stripe.api_base}/v1/accounts/myid", nil, '').returns(make_response({"id" => "myid"}))

        acct.save
      end

      should 'not save nested API resources' do
        ch = Stripe::Charge.construct_from({
          :id => 'charge_id',
          :customer => {
            :object => 'customer',
            :id => 'customer_id'
          }
        })

        @mock.expects(:post).once.with("#{Stripe.api_base}/v1/charges/charge_id", nil, '').returns(make_response({"id" => "charge_id"}))

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

        @mock.expects(:post).once.with(
          "#{Stripe.api_base}/v1/accounts/myid",
          nil,
          any_of(
            'legal_entity[address][line1]=Test2&legal_entity[address][city]=',
            'legal_entity[address][city]=&legal_entity[address][line1]=Test2'
          )
        ).returns(make_response({"id" => "myid"}))

        acct.legal_entity.address = {:line1 => 'Test2'}
        acct.save
      end

      should 'correctly handle array setting' do
        acct = Stripe::Account.construct_from({
          :id => 'myid',
          :legal_entity => {}
        })

        @mock.expects(:post).once.with("#{Stripe.api_base}/v1/accounts/myid", nil, 'legal_entity[additional_owners][0][first_name]=Bob').returns(make_response({"id" => "myid"}))

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

        @mock.expects(:post).once.with("#{Stripe.api_base}/v1/accounts/myid", nil, 'legal_entity[additional_owners][0][first_name]=Bob').returns(make_response({"id" => "myid"}))

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

        @mock.expects(:post).once.with("#{Stripe.api_base}/v1/accounts/myid", nil, 'legal_entity[additional_owners][1][first_name]=Janet').returns(make_response({"id" => "myid"}))

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

        @mock.expects(:post).once.with("#{Stripe.api_base}/v1/accounts/myid", nil, '').returns(make_response({"id" => "myid"}))

        acct.save
      end

      should 'correctly handle hash noops' do
        acct = Stripe::Account.construct_from({
          :id => 'myid',
          :legal_entity => {
            :address => {:line1 => '1 Two Three'}
          }
        })

        @mock.expects(:post).once.with("#{Stripe.api_base}/v1/accounts/myid", nil, '').returns(make_response({"id" => "myid"}))

        acct.save
      end

      should 'should create a new resource when an object without an id is saved' do
        account = Stripe::Account.construct_from({
          :id => nil,
          :display_name => nil,
        })

        @mock.expects(:post).once.with("#{Stripe.api_base}/v1/accounts", nil, 'display_name=stripe').
          returns(make_response({"id" => "charge_id"}))

        account.display_name = 'stripe'
        account.save
      end

      should 'set attributes as part of save' do
        account = Stripe::Account.construct_from({
          :id => nil,
          :display_name => nil,
        })

        @mock.expects(:post).once.with("#{Stripe.api_base}/v1/accounts", nil, 'display_name=stripe&metadata[key]=value').
          returns(make_response({"id" => "charge_id"}))

        account.save(:display_name => 'stripe', :metadata => {:key => 'value' })
      end
    end

    context "with retries" do
      setup do
        Stripe.stubs(:max_network_retries).returns(2)
      end

      should 'retry failed network requests if specified and raise if error persists' do
        Stripe.expects(:sleep_time).at_least_once.returns(0)
        @mock.expects(:post).times(3).with('https://api.stripe.com/v1/charges', nil, 'amount=50&currency=usd').
          raises(Errno::ECONNREFUSED.new)

        err = assert_raises Stripe::APIConnectionError do
          Stripe::Charge.create(:amount => 50, :currency => 'usd', :card => { :number => nil })
        end
        assert_match(/Request was retried 2 times/, err.message)
      end

      should 'retry failed network requests if specified and return successful response' do
        Stripe.expects(:sleep_time).at_least_once.returns(0)
        response = make_response({"id" => "myid"})
        err = Errno::ECONNREFUSED.new
        @mock.expects(:post).times(2).with('https://api.stripe.com/v1/charges', nil, 'amount=50&currency=usd').
          raises(Errno::ECONNREFUSED.new).
          then.
          returns(response)

        result = Stripe::Charge.create(:amount => 50, :currency => 'usd', :card => { :number => nil })
        assert_equal "myid", result.id
      end

      should 'not add an idempotency key to GET requests' do
        SecureRandom.expects(:uuid).times(0)
        Stripe.expects(:execute_request).with do |opts|
          opts[:headers][:idempotency_key].nil?
        end.returns(make_response({"id" => "myid"}))

        Stripe::Charge.list
      end

      should 'ensure there is always an idempotency_key on POST requests' do
        SecureRandom.expects(:uuid).at_least_once.returns("random_key")
        Stripe.expects(:execute_request).with do |opts|
          opts[:headers][:idempotency_key] == "random_key"
        end.returns(make_response({"id" => "myid"}))

        Stripe::Charge.create(:amount => 50, :currency => 'usd', :card => { :number => nil })
      end

      should 'ensure there is always an idempotency_key on DELETE requests' do
        SecureRandom.expects(:uuid).at_least_once.returns("random_key")
        Stripe.expects(:execute_request).with do |opts|
          opts[:headers][:idempotency_key] == "random_key"
        end.returns(make_response({"id" => "myid"}))

        c = Stripe::Customer.construct_from(make_customer)
        c.delete
      end

      should 'not override a provided idempotency_key' do
        Stripe.expects(:execute_request).with do |opts|
          opts[:headers][:idempotency_key] == "provided_key"
        end.returns(make_response({"id" => "myid"}))

        Stripe::Charge.create({:amount => 50, :currency => 'usd', :card => { :number => nil }}, {:idempotency_key => 'provided_key'})
      end

    end

    context ".should_retry?" do
      setup do
        Stripe.stubs(:max_network_retries).returns(2)
      end

      should 'retry on a low-level network error' do
        assert Stripe.should_retry?(Errno::ECONNREFUSED.new, 0)
      end

      should 'retry on timeout' do
        assert Stripe.should_retry?(RestClient::RequestTimeout.new, 0)
      end

      should 'retry on a conflict' do
        assert Stripe.should_retry?(RestClient::Conflict.new, 0)
      end

      should 'not retry at maximum count' do
        refute Stripe.should_retry?(RuntimeError.new, Stripe.max_network_retries)
      end

      should 'not retry on a certificate validation error' do
        refute Stripe.should_retry?(RestClient::SSLCertificateNotVerified.new('message'), 0)
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
