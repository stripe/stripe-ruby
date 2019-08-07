# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

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

    context "#retrieve_capability" do
      should "retrieve a capability" do
        capability = Stripe::Account.retrieve_capability(
          "acct_123",
          "acap_123"
        )
        assert_requested :get, "#{Stripe.api_base}/v1/accounts/acct_123/capabilities/acap_123"
        assert capability.is_a?(Stripe::Capability)
      end
    end

    context "#update_capability" do
      should "update a capability" do
        capability = Stripe::Account.update_capability(
          "acct_123",
          "acap_123",
          requested: true
        )
        assert_requested :post, "#{Stripe.api_base}/v1/accounts/acct_123/capabilities/acap_123"
        assert capability.is_a?(Stripe::Capability)
      end
    end

    context "#list_capabilities" do
      should "list the account's external accounts" do
        capabilities = Stripe::Account.list_capabilities(
          "acct_123"
        )
        assert_requested :get, "#{Stripe.api_base}/v1/accounts/acct_123/capabilities"
        assert capabilities.is_a?(Stripe::ListObject)
        assert capabilities.data.is_a?(Array)
      end
    end

    context "#create_external_account" do
      should "create an external account" do
        external_account = Stripe::Account.create_external_account(
          "acct_123",
          external_account: "btok_123"
        )
        assert_requested :post, "#{Stripe.api_base}/v1/accounts/acct_123/external_accounts"
        assert external_account.is_a?(Stripe::BankAccount)
      end
    end

    context "#retrieve_external_account" do
      should "retrieve an external account" do
        external_account = Stripe::Account.retrieve_external_account(
          "acct_123",
          "ba_123"
        )
        assert_requested :get, "#{Stripe.api_base}/v1/accounts/acct_123/external_accounts/ba_123"
        assert external_account.is_a?(Stripe::BankAccount)
      end
    end

    context "#update_external_account" do
      should "update an external account" do
        external_account = Stripe::Account.update_external_account(
          "acct_123",
          "ba_123",
          metadata: { foo: "bar" }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/accounts/acct_123/external_accounts/ba_123"
        assert external_account.is_a?(Stripe::BankAccount)
      end
    end

    context "#delete_external_account" do
      should "delete an external_account" do
        external_account = Stripe::Account.delete_external_account(
          "acct_123",
          "ba_123"
        )
        assert_requested :delete, "#{Stripe.api_base}/v1/accounts/acct_123/external_accounts/ba_123"
        assert external_account.deleted
        assert_equal "ba_123", external_account.id
      end
    end

    context "#list_external_accounts" do
      should "list the account's external accounts" do
        external_accounts = Stripe::Account.list_external_accounts(
          "acct_123"
        )
        assert_requested :get, "#{Stripe.api_base}/v1/accounts/acct_123/external_accounts"
        assert external_accounts.is_a?(Stripe::ListObject)
        assert external_accounts.data.is_a?(Array)
      end
    end

    context "#create_login_link" do
      should "create a login link" do
        login_link = Stripe::Account.create_login_link(
          "acct_123"
        )
        assert_requested :post, "#{Stripe.api_base}/v1/accounts/acct_123/login_links"
        assert login_link.is_a?(Stripe::LoginLink)
      end
    end

    context "#create_person" do
      should "create a person" do
        person = Stripe::Account.create_person(
          "acct_123",
          first_name: "John",
          last_name: "Doe"
        )
        assert_requested :post, "#{Stripe.api_base}/v1/accounts/acct_123/persons"
        assert person.is_a?(Stripe::Person)
      end
    end

    context "#retrieve_person" do
      should "retrieve a person" do
        person = Stripe::Account.retrieve_person(
          "acct_123",
          "person_123"
        )
        assert_requested :get, "#{Stripe.api_base}/v1/accounts/acct_123/persons/person_123"
        assert person.is_a?(Stripe::Person)
      end
    end

    context "#update_person" do
      should "update a person" do
        person = Stripe::Account.update_person(
          "acct_123",
          "person_123",
          first_name: "John"
        )
        assert_requested :post, "#{Stripe.api_base}/v1/accounts/acct_123/persons/person_123"
        assert person.is_a?(Stripe::Person)
      end
    end

    context "#delete_person" do
      should "delete an person" do
        person = Stripe::Account.delete_person(
          "acct_123",
          "person_123"
        )
        assert_requested :delete, "#{Stripe.api_base}/v1/accounts/acct_123/persons/person_123"
        assert person.deleted
        assert_equal "person_123", person.id
      end
    end

    context "#list_persons" do
      should "list the account's external accounts" do
        persons = Stripe::Account.list_persons(
          "acct_123"
        )
        assert_requested :get, "#{Stripe.api_base}/v1/accounts/acct_123/persons"
        assert persons.is_a?(Stripe::ListObject)
        assert persons.data.is_a?(Array)
      end
    end
  end
end
