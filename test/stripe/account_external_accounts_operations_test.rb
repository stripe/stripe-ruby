# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  class AccountExternalAccountsOperationsTest < Test::Unit::TestCase
    setup do
      @account_id = "acct_123"
      @external_account_id = "ba_123"
    end

    context "#create_external_account" do
      should "create an external account" do
        external_account = Stripe::Account.create_external_account(
          @account_id,
          external_account: "btok_123"
        )
        assert_requested :post, "#{Stripe.api_base}/v1/accounts/#{@account_id}/external_accounts"
        assert external_account.is_a?(Stripe::BankAccount)
      end
    end

    context "#retrieve_external_account" do
      should "retrieve an external account" do
        external_account = Stripe::Account.retrieve_external_account(
          @account_id,
          @external_account_id
        )
        assert_requested :get, "#{Stripe.api_base}/v1/accounts/#{@account_id}/external_accounts/#{@external_account_id}"
        assert external_account.is_a?(Stripe::BankAccount)
      end
    end

    context "#update_external_account" do
      should "update an external account" do
        external_account = Stripe::Account.update_external_account(
          @account_id,
          @external_account_id,
          metadata: { foo: "bar" }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/accounts/#{@account_id}/external_accounts/#{@external_account_id}"
        assert external_account.is_a?(Stripe::BankAccount)
      end
    end

    context "#delete_external_account" do
      should "delete an external_account" do
        external_account = Stripe::Account.delete_external_account(
          @account_id,
          @external_account_id
        )
        assert_requested :delete, "#{Stripe.api_base}/v1/accounts/#{@account_id}/external_accounts/#{@external_account_id}"
        assert external_account.deleted
        assert_equal @external_account_id, external_account.id
      end
    end

    context "#list_external_accounts" do
      should "list the account's external accounts" do
        external_accounts = Stripe::Account.list_external_accounts(
          @account_id
        )
        assert_requested :get, "#{Stripe.api_base}/v1/accounts/#{@account_id}/external_accounts"
        assert external_accounts.is_a?(Stripe::ListObject)
        assert external_accounts.data.is_a?(Array)
      end
    end
  end
end
