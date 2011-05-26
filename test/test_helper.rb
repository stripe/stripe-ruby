require 'stringio'
require 'test/unit'
require File.dirname(__FILE__) + '/../lib/stripe'

require 'mocha'
include Mocha

#monkeypatch request methods
module Stripe   
  @mock_rest_client = nil

  def self.mock_rest_client=(mock_client)
    @mock_rest_client = mock_client
  end

  def self.execute_request(opts)
    case opts[:method]
    when :get: @mock_rest_client.get opts[:url]
    when :post: @mock_rest_client.post opts[:url], opts[:payload]
    when :delete: @mock_rest_client.delete opts[:url]
    end
  end
end

def test_response(body, code=200)
  # When an exception is raised, restclient clobbers method_missing.  Hence we
  # can't just use the stubs interface.
  body = body.to_json if !(body.kind_of? String)
  m = mock
  m.instance_variable_set('@stripe_values', { :body => body, :code => code })
  def m.body; @stripe_values[:body]; end
  def m.code; @stripe_values[:code]; end
  m
end

def test_customer(params={})
  {
    :subscription_history => [],
    :bills => [],
    :charges => [],
    :livemode => false,
    :object => "customer",
    :id => "c_test_customer",
    :active_card => {
      :type => "Visa",
      :last4 => "4242",
      :exp_month => 11,
      :country => "US",
      :exp_year => 2012,
      :id => "cc_test_card",
      :object => "card"
    },
    :created => 1304114758
  }.merge(params)
end

def test_customer_array
  [test_customer, test_customer, test_customer]
end

def test_charge(params={})
  {
    :refunded => false,
    :paid => true,
    :amount => 100,
    :card => {
      :type => "Visa",
      :last4 => "4242",
      :exp_month => 11,
      :country => "US",
      :exp_year => 2012,
      :id => "cc_test_card",
      :object => "card"
    },
    :id => "ch_test_charge",
    :reason => "execute_charge",
    :livemode => false,
    :currency => "usd",
    :object => "charge",
    :created => 1304114826
  }.merge(params)
end

def test_charge_array
  [test_charge, test_charge, test_charge]
end

def test_card(params={})
  {
    :type => "Visa",
    :last4 => "4242",
    :exp_month => 11,
    :country => "US",
    :exp_year => 2012,
    :id => "cc_test_card",
    :object => "card"    
  }.merge(params)
end

def test_invalid_api_key_error
  {
    "error" => {
      "type" => "invalid_request_error",
      "message" => "Invalid API Key provided: invalid"
    }
  }
end

def test_invalid_exp_year_error
  {
    "error" => {
      "code" => "invalid_expiry_year",
      "param" => "exp_year",
      "type" => "card_error",
      "message" => "Your card's expiration year is invalid"
    }
  }
end

def test_missing_id_error
  {
    :error => {
      :param => "id",
      :type => "invalid_request_error",
      :message => "Missing id"
    }
  }
end

def test_api_error
  {
    :error => {
      :type => "api_error"
    }
  }
end
