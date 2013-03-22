# -*- coding: utf-8 -*-
require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class ApiResourceTest < Test::Unit::TestCase
    should "creating a new APIResource should not fetch over the network" do
      @mock.expects(:get).never
      c = Stripe::Customer.new("someid")
    end

    should "creating a new APIResource from a hash should not fetch over the network" do
      @mock.expects(:get).never
      c = Stripe::Customer.construct_from({
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
      c = Stripe::Customer.new("test_customer");
      c.id
    end

    should "not specifying api credentials should raise an exception" do
      Stripe.api_key = nil
      assert_raises Stripe::AuthenticationError do
        Stripe::Customer.new("test_customer").refresh
      end
    end

    should "specifying invalid api credentials should raise an exception" do
      Stripe.api_key = "invalid"
      response = test_response(test_invalid_api_key_error, 401)
      assert_raises Stripe::AuthenticationError do
        @mock.expects(:get).once.raises(RestClient::ExceptionWithResponse.new(response, 401))
        Stripe::Customer.retrieve("failing_customer")
      end
    end

    should "AuthenticationErrors should have an http status, http body, and JSON body" do
      Stripe.api_key = "invalid"
      response = test_response(test_invalid_api_key_error, 401)
      begin
        @mock.expects(:get).once.raises(RestClient::ExceptionWithResponse.new(response, 401))
        Stripe::Customer.retrieve("failing_customer")
      rescue Stripe::AuthenticationError => e
        assert_equal(401, e.http_status)
        assert_equal(true, !!e.http_body)
        assert_equal(true, !!e.json_body[:error][:message])
        assert_equal(test_invalid_api_key_error['error']['message'], e.json_body[:error][:message])
      end
    end

    context "with valid credentials" do
      should "urlencode values in GET params" do
        response = test_response(test_charge_array)
        @mock.expects(:get).with("#{Stripe.api_base}/v1/charges?customer=test%20customer", nil, nil).returns(response)
        charges = Stripe::Charge.all(:customer => 'test customer').data
        assert charges.kind_of? Array
      end

      should "construct URL properly with base query parameters" do
        response = test_response(test_invoice_customer_array)
        @mock.expects(:get).with("#{Stripe.api_base}/v1/invoices?customer=test_customer", nil, nil).returns(response)
        invoices = Stripe::Invoice.all(:customer => 'test_customer')

        @mock.expects(:get).with("#{Stripe.api_base}/v1/invoices?customer=test_customer&paid=true", nil, nil).returns(response)
        invoices.all(:paid => true)
      end

      should "a 400 should give an InvalidRequestError with http status, body, and JSON body" do
        response = test_response(test_missing_id_error, 400)
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
        response = test_response(test_missing_id_error, 401)
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
        response = test_response(test_missing_id_error, 402)
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
        response = test_response(test_missing_id_error, 404)
        @mock.expects(:get).once.raises(RestClient::ExceptionWithResponse.new(response, 404))
        begin
          Stripe::Customer.retrieve("foo")
        rescue Stripe::InvalidRequestError => e
          assert_equal(404, e.http_status)
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
        end.returns(test_response({ :count => 1, :data => [test_charge] }))
        c = Stripe::Charge.all(:count => nil, :offset => 5, :sad => false)

        @mock.expects(:post).with do |url, api_key, params|
          url == "#{Stripe.api_base}/v1/charges" && api_key.nil? && CGI.parse(params) == { 'amount' => ['50'], 'currency' => ['usd'] }
        end.returns(test_response({ :count => 1, :data => [test_charge] }))
        c = Stripe::Charge.create(:amount => 50, :currency => 'usd', :card => { :number => nil })
      end

      should "requesting with a unicode ID should result in a request" do
        response = test_response(test_missing_id_error, 404)
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
        @mock.expects(:get).once.with("#{Stripe.api_base}/v1/charges?limit=1", nil, nil).returns(test_response([test_charge]))
        c = Stripe::Charge.all(params)
      end

      should "making a POST request with parameters should have a body and no query string" do
        params = { :amount => 100, :currency => 'usd', :card => 'sc_token' }
        @mock.expects(:post).once.with do |url, get, post|
          get.nil? && CGI.parse(post) == {'amount' => ['100'], 'currency' => ['usd'], 'card' => ['sc_token']}
        end.returns(test_response(test_charge))
        c = Stripe::Charge.create(params)
      end

      should "loading an object should issue a GET request" do
        @mock.expects(:get).once.returns(test_response(test_customer))
        c = Stripe::Customer.new("test_customer")
        c.refresh
      end

      should "using array accessors should be the same as the method interface" do
        @mock.expects(:get).once.returns(test_response(test_customer))
        c = Stripe::Customer.new("test_customer")
        c.refresh
        assert_equal c.created, c[:created]
        assert_equal c.created, c['created']
        c['created'] = 12345
        assert_equal c.created, 12345
      end

      should "accessing a property other than id or parent on an unfetched object should fetch it" do
        @mock.expects(:get).once.returns(test_response(test_customer))
        c = Stripe::Customer.new("test_customer")
        c.charges
      end

      should "updating an object should issue a POST request with only the changed properties" do
        @mock.expects(:post).with do |url, api_key, params|
          url == "#{Stripe.api_base}/v1/customers/c_test_customer" && api_key.nil? && CGI.parse(params) == {'mnemonic' => ['another_mn']}
        end.once.returns(test_response(test_customer))
        c = Stripe::Customer.construct_from(test_customer)
        c.mnemonic = "another_mn"
        c.save
      end

      should "updating should merge in returned properties" do
        @mock.expects(:post).once.returns(test_response(test_customer))
        c = Stripe::Customer.new("c_test_customer")
        c.mnemonic = "another_mn"
        c.save
        assert_equal false, c.livemode
      end

      should "deleting should send no props and result in an object that has no props other deleted" do
        @mock.expects(:get).never
        @mock.expects(:post).never
        @mock.expects(:delete).with("#{Stripe.api_base}/v1/customers/c_test_customer", nil, nil).once.returns(test_response({ "id" => "test_customer", "deleted" => true }))

        c = Stripe::Customer.construct_from(test_customer)
        c.delete
        assert_equal true, c.deleted

        assert_raises NoMethodError do
          c.livemode
        end
      end

      should "loading an object with properties that have specific types should instantiate those classes" do
        @mock.expects(:get).once.returns(test_response(test_charge))
        c = Stripe::Charge.retrieve("test_charge")
        assert c.card.kind_of?(Stripe::StripeObject) && c.card.object == 'card'
      end

      should "loading all of an APIResource should return an array of recursively instantiated objects" do
        @mock.expects(:get).once.returns(test_response(test_charge_array))
        c = Stripe::Charge.all.data
        assert c.kind_of? Array
        assert c[0].kind_of? Stripe::Charge
        assert c[0].card.kind_of?(Stripe::StripeObject) && c[0].card.object == 'card'
      end

      context "error checking" do

        should "404s should raise an InvalidRequestError" do
          response = test_response(test_missing_id_error, 404)
          @mock.expects(:get).once.raises(RestClient::ExceptionWithResponse.new(response, 404))

          begin
            Stripe::Customer.new("test_customer").refresh
            assert false #shouldn't get here either
          rescue Stripe::InvalidRequestError => e # we don't use assert_raises because we want to examine e
            assert e.kind_of? Stripe::InvalidRequestError
            assert_equal "id", e.param
            assert_equal "Missing id", e.message
            return
          end

          assert false #shouldn't get here
        end

        should "5XXs should raise an APIError" do
          response = test_response(test_api_error, 500)
          @mock.expects(:get).once.raises(RestClient::ExceptionWithResponse.new(response, 500))

          begin
            Stripe::Customer.new("test_customer").refresh
            assert false #shouldn't get here either
          rescue Stripe::APIError => e # we don't use assert_raises because we want to examine e
            assert e.kind_of? Stripe::APIError
            return
          end

          assert false #shouldn't get here
        end

        should "402s should raise a CardError" do
          response = test_response(test_invalid_exp_year_error, 402)
          @mock.expects(:get).once.raises(RestClient::ExceptionWithResponse.new(response, 402))

          begin
            Stripe::Customer.new("test_customer").refresh
            assert false #shouldn't get here either
          rescue Stripe::CardError => e # we don't use assert_raises because we want to examine e
            assert e.kind_of? Stripe::CardError
            assert_equal "invalid_expiry_year", e.code
            assert_equal "exp_year", e.param
            assert_equal "Your card's expiration year is invalid", e.message
            return
          end

          assert false #shouldn't get here
        end
      end
    end
  end
end