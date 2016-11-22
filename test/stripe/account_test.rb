require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class AccountTest < Test::Unit::TestCase
    include WithoutLegacyStubs

    should "be retrievable" do
      Stripe::Account.retrieve
      assert_requested :get, "#{Stripe.api_url}/v1/account"
    end

    should "be retrievable via plural endpoint" do
      Stripe::Account.retrieve('acct_foo')
      assert_requested :get, "#{Stripe.api_url}/v1/accounts/acct_foo"
    end

    should "be retrievable using an API key as the only argument" do
      account = mock
      Stripe::Account.expects(:new).once.with(nil, {:api_key => 'sk_foobar'}).returns(account)
      account.expects(:refresh).once
      Stripe::Account.retrieve('sk_foobar')
    end

    should "allow access to keys by method" do
      stub_api do
        get "/v1/account" do
          modify_generated_response do |response|
            response.deep_merge!({
              :keys => {
                :publishable => 'publishable-key',
                :secret => 'secret-key',
              }
            }, :allow_undefined_keys => true)
          end
        end
      end

      account = Stripe::Account.retrieve
      assert_equal 'publishable-key', account.keys.publishable
      assert_equal 'secret-key', account.keys.secret
    end

    should "be rejectable" do
      account = Stripe::Account.retrieve
      account.reject(:reason => 'fraud')

      assert_requested :post, "#{Stripe.api_url}/v1/accounts/#{account.id}/reject" do |req|
        Rack::Utils.parse_nested_query(req.body) == { 'reason' => 'fraud' }
      end
    end

    should "be saveable" do
      account = Stripe::Account.retrieve
      account.legal_entity.first_name = 'Bob'
      account.legal_entity.address.line1 = '2 Three Four'
      account.save

      assert_requested :post, "#{Stripe.api_url}/v1/accounts/#{account.id}" do |req|
        Rack::Utils.parse_nested_query(req.body) == {
          'legal_entity' => {
            'first_name' => 'Bob',
            'address' => { 'line1' => '2 Three Four' },
          }
        }
      end
    end

    should "be updatable" do
      account = Stripe::Account.retrieve
      Stripe::Account.update(account.id,
        :legal_entity => {
          :first_name => 'Bob',
          :address => {
            :line1 => '2 Three Four'
          }
        }
      )

      assert_requested :post, "#{Stripe.api_url}/v1/accounts/#{account.id}" do |req|
        Rack::Utils.parse_nested_query(req.body) == {
          'legal_entity' => {
            'first_name' => 'Bob',
            'address' => { 'line1' => '2 Three Four' },
          }
        }
      end
    end

    should 'disallow direct overrides of legal_entity' do
      account = Stripe::Account.retrieve

      assert_raise NoMethodError do
        account.legal_entity = {:first_name => 'Blah'}
      end

      account.legal_entity.first_name = 'Blah'
    end

    should "be able to deauthorize an account" do
      a = Stripe::Account.retrieve
      a.deauthorize('ca_1234', 'sk_test_1234')

      assert_requested :post, "#{Stripe.connect_base}/oauth/deauthorize" do |req|
        Rack::Utils.parse_nested_query(req.body) == {
          'client_id'      => 'ca_1234',
          'stripe_user_id' => a.id,
        }
      end
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
      account = Stripe::Account.retrieve
      account.external_accounts.create({:external_account => 'btok_1234'})

      assert_requested :post, "#{Stripe.api_url}/v1/accounts/#{account.id}/external_accounts",
        body: 'external_account=btok_1234'
    end

    should "be able to retrieve a bank account" do
      stub_api do
        get "/v1/account" do
          generated_response.merge!({
            :external_accounts => {
              :object => "list",
              :resource_url => "/v1/accounts/acct_1234/external_accounts",
              :data => [{
                :id => "ba_1234",
                :object => "bank_account",
              }],
            }
          })
        end
      end

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

    context "#bank_account=" do
      should "warn that #bank_account= is deprecated" do
        old_stderr = $stderr
        $stderr = StringIO.new
        begin
          a = Stripe::Account.new("test_account")
          a.bank_account = "tok_123"
          message = "NOTE: Stripe::Account#bank_account= is " +
            "deprecated; use #external_account= instead"
          assert_match Regexp.new(message), $stderr.string
        ensure
          $stderr = old_stderr
        end
      end
    end
  end
end
