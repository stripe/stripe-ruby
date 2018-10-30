# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  class AccountPersonsOperationsTest < Test::Unit::TestCase
    setup do
      @account_id = "acct_123"
      @person_id = "person_123"
    end

    context "#create_person" do
      should "create a person" do
        person = Stripe::Account.create_person(
          @account_id,
          first_name: "John",
          last_name: "Doe"
        )
        assert_requested :post, "#{Stripe.api_base}/v1/accounts/#{@account_id}/persons"
        assert person.is_a?(Stripe::Person)
      end
    end

    context "#retrieve_person" do
      should "retrieve a person" do
        person = Stripe::Account.retrieve_person(
          @account_id,
          @person_id
        )
        assert_requested :get, "#{Stripe.api_base}/v1/accounts/#{@account_id}/persons/#{@person_id}"
        assert person.is_a?(Stripe::Person)
      end
    end

    context "#update_person" do
      should "update a person" do
        person = Stripe::Account.update_person(
          @account_id,
          @person_id,
          first_name: "John"
        )
        assert_requested :post, "#{Stripe.api_base}/v1/accounts/#{@account_id}/persons/#{@person_id}"
        assert person.is_a?(Stripe::Person)
      end
    end

    context "#delete_person" do
      should "delete an person" do
        person = Stripe::Account.delete_person(
          @account_id,
          @person_id
        )
        assert_requested :delete, "#{Stripe.api_base}/v1/accounts/#{@account_id}/persons/#{@person_id}"
        assert person.deleted
        assert_equal @person_id, person.id
      end
    end

    context "#list_persons" do
      should "list the account's external accounts" do
        persons = Stripe::Account.list_persons(
          @account_id
        )
        assert_requested :get, "#{Stripe.api_base}/v1/accounts/#{@account_id}/persons"
        assert persons.is_a?(Stripe::ListObject)
        assert persons.data.is_a?(Array)
      end
    end
  end
end
