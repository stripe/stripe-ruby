# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  class PersonTest < Test::Unit::TestCase
    context "#resource_url" do
      should "return a resource URL" do
        person = Stripe::Person.construct_from(
          id: "person_123",
          account: "acct_123"
        )
        assert_equal "/v1/accounts/acct_123/persons/person_123",
                     person.resource_url
      end

      should "raise without an account" do
        person = Stripe::Person.construct_from(id: "person_123")
        assert_raises NotImplementedError do
          person.resource_url
        end
      end
    end

    should "raise on #retrieve" do
      assert_raises NotImplementedError do
        Stripe::Person.retrieve("person_123")
      end
    end

    should "raise on #update" do
      assert_raises NotImplementedError do
        Stripe::Person.update("person_123", {})
      end
    end

    should "be saveable" do
      account = Stripe::Account.retrieve("acct_123")
      person = account.persons.retrieve("person_123")
      person.first_name = "John"
      person.save
      assert_requested :post,
                       "#{Stripe.api_base}/v1/accounts/#{person.account}/persons/#{person.id}"
    end
  end
end
