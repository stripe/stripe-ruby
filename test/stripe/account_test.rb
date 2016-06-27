require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class AccountTest < Test::Unit::TestCase
    should "be retrievable" do
      resp = make_account({
        :charges_enabled => false,
        :details_submitted => false,
        :email => "test+bindings@stripe.com",
      })
      @mock.expects(:get).
        once.
        with('https://api.stripe.com/v1/account', nil, nil).
        returns(make_response(resp))
      a = Stripe::Account.retrieve
      assert_equal "test+bindings@stripe.com", a.email
      assert !a.charges_enabled
      assert !a.details_submitted
    end

    should "be retrievable via plural endpoint" do
      resp = make_account({
        :charges_enabled => false,
        :details_submitted => false,
        :email => "test+bindings@stripe.com",
      })
      @mock.expects(:get).
        once.
        with('https://api.stripe.com/v1/accounts/acct_foo', nil, nil).
        returns(make_response(resp))
      a = Stripe::Account.retrieve('acct_foo')
      assert_equal "test+bindings@stripe.com", a.email
      assert !a.charges_enabled
      assert !a.details_submitted
    end

    should "be retrievable using an API key as the only argument" do
      account = mock
      Stripe::Account.expects(:new).once.with(nil, {:api_key => 'sk_foobar'}).returns(account)
      account.expects(:refresh).once
      Stripe::Account.retrieve('sk_foobar')
    end

    should "allow access to keys by method" do
      account = Stripe::Account.construct_from(make_account({
        :keys => {
          :publishable => 'publishable-key',
          :secret => 'secret-key',
        }
      }))
      assert_equal 'publishable-key', account.keys.publishable
      assert_equal 'secret-key', account.keys.secret
    end

    should "be rejectable" do
      account_data = {:id => 'acct_foo'}
      @mock.expects(:get).
        once.
        with('https://api.stripe.com/v1/accounts/acct_foo', nil, nil).
        returns(make_response(account_data))

      @mock.expects(:post).
        once.
        with("https://api.stripe.com/v1/accounts/acct_foo/reject", nil, 'reason=fraud').
        returns(make_response(account_data))

      account = Stripe::Account.retrieve('acct_foo')
      account.reject(:reason => 'fraud')
    end

    should "be saveable" do
      resp = {
        :id => 'acct_foo',
        :legal_entity => {
          :address => {
            :line1 => '1 Two Three'
          }
        }
      }
      @mock.expects(:get).
        once.
        with('https://api.stripe.com/v1/accounts/acct_foo', nil, nil).
        returns(make_response(resp))

      @mock.expects(:post).
        once.
        with('https://api.stripe.com/v1/accounts/acct_foo', nil, 'legal_entity[address][line1]=2+Three+Four&legal_entity[first_name]=Bob').
        returns(make_response(resp))

      a = Stripe::Account.retrieve('acct_foo')
      a.legal_entity.first_name = 'Bob'
      a.legal_entity.address.line1 = '2 Three Four'
      a.save
    end

    should "be updatable" do
      resp = {
        :id => 'acct_foo',
        :legal_entity => {
          :first_name => 'Bob',
          :address => {
            :line1 => '2 Three Four'
          }
        }
      }
      @mock.expects(:post).
        once.
        with('https://api.stripe.com/v1/accounts/acct_foo', nil, 'legal_entity[address][line1]=2+Three+Four&legal_entity[first_name]=Bob').
        returns(make_response(resp))

      a = Stripe::Account.update('acct_foo', :legal_entity => {
        :first_name => 'Bob',
        :address => {
          :line1 => '2 Three Four'
        }
      })
      assert_equal('Bob', a.legal_entity.first_name)
      assert_equal('2 Three Four', a.legal_entity.address.line1)
    end

    should 'disallow direct overrides of legal_entity' do
      account = Stripe::Account.construct_from(make_account({
        :keys => {
          :publishable => 'publishable-key',
          :secret => 'secret-key',
        },
        :legal_entity => {
          :first_name => 'Bling'
        }
      }))

      assert_raise NoMethodError do
        account.legal_entity = {:first_name => 'Blah'}
      end

      account.legal_entity.first_name = 'Blah'
    end

    should "be able to deauthorize an account" do
      resp = {:id => 'acct_1234', :email => "test+bindings@stripe.com", :charge_enabled => false, :details_submitted => false}
      @mock.expects(:get).once.returns(make_response(resp))
      a = Stripe::Account.retrieve


      @mock.expects(:post).once.with do |url, api_key, params|
        url == "#{Stripe.connect_base}/oauth/deauthorize" && api_key.nil? && CGI.parse(params) == { 'client_id' => [ 'ca_1234' ], 'stripe_user_id' => [ a.id ]}
      end.returns(make_response({ 'stripe_user_id' => a.id }))
      a.deauthorize('ca_1234', 'sk_test_1234')
    end

    should "reject nil api keys" do
      assert_raise TypeError do
        Stripe::Account.retrieve(nil)
      end
      assert_raise TypeError do
        Stripe::Account.retrieve(:api_key => nil)
      end
    end

    should "be able to create a bank account" do
      resp = {
        :id => 'acct_1234',
        :external_accounts => {
          :object => "list",
          :resource_url => "/v1/accounts/acct_1234/external_accounts",
          :data => [],
        }
      }
      @mock.expects(:get).once.returns(make_response(resp))
      a = Stripe::Account.retrieve

      @mock.expects(:post).
        once.
        with('https://api.stripe.com/v1/accounts/acct_1234/external_accounts', nil, 'external_account=btok_1234').
        returns(make_response(resp))
      a.external_accounts.create({:external_account => 'btok_1234'})
    end

    should "be able to retrieve a bank account" do
      resp = {
        :id => 'acct_1234',
        :external_accounts => {
          :object => "list",
          :resource_url => "/v1/accounts/acct_1234/external_accounts",
          :data => [{
            :id => "ba_1234",
            :object => "bank_account",
          }],
        }
      }
      @mock.expects(:get).once.returns(make_response(resp))
      a = Stripe::Account.retrieve
      assert_equal(BankAccount, a.external_accounts.data[0].class)
    end

    should "#serialize_params an a new additional_owners" do
      obj = Stripe::Util.convert_to_stripe_object({
        :object => "account",
        :legal_entity => Stripe::StripeObject.construct_from({
        }),
      }, {})
      obj.legal_entity.additional_owners = [
        { :first_name => "Joe" },
        { :first_name => "Jane" },
      ]

      expected = {
        :legal_entity => {
          :additional_owners => {
            "0" => { :first_name => "Joe" },
            "1" => { :first_name => "Jane" },
          }
        }
      }
      assert_equal(expected, obj.serialize_params)
    end

    should "#serialize_params on an partially changed additional_owners" do
      obj = Stripe::Util.convert_to_stripe_object({
        :object => "account",
        :legal_entity => {
          :additional_owners => [
            Stripe::StripeObject.construct_from({
              :first_name => "Joe"
            }),
            Stripe::StripeObject.construct_from({
              :first_name => "Jane"
            }),
          ]
        }
      }, {})
      obj.legal_entity.additional_owners[1].first_name = "Stripe"

      expected = {
        :legal_entity => {
          :additional_owners => {
            "1" => { :first_name => "Stripe" }
          }
        }
      }
      assert_equal(expected, obj.serialize_params)
    end

    should "#serialize_params on an unchanged additional_owners" do
      obj = Stripe::Util.convert_to_stripe_object({
        :object => "account",
        :legal_entity => {
          :additional_owners => [
            Stripe::StripeObject.construct_from({
              :first_name => "Joe"
            }),
            Stripe::StripeObject.construct_from({
              :first_name => "Jane"
            }),
          ]
        }
      }, {})

      expected = {
        :legal_entity => {
          :additional_owners => {}
        }
      }
      assert_equal(expected, obj.serialize_params)
    end

    # Note that the empty string that we send for this one has a special
    # meaning for the server, which interprets it as an array unset.
    should "#serialize_params on an unset additional_owners" do
      obj = Stripe::Util.convert_to_stripe_object({
        :object => "account",
        :legal_entity => {
          :additional_owners => [
            Stripe::StripeObject.construct_from({
              :first_name => "Joe"
            }),
            Stripe::StripeObject.construct_from({
              :first_name => "Jane"
            }),
          ]
        }
      }, {})
      obj.legal_entity.additional_owners = nil

      expected = {
        :legal_entity => {
          :additional_owners => ""
        }
      }
      assert_equal(expected, obj.serialize_params)
    end
  end
end
