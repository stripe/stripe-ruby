# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  class AccountTest < Test::Unit::TestCase
    should "be listable" do
      accounts = Stripe::Account.list
      assert_requested :get, "#{Stripe.api_base}/v1/accounts"
      assert accounts.data.is_a?(Array)
      assert accounts.data[0].is_a?(Stripe::Account)
    end

    should "be retrievable using singular endpoint" do
      account = Stripe::Account.retrieve
      assert_requested :get, "#{Stripe.api_base}/v1/account"
      assert account.is_a?(Stripe::Account)
    end

    should "be retrievable using plural endpoint" do
      account = Stripe::Account.retrieve("acct_123")
      assert_requested :get, "#{Stripe.api_base}/v1/accounts/acct_123"
      assert account.is_a?(Stripe::Account)
    end

    should "be rejectable" do
      account = Stripe::Account.retrieve("acct_foo")
      account = account.reject(reason: "fraud")
      assert_requested :post, "#{Stripe.api_base}/v1/accounts/#{account.id}/reject"
      assert account.is_a?(Stripe::Account)
    end

    context ".reject" do
      should "reject the account" do
        account = Stripe::Account.reject("acct_foo", reason: "fraud")
        assert_requested :post, "#{Stripe.api_base}/v1/accounts/#{account.id}/reject"
        assert account.is_a?(Stripe::Account)
      end
    end

    should "be creatable" do
      account = Stripe::Account.create(metadata: {}, type: "standard")
      assert_requested :post, "#{Stripe.api_base}/v1/accounts"
      assert account.is_a?(Stripe::Account)
    end

    should "be saveable" do
      account = Stripe::Account.retrieve("acct_123")
      account.metadata["key"] = "value"
      account.save
      assert_requested :post, "#{Stripe.api_base}/v1/accounts/#{account.id}"
    end

    should "be updateable" do
      account = Stripe::Account.update("acct_123", metadata: { foo: "bar" })
      assert_requested :post, "#{Stripe.api_base}/v1/accounts/acct_123"
      assert account.is_a?(Stripe::Account)
    end

    context "#delete" do
      should "be deletable" do
        account = Stripe::Account.retrieve("acct_123")
        account = account.delete
        assert_requested :delete, "#{Stripe.api_base}/v1/accounts/#{account.id}"
        assert account.is_a?(Stripe::Account)
      end
    end

    context ".delete" do
      should "be deletable" do
        account = Stripe::Account.delete("acct_123")
        assert_requested :delete, "#{Stripe.api_base}/v1/accounts/acct_123"
        assert account.is_a?(Stripe::Account)
      end
    end

    should "be able to list Persons" do
      account = Stripe::Account.retrieve("acct_123")
      persons = account.persons
      assert_requested :get, "#{Stripe.api_base}/v1/accounts/acct_123/persons"
      assert persons.data.is_a?(Array)
      assert persons.data[0].is_a?(Stripe::Person)
    end

    context "#bank_account=" do
      should "warn that #bank_account= is deprecated" do
        old_stderr = $stderr
        $stderr = StringIO.new
        begin
          account = Stripe::Account.retrieve("acct_123")
          account.bank_account = "tok_123"
          message = "NOTE: Stripe::Account#bank_account= is " \
                    "deprecated; use #external_account= instead"
          assert_match Regexp.new(message), $stderr.string
        ensure
          $stderr = old_stderr
        end
      end
    end

    context "#deauthorize" do
      should "deauthorize an account" do
        account = Stripe::Account.retrieve("acct_123")

        # Unfortunately, the OpenAPI spec doesn't yet cover anything under the
        # Connect endpoints, so for just stub this out with Webmock.
        stub_request(:post, "#{Stripe.connect_base}/oauth/deauthorize")
          .with(body: { "client_id" => "ca_1234", "stripe_user_id" => account.id })
          .to_return(body: JSON.generate("stripe_user_id" => account.id))
        account.deauthorize("ca_1234", "sk_test_1234")
      end
    end

    context "#legal_entity=" do
      should "disallow direct overrides" do
        account = Stripe::Account.construct_from(
          id: "acct_123",
          legal_entity: {
            first_name: "name",
          }
        )

        assert_raise NoMethodError do
          account.legal_entity = { first_name: "Blah" }
        end

        account.legal_entity.first_name = "Blah"
      end
    end

    context "#serialize_params" do
      should "serialize a new additional_owners" do
        obj = Stripe::Util.convert_to_stripe_object({
          object: "account",
          legal_entity: Stripe::StripeObject.construct_from({
          }),
        }, {})
        obj.legal_entity.additional_owners = [
          { first_name: "Joe" },
          { first_name: "Jane" },
        ]

        expected = {
          legal_entity: {
            additional_owners: {
              "0" => { first_name: "Joe" },
              "1" => { first_name: "Jane" },
            },
          },
        }
        assert_equal(expected, obj.serialize_params)
      end

      should "serialize on an partially changed additional_owners" do
        obj = Stripe::Util.convert_to_stripe_object({
          object: "account",
          legal_entity: {
            additional_owners: [
              Stripe::StripeObject.construct_from(first_name: "Joe"),
              Stripe::StripeObject.construct_from(first_name: "Jane"),
            ],
          },
        }, {})
        obj.legal_entity.additional_owners[1].first_name = "Stripe"

        expected = {
          legal_entity: {
            additional_owners: {
              "1" => { first_name: "Stripe" },
            },
          },
        }
        assert_equal(expected, obj.serialize_params)
      end

      should "serialize on an unchanged additional_owners" do
        obj = Stripe::Util.convert_to_stripe_object({
          object: "account",
          legal_entity: {
            additional_owners: [
              Stripe::StripeObject.construct_from(first_name: "Joe"),
              Stripe::StripeObject.construct_from(first_name: "Jane"),
            ],
          },
        }, {})

        expected = {
          legal_entity: {
            additional_owners: {},
          },
        }
        assert_equal(expected, obj.serialize_params)
      end

      # Note that the empty string that we send for this one has a special
      # meaning for the server, which interprets it as an array unset.
      should "serialize on an unset additional_owners" do
        obj = Stripe::Util.convert_to_stripe_object({
          object: "account",
          legal_entity: {
            additional_owners: [
              Stripe::StripeObject.construct_from(first_name: "Joe"),
              Stripe::StripeObject.construct_from(first_name: "Jane"),
            ],
          },
        }, {})
        obj.legal_entity.additional_owners = nil

        expected = {
          legal_entity: {
            additional_owners: "",
          },
        }
        assert_equal(expected, obj.serialize_params)
      end

      should "serialize on a new individual" do
        obj = Stripe::Util.convert_to_stripe_object({
          object: "account",
        }, {})
        obj.individual = { first_name: "Jane" }

        expected = { individual: { first_name: "Jane" } }
        assert_equal(expected, obj.serialize_params)
      end

      should "serialize on a partially changed individual" do
        obj = Stripe::Util.convert_to_stripe_object({
          object: "account",
          individual: Stripe::Util.convert_to_stripe_object({
            object: "person",
            first_name: "Jenny",
          }, {}),
        }, {})
        obj.individual = { first_name: "Jane" }

        expected = { individual: { first_name: "Jane" } }
        assert_equal(expected, obj.serialize_params)
      end

      should "serialize on an unchanged individual" do
        obj = Stripe::Util.convert_to_stripe_object({
          object: "account",
          individual: Stripe::Util.convert_to_stripe_object({
            object: "person",
            first_name: "Jenny",
          }, {}),
        }, {})

        expected = { individual: {} }
        assert_equal(expected, obj.serialize_params)
      end

      should "serialize on an unset individual" do
        obj = Stripe::Util.convert_to_stripe_object({
          object: "account",
          individual: Stripe::Util.convert_to_stripe_object({
            object: "person",
            first_name: "Jenny",
          }, {}),
        }, {})
        obj.individual = nil

        expected = { individual: "" }
        assert_equal(expected, obj.serialize_params)
      end
    end
  end
end
