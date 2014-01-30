require 'stripe'
require 'test/unit'
require 'mocha/setup'
require 'stringio'
require 'shoulda'

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
  body = JSON.generate(body) if !(body.kind_of? String)
  m = mock
  m.instance_variable_set('@stripe_values', { :body => body, :code => code })
  def m.body; @stripe_values[:body]; end
  def m.code; @stripe_values[:code]; end
  m
end

def test_balance(params={})
  {
    :pending => [
      {:amount => 12345, :currency => "usd"}
    ],
    :available => [
      {:amount => 6789, :currency => "usd"}
    ],
    :livemode => false,
    :object => "balance"
  }.merge(params)
end

def test_balance_transaction(params={})
  {
    :amount => 100,
    :net => 41,
    :currency => "usd",
    :type => "charge",
    :created => 1371945005,
    :available_on => 1372549805,
    :status => "pending",
    :description => "A test balance transaction",
    :fee => 59,
    :object => "balance_transaction"
  }.merge(params)
end

def test_balance_transaction_array
  {
    :data => [test_balance_transaction, test_balance_transaction, test_balance_transaction],
    :object => "list",
    :url => "/v1/balance/history"
  }
end

def test_application_fee(params={})
  {
    :refunded => false,
    :amount => 100,
    :application => "ca_test_application",
    :user => "acct_test_user",
    :charge => "ch_test_charge",
    :id => "fee_test_fee",
    :livemode => false,
    :currency => "usd",
    :object => "application_fee",
    :created => 1304114826
  }.merge(params)
end

def test_application_fee_array
  {
    :data => [test_application_fee, test_application_fee, test_application_fee],
    :object => 'list',
    :url => '/v1/application_fees'
  }
end

def test_customer(params={})
  id = params[:id] || 'c_test_customer'
  {
    :subscription_history => [],
    :bills => [],
    :charges => [],
    :livemode => false,
    :object => "customer",
    :id => id,
    :default_card => "cc_test_card",
    :created => 1304114758,
    :cards => test_card_array(id),
    :metadata => {},
    :subscriptions => test_subscription_array(id)
  }.merge(params)
end

def test_customer_array
  {
    :data => [test_customer, test_customer, test_customer],
    :object => 'list',
    :url => '/v1/customers'
  }
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
    :created => 1304114826,
    :metadata => {}
  }.merge(params)
end

def test_charge_array
  {
    :data => [test_charge, test_charge, test_charge],
    :object => 'list',
    :url => '/v1/charges'
  }
end

def test_card_array(customer_id)
  {
    :data => [test_card, test_card, test_card],
    :object => 'list',
    :url => '/v1/customers/' + customer_id + '/cards'
  }
end

def test_card(params={})
  {
    :type => "Visa",
    :last4 => "4242",
    :exp_month => 11,
    :country => "US",
    :exp_year => 2012,
    :id => "cc_test_card",
    :customer => 'c_test_customer',
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
def test_subscription(params = {})
  plan = params.delete(:plan) || 'gold'
  {
    :current_period_end => 1308681468,
    :status => "trialing",
    :plan => {
      :interval => "month",
      :amount => 7500,
      :trial_period_days => 30,
      :object => "plan",
      :identifier => plan
    },
    :current_period_start => 1308595038,
    :start => 1308595038,
    :object => "subscription",
    :trial_start => 1308595038,
    :trial_end => 1308681468,
    :customer => "c_test_customer",
    :id => 's_test_subscription'
  }.merge(params)
end

def test_subscription_array(customer_id)
  {
    :data => [test_subscription, test_subscription, test_subscription],
    :object => 'list',
    :url => '/v1/customers/' + customer_id + '/subscriptions'
  }
end

def test_invoice
  {
    :id => 'in_test_invoice',
    :object => 'invoice',
    :livemode => false,
    :amount_due => 1000,
    :attempt_count => 0,
    :attempted => false,
    :closed => false,
    :currency => 'usd',
    :customer => 'c_test_customer',
    :date => 1349738950,
    :lines => {
      "invoiceitems" => [
        {
          :id => 'ii_test_invoice_item',
          :object => '',
          :livemode => false,
          :amount => 1000,
          :currency => 'usd',
          :customer => 'c_test_customer',
          :date => 1349738950,
          :description => "A Test Invoice Item",
          :invoice => 'in_test_invoice'
        },
      ],
    },
    :paid => false,
    :period_end => 1349738950,
    :period_start => 1349738950,
    :starting_balance => 0,
    :subtotal => 1000,
    :total => 1000,
    :charge => nil,
    :discount => nil,
    :ending_balance => nil,
    :next_payemnt_attempt => 1349825350,
  }
end

def test_paid_invoice
  test_invoice.merge({
      :attempt_count => 1,
      :attempted => true,
      :closed => true,
      :paid => true,
      :charge => 'ch_test_charge',
      :ending_balance => 0,
      :next_payment_attempt => nil,
    })
end

def test_invoice_customer_array
  {
    :data => [test_invoice],
    :object => 'list',
    :url => '/v1/invoices?customer=test_customer'
  }
end

def test_recipient(params={})
  {
    :name => "Stripe User",
    :type => "individual",
    :livemode => false,
    :object => "recipient",
    :id => "rp_test_recipient",
    :active_account => {
      :last4 => "6789",
      :bank_name => "STRIPE TEST BANK",
      :country => "US",
      :object => "bank_account"
    },
    :created => 1304114758,
    :verified => true,
    :metadata => {}
  }.merge(params)
end

def test_recipient_array
  {
    :data => [test_recipient, test_recipient, test_recipient],
    :object => 'list',
    :url => '/v1/recipients'
  }
end

def test_transfer(params={})
  {
    :status => 'pending',
    :amount => 100,
    :account => {
      :object => 'bank_account',
      :country => 'US',
      :bank_name => 'STRIPE TEST BANK',
      :last4 => '6789'
    },
    :recipient => 'test_recipient',
    :fee => 0,
    :fee_details => [],
    :id => "tr_test_transfer",
    :livemode => false,
    :currency => "usd",
    :object => "transfer",
    :date => 1304114826,
    :metadata => {}
  }.merge(params)
end

def test_transfer_array
  {
    :data => [test_transfer, test_transfer, test_transfer],
    :object => 'list',
    :url => '/v1/transfers'
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

class Test::Unit::TestCase
  include Mocha

  setup do
    @mock = mock
    Stripe.mock_rest_client = @mock
    Stripe.api_key="foo"
  end

  teardown do
    Stripe.mock_rest_client = nil
    Stripe.api_key=nil
  end
end

