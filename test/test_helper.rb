require 'stringio'
require 'test/unit'
require 'stripe'
require 'mocha'
include Mocha

#monkeypatch request methods
module Stripe   
  @mock_rest_client = nil

  def self.mock_rest_client=(mock_client)
    @mock_rest_client = mock_client
  end

  def self.execute_request(opts)
    get_params = (opts[:headers] || {})[:params]
    post_params = opts[:payload]
    case opts[:method]
    when :get then @mock_rest_client.get opts[:url], get_params, post_params
    when :post then @mock_rest_client.post opts[:url], get_params, post_params
    when :delete then @mock_rest_client.delete opts[:url], get_params, post_params
    end
  end
end

def test_response(body, code=200)
  # When an exception is raised, restclient clobbers method_missing.  Hence we
  # can't just use the stubs interface.
  body = MultiJson.dump(body) if !(body.kind_of? String)
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
  {:data => [test_customer, test_customer, test_customer]}
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
  {:data => [test_charge, test_charge, test_charge]}
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

def test_coupon(params={})
  {
    :duration => 'repeating',
    :duration_in_months => 3,
    :percent_off => 25,
    :id => "co_test_coupon",
    :object => "coupon"    
  }.merge(params)
end

#FIXME nested overrides would be better than hardcoding plan_id
def test_subscription(plan_id="gold")
  {
    :current_period_end => 1308681468,
    :status => "trialing",
    :plan => {
      :interval => "month",
      :amount => 7500,
      :trial_period_days => 30,
      :object => "plan",
      :identifier => plan_id
    },
    :current_period_start => 1308595038,
    :start => 1308595038,
    :object => "subscription",
    :trial_start => 1308595038,
    :trial_end => 1308681468,
    :customer => "c_test_customer"
  }
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

def test_delete_discount_response
  {
    :deleted => true,
    :id => "di_test_coupon"
  }
end
