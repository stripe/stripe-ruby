# File generated from our OpenAPI spec
# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)
module Stripe
  class CodegennedExampleTest < Test::Unit::TestCase
    should "Test account links post" do
      account_link = Stripe::AccountLink.create({
        account: "acct_xxxxxxxxxxxxx",
        refresh_url: "https://example.com/reauth",
        return_url: "https://example.com/return",
        type: "account_onboarding",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/account_links"
    end
    should "Test account links post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/account_links").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      account_link = client.v1.account_links.create({
        account: "acct_xxxxxxxxxxxxx",
        refresh_url: "https://example.com/reauth",
        return_url: "https://example.com/return",
        type: "account_onboarding",
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/account_links"
    end
    should "Test accounts capabilities get" do
      capabilities = Stripe::Account.list_capabilities("acct_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/capabilities"
    end
    should "Test accounts capabilities get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx/capabilities"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      capabilities = client.v1.accounts.capabilities.list("acct_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx/capabilities"
    end
    should "Test accounts capabilities get 2" do
      capability = Stripe::Account.retrieve_capability("acct_xxxxxxxxxxxxx", "card_payments")
      assert_requested :get, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/capabilities/card_payments"
    end
    should "Test accounts capabilities get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx/capabilities/card_payments"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      capability = client.v1.accounts.capabilities.retrieve("acct_xxxxxxxxxxxxx", "card_payments")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx/capabilities/card_payments"
    end
    should "Test accounts capabilities post" do
      capability = Stripe::Account.update_capability(
        "acct_xxxxxxxxxxxxx",
        "card_payments",
        { requested: true }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/capabilities/card_payments"
    end
    should "Test accounts capabilities post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx/capabilities/card_payments"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      capability = client.v1.accounts.capabilities.update(
        "acct_xxxxxxxxxxxxx",
        "card_payments",
        { requested: true }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx/capabilities/card_payments"
    end
    should "Test accounts delete" do
      deleted = Stripe::Account.delete("acct_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx"
    end
    should "Test accounts delete (service)" do
      stub_request(:delete, "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      deleted = client.v1.accounts.delete("acct_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx"
    end
    should "Test accounts external accounts delete" do
      deleted = Stripe::Account.delete_external_account("acct_xxxxxxxxxxxxx", "ba_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts/ba_xxxxxxxxxxxxx"
    end
    should "Test accounts external accounts delete (service)" do
      stub_request(
        :delete,
        "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts/ba_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      deleted = client.v1.accounts.external_accounts.delete(
        "acct_xxxxxxxxxxxxx",
        "ba_xxxxxxxxxxxxx"
      )
      assert_requested :delete, "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts/ba_xxxxxxxxxxxxx"
    end
    should "Test accounts external accounts delete 2" do
      deleted = Stripe::Account.delete_external_account("acct_xxxxxxxxxxxxx", "card_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts/card_xxxxxxxxxxxxx"
    end
    should "Test accounts external accounts delete 2 (service)" do
      stub_request(
        :delete,
        "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts/card_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      deleted = client.v1.accounts.external_accounts.delete(
        "acct_xxxxxxxxxxxxx",
        "card_xxxxxxxxxxxxx"
      )
      assert_requested :delete, "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts/card_xxxxxxxxxxxxx"
    end
    should "Test accounts external accounts get" do
      external_accounts = Stripe::Account.list_external_accounts("acct_xxxxxxxxxxxxx", { limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts?limit=3"
    end
    should "Test accounts external accounts get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts?limit=3"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      result = client.v1.accounts.external_accounts.list("acct_xxxxxxxxxxxxx", { limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts?limit=3"
    end
    should "Test accounts external accounts get 2" do
      external_accounts = Stripe::Account.list_external_accounts(
        "acct_xxxxxxxxxxxxx",
        {
          object: "bank_account",
          limit: 3,
        }
      )
      assert_requested :get, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts?object=bank_account&limit=3"
    end
    should "Test accounts external accounts get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts?object=bank_account&limit=3"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      result = client.v1.accounts.external_accounts.list(
        "acct_xxxxxxxxxxxxx",
        {
          object: "bank_account",
          limit: 3,
        }
      )
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts?object=bank_account&limit=3"
    end
    should "Test accounts external accounts get 3" do
      external_accounts = Stripe::Account.list_external_accounts(
        "acct_xxxxxxxxxxxxx",
        {
          object: "card",
          limit: 3,
        }
      )
      assert_requested :get, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts?object=card&limit=3"
    end
    should "Test accounts external accounts get 3 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts?object=card&limit=3"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      result = client.v1.accounts.external_accounts.list(
        "acct_xxxxxxxxxxxxx",
        {
          object: "card",
          limit: 3,
        }
      )
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts?object=card&limit=3"
    end
    should "Test accounts external accounts post" do
      external_account = Stripe::Account.create_external_account(
        "acct_xxxxxxxxxxxxx",
        { external_account: "btok_xxxxxxxxxxxxx" }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts"
    end
    should "Test accounts external accounts post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      result = client.v1.accounts.external_accounts.create(
        "acct_xxxxxxxxxxxxx",
        { external_account: "btok_xxxxxxxxxxxxx" }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts"
    end
    should "Test accounts external accounts post 2" do
      external_account = Stripe::Account.create_external_account(
        "acct_xxxxxxxxxxxxx",
        { external_account: "tok_xxxx_debit" }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts"
    end
    should "Test accounts external accounts post 2 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      result = client.v1.accounts.external_accounts.create(
        "acct_xxxxxxxxxxxxx",
        { external_account: "tok_xxxx_debit" }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts"
    end
    should "Test accounts external accounts post 3" do
      external_account = Stripe::Account.update_external_account(
        "acct_xxxxxxxxxxxxx",
        "ba_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts/ba_xxxxxxxxxxxxx"
    end
    should "Test accounts external accounts post 3 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts/ba_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      result = client.v1.accounts.external_accounts.update(
        "acct_xxxxxxxxxxxxx",
        "ba_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts/ba_xxxxxxxxxxxxx"
    end
    should "Test accounts external accounts post 4" do
      external_account = Stripe::Account.update_external_account(
        "acct_xxxxxxxxxxxxx",
        "card_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts/card_xxxxxxxxxxxxx"
    end
    should "Test accounts external accounts post 4 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts/card_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      result = client.v1.accounts.external_accounts.update(
        "acct_xxxxxxxxxxxxx",
        "card_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts/card_xxxxxxxxxxxxx"
    end
    should "Test accounts get" do
      accounts = Stripe::Account.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/accounts?limit=3"
    end
    should "Test accounts get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/accounts?limit=3").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      accounts = client.v1.accounts.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/accounts?limit=3"
    end
    should "Test accounts get 2" do
      account = Stripe::Account.retrieve("acct_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx"
    end
    should "Test accounts get 2 (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      account = client.v1.accounts.retrieve("acct_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx"
    end
    should "Test accounts persons get" do
      persons = Stripe::Account.persons("acct_xxxxxxxxxxxxx", { limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/persons?limit=3"
    end
    should "Test accounts persons get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx/persons?limit=3"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      persons = client.v1.accounts.persons.list("acct_xxxxxxxxxxxxx", { limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx/persons?limit=3"
    end
    should "Test accounts persons get 2" do
      person = Stripe::Account.retrieve_person("acct_xxxxxxxxxxxxx", "person_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/persons/person_xxxxxxxxxxxxx"
    end
    should "Test accounts persons get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx/persons/person_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      person = client.v1.accounts.persons.retrieve("acct_xxxxxxxxxxxxx", "person_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx/persons/person_xxxxxxxxxxxxx"
    end
    should "Test accounts persons post 2" do
      person = Stripe::Account.update_person(
        "acct_xxxxxxxxxxxxx",
        "person_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/persons/person_xxxxxxxxxxxxx"
    end
    should "Test accounts persons post 2 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx/persons/person_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      person = client.v1.accounts.persons.update(
        "acct_xxxxxxxxxxxxx",
        "person_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx/persons/person_xxxxxxxxxxxxx"
    end
    should "Test accounts post" do
      account = Stripe::Account.create({
        type: "custom",
        country: "US",
        email: "jenny.rosen@example.com",
        capabilities: {
          card_payments: { requested: true },
          transfers: { requested: true },
        },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/accounts"
    end
    should "Test accounts post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/accounts").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      account = client.v1.accounts.create({
        type: "custom",
        country: "US",
        email: "jenny.rosen@example.com",
        capabilities: {
          card_payments: { requested: true },
          transfers: { requested: true },
        },
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/accounts"
    end
    should "Test accounts post 2" do
      account = Stripe::Account.update("acct_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx"
    end
    should "Test accounts post 2 (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      account = client.v1.accounts.update("acct_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx"
    end
    should "Test accounts reject post" do
      account = Stripe::Account.reject("acct_xxxxxxxxxxxxx", { reason: "fraud" })
      assert_requested :post, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/reject"
    end
    should "Test accounts reject post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx/reject"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      account = client.v1.accounts.reject("acct_xxxxxxxxxxxxx", { reason: "fraud" })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acct_xxxxxxxxxxxxx/reject"
    end
    should "Test application fees get" do
      application_fees = Stripe::ApplicationFee.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/application_fees?limit=3"
    end
    should "Test application fees get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/application_fees?limit=3").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      application_fees = client.v1.application_fees.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/application_fees?limit=3"
    end
    should "Test application fees get 2" do
      application_fee = Stripe::ApplicationFee.retrieve("fee_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/application_fees/fee_xxxxxxxxxxxxx"
    end
    should "Test application fees get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/application_fees/fee_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      application_fee = client.v1.application_fees.retrieve("fee_xxxxxxxxxxxxx")
      assert_requested :get,  "#{Stripe::DEFAULT_API_BASE}/v1/application_fees/fee_xxxxxxxxxxxxx"
    end
    should "Test application fees refunds get" do
      application_fee_refunds = Stripe::ApplicationFee.list_refunds("fee_xxxxxxxxxxxxx", { limit: 3 })
      assert_requested :get,  "#{Stripe.api_base}/v1/application_fees/fee_xxxxxxxxxxxxx/refunds?limit=3"
    end
    should "Test application fees refunds get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/application_fees/fee_xxxxxxxxxxxxx/refunds?limit=3"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      application_fee_refunds = client.v1.application_fees.refunds.list(
        "fee_xxxxxxxxxxxxx",
        { limit: 3 }
      )
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/application_fees/fee_xxxxxxxxxxxxx/refunds?limit=3"
    end
    should "Test application fees refunds get 2" do
      application_fee_refund = Stripe::ApplicationFee.retrieve_refund(
        "fee_xxxxxxxxxxxxx",
        "fr_xxxxxxxxxxxxx"
      )
      assert_requested :get, "#{Stripe.api_base}/v1/application_fees/fee_xxxxxxxxxxxxx/refunds/fr_xxxxxxxxxxxxx"
    end
    should "Test application fees refunds get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/application_fees/fee_xxxxxxxxxxxxx/refunds/fr_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      application_fee_refund = client.v1.application_fees.refunds.retrieve(
        "fee_xxxxxxxxxxxxx",
        "fr_xxxxxxxxxxxxx"
      )
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/application_fees/fee_xxxxxxxxxxxxx/refunds/fr_xxxxxxxxxxxxx"
    end
    should "Test application fees refunds post 2" do
      application_fee_refund = Stripe::ApplicationFee.update_refund(
        "fee_xxxxxxxxxxxxx",
        "fr_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/application_fees/fee_xxxxxxxxxxxxx/refunds/fr_xxxxxxxxxxxxx"
    end
    should "Test application fees refunds post 2 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/application_fees/fee_xxxxxxxxxxxxx/refunds/fr_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      application_fee_refund = client.v1.application_fees.refunds.update(
        "fee_xxxxxxxxxxxxx",
        "fr_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/application_fees/fee_xxxxxxxxxxxxx/refunds/fr_xxxxxxxxxxxxx"
    end
    should "Test apps secrets delete post" do
      secret = Stripe::Apps::Secret.delete_where({
        name: "my-api-key",
        scope: { type: "account" },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/apps/secrets/delete"
    end
    should "Test apps secrets delete post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/apps/secrets/delete").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      secret = client.v1.apps.secrets.delete_where({
        name: "my-api-key",
        scope: { type: "account" },
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/apps/secrets/delete"
    end
    should "Test apps secrets find get" do
      secret = Stripe::Apps::Secret.find({
        name: "sec_123",
        scope: { type: "account" },
      })
      assert_requested :get, "#{Stripe.api_base}/v1/apps/secrets/find?name=sec_123&scope[type]=account"
    end
    should "Test apps secrets find get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/apps/secrets/find?name=sec_123&scope[type]=account"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      secret = client.v1.apps.secrets.find({
        name: "sec_123",
        scope: { type: "account" },
      })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/apps/secrets/find?name=sec_123&scope[type]=account"
    end
    should "Test apps secrets get" do
      secrets = Stripe::Apps::Secret.list({
        scope: { type: "account" },
        limit: 2,
      })
      assert_requested :get, "#{Stripe.api_base}/v1/apps/secrets?scope[type]=account&limit=2"
    end
    should "Test apps secrets get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/apps/secrets?scope[type]=account&limit=2"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      secrets = client.v1.apps.secrets.list({
        scope: { type: "account" },
        limit: 2,
      })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/apps/secrets?scope[type]=account&limit=2"
    end
    should "Test apps secrets get 2" do
      secrets = Stripe::Apps::Secret.list({
        scope: { type: "account" },
        limit: 2,
      })
      assert_requested :get, "#{Stripe.api_base}/v1/apps/secrets?scope[type]=account&limit=2"
    end
    should "Test apps secrets get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/apps/secrets?scope[type]=account&limit=2"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      secrets = client.v1.apps.secrets.list({
        scope: { type: "account" },
        limit: 2,
      })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/apps/secrets?scope[type]=account&limit=2"
    end
    should "Test apps secrets post" do
      secret = Stripe::Apps::Secret.create({
        name: "sec_123",
        payload: "very secret string",
        scope: { type: "account" },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/apps/secrets"
    end
    should "Test apps secrets post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/apps/secrets").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      secret = client.v1.apps.secrets.create({
        name: "sec_123",
        payload: "very secret string",
        scope: { type: "account" },
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/apps/secrets"
    end
    should "Test apps secrets post 2" do
      secret = Stripe::Apps::Secret.create({
        name: "my-api-key",
        payload: "secret_key_xxxxxx",
        scope: { type: "account" },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/apps/secrets"
    end
    should "Test apps secrets post 2 (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/apps/secrets").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      secret = client.v1.apps.secrets.create({
        name: "my-api-key",
        payload: "secret_key_xxxxxx",
        scope: { type: "account" },
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/apps/secrets"
    end
    should "Test balance transactions get" do
      balance_transactions = Stripe::BalanceTransaction.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/balance_transactions?limit=3"
    end
    should "Test balance transactions get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/balance_transactions?limit=3").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      balance_transactions = client.v1.balance_transactions.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/balance_transactions?limit=3"
    end
    should "Test balance transactions get 2" do
      balance_transaction = Stripe::BalanceTransaction.retrieve("txn_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/balance_transactions/txn_xxxxxxxxxxxxx"
    end
    should "Test balance transactions get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/balance_transactions/txn_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      balance_transaction = client.v1.balance_transactions.retrieve("txn_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/balance_transactions/txn_xxxxxxxxxxxxx"
    end
    should "Test billing portal configurations get" do
      configurations = Stripe::BillingPortal::Configuration.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/billing_portal/configurations?limit=3"
    end
    should "Test billing portal configurations get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/billing_portal/configurations?limit=3"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      configurations = client.v1.billing_portal.configurations.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/billing_portal/configurations?limit=3"
    end
    should "Test billing portal configurations get 2" do
      configuration = Stripe::BillingPortal::Configuration.retrieve("bpc_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/billing_portal/configurations/bpc_xxxxxxxxxxxxx"
    end
    should "Test billing portal configurations get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/billing_portal/configurations/bpc_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      configuration = client.v1.billing_portal.configurations.retrieve("bpc_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/billing_portal/configurations/bpc_xxxxxxxxxxxxx"
    end
    should "Test billing portal configurations post" do
      configuration = Stripe::BillingPortal::Configuration.create({
        features: {
          customer_update: {
            allowed_updates: %w[email tax_id],
            enabled: true,
          },
          invoice_history: { enabled: true },
        },
        business_profile: {
          privacy_policy_url: "https://example.com/privacy",
          terms_of_service_url: "https://example.com/terms",
        },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/billing_portal/configurations"
    end
    should "Test billing portal configurations post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/billing_portal/configurations").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      configuration = client.v1.billing_portal.configurations.create({
        features: {
          customer_update: {
            allowed_updates: %w[email tax_id],
            enabled: true,
          },
          invoice_history: { enabled: true },
        },
        business_profile: {
          privacy_policy_url: "https://example.com/privacy",
          terms_of_service_url: "https://example.com/terms",
        },
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/billing_portal/configurations"
    end
    should "Test billing portal configurations post 2" do
      configuration = Stripe::BillingPortal::Configuration.update(
        "bpc_xxxxxxxxxxxxx",
        {
          business_profile: {
            privacy_policy_url: "https://example.com/privacy",
            terms_of_service_url: "https://example.com/terms",
          },
        }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/billing_portal/configurations/bpc_xxxxxxxxxxxxx"
    end
    should "Test billing portal configurations post 2 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/billing_portal/configurations/bpc_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      configuration = client.v1.billing_portal.configurations.update(
        "bpc_xxxxxxxxxxxxx",
        {
          business_profile: {
            privacy_policy_url: "https://example.com/privacy",
            terms_of_service_url: "https://example.com/terms",
          },
        }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/billing_portal/configurations/bpc_xxxxxxxxxxxxx"
    end
    should "Test billing portal sessions post" do
      session = Stripe::BillingPortal::Session.create({
        customer: "cus_xxxxxxxxxxxxx",
        return_url: "https://example.com/account",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/billing_portal/sessions"
    end
    should "Test billing portal sessions post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/billing_portal/sessions").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      session = client.v1.billing_portal.sessions.create({
        customer: "cus_xxxxxxxxxxxxx",
        return_url: "https://example.com/account",
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/billing_portal/sessions"
    end
    should "Test charges capture post" do
      charge = Stripe::Charge.capture("ch_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/charges/ch_xxxxxxxxxxxxx/capture"
    end
    should "Test charges capture post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/charges/ch_xxxxxxxxxxxxx/capture"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      charge = client.v1.charges.capture("ch_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/charges/ch_xxxxxxxxxxxxx/capture"
    end
    should "Test charges get" do
      charges = Stripe::Charge.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/charges?limit=3"
    end
    should "Test charges get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/charges?limit=3").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      charges = client.v1.charges.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/charges?limit=3"
    end
    should "Test charges get 2" do
      charge = Stripe::Charge.retrieve("ch_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/charges/ch_xxxxxxxxxxxxx"
    end
    should "Test charges get 2 (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/charges/ch_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      charge = client.v1.charges.retrieve("ch_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/charges/ch_xxxxxxxxxxxxx"
    end
    should "Test charges post" do
      charge = Stripe::Charge.create({
        amount: 2000,
        currency: "usd",
        source: "tok_xxxx",
        description: "My First Test Charge (created for API docs at https://www.stripe.com/docs/api)",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/charges"
    end
    should "Test charges post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/charges").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      charge = client.v1.charges.create({
        amount: 2000,
        currency: "usd",
        source: "tok_xxxx",
        description: "My First Test Charge (created for API docs at https://www.stripe.com/docs/api)",
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/charges"
    end
    should "Test charges post 2" do
      charge = Stripe::Charge.update("ch_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/charges/ch_xxxxxxxxxxxxx"
    end
    should "Test charges post 2 (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/charges/ch_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      charge = client.v1.charges.update("ch_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/charges/ch_xxxxxxxxxxxxx"
    end
    should "Test charges search get" do
      charges = Stripe::Charge.search({ query: "amount>999 AND metadata['order_id']:'6735'" })
      assert_requested :get, "#{Stripe.api_base}/v1/charges/search?query=amount%3E999%20AND%20metadata%5B%27order_id%27%5D%3A%276735%27"
    end
    should "Test charges search get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/charges/search?query=amount%3E999%20AND%20metadata%5B%27order_id%27%5D%3A%276735%27"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      charges = client.v1.charges.search({ query: "amount>999 AND metadata['order_id']:'6735'" })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/charges/search?query=amount%3E999%20AND%20metadata%5B%27order_id%27%5D%3A%276735%27"
    end
    should "Test checkout sessions expire post" do
      session = Stripe::Checkout::Session.expire("sess_xyz")
      assert_requested :post, "#{Stripe.api_base}/v1/checkout/sessions/sess_xyz/expire"
    end
    should "Test checkout sessions expire post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/checkout/sessions/sess_xyz/expire"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      session = client.v1.checkout.sessions.expire("sess_xyz")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/checkout/sessions/sess_xyz/expire"
    end
    should "Test checkout sessions expire post 2" do
      session = Stripe::Checkout::Session.expire("cs_test_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/checkout/sessions/cs_test_xxxxxxxxxxxxx/expire"
    end
    should "Test checkout sessions expire post 2 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/checkout/sessions/cs_test_xxxxxxxxxxxxx/expire"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      session = client.v1.checkout.sessions.expire("cs_test_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/checkout/sessions/cs_test_xxxxxxxxxxxxx/expire"
    end
    should "Test checkout sessions get" do
      sessions = Stripe::Checkout::Session.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/checkout/sessions?limit=3"
    end
    should "Test checkout sessions get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/checkout/sessions?limit=3").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      sessions = client.v1.checkout.sessions.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/checkout/sessions?limit=3"
    end
    should "Test checkout sessions get 2" do
      session = Stripe::Checkout::Session.retrieve("cs_test_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/checkout/sessions/cs_test_xxxxxxxxxxxxx"
    end
    should "Test checkout sessions get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/checkout/sessions/cs_test_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      session = client.v1.checkout.sessions.retrieve("cs_test_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/checkout/sessions/cs_test_xxxxxxxxxxxxx"
    end
    should "Test checkout sessions line items get" do
      line_items = Stripe::Checkout::Session.list_line_items("sess_xyz")
      assert_requested :get, "#{Stripe.api_base}/v1/checkout/sessions/sess_xyz/line_items"
    end
    should "Test checkout sessions line items get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/checkout/sessions/sess_xyz/line_items"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      line_items = client.v1.checkout.sessions.line_items.list("sess_xyz")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/checkout/sessions/sess_xyz/line_items"
    end
    should "Test checkout sessions post" do
      session = Stripe::Checkout::Session.create({
        success_url: "https://example.com/success",
        cancel_url: "https://example.com/cancel",
        mode: "payment",
        shipping_options: [
          { shipping_rate: "shr_standard" },
          {
            shipping_rate_data: {
              display_name: "Standard",
              delivery_estimate: {
                minimum: {
                  unit: "day",
                  value: 5,
                },
                maximum: {
                  unit: "day",
                  value: 7,
                },
              },
            },
          },
        ],
      })
      assert_requested :post, "#{Stripe.api_base}/v1/checkout/sessions"
    end
    should "Test checkout sessions post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/checkout/sessions").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      session = client.v1.checkout.sessions.create({
        success_url: "https://example.com/success",
        cancel_url: "https://example.com/cancel",
        mode: "payment",
        shipping_options: [
          { shipping_rate: "shr_standard" },
          {
            shipping_rate_data: {
              display_name: "Standard",
              delivery_estimate: {
                minimum: {
                  unit: "day",
                  value: 5,
                },
                maximum: {
                  unit: "day",
                  value: 7,
                },
              },
            },
          },
        ],
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/checkout/sessions"
    end
    should "Test checkout sessions post 2" do
      session = Stripe::Checkout::Session.create({
        success_url: "https://example.com/success",
        line_items: [
          {
            price: "price_xxxxxxxxxxxxx",
            quantity: 2,
          },
        ],
        mode: "payment",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/checkout/sessions"
    end
    should "Test checkout sessions post 2 (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/checkout/sessions").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      session = client.v1.checkout.sessions.create({
        success_url: "https://example.com/success",
        line_items: [
          {
            price: "price_xxxxxxxxxxxxx",
            quantity: 2,
          },
        ],
        mode: "payment",
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/checkout/sessions"
    end
    should "Test core events get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/core/events/ll_123").to_return(
        body: '{"context":"context","created":"1970-01-12T21:42:34.472Z","id":"obj_123","object":"v2.core.event","reason":{"type":"request","request":{"id":"obj_123","idempotency_key":"idempotency_key"}},"type":"type","livemode":true}'
      )
      client = Stripe::StripeClient.new("sk_test_123")

      event = client.v2.core.events.retrieve("ll_123")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v2/core/events/ll_123"
    end
    should "Test country specs get" do
      country_specs = Stripe::CountrySpec.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/country_specs?limit=3"
    end
    should "Test country specs get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/country_specs?limit=3").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      country_specs = client.v1.country_specs.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/country_specs?limit=3"
    end
    should "Test country specs get 2" do
      country_spec = Stripe::CountrySpec.retrieve("US")
      assert_requested :get, "#{Stripe.api_base}/v1/country_specs/US"
    end
    should "Test country specs get 2 (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/country_specs/US").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      country_spec = client.v1.country_specs.retrieve("US")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/country_specs/US"
    end
    should "Test coupons delete" do
      deleted = Stripe::Coupon.delete("Z4OV52SU")
      assert_requested :delete, "#{Stripe.api_base}/v1/coupons/Z4OV52SU"
    end
    should "Test coupons delete (service)" do
      stub_request(:delete, "#{Stripe::DEFAULT_API_BASE}/v1/coupons/Z4OV52SU").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      deleted = client.v1.coupons.delete("Z4OV52SU")
      assert_requested :delete, "#{Stripe::DEFAULT_API_BASE}/v1/coupons/Z4OV52SU"
    end
    should "Test coupons get" do
      coupons = Stripe::Coupon.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/coupons?limit=3"
    end
    should "Test coupons get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/coupons?limit=3").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      coupons = client.v1.coupons.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/coupons?limit=3"
    end
    should "Test coupons get 2" do
      coupon = Stripe::Coupon.retrieve("Z4OV52SU")
      assert_requested :get, "#{Stripe.api_base}/v1/coupons/Z4OV52SU"
    end
    should "Test coupons get 2 (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/coupons/Z4OV52SU").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      coupon = client.v1.coupons.retrieve("Z4OV52SU")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/coupons/Z4OV52SU"
    end
    should "Test coupons post" do
      coupon = Stripe::Coupon.create({
        percent_off: 25.5,
        duration: "once",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/coupons"
    end
    should "Test coupons post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/coupons").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      coupon = client.v1.coupons.create({
        percent_off: 25.5,
        duration: "once",
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/coupons"
    end
    should "Test coupons post 2" do
      coupon = Stripe::Coupon.update("Z4OV52SU", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/coupons/Z4OV52SU"
    end
    should "Test coupons post 2 (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/coupons/Z4OV52SU").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      coupon = client.v1.coupons.update("Z4OV52SU", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/coupons/Z4OV52SU"
    end
    should "Test credit notes get" do
      credit_notes = Stripe::CreditNote.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/credit_notes?limit=3"
    end
    should "Test credit notes get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/credit_notes?limit=3").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      credit_notes = client.v1.credit_notes.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/credit_notes?limit=3"
    end
    should "Test credit notes post" do
      credit_note = Stripe::CreditNote.create({
        invoice: "in_xxxxxxxxxxxxx",
        lines: [
          {
            type: "invoice_line_item",
            invoice_line_item: "il_xxxxxxxxxxxxx",
            quantity: 1,
          },
        ],
      })
      assert_requested :post, "#{Stripe.api_base}/v1/credit_notes"
    end
    should "Test credit notes post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/credit_notes").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      credit_note = client.v1.credit_notes.create({
        invoice: "in_xxxxxxxxxxxxx",
        lines: [
          {
            type: "invoice_line_item",
            invoice_line_item: "il_xxxxxxxxxxxxx",
            quantity: 1,
          },
        ],
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/credit_notes"
    end
    should "Test credit notes void post" do
      credit_note = Stripe::CreditNote.void_credit_note("cn_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/credit_notes/cn_xxxxxxxxxxxxx/void"
    end
    should "Test credit notes void post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/credit_notes/cn_xxxxxxxxxxxxx/void"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      credit_note = client.v1.credit_notes.void_credit_note("cn_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/credit_notes/cn_xxxxxxxxxxxxx/void"
    end
    should "Test customer sessions post" do
      customer_session = Stripe::CustomerSession.create({
        customer: "cus_123",
        components: { buy_button: { enabled: true } },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/customer_sessions"
    end
    should "Test customer sessions post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/customer_sessions").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      customer_session = client.v1.customer_sessions.create({
        customer: "cus_123",
        components: { buy_button: { enabled: true } },
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/customer_sessions"
    end
    should "Test customers balance transactions get" do
      customer_balance_transactions = Stripe::Customer.list_balance_transactions(
        "cus_xxxxxxxxxxxxx",
        { limit: 3 }
      )
      assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/balance_transactions?limit=3"
    end
    should "Test customers balance transactions get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/balance_transactions?limit=3"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      customer_balance_transactions = client.v1.customers.balance_transactions.list(
        "cus_xxxxxxxxxxxxx",
        { limit: 3 }
      )
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/balance_transactions?limit=3"
    end
    should "Test customers balance transactions get 2" do
      customer_balance_transaction = Stripe::Customer.retrieve_balance_transaction(
        "cus_xxxxxxxxxxxxx",
        "cbtxn_xxxxxxxxxxxxx"
      )
      assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/balance_transactions/cbtxn_xxxxxxxxxxxxx"
    end
    should "Test customers balance transactions get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/balance_transactions/cbtxn_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      customer_balance_transaction = client.v1.customers.balance_transactions.retrieve(
        "cus_xxxxxxxxxxxxx",
        "cbtxn_xxxxxxxxxxxxx"
      )
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/balance_transactions/cbtxn_xxxxxxxxxxxxx"
    end
    should "Test customers balance transactions post 2" do
      customer_balance_transaction = Stripe::Customer.update_balance_transaction(
        "cus_xxxxxxxxxxxxx",
        "cbtxn_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/balance_transactions/cbtxn_xxxxxxxxxxxxx"
    end
    should "Test customers balance transactions post 2 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/balance_transactions/cbtxn_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      customer_balance_transaction = client.v1.customers.balance_transactions.update(
        "cus_xxxxxxxxxxxxx",
        "cbtxn_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/balance_transactions/cbtxn_xxxxxxxxxxxxx"
    end
    should "Test customers cash balance get" do
      cash_balance = Stripe::Customer.retrieve_cash_balance("cus_123")
      assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_123/cash_balance"
    end
    should "Test customers cash balance get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_123/cash_balance").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      cash_balance = client.v1.customers.cash_balance.retrieve("cus_123")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_123/cash_balance"
    end
    should "Test customers cash balance post" do
      cash_balance = Stripe::Customer.update_cash_balance(
        "cus_123",
        { settings: { reconciliation_mode: "manual" } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/customers/cus_123/cash_balance"
    end
    should "Test customers cash balance post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_123/cash_balance"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      cash_balance = client.v1.customers.cash_balance.update(
        "cus_123",
        { settings: { reconciliation_mode: "manual" } }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_123/cash_balance"
    end
    should "Test customers cash balance transactions get" do
      customer_cash_balance_transactions = Stripe::Customer.list_cash_balance_transactions(
        "cus_123",
        { limit: 3 }
      )
      assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_123/cash_balance_transactions?limit=3"
    end
    should "Test customers cash balance transactions get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_123/cash_balance_transactions?limit=3"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      customer_cash_balance_transactions = client.v1.customers.cash_balance_transactions.list(
        "cus_123",
        { limit: 3 }
      )
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_123/cash_balance_transactions?limit=3"
    end
    should "Test customers delete" do
      deleted = Stripe::Customer.delete("cus_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx"
    end
    should "Test customers delete (service)" do
      stub_request(:delete, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      deleted = client.v1.customers.delete("cus_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx"
    end
    should "Test customers funding instructions post" do
      funding_instructions = Stripe::Customer.create_funding_instructions(
        "cus_123",
        {
          bank_transfer: {
            requested_address_types: ["zengin"],
            type: "jp_bank_transfer",
          },
          currency: "usd",
          funding_type: "bank_transfer",
        }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/customers/cus_123/funding_instructions"
    end
    should "Test customers funding instructions post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_123/funding_instructions"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      funding_instructions = client.v1.customers.funding_instructions.create(
        "cus_123",
        {
          bank_transfer: {
            requested_address_types: ["zengin"],
            type: "jp_bank_transfer",
          },
          currency: "usd",
          funding_type: "bank_transfer",
        }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_123/funding_instructions"
    end
    should "Test customers get" do
      customers = Stripe::Customer.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/customers?limit=3"
    end
    should "Test customers get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/customers?limit=3").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      customers = client.v1.customers.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/customers?limit=3"
    end
    should "Test customers get 2" do
      customers = Stripe::Customer.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/customers?limit=3"
    end
    should "Test customers get 2 (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/customers?limit=3").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      customers = client.v1.customers.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/customers?limit=3"
    end
    should "Test customers get 3" do
      customer = Stripe::Customer.retrieve("cus_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx"
    end
    should "Test customers get 3 (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      customer = client.v1.customers.retrieve("cus_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx"
    end
    should "Test customers payment methods get" do
      payment_methods = Stripe::Customer.list_payment_methods("cus_xyz", { type: "card" })
      assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xyz/payment_methods?type=card"
    end
    should "Test customers payment methods get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xyz/payment_methods?type=card"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      payment_methods = client.v1.customers.payment_methods.list("cus_xyz", { type: "card" })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xyz/payment_methods?type=card"
    end
    should "Test customers payment methods get 2" do
      payment_methods = Stripe::Customer.list_payment_methods("cus_xxxxxxxxxxxxx", { type: "card" })
      assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/payment_methods?type=card"
    end
    should "Test customers payment methods get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/payment_methods?type=card"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      payment_methods = client.v1.customers.payment_methods.list(
        "cus_xxxxxxxxxxxxx",
        { type: "card" }
      )
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/payment_methods?type=card"
    end
    should "Test customers post" do
      customer = Stripe::Customer.create({
        description: "My First Test Customer (created for API docs at https://www.stripe.com/docs/api)",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/customers"
    end
    should "Test customers post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/customers").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      customer = client.v1.customers.create({
        description: "My First Test Customer (created for API docs at https://www.stripe.com/docs/api)",
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/customers"
    end
    should "Test customers post 2" do
      customer = Stripe::Customer.update("cus_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx"
    end
    should "Test customers post 2 (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      customer = client.v1.customers.update("cus_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx"
    end
    should "Test customers search get" do
      customers = Stripe::Customer.search({
        query: "name:'fakename' AND metadata['foo']:'bar'",
      })
      assert_requested :get, "#{Stripe.api_base}/v1/customers/search?query=name%3A%27fakename%27%20AND%20metadata%5B%27foo%27%5D%3A%27bar%27"
    end
    should "Test customers search get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/customers/search?query=name%3A%27fakename%27%20AND%20metadata%5B%27foo%27%5D%3A%27bar%27"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      customers = client.v1.customers.search({
        query: "name:'fakename' AND metadata['foo']:'bar'",
      })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/customers/search?query=name%3A%27fakename%27%20AND%20metadata%5B%27foo%27%5D%3A%27bar%27"
    end
    should "Test customers search get 2" do
      customers = Stripe::Customer.search({
        query: "name:'fakename' AND metadata['foo']:'bar'",
      })
      assert_requested :get, "#{Stripe.api_base}/v1/customers/search?query=name%3A%27fakename%27%20AND%20metadata%5B%27foo%27%5D%3A%27bar%27"
    end
    should "Test customers search get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/customers/search?query=name%3A%27fakename%27%20AND%20metadata%5B%27foo%27%5D%3A%27bar%27"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      customers = client.v1.customers.search({
        query: "name:'fakename' AND metadata['foo']:'bar'",
      })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/customers/search?query=name%3A%27fakename%27%20AND%20metadata%5B%27foo%27%5D%3A%27bar%27"
    end
    should "Test customers sources delete" do
      payment_source = Stripe::Customer.delete_source("cus_xxxxxxxxxxxxx", "ba_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/sources/ba_xxxxxxxxxxxxx"
    end
    should "Test customers sources delete (service)" do
      stub_request(
        :delete,
        "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/sources/ba_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      result = client.v1.sources.detach("cus_xxxxxxxxxxxxx", "ba_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/sources/ba_xxxxxxxxxxxxx"
    end
    should "Test customers sources delete 2" do
      payment_source = Stripe::Customer.delete_source("cus_xxxxxxxxxxxxx", "card_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/sources/card_xxxxxxxxxxxxx"
    end
    should "Test customers sources delete 2 (service)" do
      stub_request(
        :delete,
        "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/sources/card_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      result = client.v1.sources.detach("cus_xxxxxxxxxxxxx", "card_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/sources/card_xxxxxxxxxxxxx"
    end
    should "Test customers sources get" do
      payment_sources = Stripe::Customer.list_sources(
        "cus_xxxxxxxxxxxxx",
        {
          object: "bank_account",
          limit: 3,
        }
      )
      assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/sources?object=bank_account&limit=3"
    end
    should "Test customers sources get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/sources?object=bank_account&limit=3"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      result = client.v1.customers.payment_sources.list(
        "cus_xxxxxxxxxxxxx",
        {
          object: "bank_account",
          limit: 3,
        }
      )
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/sources?object=bank_account&limit=3"
    end
    should "Test customers sources get 2" do
      payment_sources = Stripe::Customer.list_sources(
        "cus_xxxxxxxxxxxxx",
        {
          object: "card",
          limit: 3,
        }
      )
      assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/sources?object=card&limit=3"
    end
    should "Test customers sources get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/sources?object=card&limit=3"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      result = client.v1.customers.payment_sources.list(
        "cus_xxxxxxxxxxxxx",
        {
          object: "card",
          limit: 3,
        }
      )
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/sources?object=card&limit=3"
    end
    should "Test customers sources get 3" do
      payment_source = Stripe::Customer.retrieve_source("cus_xxxxxxxxxxxxx", "ba_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/sources/ba_xxxxxxxxxxxxx"
    end
    should "Test customers sources get 3 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/sources/ba_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      result = client.v1.customers.payment_sources.retrieve("cus_xxxxxxxxxxxxx", "ba_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/sources/ba_xxxxxxxxxxxxx"
    end
    should "Test customers sources get 4" do
      payment_source = Stripe::Customer.retrieve_source("cus_xxxxxxxxxxxxx", "card_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/sources/card_xxxxxxxxxxxxx"
    end
    should "Test customers sources get 4 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/sources/card_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      result = client.v1.customers.payment_sources.retrieve(
        "cus_xxxxxxxxxxxxx",
        "card_xxxxxxxxxxxxx"
      )
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/sources/card_xxxxxxxxxxxxx"
    end
    should "Test customers sources post" do
      payment_source = Stripe::Customer.update_source("cus_123", "card_123", { name: "Kamil" })
      assert_requested :post, "#{Stripe.api_base}/v1/customers/cus_123/sources/card_123"
    end
    should "Test customers sources post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_123/sources/card_123"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      result = client.v1.customers.payment_sources.update("cus_123", "card_123", { name: "Kamil" })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_123/sources/card_123"
    end
    should "Test customers sources post 2" do
      payment_source = Stripe::Customer.create_source(
        "cus_xxxxxxxxxxxxx",
        { source: "btok_xxxxxxxxxxxxx" }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/sources"
    end
    should "Test customers sources post 2 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/sources"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      result = client.v1.customers.payment_sources.create(
        "cus_xxxxxxxxxxxxx",
        { source: "btok_xxxxxxxxxxxxx" }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/sources"
    end
    should "Test customers sources post 3" do
      payment_source = Stripe::Customer.create_source("cus_xxxxxxxxxxxxx", { source: "tok_xxxx" })
      assert_requested :post, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/sources"
    end
    should "Test customers sources post 3 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/sources"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      result = client.v1.customers.payment_sources.create("cus_xxxxxxxxxxxxx", { source: "tok_xxxx" })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/sources"
    end
    should "Test customers sources post 4" do
      payment_source = Stripe::Customer.update_source(
        "cus_xxxxxxxxxxxxx",
        "ba_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/sources/ba_xxxxxxxxxxxxx"
    end
    should "Test customers sources post 4 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/sources/ba_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      result = client.v1.customers.payment_sources.update(
        "cus_xxxxxxxxxxxxx",
        "ba_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/sources/ba_xxxxxxxxxxxxx"
    end
    should "Test customers sources post 5" do
      payment_source = Stripe::Customer.update_source(
        "cus_xxxxxxxxxxxxx",
        "card_xxxxxxxxxxxxx",
        { name: "Jenny Rosen" }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/sources/card_xxxxxxxxxxxxx"
    end
    should "Test customers sources post 5 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/sources/card_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      result = client.v1.customers.payment_sources.update(
        "cus_xxxxxxxxxxxxx",
        "card_xxxxxxxxxxxxx",
        { name: "Jenny Rosen" }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/sources/card_xxxxxxxxxxxxx"
    end
    should "Test customers tax ids delete" do
      deleted = Stripe::Customer.delete_tax_id("cus_xxxxxxxxxxxxx", "txi_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/tax_ids/txi_xxxxxxxxxxxxx"
    end
    should "Test customers tax ids delete (service)" do
      stub_request(
        :delete,
        "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/tax_ids/txi_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      deleted = client.v1.customers.tax_ids.delete("cus_xxxxxxxxxxxxx", "txi_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/tax_ids/txi_xxxxxxxxxxxxx"
    end
    should "Test customers tax ids get" do
      tax_ids = Stripe::Customer.list_tax_ids("cus_xxxxxxxxxxxxx", { limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/tax_ids?limit=3"
    end
    should "Test customers tax ids get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/tax_ids?limit=3"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      tax_ids = client.v1.customers.tax_ids.list("cus_xxxxxxxxxxxxx", { limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/tax_ids?limit=3"
    end
    should "Test customers tax ids get 2" do
      tax_id = Stripe::Customer.retrieve_tax_id("cus_xxxxxxxxxxxxx", "txi_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/tax_ids/txi_xxxxxxxxxxxxx"
    end
    should "Test customers tax ids get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/tax_ids/txi_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      tax_id = client.v1.customers.tax_ids.retrieve("cus_xxxxxxxxxxxxx", "txi_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_xxxxxxxxxxxxx/tax_ids/txi_xxxxxxxxxxxxx"
    end
    should "Test disputes close post" do
      dispute = Stripe::Dispute.close("dp_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/disputes/dp_xxxxxxxxxxxxx/close"
    end
    should "Test disputes close post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/disputes/dp_xxxxxxxxxxxxx/close"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      dispute = client.v1.disputes.close("dp_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/disputes/dp_xxxxxxxxxxxxx/close"
    end
    should "Test disputes get" do
      disputes = Stripe::Dispute.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/disputes?limit=3"
    end
    should "Test disputes get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/disputes?limit=3").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      disputes = client.v1.disputes.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/disputes?limit=3"
    end
    should "Test disputes get 2" do
      dispute = Stripe::Dispute.retrieve("dp_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/disputes/dp_xxxxxxxxxxxxx"
    end
    should "Test disputes get 2 (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/disputes/dp_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      dispute = client.v1.disputes.retrieve("dp_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/disputes/dp_xxxxxxxxxxxxx"
    end
    should "Test disputes post" do
      dispute = Stripe::Dispute.update("dp_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/disputes/dp_xxxxxxxxxxxxx"
    end
    should "Test disputes post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/disputes/dp_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      dispute = client.v1.disputes.update("dp_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/disputes/dp_xxxxxxxxxxxxx"
    end
    should "Test events get" do
      events = Stripe::Event.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/events?limit=3"
    end
    should "Test events get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/events?limit=3").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      events = client.v1.events.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/events?limit=3"
    end
    should "Test events get 2" do
      event = Stripe::Event.retrieve("evt_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/events/evt_xxxxxxxxxxxxx"
    end
    should "Test events get 2 (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/events/evt_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      event = client.v1.events.retrieve("evt_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/events/evt_xxxxxxxxxxxxx"
    end
    should "Test file links get" do
      file_links = Stripe::FileLink.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/file_links?limit=3"
    end
    should "Test file links get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/file_links?limit=3").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      file_links = client.v1.file_links.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/file_links?limit=3"
    end
    should "Test file links get 2" do
      file_link = Stripe::FileLink.retrieve("link_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/file_links/link_xxxxxxxxxxxxx"
    end
    should "Test file links get 2 (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/file_links/link_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      file_link = client.v1.file_links.retrieve("link_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/file_links/link_xxxxxxxxxxxxx"
    end
    should "Test file links post" do
      file_link = Stripe::FileLink.create({ file: "file_xxxxxxxxxxxxx" })
      assert_requested :post, "#{Stripe.api_base}/v1/file_links"
    end
    should "Test file links post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/file_links").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      file_link = client.v1.file_links.create({ file: "file_xxxxxxxxxxxxx" })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/file_links"
    end
    should "Test file links post 2" do
      file_link = Stripe::FileLink.update("link_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/file_links/link_xxxxxxxxxxxxx"
    end
    should "Test file links post 2 (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/file_links/link_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      file_link = client.v1.file_links.update("link_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/file_links/link_xxxxxxxxxxxxx"
    end
    should "Test files get" do
      files = Stripe::File.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/files?limit=3"
    end
    should "Test files get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/files?limit=3").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      files = client.v1.files.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/files?limit=3"
    end
    should "Test files get 2" do
      file = Stripe::File.retrieve("file_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/files/file_xxxxxxxxxxxxx"
    end
    should "Test files get 2 (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/files/file_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      file = client.v1.files.retrieve("file_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/files/file_xxxxxxxxxxxxx"
    end
    should "Test financial connections accounts disconnect post" do
      account = Stripe::FinancialConnections::Account.disconnect("fca_xyz")
      assert_requested :post, "#{Stripe.api_base}/v1/financial_connections/accounts/fca_xyz/disconnect"
    end
    should "Test financial connections accounts disconnect post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/accounts/fca_xyz/disconnect"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      account = client.v1.financial_connections.accounts.disconnect("fca_xyz")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/accounts/fca_xyz/disconnect"
    end
    should "Test financial connections accounts disconnect post 2" do
      account = Stripe::FinancialConnections::Account.disconnect("fca_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/financial_connections/accounts/fca_xxxxxxxxxxxxx/disconnect"
    end
    should "Test financial connections accounts disconnect post 2 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/accounts/fca_xxxxxxxxxxxxx/disconnect"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      account = client.v1.financial_connections.accounts.disconnect("fca_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/accounts/fca_xxxxxxxxxxxxx/disconnect"
    end
    should "Test financial connections accounts get" do
      accounts = Stripe::FinancialConnections::Account.list
      assert_requested :get, "#{Stripe.api_base}/v1/financial_connections/accounts"
    end
    should "Test financial connections accounts get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/accounts").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      accounts = client.v1.financial_connections.accounts.list
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/accounts"
    end
    should "Test financial connections accounts get 2" do
      account = Stripe::FinancialConnections::Account.retrieve("fca_xyz")
      assert_requested :get, "#{Stripe.api_base}/v1/financial_connections/accounts/fca_xyz"
    end
    should "Test financial connections accounts get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/accounts/fca_xyz"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      account = client.v1.financial_connections.accounts.retrieve("fca_xyz")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/accounts/fca_xyz"
    end
    should "Test financial connections accounts get 3" do
      accounts = Stripe::FinancialConnections::Account.list({
        account_holder: { customer: "cus_xxxxxxxxxxxxx" },
      })
      assert_requested :get, "#{Stripe.api_base}/v1/financial_connections/accounts?account_holder[customer]=cus_xxxxxxxxxxxxx"
    end
    should "Test financial connections accounts get 3 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/accounts?account_holder[customer]=cus_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      accounts = client.v1.financial_connections.accounts.list({
        account_holder: { customer: "cus_xxxxxxxxxxxxx" },
      })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/accounts?account_holder[customer]=cus_xxxxxxxxxxxxx"
    end
    should "Test financial connections accounts get 4" do
      account = Stripe::FinancialConnections::Account.retrieve("fca_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/financial_connections/accounts/fca_xxxxxxxxxxxxx"
    end
    should "Test financial connections accounts get 4 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/accounts/fca_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      account = client.v1.financial_connections.accounts.retrieve("fca_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/accounts/fca_xxxxxxxxxxxxx"
    end
    should "Test financial connections accounts owners get" do
      account_owners = Stripe::FinancialConnections::Account.list_owners(
        "fca_xyz",
        { ownership: "fcaowns_xyz" }
      )
      assert_requested :get, "#{Stripe.api_base}/v1/financial_connections/accounts/fca_xyz/owners?ownership=fcaowns_xyz"
    end
    should "Test financial connections accounts owners get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/accounts/fca_xyz/owners?ownership=fcaowns_xyz"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      account_owners = client.v1.financial_connections.accounts.owners.list(
        "fca_xyz",
        { ownership: "fcaowns_xyz" }
      )
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/accounts/fca_xyz/owners?ownership=fcaowns_xyz"
    end
    should "Test financial connections accounts owners get 2" do
      account_owners = Stripe::FinancialConnections::Account.list_owners(
        "fca_xxxxxxxxxxxxx",
        {
          limit: 3,
          ownership: "fcaowns_xxxxxxxxxxxxx",
        }
      )
      assert_requested :get, "#{Stripe.api_base}/v1/financial_connections/accounts/fca_xxxxxxxxxxxxx/owners?limit=3&ownership=fcaowns_xxxxxxxxxxxxx"
    end
    should "Test financial connections accounts owners get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/accounts/fca_xxxxxxxxxxxxx/owners?limit=3&ownership=fcaowns_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      account_owners = client.v1.financial_connections.accounts.owners.list(
        "fca_xxxxxxxxxxxxx",
        {
          limit: 3,
          ownership: "fcaowns_xxxxxxxxxxxxx",
        }
      )
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/accounts/fca_xxxxxxxxxxxxx/owners?limit=3&ownership=fcaowns_xxxxxxxxxxxxx"
    end
    should "Test financial connections accounts refresh post" do
      account = Stripe::FinancialConnections::Account.refresh_account(
        "fca_xyz",
        { features: ["balance"] }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/financial_connections/accounts/fca_xyz/refresh"
    end
    should "Test financial connections accounts refresh post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/accounts/fca_xyz/refresh"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      account = client.v1.financial_connections.accounts.refresh("fca_xyz", { features: ["balance"] })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/accounts/fca_xyz/refresh"
    end
    should "Test financial connections accounts subscribe post" do
      account = Stripe::FinancialConnections::Account.subscribe(
        "fa_123",
        { features: ["transactions"] }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/financial_connections/accounts/fa_123/subscribe"
    end
    should "Test financial connections accounts subscribe post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/accounts/fa_123/subscribe"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      account = client.v1.financial_connections.accounts.subscribe(
        "fa_123",
        { features: ["transactions"] }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/accounts/fa_123/subscribe"
    end
    should "Test financial connections accounts unsubscribe post" do
      account = Stripe::FinancialConnections::Account.unsubscribe(
        "fa_123",
        { features: ["transactions"] }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/financial_connections/accounts/fa_123/unsubscribe"
    end
    should "Test financial connections accounts unsubscribe post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/accounts/fa_123/unsubscribe"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      account = client.v1.financial_connections.accounts.unsubscribe(
        "fa_123",
        { features: ["transactions"] }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/accounts/fa_123/unsubscribe"
    end
    should "Test financial connections sessions get" do
      session = Stripe::FinancialConnections::Session.retrieve("fcsess_xyz")
      assert_requested :get, "#{Stripe.api_base}/v1/financial_connections/sessions/fcsess_xyz"
    end
    should "Test financial connections sessions get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/sessions/fcsess_xyz"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      session = client.v1.financial_connections.sessions.retrieve("fcsess_xyz")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/sessions/fcsess_xyz"
    end
    should "Test financial connections sessions get 2" do
      session = Stripe::FinancialConnections::Session.retrieve("fcsess_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/financial_connections/sessions/fcsess_xxxxxxxxxxxxx"
    end
    should "Test financial connections sessions get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/sessions/fcsess_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      session = client.v1.financial_connections.sessions.retrieve("fcsess_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/sessions/fcsess_xxxxxxxxxxxxx"
    end
    should "Test financial connections sessions post" do
      session = Stripe::FinancialConnections::Session.create({
        account_holder: {
          type: "customer",
          customer: "cus_123",
        },
        permissions: ["balances"],
      })
      assert_requested :post, "#{Stripe.api_base}/v1/financial_connections/sessions"
    end
    should "Test financial connections sessions post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/sessions"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      session = client.v1.financial_connections.sessions.create({
        account_holder: {
          type: "customer",
          customer: "cus_123",
        },
        permissions: ["balances"],
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/sessions"
    end
    should "Test financial connections sessions post 2" do
      session = Stripe::FinancialConnections::Session.create({
        account_holder: {
          type: "customer",
          customer: "cus_xxxxxxxxxxxxx",
        },
        permissions: %w[payment_method balances],
        filters: { countries: ["US"] },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/financial_connections/sessions"
    end
    should "Test financial connections sessions post 2 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/sessions"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      session = client.v1.financial_connections.sessions.create({
        account_holder: {
          type: "customer",
          customer: "cus_xxxxxxxxxxxxx",
        },
        permissions: %w[payment_method balances],
        filters: { countries: ["US"] },
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/sessions"
    end
    should "Test financial connections transactions get" do
      transaction = Stripe::FinancialConnections::Transaction.retrieve("tr_123")
      assert_requested :get, "#{Stripe.api_base}/v1/financial_connections/transactions/tr_123"
    end
    should "Test financial connections transactions get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/transactions/tr_123"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      transaction = client.v1.financial_connections.transactions.retrieve("tr_123")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/transactions/tr_123"
    end
    should "Test financial connections transactions get 2" do
      transactions = Stripe::FinancialConnections::Transaction.list({ account: "fca_xyz" })
      assert_requested :get, "#{Stripe.api_base}/v1/financial_connections/transactions?account=fca_xyz"
    end
    should "Test financial connections transactions get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/transactions?account=fca_xyz"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      transactions = client.v1.financial_connections.transactions.list({ account: "fca_xyz" })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/financial_connections/transactions?account=fca_xyz"
    end
    should "Test identity verification reports get" do
      verification_reports = Stripe::Identity::VerificationReport.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/identity/verification_reports?limit=3"
    end
    should "Test identity verification reports get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/identity/verification_reports?limit=3"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      verification_reports = client.v1.identity.verification_reports.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/identity/verification_reports?limit=3"
    end
    should "Test identity verification reports get 2" do
      verification_report = Stripe::Identity::VerificationReport.retrieve("vr_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/identity/verification_reports/vr_xxxxxxxxxxxxx"
    end
    should "Test identity verification reports get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/identity/verification_reports/vr_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      verification_report = client.v1.identity.verification_reports.retrieve("vr_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/identity/verification_reports/vr_xxxxxxxxxxxxx"
    end
    should "Test identity verification sessions cancel post" do
      verification_session = Stripe::Identity::VerificationSession.cancel("vs_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/identity/verification_sessions/vs_xxxxxxxxxxxxx/cancel"
    end
    should "Test identity verification sessions cancel post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/identity/verification_sessions/vs_xxxxxxxxxxxxx/cancel"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      verification_session = client.v1.identity.verification_sessions.cancel("vs_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/identity/verification_sessions/vs_xxxxxxxxxxxxx/cancel"
    end
    should "Test identity verification sessions get" do
      verification_sessions = Stripe::Identity::VerificationSession.list({ limit: 3 })
      assert_requested :get,  "#{Stripe.api_base}/v1/identity/verification_sessions?limit=3"
    end
    should "Test identity verification sessions get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/identity/verification_sessions?limit=3"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      verification_sessions = client.v1.identity.verification_sessions.list({ limit: 3 })
      assert_requested :get,  "#{Stripe::DEFAULT_API_BASE}/v1/identity/verification_sessions?limit=3"
    end
    should "Test identity verification sessions get 2" do
      verification_session = Stripe::Identity::VerificationSession.retrieve("vs_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/identity/verification_sessions/vs_xxxxxxxxxxxxx"
    end
    should "Test identity verification sessions get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/identity/verification_sessions/vs_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      verification_session = client.v1.identity.verification_sessions.retrieve("vs_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/identity/verification_sessions/vs_xxxxxxxxxxxxx"
    end
    should "Test identity verification sessions post" do
      verification_session = Stripe::Identity::VerificationSession.create({ type: "document" })
      assert_requested :post, "#{Stripe.api_base}/v1/identity/verification_sessions"
    end
    should "Test identity verification sessions post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/identity/verification_sessions"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      verification_session = client.v1.identity.verification_sessions.create({ type: "document" })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/identity/verification_sessions"
    end
    should "Test identity verification sessions post 2" do
      verification_session = Stripe::Identity::VerificationSession.update(
        "vs_xxxxxxxxxxxxx",
        { type: "id_number" }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/identity/verification_sessions/vs_xxxxxxxxxxxxx"
    end
    should "Test identity verification sessions post 2 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/identity/verification_sessions/vs_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      verification_session = client.v1.identity.verification_sessions.update(
        "vs_xxxxxxxxxxxxx",
        { type: "id_number" }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/identity/verification_sessions/vs_xxxxxxxxxxxxx"
    end
    should "Test identity verification sessions redact post" do
      verification_session = Stripe::Identity::VerificationSession.redact("vs_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/identity/verification_sessions/vs_xxxxxxxxxxxxx/redact"
    end
    should "Test identity verification sessions redact post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/identity/verification_sessions/vs_xxxxxxxxxxxxx/redact"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      verification_session = client.v1.identity.verification_sessions.redact("vs_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/identity/verification_sessions/vs_xxxxxxxxxxxxx/redact"
    end
    should "Test invoiceitems delete" do
      deleted = Stripe::InvoiceItem.delete("ii_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/invoiceitems/ii_xxxxxxxxxxxxx"
    end
    should "Test invoiceitems delete (service)" do
      stub_request(
        :delete,
        "#{Stripe::DEFAULT_API_BASE}/v1/invoiceitems/ii_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      deleted = client.v1.invoice_items.delete("ii_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe::DEFAULT_API_BASE}/v1/invoiceitems/ii_xxxxxxxxxxxxx"
    end
    should "Test invoiceitems get" do
      invoice_items = Stripe::InvoiceItem.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/invoiceitems?limit=3"
    end
    should "Test invoiceitems get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/invoiceitems?limit=3").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      invoice_items = client.v1.invoice_items.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/invoiceitems?limit=3"
    end
    should "Test invoiceitems get 2" do
      invoice_item = Stripe::InvoiceItem.retrieve("ii_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/invoiceitems/ii_xxxxxxxxxxxxx"
    end
    should "Test invoiceitems get 2 (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/invoiceitems/ii_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      invoice_item = client.v1.invoice_items.retrieve("ii_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/invoiceitems/ii_xxxxxxxxxxxxx"
    end
    should "Test invoiceitems post" do
      invoice_item = Stripe::InvoiceItem.create({ customer: "cus_xxxxxxxxxxxxx" })
      assert_requested :post, "#{Stripe.api_base}/v1/invoiceitems"
    end
    should "Test invoiceitems post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/invoiceitems").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      invoice_item = client.v1.invoice_items.create({ customer: "cus_xxxxxxxxxxxxx" })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/invoiceitems"
    end
    should "Test invoiceitems post 2" do
      invoice_item = Stripe::InvoiceItem.update("ii_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/invoiceitems/ii_xxxxxxxxxxxxx"
    end
    should "Test invoiceitems post 2 (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/invoiceitems/ii_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      invoice_item = client.v1.invoice_items.update(
        "ii_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/invoiceitems/ii_xxxxxxxxxxxxx"
    end
    should "Test invoices delete" do
      deleted = Stripe::Invoice.delete("in_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/invoices/in_xxxxxxxxxxxxx"
    end
    should "Test invoices delete (service)" do
      stub_request(:delete, "#{Stripe::DEFAULT_API_BASE}/v1/invoices/in_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      deleted = client.v1.invoices.delete("in_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe::DEFAULT_API_BASE}/v1/invoices/in_xxxxxxxxxxxxx"
    end
    should "Test invoices finalize post" do
      invoice = Stripe::Invoice.finalize_invoice("in_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/invoices/in_xxxxxxxxxxxxx/finalize"
    end
    should "Test invoices finalize post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/invoices/in_xxxxxxxxxxxxx/finalize"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      invoice = client.v1.invoices.finalize_invoice("in_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/invoices/in_xxxxxxxxxxxxx/finalize"
    end
    should "Test invoices get" do
      invoices = Stripe::Invoice.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/invoices?limit=3"
    end
    should "Test invoices get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/invoices?limit=3").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      invoices = client.v1.invoices.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/invoices?limit=3"
    end
    should "Test invoices get 2" do
      invoice = Stripe::Invoice.retrieve("in_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/invoices/in_xxxxxxxxxxxxx"
    end
    should "Test invoices get 2 (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/invoices/in_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      invoice = client.v1.invoices.retrieve("in_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/invoices/in_xxxxxxxxxxxxx"
    end
    should "Test invoices get 3" do
      invoice = Stripe::Invoice.retrieve({
        expand: ["customer"],
        id: "in_xxxxxxxxxxxxx",
      })
      assert_requested :get, "#{Stripe.api_base}/v1/invoices/in_xxxxxxxxxxxxx?expand[]=customer"
    end
    should "Test invoices get 3 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/invoices/in_xxxxxxxxxxxxx?expand[]=customer"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      invoice = client.v1.invoices.retrieve("in_xxxxxxxxxxxxx", { expand: ["customer"] })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/invoices/in_xxxxxxxxxxxxx?expand[]=customer"
    end
    should "Test invoices mark uncollectible post" do
      invoice = Stripe::Invoice.mark_uncollectible("in_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/invoices/in_xxxxxxxxxxxxx/mark_uncollectible"
    end
    should "Test invoices mark uncollectible post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/invoices/in_xxxxxxxxxxxxx/mark_uncollectible"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      invoice = client.v1.invoices.mark_uncollectible("in_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/invoices/in_xxxxxxxxxxxxx/mark_uncollectible"
    end
    should "Test invoices pay post" do
      invoice = Stripe::Invoice.pay("in_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/invoices/in_xxxxxxxxxxxxx/pay"
    end
    should "Test invoices pay post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/invoices/in_xxxxxxxxxxxxx/pay").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      invoice = client.v1.invoices.pay("in_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/invoices/in_xxxxxxxxxxxxx/pay"
    end
    should "Test invoices post" do
      invoice = Stripe::Invoice.create({ customer: "cus_xxxxxxxxxxxxx" })
      assert_requested :post, "#{Stripe.api_base}/v1/invoices"
    end
    should "Test invoices post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/invoices").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      invoice = client.v1.invoices.create({ customer: "cus_xxxxxxxxxxxxx" })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/invoices"
    end
    should "Test invoices post 2" do
      invoice = Stripe::Invoice.update("in_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/invoices/in_xxxxxxxxxxxxx"
    end
    should "Test invoices post 2 (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/invoices/in_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      invoice = client.v1.invoices.update("in_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/invoices/in_xxxxxxxxxxxxx"
    end
    should "Test invoices search get" do
      invoices = Stripe::Invoice.search({ query: "total>999 AND metadata['order_id']:'6735'" })
      assert_requested :get, "#{Stripe.api_base}/v1/invoices/search?query=total%3E999%20AND%20metadata%5B%27order_id%27%5D%3A%276735%27"
    end
    should "Test invoices search get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/invoices/search?query=total%3E999%20AND%20metadata%5B%27order_id%27%5D%3A%276735%27"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      invoices = client.v1.invoices.search({ query: "total>999 AND metadata['order_id']:'6735'" })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/invoices/search?query=total%3E999%20AND%20metadata%5B%27order_id%27%5D%3A%276735%27"
    end
    should "Test invoices send post" do
      invoice = Stripe::Invoice.send_invoice("in_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/invoices/in_xxxxxxxxxxxxx/send"
    end
    should "Test invoices send post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/invoices/in_xxxxxxxxxxxxx/send"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      invoice = client.v1.invoices.send_invoice("in_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/invoices/in_xxxxxxxxxxxxx/send"
    end
    should "Test invoices void post" do
      invoice = Stripe::Invoice.void_invoice("in_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/invoices/in_xxxxxxxxxxxxx/void"
    end
    should "Test invoices void post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/invoices/in_xxxxxxxxxxxxx/void"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      invoice = client.v1.invoices.void_invoice("in_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/invoices/in_xxxxxxxxxxxxx/void"
    end
    should "Test issuing authorizations approve post" do
      authorization = Stripe::Issuing::Authorization.approve("iauth_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/issuing/authorizations/iauth_xxxxxxxxxxxxx/approve"
    end
    should "Test issuing authorizations approve post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/issuing/authorizations/iauth_xxxxxxxxxxxxx/approve"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      authorization = client.v1.issuing.authorizations.approve("iauth_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/issuing/authorizations/iauth_xxxxxxxxxxxxx/approve"
    end
    should "Test issuing authorizations decline post" do
      authorization = Stripe::Issuing::Authorization.decline("iauth_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/issuing/authorizations/iauth_xxxxxxxxxxxxx/decline"
    end
    should "Test issuing authorizations decline post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/issuing/authorizations/iauth_xxxxxxxxxxxxx/decline"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      authorization = client.v1.issuing.authorizations.decline("iauth_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/issuing/authorizations/iauth_xxxxxxxxxxxxx/decline"
    end
    should "Test issuing authorizations get" do
      authorizations = Stripe::Issuing::Authorization.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/issuing/authorizations?limit=3"
    end
    should "Test issuing authorizations get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/issuing/authorizations?limit=3").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      authorizations = client.v1.issuing.authorizations.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/issuing/authorizations?limit=3"
    end
    should "Test issuing authorizations get 2" do
      authorization = Stripe::Issuing::Authorization.retrieve("iauth_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/issuing/authorizations/iauth_xxxxxxxxxxxxx"
    end
    should "Test issuing authorizations get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/issuing/authorizations/iauth_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      authorization = client.v1.issuing.authorizations.retrieve("iauth_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/issuing/authorizations/iauth_xxxxxxxxxxxxx"
    end
    should "Test issuing authorizations post" do
      authorization = Stripe::Issuing::Authorization.update(
        "iauth_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/issuing/authorizations/iauth_xxxxxxxxxxxxx"
    end
    should "Test issuing authorizations post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/issuing/authorizations/iauth_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      authorization = client.v1.issuing.authorizations.update(
        "iauth_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/issuing/authorizations/iauth_xxxxxxxxxxxxx"
    end
    should "Test issuing cardholders get" do
      cardholders = Stripe::Issuing::Cardholder.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/issuing/cardholders?limit=3"
    end
    should "Test issuing cardholders get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/issuing/cardholders?limit=3").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      cardholders = client.v1.issuing.cardholders.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/issuing/cardholders?limit=3"
    end
    should "Test issuing cardholders get 2" do
      cardholder = Stripe::Issuing::Cardholder.retrieve("ich_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/issuing/cardholders/ich_xxxxxxxxxxxxx"
    end
    should "Test issuing cardholders get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/issuing/cardholders/ich_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      cardholder = client.v1.issuing.cardholders.retrieve("ich_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/issuing/cardholders/ich_xxxxxxxxxxxxx"
    end
    should "Test issuing cardholders post" do
      cardholder = Stripe::Issuing::Cardholder.create({
        type: "individual",
        name: "Jenny Rosen",
        email: "jenny.rosen@example.com",
        phone_number: "+18888675309",
        billing: {
          address: {
            line1: "1234 Main Street",
            city: "San Francisco",
            state: "CA",
            country: "US",
            postal_code: "94111",
          },
        },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/issuing/cardholders"
    end
    should "Test issuing cardholders post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/issuing/cardholders").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      cardholder = client.v1.issuing.cardholders.create({
        type: "individual",
        name: "Jenny Rosen",
        email: "jenny.rosen@example.com",
        phone_number: "+18888675309",
        billing: {
          address: {
            line1: "1234 Main Street",
            city: "San Francisco",
            state: "CA",
            country: "US",
            postal_code: "94111",
          },
        },
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/issuing/cardholders"
    end
    should "Test issuing cardholders post 2" do
      cardholder = Stripe::Issuing::Cardholder.update(
        "ich_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/issuing/cardholders/ich_xxxxxxxxxxxxx"
    end
    should "Test issuing cardholders post 2 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/issuing/cardholders/ich_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      cardholder = client.v1.issuing.cardholders.update(
        "ich_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/issuing/cardholders/ich_xxxxxxxxxxxxx"
    end
    should "Test issuing cards get" do
      cards = Stripe::Issuing::Card.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/issuing/cards?limit=3"
    end
    should "Test issuing cards get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/issuing/cards?limit=3").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      cards = client.v1.issuing.cards.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/issuing/cards?limit=3"
    end
    should "Test issuing cards get 2" do
      card = Stripe::Issuing::Card.retrieve("ic_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/issuing/cards/ic_xxxxxxxxxxxxx"
    end
    should "Test issuing cards get 2 (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/issuing/cards/ic_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      card = client.v1.issuing.cards.retrieve("ic_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/issuing/cards/ic_xxxxxxxxxxxxx"
    end
    should "Test issuing cards post" do
      card = Stripe::Issuing::Card.create({
        cardholder: "ich_xxxxxxxxxxxxx",
        currency: "usd",
        type: "virtual",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/issuing/cards"
    end
    should "Test issuing cards post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/issuing/cards").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      card = client.v1.issuing.cards.create({
        cardholder: "ich_xxxxxxxxxxxxx",
        currency: "usd",
        type: "virtual",
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/issuing/cards"
    end
    should "Test issuing cards post 2" do
      card = Stripe::Issuing::Card.update("ic_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/issuing/cards/ic_xxxxxxxxxxxxx"
    end
    should "Test issuing cards post 2 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/issuing/cards/ic_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      card = client.v1.issuing.cards.update("ic_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/issuing/cards/ic_xxxxxxxxxxxxx"
    end
    should "Test issuing disputes get" do
      disputes = Stripe::Issuing::Dispute.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/issuing/disputes?limit=3"
    end
    should "Test issuing disputes get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/issuing/disputes?limit=3").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      disputes = client.v1.issuing.disputes.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/issuing/disputes?limit=3"
    end
    should "Test issuing disputes get 2" do
      dispute = Stripe::Issuing::Dispute.retrieve("idp_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/issuing/disputes/idp_xxxxxxxxxxxxx"
    end
    should "Test issuing disputes get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/issuing/disputes/idp_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      dispute = client.v1.issuing.disputes.retrieve("idp_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/issuing/disputes/idp_xxxxxxxxxxxxx"
    end
    should "Test issuing disputes post" do
      dispute = Stripe::Issuing::Dispute.create({
        transaction: "ipi_xxxxxxxxxxxxx",
        evidence: {
          reason: "fraudulent",
          fraudulent: { explanation: "Purchase was unrecognized." },
        },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/issuing/disputes"
    end
    should "Test issuing disputes post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/issuing/disputes").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      dispute = client.v1.issuing.disputes.create({
        transaction: "ipi_xxxxxxxxxxxxx",
        evidence: {
          reason: "fraudulent",
          fraudulent: { explanation: "Purchase was unrecognized." },
        },
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/issuing/disputes"
    end
    should "Test issuing disputes submit post" do
      dispute = Stripe::Issuing::Dispute.submit("idp_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/issuing/disputes/idp_xxxxxxxxxxxxx/submit"
    end
    should "Test issuing disputes submit post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/issuing/disputes/idp_xxxxxxxxxxxxx/submit"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      dispute = client.v1.issuing.disputes.submit("idp_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/issuing/disputes/idp_xxxxxxxxxxxxx/submit"
    end
    should "Test issuing personalization designs get" do
      personalization_designs = Stripe::Issuing::PersonalizationDesign.list
      assert_requested :get,  "#{Stripe.api_base}/v1/issuing/personalization_designs"
    end
    should "Test issuing personalization designs get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/issuing/personalization_designs"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      personalization_designs = client.v1.issuing.personalization_designs.list
      assert_requested :get,  "#{Stripe::DEFAULT_API_BASE}/v1/issuing/personalization_designs"
    end
    should "Test issuing personalization designs get 2" do
      personalization_design = Stripe::Issuing::PersonalizationDesign.retrieve("pd_xyz")
      assert_requested :get, "#{Stripe.api_base}/v1/issuing/personalization_designs/pd_xyz"
    end
    should "Test issuing personalization designs get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/issuing/personalization_designs/pd_xyz"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      personalization_design = client.v1.issuing.personalization_designs.retrieve("pd_xyz")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/issuing/personalization_designs/pd_xyz"
    end
    should "Test issuing personalization designs post" do
      personalization_design = Stripe::Issuing::PersonalizationDesign.create({
        physical_bundle: "pb_xyz",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/issuing/personalization_designs"
    end
    should "Test issuing personalization designs post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/issuing/personalization_designs"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      personalization_design = client.v1.issuing.personalization_designs.create({
        physical_bundle: "pb_xyz",
      })
      assert_requested :post,  "#{Stripe::DEFAULT_API_BASE}/v1/issuing/personalization_designs"
    end
    should "Test issuing personalization designs post 2" do
      personalization_design = Stripe::Issuing::PersonalizationDesign.update("pd_xyz")
      assert_requested :post,  "#{Stripe.api_base}/v1/issuing/personalization_designs/pd_xyz"
    end
    should "Test issuing personalization designs post 2 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/issuing/personalization_designs/pd_xyz"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      personalization_design = client.v1.issuing.personalization_designs.update("pd_xyz")
      assert_requested :post,  "#{Stripe::DEFAULT_API_BASE}/v1/issuing/personalization_designs/pd_xyz"
    end
    should "Test issuing physical bundles get" do
      physical_bundles = Stripe::Issuing::PhysicalBundle.list
      assert_requested :get, "#{Stripe.api_base}/v1/issuing/physical_bundles"
    end
    should "Test issuing physical bundles get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/issuing/physical_bundles").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      physical_bundles = client.v1.issuing.physical_bundles.list
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/issuing/physical_bundles"
    end
    should "Test issuing physical bundles get 2" do
      physical_bundle = Stripe::Issuing::PhysicalBundle.retrieve("pb_xyz")
      assert_requested :get, "#{Stripe.api_base}/v1/issuing/physical_bundles/pb_xyz"
    end
    should "Test issuing physical bundles get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/issuing/physical_bundles/pb_xyz"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      physical_bundle = client.v1.issuing.physical_bundles.retrieve("pb_xyz")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/issuing/physical_bundles/pb_xyz"
    end
    should "Test issuing transactions get" do
      transactions = Stripe::Issuing::Transaction.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/issuing/transactions?limit=3"
    end
    should "Test issuing transactions get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/issuing/transactions?limit=3").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      transactions = client.v1.issuing.transactions.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/issuing/transactions?limit=3"
    end
    should "Test issuing transactions get 2" do
      transaction = Stripe::Issuing::Transaction.retrieve("ipi_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/issuing/transactions/ipi_xxxxxxxxxxxxx"
    end
    should "Test issuing transactions get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/issuing/transactions/ipi_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      transaction = client.v1.issuing.transactions.retrieve("ipi_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/issuing/transactions/ipi_xxxxxxxxxxxxx"
    end
    should "Test issuing transactions post" do
      transaction = Stripe::Issuing::Transaction.update(
        "ipi_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/issuing/transactions/ipi_xxxxxxxxxxxxx"
    end
    should "Test issuing transactions post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/issuing/transactions/ipi_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      transaction = client.v1.issuing.transactions.update(
        "ipi_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/issuing/transactions/ipi_xxxxxxxxxxxxx"
    end
    should "Test mandates get" do
      mandate = Stripe::Mandate.retrieve("mandate_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/mandates/mandate_xxxxxxxxxxxxx"
    end
    should "Test mandates get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/mandates/mandate_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      mandate = client.v1.mandates.retrieve("mandate_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/mandates/mandate_xxxxxxxxxxxxx"
    end
    should "Test payment intents apply customer balance post" do
      payment_intent = Stripe::PaymentIntent.apply_customer_balance("pi_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_xxxxxxxxxxxxx/apply_customer_balance"
    end
    should "Test payment intents apply customer balance post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/payment_intents/pi_xxxxxxxxxxxxx/apply_customer_balance"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      payment_intent = client.v1.payment_intents.apply_customer_balance("pi_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/payment_intents/pi_xxxxxxxxxxxxx/apply_customer_balance"
    end
    should "Test payment intents cancel post" do
      payment_intent = Stripe::PaymentIntent.cancel("pi_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_xxxxxxxxxxxxx/cancel"
    end
    should "Test payment intents cancel post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/payment_intents/pi_xxxxxxxxxxxxx/cancel"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      payment_intent = client.v1.payment_intents.cancel("pi_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/payment_intents/pi_xxxxxxxxxxxxx/cancel"
    end
    should "Test payment intents capture post" do
      payment_intent = Stripe::PaymentIntent.capture("pi_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_xxxxxxxxxxxxx/capture"
    end
    should "Test payment intents capture post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/payment_intents/pi_xxxxxxxxxxxxx/capture"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      payment_intent = client.v1.payment_intents.capture("pi_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/payment_intents/pi_xxxxxxxxxxxxx/capture"
    end
    should "Test payment intents confirm post" do
      payment_intent = Stripe::PaymentIntent.confirm(
        "pi_xxxxxxxxxxxxx",
        { payment_method: "pm_card_visa" }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_xxxxxxxxxxxxx/confirm"
    end
    should "Test payment intents confirm post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/payment_intents/pi_xxxxxxxxxxxxx/confirm"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      payment_intent = client.v1.payment_intents.confirm(
        "pi_xxxxxxxxxxxxx",
        { payment_method: "pm_card_visa" }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/payment_intents/pi_xxxxxxxxxxxxx/confirm"
    end
    should "Test payment intents get" do
      payment_intents = Stripe::PaymentIntent.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/payment_intents?limit=3"
    end
    should "Test payment intents get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/payment_intents?limit=3").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      payment_intents = client.v1.payment_intents.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/payment_intents?limit=3"
    end
    should "Test payment intents get 2" do
      payment_intent = Stripe::PaymentIntent.retrieve("pi_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/payment_intents/pi_xxxxxxxxxxxxx"
    end
    should "Test payment intents get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/payment_intents/pi_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      payment_intent = client.v1.payment_intents.retrieve("pi_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/payment_intents/pi_xxxxxxxxxxxxx"
    end
    should "Test payment intents increment authorization post" do
      payment_intent = Stripe::PaymentIntent.increment_authorization(
        "pi_xxxxxxxxxxxxx",
        { amount: 2099 }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_xxxxxxxxxxxxx/increment_authorization"
    end
    should "Test payment intents increment authorization post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/payment_intents/pi_xxxxxxxxxxxxx/increment_authorization"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      payment_intent = client.v1.payment_intents.increment_authorization(
        "pi_xxxxxxxxxxxxx",
        { amount: 2099 }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/payment_intents/pi_xxxxxxxxxxxxx/increment_authorization"
    end
    should "Test payment intents post" do
      payment_intent = Stripe::PaymentIntent.create({
        amount: 1099,
        currency: "eur",
        automatic_payment_methods: { enabled: true },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/payment_intents"
    end
    should "Test payment intents post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/payment_intents").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      payment_intent = client.v1.payment_intents.create({
        amount: 1099,
        currency: "eur",
        automatic_payment_methods: { enabled: true },
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/payment_intents"
    end
    should "Test payment intents post 2" do
      payment_intent = Stripe::PaymentIntent.create({
        amount: 2000,
        currency: "usd",
        automatic_payment_methods: { enabled: true },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/payment_intents"
    end
    should "Test payment intents post 2 (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/payment_intents").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      payment_intent = client.v1.payment_intents.create({
        amount: 2000,
        currency: "usd",
        automatic_payment_methods: { enabled: true },
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/payment_intents"
    end
    should "Test payment intents post 3" do
      payment_intent = Stripe::PaymentIntent.update(
        "pi_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_xxxxxxxxxxxxx"
    end
    should "Test payment intents post 3 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/payment_intents/pi_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      payment_intent = client.v1.payment_intents.update(
        "pi_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/payment_intents/pi_xxxxxxxxxxxxx"
    end
    should "Test payment intents post 4" do
      payment_intent = Stripe::PaymentIntent.create({
        amount: 200,
        currency: "usd",
        payment_method_data: {
          type: "p24",
          p24: { bank: "blik" },
        },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/payment_intents"
    end
    should "Test payment intents post 4 (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/payment_intents").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      payment_intent = client.v1.payment_intents.create({
        amount: 200,
        currency: "usd",
        payment_method_data: {
          type: "p24",
          p24: { bank: "blik" },
        },
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/payment_intents"
    end
    should "Test payment intents search get" do
      payment_intents = Stripe::PaymentIntent.search({
        query: "status:'succeeded' AND metadata['order_id']:'6735'",
      })
      assert_requested :get, "#{Stripe.api_base}/v1/payment_intents/search?query=status%3A%27succeeded%27%20AND%20metadata%5B%27order_id%27%5D%3A%276735%27"
    end
    should "Test payment intents search get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/payment_intents/search?query=status%3A%27succeeded%27%20AND%20metadata%5B%27order_id%27%5D%3A%276735%27"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      payment_intents = client.v1.payment_intents.search({
        query: "status:'succeeded' AND metadata['order_id']:'6735'",
      })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/payment_intents/search?query=status%3A%27succeeded%27%20AND%20metadata%5B%27order_id%27%5D%3A%276735%27"
    end
    should "Test payment intents verify microdeposits post" do
      payment_intent = Stripe::PaymentIntent.verify_microdeposits("pi_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_xxxxxxxxxxxxx/verify_microdeposits"
    end
    should "Test payment intents verify microdeposits post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/payment_intents/pi_xxxxxxxxxxxxx/verify_microdeposits"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      payment_intent = client.v1.payment_intents.verify_microdeposits("pi_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/payment_intents/pi_xxxxxxxxxxxxx/verify_microdeposits"
    end
    should "Test payment intents verify microdeposits post 2" do
      payment_intent = Stripe::PaymentIntent.verify_microdeposits(
        "pi_xxxxxxxxxxxxx",
        { amounts: [32, 45] }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_xxxxxxxxxxxxx/verify_microdeposits"
    end
    should "Test payment intents verify microdeposits post 2 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/payment_intents/pi_xxxxxxxxxxxxx/verify_microdeposits"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      payment_intent = client.v1.payment_intents.verify_microdeposits(
        "pi_xxxxxxxxxxxxx",
        { amounts: [32, 45] }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/payment_intents/pi_xxxxxxxxxxxxx/verify_microdeposits"
    end
    should "Test payment links get" do
      payment_link = Stripe::PaymentLink.retrieve("pl_xyz")
      assert_requested :get, "#{Stripe.api_base}/v1/payment_links/pl_xyz"
    end
    should "Test payment links get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/payment_links/pl_xyz").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      payment_link = client.v1.payment_links.retrieve("pl_xyz")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/payment_links/pl_xyz"
    end
    should "Test payment links get 2" do
      payment_links = Stripe::PaymentLink.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/payment_links?limit=3"
    end
    should "Test payment links get 2 (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/payment_links?limit=3").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      payment_links = client.v1.payment_links.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/payment_links?limit=3"
    end
    should "Test payment links get 3" do
      payment_link = Stripe::PaymentLink.retrieve("plink_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/payment_links/plink_xxxxxxxxxxxxx"
    end
    should "Test payment links get 3 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/payment_links/plink_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      payment_link = client.v1.payment_links.retrieve("plink_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/payment_links/plink_xxxxxxxxxxxxx"
    end
    should "Test payment links line items get" do
      line_items = Stripe::PaymentLink.list_line_items("pl_xyz")
      assert_requested :get, "#{Stripe.api_base}/v1/payment_links/pl_xyz/line_items"
    end
    should "Test payment links line items get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/payment_links/pl_xyz/line_items"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      line_items = client.v1.payment_links.line_items.list("pl_xyz")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/payment_links/pl_xyz/line_items"
    end
    should "Test payment links post" do
      payment_link = Stripe::PaymentLink.create({
        line_items: [
          {
            price: "price_xxxxxxxxxxxxx",
            quantity: 1,
          },
        ],
      })
      assert_requested :post, "#{Stripe.api_base}/v1/payment_links"
    end
    should "Test payment links post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/payment_links").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      payment_link = client.v1.payment_links.create({
        line_items: [
          {
            price: "price_xxxxxxxxxxxxx",
            quantity: 1,
          },
        ],
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/payment_links"
    end
    should "Test payment links post 2" do
      payment_link = Stripe::PaymentLink.create({
        line_items: [
          {
            price: "price_xxxxxxxxxxxxx",
            quantity: 1,
          },
        ],
      })
      assert_requested :post, "#{Stripe.api_base}/v1/payment_links"
    end
    should "Test payment links post 2 (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/payment_links").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      payment_link = client.v1.payment_links.create({
        line_items: [
          {
            price: "price_xxxxxxxxxxxxx",
            quantity: 1,
          },
        ],
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/payment_links"
    end
    should "Test payment links post 3" do
      payment_link = Stripe::PaymentLink.update("plink_xxxxxxxxxxxxx", { active: false })
      assert_requested :post, "#{Stripe.api_base}/v1/payment_links/plink_xxxxxxxxxxxxx"
    end
    should "Test payment links post 3 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/payment_links/plink_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      payment_link = client.v1.payment_links.update("plink_xxxxxxxxxxxxx", { active: false })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/payment_links/plink_xxxxxxxxxxxxx"
    end
    should "Test payment method configurations get" do
      payment_method_configurations = Stripe::PaymentMethodConfiguration.list({ application: "foo" })
      assert_requested :get, "#{Stripe.api_base}/v1/payment_method_configurations?application=foo"
    end
    should "Test payment method configurations get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/payment_method_configurations?application=foo"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      payment_method_configurations = client.v1.payment_method_configurations.list({
        application: "foo",
      })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/payment_method_configurations?application=foo"
    end
    should "Test payment method configurations get 2" do
      payment_method_configuration = Stripe::PaymentMethodConfiguration.retrieve("foo")
      assert_requested :get, "#{Stripe.api_base}/v1/payment_method_configurations/foo"
    end
    should "Test payment method configurations get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/payment_method_configurations/foo"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      payment_method_configuration = client.v1.payment_method_configurations.retrieve("foo")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/payment_method_configurations/foo"
    end
    should "Test payment method configurations post" do
      payment_method_configuration = Stripe::PaymentMethodConfiguration.create({
        acss_debit: { display_preference: { preference: "none" } },
        affirm: { display_preference: { preference: "none" } },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/payment_method_configurations"
    end
    should "Test payment method configurations post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/payment_method_configurations").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      payment_method_configuration = client.v1.payment_method_configurations.create({
        acss_debit: { display_preference: { preference: "none" } },
        affirm: { display_preference: { preference: "none" } },
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/payment_method_configurations"
    end
    should "Test payment method configurations post 2" do
      payment_method_configuration = Stripe::PaymentMethodConfiguration.update(
        "foo",
        { acss_debit: { display_preference: { preference: "on" } } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/payment_method_configurations/foo"
    end
    should "Test payment method configurations post 2 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/payment_method_configurations/foo"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      payment_method_configuration = client.v1.payment_method_configurations.update(
        "foo",
        { acss_debit: { display_preference: { preference: "on" } } }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/payment_method_configurations/foo"
    end
    should "Test payment methods attach post" do
      payment_method = Stripe::PaymentMethod.attach(
        "pm_xxxxxxxxxxxxx",
        { customer: "cus_xxxxxxxxxxxxx" }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/payment_methods/pm_xxxxxxxxxxxxx/attach"
    end
    should "Test payment methods attach post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/payment_methods/pm_xxxxxxxxxxxxx/attach"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      payment_method = client.v1.payment_methods.attach(
        "pm_xxxxxxxxxxxxx",
        { customer: "cus_xxxxxxxxxxxxx" }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/payment_methods/pm_xxxxxxxxxxxxx/attach"
    end
    should "Test payment methods detach post" do
      payment_method = Stripe::PaymentMethod.detach("pm_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/payment_methods/pm_xxxxxxxxxxxxx/detach"
    end
    should "Test payment methods detach post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/payment_methods/pm_xxxxxxxxxxxxx/detach"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      payment_method = client.v1.payment_methods.detach("pm_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/payment_methods/pm_xxxxxxxxxxxxx/detach"
    end
    should "Test payment methods get" do
      payment_methods = Stripe::PaymentMethod.list({
        customer: "cus_xxxxxxxxxxxxx",
        type: "card",
      })
      assert_requested :get, "#{Stripe.api_base}/v1/payment_methods?customer=cus_xxxxxxxxxxxxx&type=card"
    end
    should "Test payment methods get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/payment_methods?customer=cus_xxxxxxxxxxxxx&type=card"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      payment_methods = client.v1.payment_methods.list({
        customer: "cus_xxxxxxxxxxxxx",
        type: "card",
      })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/payment_methods?customer=cus_xxxxxxxxxxxxx&type=card"
    end
    should "Test payment methods get 2" do
      payment_method = Stripe::PaymentMethod.retrieve("pm_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/payment_methods/pm_xxxxxxxxxxxxx"
    end
    should "Test payment methods get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/payment_methods/pm_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      payment_method = client.v1.payment_methods.retrieve("pm_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/payment_methods/pm_xxxxxxxxxxxxx"
    end
    should "Test payment methods post" do
      payment_method = Stripe::PaymentMethod.create({
        type: "card",
        card: {
          number: "4242424242424242",
          exp_month: 8,
          exp_year: 2024,
          cvc: "314",
        },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/payment_methods"
    end
    should "Test payment methods post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/payment_methods").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      payment_method = client.v1.payment_methods.create({
        type: "card",
        card: {
          number: "4242424242424242",
          exp_month: 8,
          exp_year: 2024,
          cvc: "314",
        },
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/payment_methods"
    end
    should "Test payment methods post 2" do
      payment_method = Stripe::PaymentMethod.update(
        "pm_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/payment_methods/pm_xxxxxxxxxxxxx"
    end
    should "Test payment methods post 2 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/payment_methods/pm_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      payment_method = client.v1.payment_methods.update(
        "pm_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/payment_methods/pm_xxxxxxxxxxxxx"
    end
    should "Test payouts cancel post" do
      payout = Stripe::Payout.cancel("po_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/payouts/po_xxxxxxxxxxxxx/cancel"
    end
    should "Test payouts cancel post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/payouts/po_xxxxxxxxxxxxx/cancel"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      payout = client.v1.payouts.cancel("po_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/payouts/po_xxxxxxxxxxxxx/cancel"
    end
    should "Test payouts get" do
      payouts = Stripe::Payout.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/payouts?limit=3"
    end
    should "Test payouts get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/payouts?limit=3").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      payouts = client.v1.payouts.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/payouts?limit=3"
    end
    should "Test payouts get 2" do
      payout = Stripe::Payout.retrieve("po_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/payouts/po_xxxxxxxxxxxxx"
    end
    should "Test payouts get 2 (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/payouts/po_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      payout = client.v1.payouts.retrieve("po_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/payouts/po_xxxxxxxxxxxxx"
    end
    should "Test payouts post" do
      payout = Stripe::Payout.create({
        amount: 1100,
        currency: "usd",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/payouts"
    end
    should "Test payouts post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/payouts").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      payout = client.v1.payouts.create({
        amount: 1100,
        currency: "usd",
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/payouts"
    end
    should "Test payouts post 2" do
      payout = Stripe::Payout.update("po_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/payouts/po_xxxxxxxxxxxxx"
    end
    should "Test payouts post 2 (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/payouts/po_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      payout = client.v1.payouts.update("po_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/payouts/po_xxxxxxxxxxxxx"
    end
    should "Test payouts reverse post" do
      payout = Stripe::Payout.reverse("po_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/payouts/po_xxxxxxxxxxxxx/reverse"
    end
    should "Test payouts reverse post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/payouts/po_xxxxxxxxxxxxx/reverse"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      payout = client.v1.payouts.reverse("po_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/payouts/po_xxxxxxxxxxxxx/reverse"
    end
    should "Test plans delete" do
      deleted = Stripe::Plan.delete("price_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/plans/price_xxxxxxxxxxxxx"
    end
    should "Test plans delete (service)" do
      stub_request(:delete, "#{Stripe::DEFAULT_API_BASE}/v1/plans/price_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      deleted = client.v1.plans.delete("price_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe::DEFAULT_API_BASE}/v1/plans/price_xxxxxxxxxxxxx"
    end
    should "Test plans get" do
      plans = Stripe::Plan.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/plans?limit=3"
    end
    should "Test plans get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/plans?limit=3").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      plans = client.v1.plans.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/plans?limit=3"
    end
    should "Test plans get 2" do
      plan = Stripe::Plan.retrieve("price_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/plans/price_xxxxxxxxxxxxx"
    end
    should "Test plans get 2 (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/plans/price_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      plan = client.v1.plans.retrieve("price_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/plans/price_xxxxxxxxxxxxx"
    end
    should "Test plans post" do
      plan = Stripe::Plan.create({
        amount: 2000,
        currency: "usd",
        interval: "month",
        product: "prod_xxxxxxxxxxxxx",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/plans"
    end
    should "Test plans post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/plans").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      plan = client.v1.plans.create({
        amount: 2000,
        currency: "usd",
        interval: "month",
        product: "prod_xxxxxxxxxxxxx",
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/plans"
    end
    should "Test plans post 2" do
      plan = Stripe::Plan.create({
        amount: 2000,
        currency: "usd",
        interval: "month",
        product: { name: "My product" },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/plans"
    end
    should "Test plans post 2 (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/plans").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      plan = client.v1.plans.create({
        amount: 2000,
        currency: "usd",
        interval: "month",
        product: { name: "My product" },
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/plans"
    end
    should "Test plans post 3" do
      plan = Stripe::Plan.update("price_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/plans/price_xxxxxxxxxxxxx"
    end
    should "Test plans post 3 (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/plans/price_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      plan = client.v1.plans.update("price_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/plans/price_xxxxxxxxxxxxx"
    end
    should "Test prices get" do
      prices = Stripe::Price.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/prices?limit=3"
    end
    should "Test prices get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/prices?limit=3").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      prices = client.v1.prices.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/prices?limit=3"
    end
    should "Test prices get 2" do
      price = Stripe::Price.retrieve("price_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/prices/price_xxxxxxxxxxxxx"
    end
    should "Test prices get 2 (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/prices/price_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      price = client.v1.prices.retrieve("price_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/prices/price_xxxxxxxxxxxxx"
    end
    should "Test prices post" do
      price = Stripe::Price.create({
        unit_amount: 2000,
        currency: "usd",
        currency_options: {
          uah: { unit_amount: 5000 },
          eur: { unit_amount: 1800 },
        },
        recurring: { interval: "month" },
        product: "prod_xxxxxxxxxxxxx",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/prices"
    end
    should "Test prices post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/prices").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      price = client.v1.prices.create({
        unit_amount: 2000,
        currency: "usd",
        currency_options: {
          uah: { unit_amount: 5000 },
          eur: { unit_amount: 1800 },
        },
        recurring: { interval: "month" },
        product: "prod_xxxxxxxxxxxxx",
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/prices"
    end
    should "Test prices post 2" do
      price = Stripe::Price.create({
        unit_amount: 2000,
        currency: "usd",
        recurring: { interval: "month" },
        product: "prod_xxxxxxxxxxxxx",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/prices"
    end
    should "Test prices post 2 (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/prices").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      price = client.v1.prices.create({
        unit_amount: 2000,
        currency: "usd",
        recurring: { interval: "month" },
        product: "prod_xxxxxxxxxxxxx",
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/prices"
    end
    should "Test prices post 3" do
      price = Stripe::Price.update("price_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/prices/price_xxxxxxxxxxxxx"
    end
    should "Test prices post 3 (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/prices/price_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      price = client.v1.prices.update("price_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/prices/price_xxxxxxxxxxxxx"
    end
    should "Test prices search get" do
      prices = Stripe::Price.search({ query: "active:'true' AND metadata['order_id']:'6735'" })
      assert_requested :get, "#{Stripe.api_base}/v1/prices/search?query=active%3A%27true%27%20AND%20metadata%5B%27order_id%27%5D%3A%276735%27"
    end
    should "Test prices search get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/prices/search?query=active%3A%27true%27%20AND%20metadata%5B%27order_id%27%5D%3A%276735%27"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      prices = client.v1.prices.search({
        query: "active:'true' AND metadata['order_id']:'6735'",
      })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/prices/search?query=active%3A%27true%27%20AND%20metadata%5B%27order_id%27%5D%3A%276735%27"
    end
    should "Test products delete" do
      deleted = Stripe::Product.delete("prod_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/products/prod_xxxxxxxxxxxxx"
    end
    should "Test products delete (service)" do
      stub_request(:delete, "#{Stripe::DEFAULT_API_BASE}/v1/products/prod_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      deleted = client.v1.products.delete("prod_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe::DEFAULT_API_BASE}/v1/products/prod_xxxxxxxxxxxxx"
    end
    should "Test products get" do
      products = Stripe::Product.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/products?limit=3"
    end
    should "Test products get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/products?limit=3").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      products = client.v1.products.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/products?limit=3"
    end
    should "Test products get 2" do
      product = Stripe::Product.retrieve("prod_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/products/prod_xxxxxxxxxxxxx"
    end
    should "Test products get 2 (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/products/prod_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      product = client.v1.products.retrieve("prod_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/products/prod_xxxxxxxxxxxxx"
    end
    should "Test products post" do
      product = Stripe::Product.create({ name: "Gold Special" })
      assert_requested :post, "#{Stripe.api_base}/v1/products"
    end
    should "Test products post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/products").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      product = client.v1.products.create({ name: "Gold Special" })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/products"
    end
    should "Test products post 2" do
      product = Stripe::Product.update("prod_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/products/prod_xxxxxxxxxxxxx"
    end
    should "Test products post 2 (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/products/prod_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      product = client.v1.products.update("prod_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/products/prod_xxxxxxxxxxxxx"
    end
    should "Test products search get" do
      products = Stripe::Product.search({
        query: "active:'true' AND metadata['order_id']:'6735'",
      })
      assert_requested :get, "#{Stripe.api_base}/v1/products/search?query=active%3A%27true%27%20AND%20metadata%5B%27order_id%27%5D%3A%276735%27"
    end
    should "Test products search get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/products/search?query=active%3A%27true%27%20AND%20metadata%5B%27order_id%27%5D%3A%276735%27"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      products = client.v1.products.search({
        query: "active:'true' AND metadata['order_id']:'6735'",
      })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/products/search?query=active%3A%27true%27%20AND%20metadata%5B%27order_id%27%5D%3A%276735%27"
    end
    should "Test promotion codes get" do
      promotion_codes = Stripe::PromotionCode.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/promotion_codes?limit=3"
    end
    should "Test promotion codes get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/promotion_codes?limit=3").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      promotion_codes = client.v1.promotion_codes.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/promotion_codes?limit=3"
    end
    should "Test promotion codes get 2" do
      promotion_code = Stripe::PromotionCode.retrieve("promo_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/promotion_codes/promo_xxxxxxxxxxxxx"
    end
    should "Test promotion codes get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/promotion_codes/promo_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      promotion_code = client.v1.promotion_codes.retrieve("promo_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/promotion_codes/promo_xxxxxxxxxxxxx"
    end
    should "Test promotion codes post" do
      promotion_code = Stripe::PromotionCode.create({
        promotion: {
          type: "coupon",
          coupon: "Z4OV52SU",
        },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/promotion_codes"
    end
    should "Test promotion codes post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/promotion_codes").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      promotion_code = client.v1.promotion_codes.create({
        promotion: {
          type: "coupon",
          coupon: "Z4OV52SU",
        },
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/promotion_codes"
    end
    should "Test promotion codes post 2" do
      promotion_code = Stripe::PromotionCode.update(
        "promo_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/promotion_codes/promo_xxxxxxxxxxxxx"
    end
    should "Test promotion codes post 2 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/promotion_codes/promo_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      promotion_code = client.v1.promotion_codes.update(
        "promo_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/promotion_codes/promo_xxxxxxxxxxxxx"
    end
    should "Test quotes accept post" do
      quote = Stripe::Quote.accept("qt_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/quotes/qt_xxxxxxxxxxxxx/accept"
    end
    should "Test quotes accept post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/quotes/qt_xxxxxxxxxxxxx/accept"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      quote = client.v1.quotes.accept("qt_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/quotes/qt_xxxxxxxxxxxxx/accept"
    end
    should "Test quotes cancel post" do
      quote = Stripe::Quote.cancel("qt_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/quotes/qt_xxxxxxxxxxxxx/cancel"
    end
    should "Test quotes cancel post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/quotes/qt_xxxxxxxxxxxxx/cancel"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      quote = client.v1.quotes.cancel("qt_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/quotes/qt_xxxxxxxxxxxxx/cancel"
    end
    should "Test quotes finalize post" do
      quote = Stripe::Quote.finalize_quote("qt_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/quotes/qt_xxxxxxxxxxxxx/finalize"
    end
    should "Test quotes finalize post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/quotes/qt_xxxxxxxxxxxxx/finalize"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      quote = client.v1.quotes.finalize_quote("qt_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/quotes/qt_xxxxxxxxxxxxx/finalize"
    end
    should "Test quotes get" do
      quotes = Stripe::Quote.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/quotes?limit=3"
    end
    should "Test quotes get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/quotes?limit=3").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      quotes = client.v1.quotes.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/quotes?limit=3"
    end
    should "Test quotes get 2" do
      quote = Stripe::Quote.retrieve("qt_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/quotes/qt_xxxxxxxxxxxxx"
    end
    should "Test quotes get 2 (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/quotes/qt_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      quote = client.v1.quotes.retrieve("qt_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/quotes/qt_xxxxxxxxxxxxx"
    end
    should "Test quotes line items get" do
      line_items = Stripe::Quote.list_line_items("qt_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/quotes/qt_xxxxxxxxxxxxx/line_items"
    end
    should "Test quotes line items get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/quotes/qt_xxxxxxxxxxxxx/line_items"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      line_items = client.v1.quotes.line_items.list("qt_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/quotes/qt_xxxxxxxxxxxxx/line_items"
    end
    should "Test quotes pdf get" do
      block_handler = {}
      file = Stripe::Quote.pdf("qt_xxxxxxxxxxxxx", &block_handler)
      assert_requested :get, "#{Stripe.api_base}/v1/quotes/qt_xxxxxxxxxxxxx/pdf"
    end
    should "Test quotes pdf get (service)" do
      block_handler = {}
      stub_request(:get, "#{Stripe::DEFAULT_UPLOAD_BASE}/v1/quotes/qt_xxxxxxxxxxxxx/pdf").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      t_untyped = client.v1.quotes.pdf("qt_xxxxxxxxxxxxx", &block_handler)
      assert_requested :get, "#{Stripe::DEFAULT_UPLOAD_BASE}/v1/quotes/qt_xxxxxxxxxxxxx/pdf"
    end
    should "Test quotes post" do
      quote = Stripe::Quote.create({
        customer: "cus_xxxxxxxxxxxxx",
        line_items: [
          {
            price: "price_xxxxxxxxxxxxx",
            quantity: 2,
          },
        ],
      })
      assert_requested :post, "#{Stripe.api_base}/v1/quotes"
    end
    should "Test quotes post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/quotes").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      quote = client.v1.quotes.create({
        customer: "cus_xxxxxxxxxxxxx",
        line_items: [
          {
            price: "price_xxxxxxxxxxxxx",
            quantity: 2,
          },
        ],
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/quotes"
    end
    should "Test quotes post 2" do
      quote = Stripe::Quote.update("qt_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/quotes/qt_xxxxxxxxxxxxx"
    end
    should "Test quotes post 2 (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/quotes/qt_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      quote = client.v1.quotes.update("qt_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/quotes/qt_xxxxxxxxxxxxx"
    end
    should "Test radar early fraud warnings get" do
      early_fraud_warnings = Stripe::Radar::EarlyFraudWarning.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/radar/early_fraud_warnings?limit=3"
    end
    should "Test radar early fraud warnings get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/radar/early_fraud_warnings?limit=3"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      early_fraud_warnings = client.v1.radar.early_fraud_warnings.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/radar/early_fraud_warnings?limit=3"
    end
    should "Test radar early fraud warnings get 2" do
      early_fraud_warning = Stripe::Radar::EarlyFraudWarning.retrieve("issfr_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/radar/early_fraud_warnings/issfr_xxxxxxxxxxxxx"
    end
    should "Test radar early fraud warnings get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/radar/early_fraud_warnings/issfr_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      early_fraud_warning = client.v1.radar.early_fraud_warnings.retrieve("issfr_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/radar/early_fraud_warnings/issfr_xxxxxxxxxxxxx"
    end
    should "Test radar value list items delete" do
      deleted = Stripe::Radar::ValueListItem.delete("rsli_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/radar/value_list_items/rsli_xxxxxxxxxxxxx"
    end
    should "Test radar value list items delete (service)" do
      stub_request(
        :delete,
        "#{Stripe::DEFAULT_API_BASE}/v1/radar/value_list_items/rsli_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      deleted = client.v1.radar.value_list_items.delete("rsli_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe::DEFAULT_API_BASE}/v1/radar/value_list_items/rsli_xxxxxxxxxxxxx"
    end
    should "Test radar value list items get" do
      value_list_items = Stripe::Radar::ValueListItem.list({
        limit: 3,
        value_list: "rsl_xxxxxxxxxxxxx",
      })
      assert_requested :get, "#{Stripe.api_base}/v1/radar/value_list_items?limit=3&value_list=rsl_xxxxxxxxxxxxx"
    end
    should "Test radar value list items get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/radar/value_list_items?limit=3&value_list=rsl_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      value_list_items = client.v1.radar.value_list_items.list({
        limit: 3,
        value_list: "rsl_xxxxxxxxxxxxx",
      })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/radar/value_list_items?limit=3&value_list=rsl_xxxxxxxxxxxxx"
    end
    should "Test radar value list items get 2" do
      value_list_item = Stripe::Radar::ValueListItem.retrieve("rsli_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/radar/value_list_items/rsli_xxxxxxxxxxxxx"
    end
    should "Test radar value list items get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/radar/value_list_items/rsli_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      value_list_item = client.v1.radar.value_list_items.retrieve("rsli_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/radar/value_list_items/rsli_xxxxxxxxxxxxx"
    end
    should "Test radar value list items post" do
      value_list_item = Stripe::Radar::ValueListItem.create({
        value_list: "rsl_xxxxxxxxxxxxx",
        value: "1.2.3.4",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/radar/value_list_items"
    end
    should "Test radar value list items post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/radar/value_list_items").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      value_list_item = client.v1.radar.value_list_items.create({
        value_list: "rsl_xxxxxxxxxxxxx",
        value: "1.2.3.4",
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/radar/value_list_items"
    end
    should "Test radar value lists delete" do
      deleted = Stripe::Radar::ValueList.delete("rsl_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/radar/value_lists/rsl_xxxxxxxxxxxxx"
    end
    should "Test radar value lists delete (service)" do
      stub_request(
        :delete,
        "#{Stripe::DEFAULT_API_BASE}/v1/radar/value_lists/rsl_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      deleted = client.v1.radar.value_lists.delete("rsl_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe::DEFAULT_API_BASE}/v1/radar/value_lists/rsl_xxxxxxxxxxxxx"
    end
    should "Test radar value lists get" do
      value_lists = Stripe::Radar::ValueList.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/radar/value_lists?limit=3"
    end
    should "Test radar value lists get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/radar/value_lists?limit=3").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      value_lists = client.v1.radar.value_lists.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/radar/value_lists?limit=3"
    end
    should "Test radar value lists get 2" do
      value_list = Stripe::Radar::ValueList.retrieve("rsl_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/radar/value_lists/rsl_xxxxxxxxxxxxx"
    end
    should "Test radar value lists get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/radar/value_lists/rsl_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      value_list = client.v1.radar.value_lists.retrieve("rsl_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/radar/value_lists/rsl_xxxxxxxxxxxxx"
    end
    should "Test radar value lists post" do
      value_list = Stripe::Radar::ValueList.create({
        alias: "custom_ip_xxxxxxxxxxxxx",
        name: "Custom IP Blocklist",
        item_type: "ip_address",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/radar/value_lists"
    end
    should "Test radar value lists post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/radar/value_lists").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      value_list = client.v1.radar.value_lists.create({
        alias: "custom_ip_xxxxxxxxxxxxx",
        name: "Custom IP Blocklist",
        item_type: "ip_address",
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/radar/value_lists"
    end
    should "Test radar value lists post 2" do
      value_list = Stripe::Radar::ValueList.update(
        "rsl_xxxxxxxxxxxxx",
        { name: "Updated IP Block List" }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/radar/value_lists/rsl_xxxxxxxxxxxxx"
    end
    should "Test radar value lists post 2 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/radar/value_lists/rsl_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      value_list = client.v1.radar.value_lists.update(
        "rsl_xxxxxxxxxxxxx",
        { name: "Updated IP Block List" }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/radar/value_lists/rsl_xxxxxxxxxxxxx"
    end
    should "Test refunds cancel post" do
      refund = Stripe::Refund.cancel("re_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/refunds/re_xxxxxxxxxxxxx/cancel"
    end
    should "Test refunds cancel post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/refunds/re_xxxxxxxxxxxxx/cancel"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      refund = client.v1.refunds.cancel("re_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/refunds/re_xxxxxxxxxxxxx/cancel"
    end
    should "Test refunds get" do
      refunds = Stripe::Refund.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/refunds?limit=3"
    end
    should "Test refunds get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/refunds?limit=3").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      refunds = client.v1.refunds.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/refunds?limit=3"
    end
    should "Test refunds get 2" do
      refund = Stripe::Refund.retrieve("re_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/refunds/re_xxxxxxxxxxxxx"
    end
    should "Test refunds get 2 (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/refunds/re_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      refund = client.v1.refunds.retrieve("re_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/refunds/re_xxxxxxxxxxxxx"
    end
    should "Test refunds post" do
      refund = Stripe::Refund.create({ charge: "ch_xxxxxxxxxxxxx" })
      assert_requested :post, "#{Stripe.api_base}/v1/refunds"
    end
    should "Test refunds post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/refunds").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      refund = client.v1.refunds.create({ charge: "ch_xxxxxxxxxxxxx" })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/refunds"
    end
    should "Test refunds post 2" do
      refund = Stripe::Refund.update("re_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/refunds/re_xxxxxxxxxxxxx"
    end
    should "Test refunds post 2 (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/refunds/re_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      refund = client.v1.refunds.update("re_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/refunds/re_xxxxxxxxxxxxx"
    end
    should "Test reporting report runs get" do
      report_runs = Stripe::Reporting::ReportRun.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/reporting/report_runs?limit=3"
    end
    should "Test reporting report runs get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/reporting/report_runs?limit=3").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      report_runs = client.v1.reporting.report_runs.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/reporting/report_runs?limit=3"
    end
    should "Test reporting report runs get 2" do
      report_run = Stripe::Reporting::ReportRun.retrieve("frr_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/reporting/report_runs/frr_xxxxxxxxxxxxx"
    end
    should "Test reporting report runs get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/reporting/report_runs/frr_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      report_run = client.v1.reporting.report_runs.retrieve("frr_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/reporting/report_runs/frr_xxxxxxxxxxxxx"
    end
    should "Test reporting report runs post" do
      report_run = Stripe::Reporting::ReportRun.create({
        report_type: "balance.summary.1",
        parameters: {
          interval_start: 1_522_540_800,
          interval_end: 1_525_132_800,
        },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/reporting/report_runs"
    end
    should "Test reporting report runs post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/reporting/report_runs").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      report_run = client.v1.reporting.report_runs.create({
        report_type: "balance.summary.1",
        parameters: {
          interval_start: 1_522_540_800,
          interval_end: 1_525_132_800,
        },
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/reporting/report_runs"
    end
    should "Test reporting report types get" do
      report_types = Stripe::Reporting::ReportType.list
      assert_requested :get, "#{Stripe.api_base}/v1/reporting/report_types"
    end
    should "Test reporting report types get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/reporting/report_types").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      report_types = client.v1.reporting.report_types.list
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/reporting/report_types"
    end
    should "Test reporting report types get 2" do
      report_type = Stripe::Reporting::ReportType.retrieve("balance.summary.1")
      assert_requested :get, "#{Stripe.api_base}/v1/reporting/report_types/balance.summary.1"
    end
    should "Test reporting report types get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/reporting/report_types/balance.summary.1"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      report_type = client.v1.reporting.report_types.retrieve("balance.summary.1")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/reporting/report_types/balance.summary.1"
    end
    should "Test reviews approve post" do
      review = Stripe::Review.approve("prv_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/reviews/prv_xxxxxxxxxxxxx/approve"
    end
    should "Test reviews approve post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/reviews/prv_xxxxxxxxxxxxx/approve"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      review = client.v1.reviews.approve("prv_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/reviews/prv_xxxxxxxxxxxxx/approve"
    end
    should "Test reviews get" do
      reviews = Stripe::Review.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/reviews?limit=3"
    end
    should "Test reviews get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/reviews?limit=3").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      reviews = client.v1.reviews.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/reviews?limit=3"
    end
    should "Test reviews get 2" do
      review = Stripe::Review.retrieve("prv_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/reviews/prv_xxxxxxxxxxxxx"
    end
    should "Test reviews get 2 (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/reviews/prv_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      review = client.v1.reviews.retrieve("prv_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/reviews/prv_xxxxxxxxxxxxx"
    end
    should "Test setup attempts get" do
      setup_attempts = Stripe::SetupAttempt.list({
        limit: 3,
        setup_intent: "si_xyz",
      })
      assert_requested :get, "#{Stripe.api_base}/v1/setup_attempts?limit=3&setup_intent=si_xyz"
    end
    should "Test setup attempts get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/setup_attempts?limit=3&setup_intent=si_xyz"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      setup_attempts = client.v1.setup_attempts.list({
        limit: 3,
        setup_intent: "si_xyz",
      })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/setup_attempts?limit=3&setup_intent=si_xyz"
    end
    should "Test setup intents cancel post" do
      setup_intent = Stripe::SetupIntent.cancel("seti_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/setup_intents/seti_xxxxxxxxxxxxx/cancel"
    end
    should "Test setup intents cancel post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/setup_intents/seti_xxxxxxxxxxxxx/cancel"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      setup_intent = client.v1.setup_intents.cancel("seti_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/setup_intents/seti_xxxxxxxxxxxxx/cancel"
    end
    should "Test setup intents confirm post" do
      setup_intent = Stripe::SetupIntent.confirm(
        "seti_xxxxxxxxxxxxx",
        { payment_method: "pm_card_visa" }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/setup_intents/seti_xxxxxxxxxxxxx/confirm"
    end
    should "Test setup intents confirm post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/setup_intents/seti_xxxxxxxxxxxxx/confirm"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      setup_intent = client.v1.setup_intents.confirm(
        "seti_xxxxxxxxxxxxx",
        { payment_method: "pm_card_visa" }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/setup_intents/seti_xxxxxxxxxxxxx/confirm"
    end
    should "Test setup intents get" do
      setup_intents = Stripe::SetupIntent.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/setup_intents?limit=3"
    end
    should "Test setup intents get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/setup_intents?limit=3").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      setup_intents = client.v1.setup_intents.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/setup_intents?limit=3"
    end
    should "Test setup intents get 2" do
      setup_intent = Stripe::SetupIntent.retrieve("seti_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/setup_intents/seti_xxxxxxxxxxxxx"
    end
    should "Test setup intents get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/setup_intents/seti_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      setup_intent = client.v1.setup_intents.retrieve("seti_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/setup_intents/seti_xxxxxxxxxxxxx"
    end
    should "Test setup intents post" do
      setup_intent = Stripe::SetupIntent.create({ payment_method_types: ["card"] })
      assert_requested :post, "#{Stripe.api_base}/v1/setup_intents"
    end
    should "Test setup intents post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/setup_intents").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      setup_intent = client.v1.setup_intents.create({ payment_method_types: ["card"] })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/setup_intents"
    end
    should "Test setup intents post 2" do
      setup_intent = Stripe::SetupIntent.update(
        "seti_xxxxxxxxxxxxx",
        { metadata: { user_id: "3435453" } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/setup_intents/seti_xxxxxxxxxxxxx"
    end
    should "Test setup intents post 2 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/setup_intents/seti_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      setup_intent = client.v1.setup_intents.update(
        "seti_xxxxxxxxxxxxx",
        { metadata: { user_id: "3435453" } }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/setup_intents/seti_xxxxxxxxxxxxx"
    end
    should "Test setup intents verify microdeposits post" do
      setup_intent = Stripe::SetupIntent.verify_microdeposits("seti_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/setup_intents/seti_xxxxxxxxxxxxx/verify_microdeposits"
    end
    should "Test setup intents verify microdeposits post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/setup_intents/seti_xxxxxxxxxxxxx/verify_microdeposits"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      setup_intent = client.v1.setup_intents.verify_microdeposits("seti_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/setup_intents/seti_xxxxxxxxxxxxx/verify_microdeposits"
    end
    should "Test setup intents verify microdeposits post 2" do
      setup_intent = Stripe::SetupIntent.verify_microdeposits(
        "seti_xxxxxxxxxxxxx",
        { amounts: [32, 45] }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/setup_intents/seti_xxxxxxxxxxxxx/verify_microdeposits"
    end
    should "Test setup intents verify microdeposits post 2 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/setup_intents/seti_xxxxxxxxxxxxx/verify_microdeposits"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      setup_intent = client.v1.setup_intents.verify_microdeposits(
        "seti_xxxxxxxxxxxxx",
        { amounts: [32, 45] }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/setup_intents/seti_xxxxxxxxxxxxx/verify_microdeposits"
    end
    should "Test shipping rates get" do
      shipping_rates = Stripe::ShippingRate.list
      assert_requested :get, "#{Stripe.api_base}/v1/shipping_rates"
    end
    should "Test shipping rates get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/shipping_rates").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      shipping_rates = client.v1.shipping_rates.list
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/shipping_rates"
    end
    should "Test shipping rates get 2" do
      shipping_rates = Stripe::ShippingRate.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/shipping_rates?limit=3"
    end
    should "Test shipping rates get 2 (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/shipping_rates?limit=3").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      shipping_rates = client.v1.shipping_rates.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/shipping_rates?limit=3"
    end
    should "Test shipping rates get 3" do
      shipping_rate = Stripe::ShippingRate.retrieve("shr_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/shipping_rates/shr_xxxxxxxxxxxxx"
    end
    should "Test shipping rates get 3 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/shipping_rates/shr_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      shipping_rate = client.v1.shipping_rates.retrieve("shr_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/shipping_rates/shr_xxxxxxxxxxxxx"
    end
    should "Test shipping rates post" do
      shipping_rate = Stripe::ShippingRate.create({
        display_name: "Sample Shipper",
        fixed_amount: {
          currency: "usd",
          amount: 400,
        },
        type: "fixed_amount",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/shipping_rates"
    end
    should "Test shipping rates post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/shipping_rates").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      shipping_rate = client.v1.shipping_rates.create({
        display_name: "Sample Shipper",
        fixed_amount: {
          currency: "usd",
          amount: 400,
        },
        type: "fixed_amount",
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/shipping_rates"
    end
    should "Test shipping rates post 2" do
      shipping_rate = Stripe::ShippingRate.create({
        display_name: "Ground shipping",
        type: "fixed_amount",
        fixed_amount: {
          amount: 500,
          currency: "usd",
        },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/shipping_rates"
    end
    should "Test shipping rates post 2 (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/shipping_rates").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      shipping_rate = client.v1.shipping_rates.create({
        display_name: "Ground shipping",
        type: "fixed_amount",
        fixed_amount: {
          amount: 500,
          currency: "usd",
        },
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/shipping_rates"
    end
    should "Test shipping rates post 3" do
      shipping_rate = Stripe::ShippingRate.update(
        "shr_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/shipping_rates/shr_xxxxxxxxxxxxx"
    end
    should "Test shipping rates post 3 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/shipping_rates/shr_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      shipping_rate = client.v1.shipping_rates.update(
        "shr_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/shipping_rates/shr_xxxxxxxxxxxxx"
    end
    should "Test sigma scheduled query runs get" do
      scheduled_query_runs = Stripe::Sigma::ScheduledQueryRun.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/sigma/scheduled_query_runs?limit=3"
    end
    should "Test sigma scheduled query runs get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/sigma/scheduled_query_runs?limit=3"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      scheduled_query_runs = client.v1.sigma.scheduled_query_runs.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/sigma/scheduled_query_runs?limit=3"
    end
    should "Test sigma scheduled query runs get 2" do
      scheduled_query_run = Stripe::Sigma::ScheduledQueryRun.retrieve("sqr_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/sigma/scheduled_query_runs/sqr_xxxxxxxxxxxxx"
    end
    should "Test sigma scheduled query runs get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/sigma/scheduled_query_runs/sqr_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      scheduled_query_run = client.v1.sigma.scheduled_query_runs.retrieve("sqr_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/sigma/scheduled_query_runs/sqr_xxxxxxxxxxxxx"
    end
    should "Test sources get" do
      source = Stripe::Source.retrieve("src_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/sources/src_xxxxxxxxxxxxx"
    end
    should "Test sources get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/sources/src_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      source = client.v1.sources.retrieve("src_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/sources/src_xxxxxxxxxxxxx"
    end
    should "Test sources get 2" do
      source = Stripe::Source.retrieve("src_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/sources/src_xxxxxxxxxxxxx"
    end
    should "Test sources get 2 (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/sources/src_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      source = client.v1.sources.retrieve("src_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/sources/src_xxxxxxxxxxxxx"
    end
    should "Test sources post" do
      source = Stripe::Source.update("src_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/sources/src_xxxxxxxxxxxxx"
    end
    should "Test sources post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/sources/src_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      source = client.v1.sources.update("src_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/sources/src_xxxxxxxxxxxxx"
    end
    should "Test subscription items delete" do
      deleted = Stripe::SubscriptionItem.delete("si_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/subscription_items/si_xxxxxxxxxxxxx"
    end
    should "Test subscription items delete (service)" do
      stub_request(
        :delete,
        "#{Stripe::DEFAULT_API_BASE}/v1/subscription_items/si_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      deleted = client.v1.subscription_items.delete("si_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe::DEFAULT_API_BASE}/v1/subscription_items/si_xxxxxxxxxxxxx"
    end
    should "Test subscription items get" do
      subscription_items = Stripe::SubscriptionItem.list({ subscription: "sub_xxxxxxxxxxxxx" })
      assert_requested :get, "#{Stripe.api_base}/v1/subscription_items?subscription=sub_xxxxxxxxxxxxx"
    end
    should "Test subscription items get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/subscription_items?subscription=sub_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      subscription_items = client.v1.subscription_items.list({ subscription: "sub_xxxxxxxxxxxxx" })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/subscription_items?subscription=sub_xxxxxxxxxxxxx"
    end
    should "Test subscription items get 2" do
      subscription_item = Stripe::SubscriptionItem.retrieve("si_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/subscription_items/si_xxxxxxxxxxxxx"
    end
    should "Test subscription items get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/subscription_items/si_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      subscription_item = client.v1.subscription_items.retrieve("si_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/subscription_items/si_xxxxxxxxxxxxx"
    end
    should "Test subscription items post" do
      subscription_item = Stripe::SubscriptionItem.create({
        subscription: "sub_xxxxxxxxxxxxx",
        price: "price_xxxxxxxxxxxxx",
        quantity: 2,
      })
      assert_requested :post, "#{Stripe.api_base}/v1/subscription_items"
    end
    should "Test subscription items post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/subscription_items").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      subscription_item = client.v1.subscription_items.create({
        subscription: "sub_xxxxxxxxxxxxx",
        price: "price_xxxxxxxxxxxxx",
        quantity: 2,
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/subscription_items"
    end
    should "Test subscription items post 2" do
      subscription_item = Stripe::SubscriptionItem.update(
        "si_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/subscription_items/si_xxxxxxxxxxxxx"
    end
    should "Test subscription items post 2 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/subscription_items/si_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      subscription_item = client.v1.subscription_items.update(
        "si_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/subscription_items/si_xxxxxxxxxxxxx"
    end
    should "Test subscription schedules cancel post" do
      subscription_schedule = Stripe::SubscriptionSchedule.cancel("sub_sched_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/subscription_schedules/sub_sched_xxxxxxxxxxxxx/cancel"
    end
    should "Test subscription schedules cancel post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/subscription_schedules/sub_sched_xxxxxxxxxxxxx/cancel"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      subscription_schedule = client.v1.subscription_schedules.cancel("sub_sched_xxxxxxxxxxxxx")
      assert_requested :post,  "#{Stripe::DEFAULT_API_BASE}/v1/subscription_schedules/sub_sched_xxxxxxxxxxxxx/cancel"
    end
    should "Test subscription schedules get" do
      subscription_schedules = Stripe::SubscriptionSchedule.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/subscription_schedules?limit=3"
    end
    should "Test subscription schedules get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/subscription_schedules?limit=3").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      subscription_schedules = client.v1.subscription_schedules.list({ limit: 3 })
      assert_requested :get,  "#{Stripe::DEFAULT_API_BASE}/v1/subscription_schedules?limit=3"
    end
    should "Test subscription schedules get 2" do
      subscription_schedule = Stripe::SubscriptionSchedule.retrieve("sub_sched_xxxxxxxxxxxxx")
      assert_requested :get,  "#{Stripe.api_base}/v1/subscription_schedules/sub_sched_xxxxxxxxxxxxx"
    end
    should "Test subscription schedules get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/subscription_schedules/sub_sched_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      subscription_schedule = client.v1.subscription_schedules.retrieve("sub_sched_xxxxxxxxxxxxx")
      assert_requested :get,  "#{Stripe::DEFAULT_API_BASE}/v1/subscription_schedules/sub_sched_xxxxxxxxxxxxx"
    end
    should "Test subscription schedules post" do
      subscription_schedule = Stripe::SubscriptionSchedule.create({
        customer: "cus_xxxxxxxxxxxxx",
        start_date: 1_676_070_661,
        end_behavior: "release",
        phases: [
          {
            items: [
              {
                price: "price_xxxxxxxxxxxxx",
                quantity: 1,
              },
            ],
          },
        ],
      })
      assert_requested :post, "#{Stripe.api_base}/v1/subscription_schedules"
    end
    should "Test subscription schedules post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/subscription_schedules").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      subscription_schedule = client.v1.subscription_schedules.create({
        customer: "cus_xxxxxxxxxxxxx",
        start_date: 1_676_070_661,
        end_behavior: "release",
        phases: [
          {
            items: [
              {
                price: "price_xxxxxxxxxxxxx",
                quantity: 1,
              },
            ],
          },
        ],
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/subscription_schedules"
    end
    should "Test subscription schedules post 2" do
      subscription_schedule = Stripe::SubscriptionSchedule.update(
        "sub_sched_xxxxxxxxxxxxx",
        { end_behavior: "release" }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/subscription_schedules/sub_sched_xxxxxxxxxxxxx"
    end
    should "Test subscription schedules post 2 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/subscription_schedules/sub_sched_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      subscription_schedule = client.v1.subscription_schedules.update(
        "sub_sched_xxxxxxxxxxxxx",
        { end_behavior: "release" }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/subscription_schedules/sub_sched_xxxxxxxxxxxxx"
    end
    should "Test subscription schedules release post" do
      subscription_schedule = Stripe::SubscriptionSchedule.release("sub_sched_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/subscription_schedules/sub_sched_xxxxxxxxxxxxx/release"
    end
    should "Test subscription schedules release post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/subscription_schedules/sub_sched_xxxxxxxxxxxxx/release"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      subscription_schedule = client.v1.subscription_schedules.release("sub_sched_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/subscription_schedules/sub_sched_xxxxxxxxxxxxx/release"
    end
    should "Test subscriptions discount delete" do
      deleted = Stripe::Subscription.delete_discount("sub_xyz")
      assert_requested :delete, "#{Stripe.api_base}/v1/subscriptions/sub_xyz/discount"
    end
    should "Test subscriptions discount delete (service)" do
      stub_request(
        :delete,
        "#{Stripe::DEFAULT_API_BASE}/v1/subscriptions/sub_xyz/discount"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      discount = client.v1.subscriptions.delete_discount("sub_xyz")
      assert_requested :delete, "#{Stripe::DEFAULT_API_BASE}/v1/subscriptions/sub_xyz/discount"
    end
    should "Test subscriptions get" do
      subscriptions = Stripe::Subscription.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/subscriptions?limit=3"
    end
    should "Test subscriptions get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/subscriptions?limit=3").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      subscriptions = client.v1.subscriptions.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/subscriptions?limit=3"
    end
    should "Test subscriptions get 2" do
      subscription = Stripe::Subscription.retrieve("sub_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/subscriptions/sub_xxxxxxxxxxxxx"
    end
    should "Test subscriptions get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/subscriptions/sub_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      subscription = client.v1.subscriptions.retrieve("sub_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/subscriptions/sub_xxxxxxxxxxxxx"
    end
    should "Test subscriptions post" do
      subscription = Stripe::Subscription.create({
        customer: "cus_xxxxxxxxxxxxx",
        items: [{ price: "price_xxxxxxxxxxxxx" }],
      })
      assert_requested :post, "#{Stripe.api_base}/v1/subscriptions"
    end
    should "Test subscriptions post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/subscriptions").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      subscription = client.v1.subscriptions.create({
        customer: "cus_xxxxxxxxxxxxx",
        items: [{ price: "price_xxxxxxxxxxxxx" }],
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/subscriptions"
    end
    should "Test subscriptions post 2" do
      subscription = Stripe::Subscription.update(
        "sub_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/subscriptions/sub_xxxxxxxxxxxxx"
    end
    should "Test subscriptions post 2 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/subscriptions/sub_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      subscription = client.v1.subscriptions.update(
        "sub_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/subscriptions/sub_xxxxxxxxxxxxx"
    end
    should "Test subscriptions search get" do
      subscriptions = Stripe::Subscription.search({
        query: "status:'active' AND metadata['order_id']:'6735'",
      })
      assert_requested :get, "#{Stripe.api_base}/v1/subscriptions/search?query=status%3A%27active%27%20AND%20metadata%5B%27order_id%27%5D%3A%276735%27"
    end
    should "Test subscriptions search get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/subscriptions/search?query=status%3A%27active%27%20AND%20metadata%5B%27order_id%27%5D%3A%276735%27"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      subscriptions = client.v1.subscriptions.search({
        query: "status:'active' AND metadata['order_id']:'6735'",
      })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/subscriptions/search?query=status%3A%27active%27%20AND%20metadata%5B%27order_id%27%5D%3A%276735%27"
    end
    should "Test tax calculations line items get" do
      calculation_line_items = Stripe::Tax::Calculation.list_line_items("xxx")
      assert_requested :get, "#{Stripe.api_base}/v1/tax/calculations/xxx/line_items"
    end
    should "Test tax calculations line items get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/tax/calculations/xxx/line_items"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      calculation_line_items = client.v1.tax.calculations.line_items.list("xxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/tax/calculations/xxx/line_items"
    end
    should "Test tax calculations post" do
      calculation = Stripe::Tax::Calculation.create({
        currency: "usd",
        line_items: [
          {
            amount: 1000,
            reference: "L1",
          },
        ],
        customer_details: {
          address: {
            line1: "354 Oyster Point Blvd",
            city: "South San Francisco",
            state: "CA",
            postal_code: "94080",
            country: "US",
          },
          address_source: "shipping",
        },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/tax/calculations"
    end
    should "Test tax calculations post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/tax/calculations").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      calculation = client.v1.tax.calculations.create({
        currency: "usd",
        line_items: [
          {
            amount: 1000,
            reference: "L1",
          },
        ],
        customer_details: {
          address: {
            line1: "354 Oyster Point Blvd",
            city: "South San Francisco",
            state: "CA",
            postal_code: "94080",
            country: "US",
          },
          address_source: "shipping",
        },
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/tax/calculations"
    end
    should "Test tax codes get" do
      tax_codes = Stripe::TaxCode.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/tax_codes?limit=3"
    end
    should "Test tax codes get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/tax_codes?limit=3").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      tax_codes = client.v1.tax_codes.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/tax_codes?limit=3"
    end
    should "Test tax codes get 2" do
      tax_code = Stripe::TaxCode.retrieve("txcd_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/tax_codes/txcd_xxxxxxxxxxxxx"
    end
    should "Test tax codes get 2 (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/tax_codes/txcd_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      tax_code = client.v1.tax_codes.retrieve("txcd_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/tax_codes/txcd_xxxxxxxxxxxxx"
    end
    should "Test tax ids delete" do
      deleted = Stripe::TaxId.delete("taxid_123")
      assert_requested :delete, "#{Stripe.api_base}/v1/tax_ids/taxid_123"
    end
    should "Test tax ids delete (service)" do
      stub_request(:delete, "#{Stripe::DEFAULT_API_BASE}/v1/tax_ids/taxid_123").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      deleted = client.v1.tax_ids.delete("taxid_123")
      assert_requested :delete, "#{Stripe::DEFAULT_API_BASE}/v1/tax_ids/taxid_123"
    end
    should "Test tax ids get" do
      tax_ids = Stripe::TaxId.list
      assert_requested :get, "#{Stripe.api_base}/v1/tax_ids"
    end
    should "Test tax ids get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/tax_ids").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      tax_ids = client.v1.tax_ids.list
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/tax_ids"
    end
    should "Test tax ids get 2" do
      tax_id = Stripe::TaxId.retrieve("taxid_123")
      assert_requested :get, "#{Stripe.api_base}/v1/tax_ids/taxid_123"
    end
    should "Test tax ids get 2 (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/tax_ids/taxid_123").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      tax_id = client.v1.tax_ids.retrieve("taxid_123")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/tax_ids/taxid_123"
    end
    should "Test tax ids post" do
      tax_id = Stripe::TaxId.create({
        type: "eu_vat",
        value: "123",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/tax_ids"
    end
    should "Test tax ids post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/tax_ids").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      tax_id = client.v1.tax_ids.create({
        type: "eu_vat",
        value: "123",
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/tax_ids"
    end
    should "Test tax rates get" do
      tax_rates = Stripe::TaxRate.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/tax_rates?limit=3"
    end
    should "Test tax rates get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/tax_rates?limit=3").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      tax_rates = client.v1.tax_rates.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/tax_rates?limit=3"
    end
    should "Test tax rates get 2" do
      tax_rate = Stripe::TaxRate.retrieve("txr_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/tax_rates/txr_xxxxxxxxxxxxx"
    end
    should "Test tax rates get 2 (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/tax_rates/txr_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      tax_rate = client.v1.tax_rates.retrieve("txr_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/tax_rates/txr_xxxxxxxxxxxxx"
    end
    should "Test tax rates post" do
      tax_rate = Stripe::TaxRate.create({
        display_name: "VAT",
        description: "VAT Germany",
        jurisdiction: "DE",
        percentage: 16,
        inclusive: false,
      })
      assert_requested :post, "#{Stripe.api_base}/v1/tax_rates"
    end
    should "Test tax rates post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/tax_rates").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      tax_rate = client.v1.tax_rates.create({
        display_name: "VAT",
        description: "VAT Germany",
        jurisdiction: "DE",
        percentage: 16,
        inclusive: false,
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/tax_rates"
    end
    should "Test tax rates post 2" do
      tax_rate = Stripe::TaxRate.update("txr_xxxxxxxxxxxxx", { active: false })
      assert_requested :post, "#{Stripe.api_base}/v1/tax_rates/txr_xxxxxxxxxxxxx"
    end
    should "Test tax rates post 2 (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/tax_rates/txr_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      tax_rate = client.v1.tax_rates.update("txr_xxxxxxxxxxxxx", { active: false })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/tax_rates/txr_xxxxxxxxxxxxx"
    end
    should "Test tax registrations get" do
      registrations = Stripe::Tax::Registration.list({ status: "all" })
      assert_requested :get, "#{Stripe.api_base}/v1/tax/registrations?status=all"
    end
    should "Test tax registrations get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/tax/registrations?status=all").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      registrations = client.v1.tax.registrations.list({ status: "all" })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/tax/registrations?status=all"
    end
    should "Test tax registrations post" do
      registration = Stripe::Tax::Registration.create({
        country: "IE",
        country_options: { ie: { type: "oss_union" } },
        active_from: "now",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/tax/registrations"
    end
    should "Test tax registrations post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/tax/registrations").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      registration = client.v1.tax.registrations.create({
        country: "IE",
        country_options: { ie: { type: "oss_union" } },
        active_from: "now",
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/tax/registrations"
    end
    should "Test tax registrations post 2" do
      registration = Stripe::Tax::Registration.update("taxreg_xxxxxxxxxxxxx", { expires_at: "now" })
      assert_requested :post, "#{Stripe.api_base}/v1/tax/registrations/taxreg_xxxxxxxxxxxxx"
    end
    should "Test tax registrations post 2 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/tax/registrations/taxreg_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      registration = client.v1.tax.registrations.update("taxreg_xxxxxxxxxxxxx", { expires_at: "now" })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/tax/registrations/taxreg_xxxxxxxxxxxxx"
    end
    should "Test tax settings get" do
      settings = Stripe::Tax::Settings.retrieve
      assert_requested :get, "#{Stripe.api_base}/v1/tax/settings"
    end
    should "Test tax settings get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/tax/settings").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      settings = client.v1.tax.settings.retrieve
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/tax/settings"
    end
    should "Test tax settings post" do
      settings = Stripe::Tax::Settings.update({ defaults: { tax_code: "txcd_10000000" } })
      assert_requested :post, "#{Stripe.api_base}/v1/tax/settings"
    end
    should "Test tax settings post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/tax/settings").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      settings = client.v1.tax.settings.update({ defaults: { tax_code: "txcd_10000000" } })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/tax/settings"
    end
    should "Test tax transactions create from calculation post" do
      transaction = Stripe::Tax::Transaction.create_from_calculation({
        calculation: "xxx",
        reference: "yyy",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/tax/transactions/create_from_calculation"
    end
    should "Test tax transactions create from calculation post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/tax/transactions/create_from_calculation"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      transaction = client.v1.tax.transactions.create_from_calculation({
        calculation: "xxx",
        reference: "yyy",
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/tax/transactions/create_from_calculation"
    end
    should "Test terminal configurations delete" do
      deleted = Stripe::Terminal::Configuration.delete("uc_123")
      assert_requested :delete, "#{Stripe.api_base}/v1/terminal/configurations/uc_123"
    end
    should "Test terminal configurations delete (service)" do
      stub_request(
        :delete,
        "#{Stripe::DEFAULT_API_BASE}/v1/terminal/configurations/uc_123"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      deleted = client.v1.terminal.configurations.delete("uc_123")
      assert_requested :delete, "#{Stripe::DEFAULT_API_BASE}/v1/terminal/configurations/uc_123"
    end
    should "Test terminal configurations delete 2" do
      deleted = Stripe::Terminal::Configuration.delete("tmc_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/terminal/configurations/tmc_xxxxxxxxxxxxx"
    end
    should "Test terminal configurations delete 2 (service)" do
      stub_request(
        :delete,
        "#{Stripe::DEFAULT_API_BASE}/v1/terminal/configurations/tmc_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      deleted = client.v1.terminal.configurations.delete("tmc_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe::DEFAULT_API_BASE}/v1/terminal/configurations/tmc_xxxxxxxxxxxxx"
    end
    should "Test terminal configurations get" do
      configurations = Stripe::Terminal::Configuration.list
      assert_requested :get, "#{Stripe.api_base}/v1/terminal/configurations"
    end
    should "Test terminal configurations get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/terminal/configurations").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      configurations = client.v1.terminal.configurations.list
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/terminal/configurations"
    end
    should "Test terminal configurations get 2" do
      configuration = Stripe::Terminal::Configuration.retrieve("uc_123")
      assert_requested :get, "#{Stripe.api_base}/v1/terminal/configurations/uc_123"
    end
    should "Test terminal configurations get 2 (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/terminal/configurations/uc_123").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      configuration = client.v1.terminal.configurations.retrieve("uc_123")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/terminal/configurations/uc_123"
    end
    should "Test terminal configurations get 3" do
      configurations = Stripe::Terminal::Configuration.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/terminal/configurations?limit=3"
    end
    should "Test terminal configurations get 3 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/terminal/configurations?limit=3"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      configurations = client.v1.terminal.configurations.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/terminal/configurations?limit=3"
    end
    should "Test terminal configurations get 4" do
      configuration = Stripe::Terminal::Configuration.retrieve("tmc_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/terminal/configurations/tmc_xxxxxxxxxxxxx"
    end
    should "Test terminal configurations get 4 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/terminal/configurations/tmc_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      configuration = client.v1.terminal.configurations.retrieve("tmc_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/terminal/configurations/tmc_xxxxxxxxxxxxx"
    end
    should "Test terminal configurations post" do
      configuration = Stripe::Terminal::Configuration.create
      assert_requested :post, "#{Stripe.api_base}/v1/terminal/configurations"
    end
    should "Test terminal configurations post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/terminal/configurations").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      configuration = client.v1.terminal.configurations.create
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/terminal/configurations"
    end
    should "Test terminal configurations post 2" do
      configuration = Stripe::Terminal::Configuration.update(
        "uc_123",
        { tipping: { usd: { fixed_amounts: [10] } } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/terminal/configurations/uc_123"
    end
    should "Test terminal configurations post 2 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/terminal/configurations/uc_123"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      configuration = client.v1.terminal.configurations.update(
        "uc_123",
        { tipping: { usd: { fixed_amounts: [10] } } }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/terminal/configurations/uc_123"
    end
    should "Test terminal configurations post 3" do
      configuration = Stripe::Terminal::Configuration.create({
        bbpos_wisepos_e: { splashscreen: "file_xxxxxxxxxxxxx" },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/terminal/configurations"
    end
    should "Test terminal configurations post 3 (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/terminal/configurations").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      configuration = client.v1.terminal.configurations.create({
        bbpos_wisepos_e: { splashscreen: "file_xxxxxxxxxxxxx" },
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/terminal/configurations"
    end
    should "Test terminal configurations post 4" do
      configuration = Stripe::Terminal::Configuration.update(
        "tmc_xxxxxxxxxxxxx",
        { bbpos_wisepos_e: { splashscreen: "file_xxxxxxxxxxxxx" } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/terminal/configurations/tmc_xxxxxxxxxxxxx"
    end
    should "Test terminal configurations post 4 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/terminal/configurations/tmc_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      configuration = client.v1.terminal.configurations.update(
        "tmc_xxxxxxxxxxxxx",
        { bbpos_wisepos_e: { splashscreen: "file_xxxxxxxxxxxxx" } }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/terminal/configurations/tmc_xxxxxxxxxxxxx"
    end
    should "Test terminal connection tokens post" do
      connection_token = Stripe::Terminal::ConnectionToken.create
      assert_requested :post, "#{Stripe.api_base}/v1/terminal/connection_tokens"
    end
    should "Test terminal connection tokens post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/terminal/connection_tokens").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      connection_token = client.v1.terminal.connection_tokens.create
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/terminal/connection_tokens"
    end
    should "Test terminal locations delete" do
      deleted = Stripe::Terminal::Location.delete("tml_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/terminal/locations/tml_xxxxxxxxxxxxx"
    end
    should "Test terminal locations delete (service)" do
      stub_request(
        :delete,
        "#{Stripe::DEFAULT_API_BASE}/v1/terminal/locations/tml_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      deleted = client.v1.terminal.locations.delete("tml_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe::DEFAULT_API_BASE}/v1/terminal/locations/tml_xxxxxxxxxxxxx"
    end
    should "Test terminal locations get" do
      locations = Stripe::Terminal::Location.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/terminal/locations?limit=3"
    end
    should "Test terminal locations get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/terminal/locations?limit=3").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      locations = client.v1.terminal.locations.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/terminal/locations?limit=3"
    end
    should "Test terminal locations get 2" do
      location = Stripe::Terminal::Location.retrieve("tml_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/terminal/locations/tml_xxxxxxxxxxxxx"
    end
    should "Test terminal locations get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/terminal/locations/tml_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      location = client.v1.terminal.locations.retrieve("tml_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/terminal/locations/tml_xxxxxxxxxxxxx"
    end
    should "Test terminal locations post" do
      location = Stripe::Terminal::Location.create({
        display_name: "My First Store",
        address: {
          line1: "1234 Main Street",
          city: "San Francisco",
          postal_code: "94111",
          state: "CA",
          country: "US",
        },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/terminal/locations"
    end
    should "Test terminal locations post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/terminal/locations").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      location = client.v1.terminal.locations.create({
        display_name: "My First Store",
        address: {
          line1: "1234 Main Street",
          city: "San Francisco",
          postal_code: "94111",
          state: "CA",
          country: "US",
        },
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/terminal/locations"
    end
    should "Test terminal locations post 2" do
      location = Stripe::Terminal::Location.update(
        "tml_xxxxxxxxxxxxx",
        { display_name: "My First Store" }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/terminal/locations/tml_xxxxxxxxxxxxx"
    end
    should "Test terminal locations post 2 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/terminal/locations/tml_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      location = client.v1.terminal.locations.update(
        "tml_xxxxxxxxxxxxx",
        { display_name: "My First Store" }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/terminal/locations/tml_xxxxxxxxxxxxx"
    end
    should "Test terminal readers cancel action post" do
      reader = Stripe::Terminal::Reader.cancel_action("tmr_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/terminal/readers/tmr_xxxxxxxxxxxxx/cancel_action"
    end
    should "Test terminal readers cancel action post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/terminal/readers/tmr_xxxxxxxxxxxxx/cancel_action"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      reader = client.v1.terminal.readers.cancel_action("tmr_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/terminal/readers/tmr_xxxxxxxxxxxxx/cancel_action"
    end
    should "Test terminal readers delete" do
      deleted = Stripe::Terminal::Reader.delete("tmr_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/terminal/readers/tmr_xxxxxxxxxxxxx"
    end
    should "Test terminal readers delete (service)" do
      stub_request(
        :delete,
        "#{Stripe::DEFAULT_API_BASE}/v1/terminal/readers/tmr_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      deleted = client.v1.terminal.readers.delete("tmr_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe::DEFAULT_API_BASE}/v1/terminal/readers/tmr_xxxxxxxxxxxxx"
    end
    should "Test terminal readers get" do
      readers = Stripe::Terminal::Reader.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/terminal/readers?limit=3"
    end
    should "Test terminal readers get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/terminal/readers?limit=3").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      readers = client.v1.terminal.readers.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/terminal/readers?limit=3"
    end
    should "Test terminal readers get 2" do
      reader = Stripe::Terminal::Reader.retrieve("tmr_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/terminal/readers/tmr_xxxxxxxxxxxxx"
    end
    should "Test terminal readers get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/terminal/readers/tmr_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      reader = client.v1.terminal.readers.retrieve("tmr_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/terminal/readers/tmr_xxxxxxxxxxxxx"
    end
    should "Test terminal readers post" do
      reader = Stripe::Terminal::Reader.create({
        registration_code: "puppies-plug-could",
        label: "Blue Rabbit",
        location: "tml_1234",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/terminal/readers"
    end
    should "Test terminal readers post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/terminal/readers").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      reader = client.v1.terminal.readers.create({
        registration_code: "puppies-plug-could",
        label: "Blue Rabbit",
        location: "tml_1234",
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/terminal/readers"
    end
    should "Test terminal readers post 2" do
      reader = Stripe::Terminal::Reader.update("tmr_xxxxxxxxxxxxx", { label: "Blue Rabbit" })
      assert_requested :post, "#{Stripe.api_base}/v1/terminal/readers/tmr_xxxxxxxxxxxxx"
    end
    should "Test terminal readers post 2 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/terminal/readers/tmr_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      reader = client.v1.terminal.readers.update("tmr_xxxxxxxxxxxxx", { label: "Blue Rabbit" })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/terminal/readers/tmr_xxxxxxxxxxxxx"
    end
    should "Test terminal readers process payment intent post" do
      reader = Stripe::Terminal::Reader.process_payment_intent(
        "tmr_xxxxxxxxxxxxx",
        { payment_intent: "pi_xxxxxxxxxxxxx" }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/terminal/readers/tmr_xxxxxxxxxxxxx/process_payment_intent"
    end
    should "Test terminal readers process payment intent post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/terminal/readers/tmr_xxxxxxxxxxxxx/process_payment_intent"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      reader = client.v1.terminal.readers.process_payment_intent(
        "tmr_xxxxxxxxxxxxx",
        { payment_intent: "pi_xxxxxxxxxxxxx" }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/terminal/readers/tmr_xxxxxxxxxxxxx/process_payment_intent"
    end
    should "Test terminal readers process setup intent post" do
      reader = Stripe::Terminal::Reader.process_setup_intent(
        "tmr_xxxxxxxxxxxxx",
        {
          setup_intent: "seti_xxxxxxxxxxxxx",
          allow_redisplay: "always",
        }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/terminal/readers/tmr_xxxxxxxxxxxxx/process_setup_intent"
    end
    should "Test terminal readers process setup intent post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/terminal/readers/tmr_xxxxxxxxxxxxx/process_setup_intent"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      reader = client.v1.terminal.readers.process_setup_intent(
        "tmr_xxxxxxxxxxxxx",
        {
          setup_intent: "seti_xxxxxxxxxxxxx",
          allow_redisplay: "always",
        }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/terminal/readers/tmr_xxxxxxxxxxxxx/process_setup_intent"
    end
    should "Test test helpers customers fund cash balance post" do
      customer_cash_balance_transaction = Stripe::Customer::TestHelpers.fund_cash_balance(
        "cus_123",
        {
          amount: 30,
          currency: "eur",
        }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/customers/cus_123/fund_cash_balance"
    end
    should "Test test helpers customers fund cash balance post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/customers/cus_123/fund_cash_balance"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      customer_cash_balance_transaction = client.v1.test_helpers.customers.fund_cash_balance(
        "cus_123",
        {
          amount: 30,
          currency: "eur",
        }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/customers/cus_123/fund_cash_balance"
    end
    should "Test test helpers issuing authorizations capture post" do
      authorization = Stripe::Issuing::Authorization::TestHelpers.capture(
        "example_authorization",
        {
          capture_amount: 100,
          close_authorization: true,
          purchase_details: {
            flight: {
              departure_at: 1_633_651_200,
              passenger_name: "John Doe",
              refundable: true,
              segments: [
                {
                  arrival_airport_code: "SFO",
                  carrier: "Delta",
                  departure_airport_code: "LAX",
                  flight_number: "DL100",
                  service_class: "Economy",
                  stopover_allowed: true,
                },
              ],
              travel_agency: "Orbitz",
            },
            fuel: {
              type: "diesel",
              unit: "liter",
              unit_cost_decimal: "3.5",
              quantity_decimal: "10",
            },
            lodging: {
              check_in_at: 1_633_651_200,
              nights: 2,
            },
            receipt: [
              {
                description: "Room charge",
                quantity: "1",
                total: 200,
                unit_cost: 200,
              },
            ],
            reference: "foo",
          },
        }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/issuing/authorizations/example_authorization/capture"
    end
    should "Test test helpers issuing authorizations capture post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/issuing/authorizations/example_authorization/capture"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      authorization = client.v1.test_helpers.issuing.authorizations.capture(
        "example_authorization",
        {
          capture_amount: 100,
          close_authorization: true,
          purchase_details: {
            flight: {
              departure_at: 1_633_651_200,
              passenger_name: "John Doe",
              refundable: true,
              segments: [
                {
                  arrival_airport_code: "SFO",
                  carrier: "Delta",
                  departure_airport_code: "LAX",
                  flight_number: "DL100",
                  service_class: "Economy",
                  stopover_allowed: true,
                },
              ],
              travel_agency: "Orbitz",
            },
            fuel: {
              type: "diesel",
              unit: "liter",
              unit_cost_decimal: "3.5",
              quantity_decimal: "10",
            },
            lodging: {
              check_in_at: 1_633_651_200,
              nights: 2,
            },
            receipt: [
              {
                description: "Room charge",
                quantity: "1",
                total: 200,
                unit_cost: 200,
              },
            ],
            reference: "foo",
          },
        }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/issuing/authorizations/example_authorization/capture"
    end
    should "Test test helpers issuing authorizations expire post" do
      authorization = Stripe::Issuing::Authorization::TestHelpers.expire("example_authorization")
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/issuing/authorizations/example_authorization/expire"
    end
    should "Test test helpers issuing authorizations expire post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/issuing/authorizations/example_authorization/expire"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      authorization = client.v1.test_helpers.issuing.authorizations.expire("example_authorization")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/issuing/authorizations/example_authorization/expire"
    end
    should "Test test helpers issuing authorizations increment post" do
      authorization = Stripe::Issuing::Authorization::TestHelpers.increment(
        "example_authorization",
        {
          increment_amount: 50,
          is_amount_controllable: true,
        }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/issuing/authorizations/example_authorization/increment"
    end
    should "Test test helpers issuing authorizations increment post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/issuing/authorizations/example_authorization/increment"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      authorization = client.v1.test_helpers.issuing.authorizations.increment(
        "example_authorization",
        {
          increment_amount: 50,
          is_amount_controllable: true,
        }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/issuing/authorizations/example_authorization/increment"
    end
    should "Test test helpers issuing authorizations post" do
      authorization = Stripe::Issuing::Authorization::TestHelpers.create({
        amount: 100,
        amount_details: {
          atm_fee: 10,
          cashback_amount: 5,
        },
        authorization_method: "chip",
        card: "foo",
        currency: "usd",
        is_amount_controllable: true,
        merchant_data: {
          category: "ac_refrigeration_repair",
          city: "foo",
          country: "bar",
          name: "foo",
          network_id: "bar",
          postal_code: "foo",
          state: "bar",
          terminal_id: "foo",
        },
        network_data: { acquiring_institution_id: "foo" },
        verification_data: {
          address_line1_check: "mismatch",
          address_postal_code_check: "match",
          cvc_check: "match",
          expiry_check: "mismatch",
        },
        wallet: "apple_pay",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/issuing/authorizations"
    end
    should "Test test helpers issuing authorizations post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/issuing/authorizations"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      authorization = client.v1.test_helpers.issuing.authorizations.create({
        amount: 100,
        amount_details: {
          atm_fee: 10,
          cashback_amount: 5,
        },
        authorization_method: "chip",
        card: "foo",
        currency: "usd",
        is_amount_controllable: true,
        merchant_data: {
          category: "ac_refrigeration_repair",
          city: "foo",
          country: "bar",
          name: "foo",
          network_id: "bar",
          postal_code: "foo",
          state: "bar",
          terminal_id: "foo",
        },
        network_data: { acquiring_institution_id: "foo" },
        verification_data: {
          address_line1_check: "mismatch",
          address_postal_code_check: "match",
          cvc_check: "match",
          expiry_check: "mismatch",
        },
        wallet: "apple_pay",
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/issuing/authorizations"
    end
    should "Test test helpers issuing authorizations reverse post" do
      authorization = Stripe::Issuing::Authorization::TestHelpers.reverse(
        "example_authorization",
        { reverse_amount: 20 }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/issuing/authorizations/example_authorization/reverse"
    end
    should "Test test helpers issuing authorizations reverse post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/issuing/authorizations/example_authorization/reverse"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      authorization = client.v1.test_helpers.issuing.authorizations.reverse(
        "example_authorization",
        { reverse_amount: 20 }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/issuing/authorizations/example_authorization/reverse"
    end
    should "Test test helpers issuing cards shipping deliver post" do
      card = Stripe::Issuing::Card::TestHelpers.deliver_card("card_123")
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/issuing/cards/card_123/shipping/deliver"
    end
    should "Test test helpers issuing cards shipping deliver post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/issuing/cards/card_123/shipping/deliver"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      card = client.v1.test_helpers.issuing.cards.deliver_card("card_123")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/issuing/cards/card_123/shipping/deliver"
    end
    should "Test test helpers issuing cards shipping fail post" do
      card = Stripe::Issuing::Card::TestHelpers.fail_card("card_123")
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/issuing/cards/card_123/shipping/fail"
    end
    should "Test test helpers issuing cards shipping fail post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/issuing/cards/card_123/shipping/fail"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      card = client.v1.test_helpers.issuing.cards.fail_card("card_123")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/issuing/cards/card_123/shipping/fail"
    end
    should "Test test helpers issuing cards shipping return post" do
      card = Stripe::Issuing::Card::TestHelpers.return_card("card_123")
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/issuing/cards/card_123/shipping/return"
    end
    should "Test test helpers issuing cards shipping return post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/issuing/cards/card_123/shipping/return"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      card = client.v1.test_helpers.issuing.cards.return_card("card_123")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/issuing/cards/card_123/shipping/return"
    end
    should "Test test helpers issuing cards shipping ship post" do
      card = Stripe::Issuing::Card::TestHelpers.ship_card("card_123")
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/issuing/cards/card_123/shipping/ship"
    end
    should "Test test helpers issuing cards shipping ship post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/issuing/cards/card_123/shipping/ship"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      card = client.v1.test_helpers.issuing.cards.ship_card("card_123")
      assert_requested :post,  "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/issuing/cards/card_123/shipping/ship"
    end
    should "Test test helpers issuing personalization designs activate post" do
      personalization_design = Stripe::Issuing::PersonalizationDesign::TestHelpers.activate("pd_xyz")
      assert_requested :post,  "#{Stripe.api_base}/v1/test_helpers/issuing/personalization_designs/pd_xyz/activate"
    end
    should "Test test helpers issuing personalization designs activate post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/issuing/personalization_designs/pd_xyz/activate"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      personalization_design = client.v1.test_helpers.issuing.personalization_designs.activate("pd_xyz")
      assert_requested :post,  "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/issuing/personalization_designs/pd_xyz/activate"
    end
    should "Test test helpers issuing personalization designs deactivate post" do
      personalization_design = Stripe::Issuing::PersonalizationDesign::TestHelpers.deactivate("pd_xyz")
      assert_requested :post,  "#{Stripe.api_base}/v1/test_helpers/issuing/personalization_designs/pd_xyz/deactivate"
    end
    should "Test test helpers issuing personalization designs deactivate post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/issuing/personalization_designs/pd_xyz/deactivate"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      personalization_design = client.v1.test_helpers.issuing.personalization_designs.deactivate("pd_xyz")
      assert_requested :post,  "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/issuing/personalization_designs/pd_xyz/deactivate"
    end
    should "Test test helpers issuing personalization designs reject post" do
      personalization_design = Stripe::Issuing::PersonalizationDesign::TestHelpers.reject(
        "pd_xyz",
        { rejection_reasons: { card_logo: ["geographic_location"] } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/issuing/personalization_designs/pd_xyz/reject"
    end
    should "Test test helpers issuing personalization designs reject post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/issuing/personalization_designs/pd_xyz/reject"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      personalization_design = client.v1.test_helpers.issuing.personalization_designs.reject(
        "pd_xyz",
        { rejection_reasons: { card_logo: ["geographic_location"] } }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/issuing/personalization_designs/pd_xyz/reject"
    end
    should "Test test helpers issuing transactions create force capture post" do
      transaction = Stripe::Issuing::Transaction::TestHelpers.create_force_capture({
        amount: 100,
        card: "foo",
        currency: "usd",
        merchant_data: {
          category: "ac_refrigeration_repair",
          city: "foo",
          country: "US",
          name: "foo",
          network_id: "bar",
          postal_code: "10001",
          state: "NY",
          terminal_id: "foo",
        },
        purchase_details: {
          flight: {
            departure_at: 1_633_651_200,
            passenger_name: "John Doe",
            refundable: true,
            segments: [
              {
                arrival_airport_code: "SFO",
                carrier: "Delta",
                departure_airport_code: "LAX",
                flight_number: "DL100",
                service_class: "Economy",
                stopover_allowed: true,
              },
            ],
            travel_agency: "Orbitz",
          },
          fuel: {
            type: "diesel",
            unit: "liter",
            unit_cost_decimal: "3.5",
            quantity_decimal: "10",
          },
          lodging: {
            check_in_at: 1_533_651_200,
            nights: 2,
          },
          receipt: [
            {
              description: "Room charge",
              quantity: "1",
              total: 200,
              unit_cost: 200,
            },
          ],
          reference: "foo",
        },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/issuing/transactions/create_force_capture"
    end
    should "Test test helpers issuing transactions create force capture post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/issuing/transactions/create_force_capture"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      transaction = client.v1.test_helpers.issuing.transactions.create_force_capture({
        amount: 100,
        card: "foo",
        currency: "usd",
        merchant_data: {
          category: "ac_refrigeration_repair",
          city: "foo",
          country: "US",
          name: "foo",
          network_id: "bar",
          postal_code: "10001",
          state: "NY",
          terminal_id: "foo",
        },
        purchase_details: {
          flight: {
            departure_at: 1_633_651_200,
            passenger_name: "John Doe",
            refundable: true,
            segments: [
              {
                arrival_airport_code: "SFO",
                carrier: "Delta",
                departure_airport_code: "LAX",
                flight_number: "DL100",
                service_class: "Economy",
                stopover_allowed: true,
              },
            ],
            travel_agency: "Orbitz",
          },
          fuel: {
            type: "diesel",
            unit: "liter",
            unit_cost_decimal: "3.5",
            quantity_decimal: "10",
          },
          lodging: {
            check_in_at: 1_533_651_200,
            nights: 2,
          },
          receipt: [
            {
              description: "Room charge",
              quantity: "1",
              total: 200,
              unit_cost: 200,
            },
          ],
          reference: "foo",
        },
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/issuing/transactions/create_force_capture"
    end
    should "Test test helpers issuing transactions create unlinked refund post" do
      transaction = Stripe::Issuing::Transaction::TestHelpers.create_unlinked_refund({
        amount: 100,
        card: "foo",
        currency: "usd",
        merchant_data: {
          category: "ac_refrigeration_repair",
          city: "foo",
          country: "bar",
          name: "foo",
          network_id: "bar",
          postal_code: "foo",
          state: "bar",
          terminal_id: "foo",
        },
        purchase_details: {
          flight: {
            departure_at: 1_533_651_200,
            passenger_name: "John Doe",
            refundable: true,
            segments: [
              {
                arrival_airport_code: "SFO",
                carrier: "Delta",
                departure_airport_code: "LAX",
                flight_number: "DL100",
                service_class: "Economy",
                stopover_allowed: true,
              },
            ],
            travel_agency: "Orbitz",
          },
          fuel: {
            type: "diesel",
            unit: "liter",
            unit_cost_decimal: "3.5",
            quantity_decimal: "10",
          },
          lodging: {
            check_in_at: 1_533_651_200,
            nights: 2,
          },
          receipt: [
            {
              description: "Room charge",
              quantity: "1",
              total: 200,
              unit_cost: 200,
            },
          ],
          reference: "foo",
        },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/issuing/transactions/create_unlinked_refund"
    end
    should "Test test helpers issuing transactions create unlinked refund post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/issuing/transactions/create_unlinked_refund"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      transaction = client.v1.test_helpers.issuing.transactions.create_unlinked_refund({
        amount: 100,
        card: "foo",
        currency: "usd",
        merchant_data: {
          category: "ac_refrigeration_repair",
          city: "foo",
          country: "bar",
          name: "foo",
          network_id: "bar",
          postal_code: "foo",
          state: "bar",
          terminal_id: "foo",
        },
        purchase_details: {
          flight: {
            departure_at: 1_533_651_200,
            passenger_name: "John Doe",
            refundable: true,
            segments: [
              {
                arrival_airport_code: "SFO",
                carrier: "Delta",
                departure_airport_code: "LAX",
                flight_number: "DL100",
                service_class: "Economy",
                stopover_allowed: true,
              },
            ],
            travel_agency: "Orbitz",
          },
          fuel: {
            type: "diesel",
            unit: "liter",
            unit_cost_decimal: "3.5",
            quantity_decimal: "10",
          },
          lodging: {
            check_in_at: 1_533_651_200,
            nights: 2,
          },
          receipt: [
            {
              description: "Room charge",
              quantity: "1",
              total: 200,
              unit_cost: 200,
            },
          ],
          reference: "foo",
        },
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/issuing/transactions/create_unlinked_refund"
    end
    should "Test test helpers issuing transactions refund post" do
      transaction = Stripe::Issuing::Transaction::TestHelpers.refund(
        "example_transaction",
        { refund_amount: 50 }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/issuing/transactions/example_transaction/refund"
    end
    should "Test test helpers issuing transactions refund post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/issuing/transactions/example_transaction/refund"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      transaction = client.v1.test_helpers.issuing.transactions.refund(
        "example_transaction",
        { refund_amount: 50 }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/issuing/transactions/example_transaction/refund"
    end
    should "Test test helpers refunds expire post" do
      refund = Stripe::Refund::TestHelpers.expire("re_123")
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/refunds/re_123/expire"
    end
    should "Test test helpers refunds expire post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/refunds/re_123/expire"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      refund = client.v1.test_helpers.refunds.expire("re_123")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/refunds/re_123/expire"
    end
    should "Test test helpers test clocks advance post" do
      test_clock = Stripe::TestHelpers::TestClock.advance("clock_xyz", { frozen_time: 142 })
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/test_clocks/clock_xyz/advance"
    end
    should "Test test helpers test clocks advance post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/test_clocks/clock_xyz/advance"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      test_clock = client.v1.test_helpers.test_clocks.advance("clock_xyz", { frozen_time: 142 })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/test_clocks/clock_xyz/advance"
    end
    should "Test test helpers test clocks advance post 2" do
      test_clock = Stripe::TestHelpers::TestClock.advance(
        "clock_xxxxxxxxxxxxx",
        { frozen_time: 1_675_552_261 }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/test_clocks/clock_xxxxxxxxxxxxx/advance"
    end
    should "Test test helpers test clocks advance post 2 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/test_clocks/clock_xxxxxxxxxxxxx/advance"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      test_clock = client.v1.test_helpers.test_clocks.advance(
        "clock_xxxxxxxxxxxxx",
        { frozen_time: 1_675_552_261 }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/test_clocks/clock_xxxxxxxxxxxxx/advance"
    end
    should "Test test helpers test clocks delete" do
      deleted = Stripe::TestHelpers::TestClock.delete("clock_xyz")
      assert_requested :delete, "#{Stripe.api_base}/v1/test_helpers/test_clocks/clock_xyz"
    end
    should "Test test helpers test clocks delete (service)" do
      stub_request(
        :delete,
        "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/test_clocks/clock_xyz"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      deleted = client.v1.test_helpers.test_clocks.delete("clock_xyz")
      assert_requested :delete, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/test_clocks/clock_xyz"
    end
    should "Test test helpers test clocks delete 2" do
      deleted = Stripe::TestHelpers::TestClock.delete("clock_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/test_helpers/test_clocks/clock_xxxxxxxxxxxxx"
    end
    should "Test test helpers test clocks delete 2 (service)" do
      stub_request(
        :delete,
        "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/test_clocks/clock_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      deleted = client.v1.test_helpers.test_clocks.delete("clock_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/test_clocks/clock_xxxxxxxxxxxxx"
    end
    should "Test test helpers test clocks get" do
      test_clocks = Stripe::TestHelpers::TestClock.list
      assert_requested :get, "#{Stripe.api_base}/v1/test_helpers/test_clocks"
    end
    should "Test test helpers test clocks get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/test_clocks").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      test_clocks = client.v1.test_helpers.test_clocks.list
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/test_clocks"
    end
    should "Test test helpers test clocks get 2" do
      test_clock = Stripe::TestHelpers::TestClock.retrieve("clock_xyz")
      assert_requested :get, "#{Stripe.api_base}/v1/test_helpers/test_clocks/clock_xyz"
    end
    should "Test test helpers test clocks get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/test_clocks/clock_xyz"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      test_clock = client.v1.test_helpers.test_clocks.retrieve("clock_xyz")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/test_clocks/clock_xyz"
    end
    should "Test test helpers test clocks get 3" do
      test_clocks = Stripe::TestHelpers::TestClock.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/test_helpers/test_clocks?limit=3"
    end
    should "Test test helpers test clocks get 3 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/test_clocks?limit=3"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      test_clocks = client.v1.test_helpers.test_clocks.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/test_clocks?limit=3"
    end
    should "Test test helpers test clocks get 4" do
      test_clock = Stripe::TestHelpers::TestClock.retrieve("clock_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/test_helpers/test_clocks/clock_xxxxxxxxxxxxx"
    end
    should "Test test helpers test clocks get 4 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/test_clocks/clock_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      test_clock = client.v1.test_helpers.test_clocks.retrieve("clock_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/test_clocks/clock_xxxxxxxxxxxxx"
    end
    should "Test test helpers test clocks post" do
      test_clock = Stripe::TestHelpers::TestClock.create({
        frozen_time: 123,
        name: "cogsworth",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/test_clocks"
    end
    should "Test test helpers test clocks post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/test_clocks").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      test_clock = client.v1.test_helpers.test_clocks.create({
        frozen_time: 123,
        name: "cogsworth",
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/test_clocks"
    end
    should "Test test helpers test clocks post 2" do
      test_clock = Stripe::TestHelpers::TestClock.create({ frozen_time: 1_577_836_800 })
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/test_clocks"
    end
    should "Test test helpers test clocks post 2 (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/test_clocks").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      test_clock = client.v1.test_helpers.test_clocks.create({ frozen_time: 1_577_836_800 })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/test_clocks"
    end
    should "Test test helpers treasury inbound transfers fail post" do
      inbound_transfer = Stripe::Treasury::InboundTransfer::TestHelpers.fail(
        "ibt_123",
        { failure_details: { code: "account_closed" } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/treasury/inbound_transfers/ibt_123/fail"
    end
    should "Test test helpers treasury inbound transfers fail post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/treasury/inbound_transfers/ibt_123/fail"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      inbound_transfer = client.v1.test_helpers.treasury.inbound_transfers.fail(
        "ibt_123",
        { failure_details: { code: "account_closed" } }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/treasury/inbound_transfers/ibt_123/fail"
    end
    should "Test test helpers treasury inbound transfers return post" do
      inbound_transfer = Stripe::Treasury::InboundTransfer::TestHelpers.return_inbound_transfer("ibt_123")
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/treasury/inbound_transfers/ibt_123/return"
    end
    should "Test test helpers treasury inbound transfers return post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/treasury/inbound_transfers/ibt_123/return"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      inbound_transfer = client.v1.test_helpers.treasury.inbound_transfers.return_inbound_transfer("ibt_123")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/treasury/inbound_transfers/ibt_123/return"
    end
    should "Test test helpers treasury inbound transfers succeed post" do
      inbound_transfer = Stripe::Treasury::InboundTransfer::TestHelpers.succeed("ibt_123")
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/treasury/inbound_transfers/ibt_123/succeed"
    end
    should "Test test helpers treasury inbound transfers succeed post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/treasury/inbound_transfers/ibt_123/succeed"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      inbound_transfer = client.v1.test_helpers.treasury.inbound_transfers.succeed("ibt_123")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/treasury/inbound_transfers/ibt_123/succeed"
    end
    should "Test test helpers treasury outbound transfers fail post" do
      outbound_transfer = Stripe::Treasury::OutboundTransfer::TestHelpers.fail("obt_123")
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/treasury/outbound_transfers/obt_123/fail"
    end
    should "Test test helpers treasury outbound transfers fail post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/treasury/outbound_transfers/obt_123/fail"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      outbound_transfer = client.v1.test_helpers.treasury.outbound_transfers.fail("obt_123")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/treasury/outbound_transfers/obt_123/fail"
    end
    should "Test test helpers treasury outbound transfers post post" do
      outbound_transfer = Stripe::Treasury::OutboundTransfer::TestHelpers.post("obt_123")
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/treasury/outbound_transfers/obt_123/post"
    end
    should "Test test helpers treasury outbound transfers post post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/treasury/outbound_transfers/obt_123/post"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      outbound_transfer = client.v1.test_helpers.treasury.outbound_transfers.post("obt_123")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/treasury/outbound_transfers/obt_123/post"
    end
    should "Test test helpers treasury outbound transfers return post" do
      outbound_transfer = Stripe::Treasury::OutboundTransfer::TestHelpers.return_outbound_transfer(
        "obt_123",
        { returned_details: { code: "account_closed" } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/treasury/outbound_transfers/obt_123/return"
    end
    should "Test test helpers treasury outbound transfers return post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/treasury/outbound_transfers/obt_123/return"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      outbound_transfer = client.v1.test_helpers.treasury.outbound_transfers.return_outbound_transfer(
        "obt_123",
        { returned_details: { code: "account_closed" } }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/treasury/outbound_transfers/obt_123/return"
    end
    should "Test test helpers treasury received credits post" do
      received_credit = Stripe::Treasury::ReceivedCredit::TestHelpers.create({
        financial_account: "fa_123",
        network: "ach",
        amount: 1234,
        currency: "usd",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/treasury/received_credits"
    end
    should "Test test helpers treasury received credits post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/treasury/received_credits"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      received_credit = client.v1.test_helpers.treasury.received_credits.create({
        financial_account: "fa_123",
        network: "ach",
        amount: 1234,
        currency: "usd",
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/treasury/received_credits"
    end
    should "Test test helpers treasury received debits post" do
      received_debit = Stripe::Treasury::ReceivedDebit::TestHelpers.create({
        financial_account: "fa_123",
        network: "ach",
        amount: 1234,
        currency: "usd",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/treasury/received_debits"
    end
    should "Test test helpers treasury received debits post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/treasury/received_debits"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      received_debit = client.v1.test_helpers.treasury.received_debits.create({
        financial_account: "fa_123",
        network: "ach",
        amount: 1234,
        currency: "usd",
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/test_helpers/treasury/received_debits"
    end
    should "Test tokens get" do
      token = Stripe::Token.retrieve("tok_xxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/tokens/tok_xxxx"
    end
    should "Test tokens get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/tokens/tok_xxxx").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      token = client.v1.tokens.retrieve("tok_xxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/tokens/tok_xxxx"
    end
    should "Test tokens post" do
      token = Stripe::Token.create({
        card: {
          number: "4242424242424242",
          exp_month: "5",
          exp_year: "2023",
          cvc: "314",
        },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/tokens"
    end
    should "Test tokens post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/tokens").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      token = client.v1.tokens.create({
        card: {
          number: "4242424242424242",
          exp_month: "5",
          exp_year: "2023",
          cvc: "314",
        },
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/tokens"
    end
    should "Test tokens post 2" do
      token = Stripe::Token.create({
        bank_account: {
          country: "US",
          currency: "usd",
          account_holder_name: "Jenny Rosen",
          account_holder_type: "individual",
          routing_number: "110000000",
          account_number: "000123456789",
        },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/tokens"
    end
    should "Test tokens post 2 (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/tokens").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      token = client.v1.tokens.create({
        bank_account: {
          country: "US",
          currency: "usd",
          account_holder_name: "Jenny Rosen",
          account_holder_type: "individual",
          routing_number: "110000000",
          account_number: "000123456789",
        },
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/tokens"
    end
    should "Test tokens post 3" do
      token = Stripe::Token.create({ pii: { id_number: "000000000" } })
      assert_requested :post, "#{Stripe.api_base}/v1/tokens"
    end
    should "Test tokens post 3 (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/tokens").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      token = client.v1.tokens.create({ pii: { id_number: "000000000" } })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/tokens"
    end
    should "Test tokens post 4" do
      token = Stripe::Token.create({
        account: {
          individual: {
            first_name: "Jane",
            last_name: "Doe",
          },
          tos_shown_and_accepted: true,
        },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/tokens"
    end
    should "Test tokens post 4 (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/tokens").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      token = client.v1.tokens.create({
        account: {
          individual: {
            first_name: "Jane",
            last_name: "Doe",
          },
          tos_shown_and_accepted: true,
        },
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/tokens"
    end
    should "Test tokens post 5" do
      token = Stripe::Token.create({
        person: {
          first_name: "Jane",
          last_name: "Doe",
          relationship: { owner: true },
        },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/tokens"
    end
    should "Test tokens post 5 (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/tokens").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      token = client.v1.tokens.create({
        person: {
          first_name: "Jane",
          last_name: "Doe",
          relationship: { owner: true },
        },
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/tokens"
    end
    should "Test tokens post 6" do
      token = Stripe::Token.create({ cvc_update: { cvc: "123" } })
      assert_requested :post, "#{Stripe.api_base}/v1/tokens"
    end
    should "Test tokens post 6 (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/tokens").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      token = client.v1.tokens.create({ cvc_update: { cvc: "123" } })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/tokens"
    end
    should "Test topups cancel post" do
      topup = Stripe::Topup.cancel("tu_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/topups/tu_xxxxxxxxxxxxx/cancel"
    end
    should "Test topups cancel post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/topups/tu_xxxxxxxxxxxxx/cancel"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      topup = client.v1.topups.cancel("tu_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/topups/tu_xxxxxxxxxxxxx/cancel"
    end
    should "Test topups get" do
      topups = Stripe::Topup.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/topups?limit=3"
    end
    should "Test topups get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/topups?limit=3").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      topups = client.v1.topups.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/topups?limit=3"
    end
    should "Test topups get 2" do
      topup = Stripe::Topup.retrieve("tu_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/topups/tu_xxxxxxxxxxxxx"
    end
    should "Test topups get 2 (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/topups/tu_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      topup = client.v1.topups.retrieve("tu_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/topups/tu_xxxxxxxxxxxxx"
    end
    should "Test topups post" do
      topup = Stripe::Topup.create({
        amount: 2000,
        currency: "usd",
        description: "Top-up for Jenny Rosen",
        statement_descriptor: "Top-up",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/topups"
    end
    should "Test topups post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/topups").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      topup = client.v1.topups.create({
        amount: 2000,
        currency: "usd",
        description: "Top-up for Jenny Rosen",
        statement_descriptor: "Top-up",
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/topups"
    end
    should "Test topups post 2" do
      topup = Stripe::Topup.update("tu_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/topups/tu_xxxxxxxxxxxxx"
    end
    should "Test topups post 2 (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/topups/tu_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      topup = client.v1.topups.update("tu_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/topups/tu_xxxxxxxxxxxxx"
    end
    should "Test transfers get" do
      transfers = Stripe::Transfer.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/transfers?limit=3"
    end
    should "Test transfers get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/transfers?limit=3").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      transfers = client.v1.transfers.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/transfers?limit=3"
    end
    should "Test transfers get 2" do
      transfer = Stripe::Transfer.retrieve("tr_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/transfers/tr_xxxxxxxxxxxxx"
    end
    should "Test transfers get 2 (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/transfers/tr_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      transfer = client.v1.transfers.retrieve("tr_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/transfers/tr_xxxxxxxxxxxxx"
    end
    should "Test transfers post" do
      transfer = Stripe::Transfer.create({
        amount: 400,
        currency: "usd",
        destination: "acct_xxxxxxxxxxxxx",
        transfer_group: "ORDER_95",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/transfers"
    end
    should "Test transfers post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/transfers").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      transfer = client.v1.transfers.create({
        amount: 400,
        currency: "usd",
        destination: "acct_xxxxxxxxxxxxx",
        transfer_group: "ORDER_95",
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/transfers"
    end
    should "Test transfers post 2" do
      transfer = Stripe::Transfer.update("tr_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/transfers/tr_xxxxxxxxxxxxx"
    end
    should "Test transfers post 2 (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/transfers/tr_xxxxxxxxxxxxx").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      transfer = client.v1.transfers.update("tr_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/transfers/tr_xxxxxxxxxxxxx"
    end
    should "Test transfers reversals get" do
      reversals = Stripe::Transfer.list_reversals("tr_xxxxxxxxxxxxx", { limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/transfers/tr_xxxxxxxxxxxxx/reversals?limit=3"
    end
    should "Test transfers reversals get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/transfers/tr_xxxxxxxxxxxxx/reversals?limit=3"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      reversals = client.v1.transfers.reversals.list("tr_xxxxxxxxxxxxx", { limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/transfers/tr_xxxxxxxxxxxxx/reversals?limit=3"
    end
    should "Test transfers reversals get 2" do
      reversal = Stripe::Transfer.retrieve_reversal("tr_xxxxxxxxxxxxx", "trr_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/transfers/tr_xxxxxxxxxxxxx/reversals/trr_xxxxxxxxxxxxx"
    end
    should "Test transfers reversals get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/transfers/tr_xxxxxxxxxxxxx/reversals/trr_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      reversal = client.v1.transfers.reversals.retrieve("tr_xxxxxxxxxxxxx", "trr_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/transfers/tr_xxxxxxxxxxxxx/reversals/trr_xxxxxxxxxxxxx"
    end
    should "Test transfers reversals post 2" do
      reversal = Stripe::Transfer.update_reversal(
        "tr_xxxxxxxxxxxxx",
        "trr_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/transfers/tr_xxxxxxxxxxxxx/reversals/trr_xxxxxxxxxxxxx"
    end
    should "Test transfers reversals post 2 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/transfers/tr_xxxxxxxxxxxxx/reversals/trr_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      reversal = client.v1.transfers.reversals.update(
        "tr_xxxxxxxxxxxxx",
        "trr_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/transfers/tr_xxxxxxxxxxxxx/reversals/trr_xxxxxxxxxxxxx"
    end
    should "Test treasury credit reversals get" do
      credit_reversals = Stripe::Treasury::CreditReversal.list({
        financial_account: "fa_xxxxxxxxxxxxx",
        limit: 3,
      })
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/credit_reversals?financial_account=fa_xxxxxxxxxxxxx&limit=3"
    end
    should "Test treasury credit reversals get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/treasury/credit_reversals?financial_account=fa_xxxxxxxxxxxxx&limit=3"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      credit_reversals = client.v1.treasury.credit_reversals.list({
        financial_account: "fa_xxxxxxxxxxxxx",
        limit: 3,
      })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/credit_reversals?financial_account=fa_xxxxxxxxxxxxx&limit=3"
    end
    should "Test treasury credit reversals get 2" do
      credit_reversal = Stripe::Treasury::CreditReversal.retrieve("credrev_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/credit_reversals/credrev_xxxxxxxxxxxxx"
    end
    should "Test treasury credit reversals get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/treasury/credit_reversals/credrev_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      credit_reversal = client.v1.treasury.credit_reversals.retrieve("credrev_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/credit_reversals/credrev_xxxxxxxxxxxxx"
    end
    should "Test treasury credit reversals post" do
      credit_reversal = Stripe::Treasury::CreditReversal.create({
        received_credit: "rc_xxxxxxxxxxxxx",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/treasury/credit_reversals"
    end
    should "Test treasury credit reversals post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/credit_reversals").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      credit_reversal = client.v1.treasury.credit_reversals.create({
        received_credit: "rc_xxxxxxxxxxxxx",
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/credit_reversals"
    end
    should "Test treasury debit reversals get" do
      debit_reversals = Stripe::Treasury::DebitReversal.list({
        financial_account: "fa_xxxxxxxxxxxxx",
        limit: 3,
      })
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/debit_reversals?financial_account=fa_xxxxxxxxxxxxx&limit=3"
    end
    should "Test treasury debit reversals get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/treasury/debit_reversals?financial_account=fa_xxxxxxxxxxxxx&limit=3"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      debit_reversals = client.v1.treasury.debit_reversals.list({
        financial_account: "fa_xxxxxxxxxxxxx",
        limit: 3,
      })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/debit_reversals?financial_account=fa_xxxxxxxxxxxxx&limit=3"
    end
    should "Test treasury debit reversals get 2" do
      debit_reversal = Stripe::Treasury::DebitReversal.retrieve("debrev_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/debit_reversals/debrev_xxxxxxxxxxxxx"
    end
    should "Test treasury debit reversals get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/treasury/debit_reversals/debrev_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      debit_reversal = client.v1.treasury.debit_reversals.retrieve("debrev_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/debit_reversals/debrev_xxxxxxxxxxxxx"
    end
    should "Test treasury debit reversals post" do
      debit_reversal = Stripe::Treasury::DebitReversal.create({ received_debit: "rd_xxxxxxxxxxxxx" })
      assert_requested :post, "#{Stripe.api_base}/v1/treasury/debit_reversals"
    end
    should "Test treasury debit reversals post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/debit_reversals").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      debit_reversal = client.v1.treasury.debit_reversals.create({
        received_debit: "rd_xxxxxxxxxxxxx",
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/debit_reversals"
    end
    should "Test treasury financial accounts features get" do
      financial_account_features = Stripe::Treasury::FinancialAccount.retrieve_features("fa_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/financial_accounts/fa_xxxxxxxxxxxxx/features"
    end
    should "Test treasury financial accounts features get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/treasury/financial_accounts/fa_xxxxxxxxxxxxx/features"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      financial_account_features = client.v1.treasury.financial_accounts.features.retrieve("fa_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/financial_accounts/fa_xxxxxxxxxxxxx/features"
    end
    should "Test treasury financial accounts get" do
      financial_accounts = Stripe::Treasury::FinancialAccount.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/financial_accounts?limit=3"
    end
    should "Test treasury financial accounts get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/treasury/financial_accounts?limit=3"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      financial_accounts = client.v1.treasury.financial_accounts.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/financial_accounts?limit=3"
    end
    should "Test treasury financial accounts get 2" do
      financial_account = Stripe::Treasury::FinancialAccount.retrieve("fa_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/financial_accounts/fa_xxxxxxxxxxxxx"
    end
    should "Test treasury financial accounts get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/treasury/financial_accounts/fa_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      financial_account = client.v1.treasury.financial_accounts.retrieve("fa_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/financial_accounts/fa_xxxxxxxxxxxxx"
    end
    should "Test treasury financial accounts post" do
      financial_account = Stripe::Treasury::FinancialAccount.create({
        supported_currencies: ["usd"],
        features: {},
      })
      assert_requested :post, "#{Stripe.api_base}/v1/treasury/financial_accounts"
    end
    should "Test treasury financial accounts post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/financial_accounts").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      financial_account = client.v1.treasury.financial_accounts.create({
        supported_currencies: ["usd"],
        features: {},
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/financial_accounts"
    end
    should "Test treasury financial accounts post 2" do
      financial_account = Stripe::Treasury::FinancialAccount.update(
        "fa_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/treasury/financial_accounts/fa_xxxxxxxxxxxxx"
    end
    should "Test treasury financial accounts post 2 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/treasury/financial_accounts/fa_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      financial_account = client.v1.treasury.financial_accounts.update(
        "fa_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/financial_accounts/fa_xxxxxxxxxxxxx"
    end
    should "Test treasury inbound transfers cancel post" do
      inbound_transfer = Stripe::Treasury::InboundTransfer.cancel("ibt_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/treasury/inbound_transfers/ibt_xxxxxxxxxxxxx/cancel"
    end
    should "Test treasury inbound transfers cancel post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/treasury/inbound_transfers/ibt_xxxxxxxxxxxxx/cancel"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      inbound_transfer = client.v1.treasury.inbound_transfers.cancel("ibt_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/inbound_transfers/ibt_xxxxxxxxxxxxx/cancel"
    end
    should "Test treasury inbound transfers get" do
      inbound_transfers = Stripe::Treasury::InboundTransfer.list({
        financial_account: "fa_xxxxxxxxxxxxx",
        limit: 3,
      })
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/inbound_transfers?financial_account=fa_xxxxxxxxxxxxx&limit=3"
    end
    should "Test treasury inbound transfers get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/treasury/inbound_transfers?financial_account=fa_xxxxxxxxxxxxx&limit=3"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      inbound_transfers = client.v1.treasury.inbound_transfers.list({
        financial_account: "fa_xxxxxxxxxxxxx",
        limit: 3,
      })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/inbound_transfers?financial_account=fa_xxxxxxxxxxxxx&limit=3"
    end
    should "Test treasury inbound transfers get 2" do
      inbound_transfer = Stripe::Treasury::InboundTransfer.retrieve("ibt_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/inbound_transfers/ibt_xxxxxxxxxxxxx"
    end
    should "Test treasury inbound transfers get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/treasury/inbound_transfers/ibt_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      inbound_transfer = client.v1.treasury.inbound_transfers.retrieve("ibt_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/inbound_transfers/ibt_xxxxxxxxxxxxx"
    end
    should "Test treasury inbound transfers post" do
      inbound_transfer = Stripe::Treasury::InboundTransfer.create({
        financial_account: "fa_xxxxxxxxxxxxx",
        amount: 10_000,
        currency: "usd",
        origin_payment_method: "pm_xxxxxxxxxxxxx",
        description: "InboundTransfer from my bank account",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/treasury/inbound_transfers"
    end
    should "Test treasury inbound transfers post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/inbound_transfers").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      inbound_transfer = client.v1.treasury.inbound_transfers.create({
        financial_account: "fa_xxxxxxxxxxxxx",
        amount: 10_000,
        currency: "usd",
        origin_payment_method: "pm_xxxxxxxxxxxxx",
        description: "InboundTransfer from my bank account",
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/inbound_transfers"
    end
    should "Test treasury outbound payments cancel post" do
      outbound_payment = Stripe::Treasury::OutboundPayment.cancel("bot_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/treasury/outbound_payments/bot_xxxxxxxxxxxxx/cancel"
    end
    should "Test treasury outbound payments cancel post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/treasury/outbound_payments/bot_xxxxxxxxxxxxx/cancel"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      outbound_payment = client.v1.treasury.outbound_payments.cancel("bot_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/outbound_payments/bot_xxxxxxxxxxxxx/cancel"
    end
    should "Test treasury outbound payments get" do
      outbound_payments = Stripe::Treasury::OutboundPayment.list({
        financial_account: "fa_xxxxxxxxxxxxx",
        limit: 3,
      })
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/outbound_payments?financial_account=fa_xxxxxxxxxxxxx&limit=3"
    end
    should "Test treasury outbound payments get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/treasury/outbound_payments?financial_account=fa_xxxxxxxxxxxxx&limit=3"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      outbound_payments = client.v1.treasury.outbound_payments.list({
        financial_account: "fa_xxxxxxxxxxxxx",
        limit: 3,
      })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/outbound_payments?financial_account=fa_xxxxxxxxxxxxx&limit=3"
    end
    should "Test treasury outbound payments get 2" do
      outbound_payment = Stripe::Treasury::OutboundPayment.retrieve("bot_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/outbound_payments/bot_xxxxxxxxxxxxx"
    end
    should "Test treasury outbound payments get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/treasury/outbound_payments/bot_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      outbound_payment = client.v1.treasury.outbound_payments.retrieve("bot_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/outbound_payments/bot_xxxxxxxxxxxxx"
    end
    should "Test treasury outbound payments post" do
      outbound_payment = Stripe::Treasury::OutboundPayment.create({
        financial_account: "fa_xxxxxxxxxxxxx",
        amount: 10_000,
        currency: "usd",
        customer: "cus_xxxxxxxxxxxxx",
        destination_payment_method: "pm_xxxxxxxxxxxxx",
        description: "OutboundPayment to a 3rd party",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/treasury/outbound_payments"
    end
    should "Test treasury outbound payments post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/outbound_payments").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      outbound_payment = client.v1.treasury.outbound_payments.create({
        financial_account: "fa_xxxxxxxxxxxxx",
        amount: 10_000,
        currency: "usd",
        customer: "cus_xxxxxxxxxxxxx",
        destination_payment_method: "pm_xxxxxxxxxxxxx",
        description: "OutboundPayment to a 3rd party",
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/outbound_payments"
    end
    should "Test treasury outbound transfers cancel post" do
      outbound_transfer = Stripe::Treasury::OutboundTransfer.cancel("obt_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/treasury/outbound_transfers/obt_xxxxxxxxxxxxx/cancel"
    end
    should "Test treasury outbound transfers cancel post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/treasury/outbound_transfers/obt_xxxxxxxxxxxxx/cancel"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      outbound_transfer = client.v1.treasury.outbound_transfers.cancel("obt_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/outbound_transfers/obt_xxxxxxxxxxxxx/cancel"
    end
    should "Test treasury outbound transfers get" do
      outbound_transfers = Stripe::Treasury::OutboundTransfer.list({
        financial_account: "fa_xxxxxxxxxxxxx",
        limit: 3,
      })
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/outbound_transfers?financial_account=fa_xxxxxxxxxxxxx&limit=3"
    end
    should "Test treasury outbound transfers get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/treasury/outbound_transfers?financial_account=fa_xxxxxxxxxxxxx&limit=3"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      outbound_transfers = client.v1.treasury.outbound_transfers.list({
        financial_account: "fa_xxxxxxxxxxxxx",
        limit: 3,
      })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/outbound_transfers?financial_account=fa_xxxxxxxxxxxxx&limit=3"
    end
    should "Test treasury outbound transfers get 2" do
      outbound_transfer = Stripe::Treasury::OutboundTransfer.retrieve("obt_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/outbound_transfers/obt_xxxxxxxxxxxxx"
    end
    should "Test treasury outbound transfers get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/treasury/outbound_transfers/obt_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      outbound_transfer = client.v1.treasury.outbound_transfers.retrieve("obt_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/outbound_transfers/obt_xxxxxxxxxxxxx"
    end
    should "Test treasury outbound transfers post" do
      outbound_transfer = Stripe::Treasury::OutboundTransfer.create({
        financial_account: "fa_xxxxxxxxxxxxx",
        destination_payment_method: "pm_xxxxxxxxxxxxx",
        amount: 500,
        currency: "usd",
        description: "OutboundTransfer to my external bank account",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/treasury/outbound_transfers"
    end
    should "Test treasury outbound transfers post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/outbound_transfers").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      outbound_transfer = client.v1.treasury.outbound_transfers.create({
        financial_account: "fa_xxxxxxxxxxxxx",
        destination_payment_method: "pm_xxxxxxxxxxxxx",
        amount: 500,
        currency: "usd",
        description: "OutboundTransfer to my external bank account",
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/outbound_transfers"
    end
    should "Test treasury received credits get" do
      received_credits = Stripe::Treasury::ReceivedCredit.list({
        financial_account: "fa_xxxxxxxxxxxxx",
        limit: 3,
      })
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/received_credits?financial_account=fa_xxxxxxxxxxxxx&limit=3"
    end
    should "Test treasury received credits get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/treasury/received_credits?financial_account=fa_xxxxxxxxxxxxx&limit=3"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      received_credits = client.v1.treasury.received_credits.list({
        financial_account: "fa_xxxxxxxxxxxxx",
        limit: 3,
      })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/received_credits?financial_account=fa_xxxxxxxxxxxxx&limit=3"
    end
    should "Test treasury received credits get 2" do
      received_credit = Stripe::Treasury::ReceivedCredit.retrieve("rc_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/received_credits/rc_xxxxxxxxxxxxx"
    end
    should "Test treasury received credits get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/treasury/received_credits/rc_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      received_credit = client.v1.treasury.received_credits.retrieve("rc_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/received_credits/rc_xxxxxxxxxxxxx"
    end
    should "Test treasury received debits get" do
      received_debits = Stripe::Treasury::ReceivedDebit.list({
        financial_account: "fa_xxxxxxxxxxxxx",
        limit: 3,
      })
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/received_debits?financial_account=fa_xxxxxxxxxxxxx&limit=3"
    end
    should "Test treasury received debits get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/treasury/received_debits?financial_account=fa_xxxxxxxxxxxxx&limit=3"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      received_debits = client.v1.treasury.received_debits.list({
        financial_account: "fa_xxxxxxxxxxxxx",
        limit: 3,
      })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/received_debits?financial_account=fa_xxxxxxxxxxxxx&limit=3"
    end
    should "Test treasury received debits get 2" do
      received_debit = Stripe::Treasury::ReceivedDebit.retrieve("rd_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/received_debits/rd_xxxxxxxxxxxxx"
    end
    should "Test treasury received debits get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/treasury/received_debits/rd_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      received_debit = client.v1.treasury.received_debits.retrieve("rd_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/received_debits/rd_xxxxxxxxxxxxx"
    end
    should "Test treasury transaction entries get" do
      transaction_entries = Stripe::Treasury::TransactionEntry.list({
        financial_account: "fa_xxxxxxxxxxxxx",
        limit: 3,
      })
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/transaction_entries?financial_account=fa_xxxxxxxxxxxxx&limit=3"
    end
    should "Test treasury transaction entries get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/treasury/transaction_entries?financial_account=fa_xxxxxxxxxxxxx&limit=3"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      transaction_entries = client.v1.treasury.transaction_entries.list({
        financial_account: "fa_xxxxxxxxxxxxx",
        limit: 3,
      })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/transaction_entries?financial_account=fa_xxxxxxxxxxxxx&limit=3"
    end
    should "Test treasury transaction entries get 2" do
      transaction_entry = Stripe::Treasury::TransactionEntry.retrieve("trxne_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/transaction_entries/trxne_xxxxxxxxxxxxx"
    end
    should "Test treasury transaction entries get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/treasury/transaction_entries/trxne_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      transaction_entry = client.v1.treasury.transaction_entries.retrieve("trxne_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/transaction_entries/trxne_xxxxxxxxxxxxx"
    end
    should "Test treasury transactions get" do
      transactions = Stripe::Treasury::Transaction.list({
        financial_account: "fa_xxxxxxxxxxxxx",
        limit: 3,
      })
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/transactions?financial_account=fa_xxxxxxxxxxxxx&limit=3"
    end
    should "Test treasury transactions get (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/treasury/transactions?financial_account=fa_xxxxxxxxxxxxx&limit=3"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      transactions = client.v1.treasury.transactions.list({
        financial_account: "fa_xxxxxxxxxxxxx",
        limit: 3,
      })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/transactions?financial_account=fa_xxxxxxxxxxxxx&limit=3"
    end
    should "Test treasury transactions get 2" do
      transaction = Stripe::Treasury::Transaction.retrieve("trxn_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/transactions/trxn_xxxxxxxxxxxxx"
    end
    should "Test treasury transactions get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/treasury/transactions/trxn_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      transaction = client.v1.treasury.transactions.retrieve("trxn_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/treasury/transactions/trxn_xxxxxxxxxxxxx"
    end
    should "Test webhook endpoints delete" do
      deleted = Stripe::WebhookEndpoint.delete("we_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/webhook_endpoints/we_xxxxxxxxxxxxx"
    end
    should "Test webhook endpoints delete (service)" do
      stub_request(
        :delete,
        "#{Stripe::DEFAULT_API_BASE}/v1/webhook_endpoints/we_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      deleted = client.v1.webhook_endpoints.delete("we_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe::DEFAULT_API_BASE}/v1/webhook_endpoints/we_xxxxxxxxxxxxx"
    end
    should "Test webhook endpoints get" do
      webhook_endpoints = Stripe::WebhookEndpoint.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/webhook_endpoints?limit=3"
    end
    should "Test webhook endpoints get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/webhook_endpoints?limit=3").to_return(
        body: "{}"
      )
      client = Stripe::StripeClient.new("sk_test_123")

      webhook_endpoints = client.v1.webhook_endpoints.list({ limit: 3 })
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/webhook_endpoints?limit=3"
    end
    should "Test webhook endpoints get 2" do
      webhook_endpoint = Stripe::WebhookEndpoint.retrieve("we_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/webhook_endpoints/we_xxxxxxxxxxxxx"
    end
    should "Test webhook endpoints get 2 (service)" do
      stub_request(
        :get,
        "#{Stripe::DEFAULT_API_BASE}/v1/webhook_endpoints/we_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      webhook_endpoint = client.v1.webhook_endpoints.retrieve("we_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/webhook_endpoints/we_xxxxxxxxxxxxx"
    end
    should "Test webhook endpoints post" do
      webhook_endpoint = Stripe::WebhookEndpoint.create({
        url: "https://example.com/my/webhook/endpoint",
        enabled_events: ["charge.failed", "charge.succeeded"],
      })
      assert_requested :post, "#{Stripe.api_base}/v1/webhook_endpoints"
    end
    should "Test webhook endpoints post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/webhook_endpoints").to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      webhook_endpoint = client.v1.webhook_endpoints.create({
        url: "https://example.com/my/webhook/endpoint",
        enabled_events: ["charge.failed", "charge.succeeded"],
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/webhook_endpoints"
    end
    should "Test webhook endpoints post 2" do
      webhook_endpoint = Stripe::WebhookEndpoint.update(
        "we_xxxxxxxxxxxxx",
        { url: "https://example.com/new_endpoint" }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/webhook_endpoints/we_xxxxxxxxxxxxx"
    end
    should "Test webhook endpoints post 2 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v1/webhook_endpoints/we_xxxxxxxxxxxxx"
      ).to_return(body: "{}")
      client = Stripe::StripeClient.new("sk_test_123")

      webhook_endpoint = client.v1.webhook_endpoints.update(
        "we_xxxxxxxxxxxxx",
        { url: "https://example.com/new_endpoint" }
      )
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v1/webhook_endpoints/we_xxxxxxxxxxxxx"
    end
    should "Test v2 billing meter event post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v2/billing/meter_events").to_return(
        body: '{"created":"1970-01-12T21:42:34.472Z","event_name":"event_name","identifier":"identifier","object":"v2.billing.meter_event","payload":{"key":"payload"},"timestamp":"1970-01-01T15:18:46.294Z","livemode":true}',
        status: 200
      )
      client = Stripe::StripeClient.new("sk_test_123")

      meter_event = client.v2.billing.meter_events.create({
        event_name: "event_name",
        payload: { key: "payload" },
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v2/billing/meter_events"
    end
    should "Test v2 billing meter event adjustment post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v2/billing/meter_event_adjustments"
      ).to_return(
        body: '{"cancel":{"identifier":"identifier"},"created":"1970-01-12T21:42:34.472Z","event_name":"event_name","id":"obj_123","object":"v2.billing.meter_event_adjustment","status":"complete","type":"cancel","livemode":true}',
        status: 200
      )
      client = Stripe::StripeClient.new("sk_test_123")

      meter_event_adjustment = client.v2.billing.meter_event_adjustments.create({
        cancel: { identifier: "identifier" },
        event_name: "event_name",
        type: "cancel",
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v2/billing/meter_event_adjustments"
    end
    should "Test v2 billing meter event session post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v2/billing/meter_event_session").to_return(
        body: '{"authentication_token":"authentication_token","created":"1970-01-12T21:42:34.472Z","expires_at":"1970-01-10T15:36:51.170Z","id":"obj_123","object":"v2.billing.meter_event_session","livemode":true}',
        status: 200
      )
      client = Stripe::StripeClient.new("sk_test_123")

      meter_event_session = client.v2.billing.meter_event_session.create
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v2/billing/meter_event_session"
    end
    should "Test v2 billing meter event stream post (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_METER_EVENTS_BASE}/v2/billing/meter_event_stream"
      ).to_return(body: "{}", status: 200)
      client = Stripe::StripeClient.new("sk_test_123")

      empty_object = client.v2.billing.meter_event_stream.create({
        events: [
          {
            event_name: "event_name",
            identifier: "identifier",
            payload: { key: "payload" },
            timestamp: "1970-01-01T15:18:46.294Z",
          },
        ],
      })
      assert_requested :post, "#{Stripe::DEFAULT_METER_EVENTS_BASE}/v2/billing/meter_event_stream"
    end
    should "Test v2 core event get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/core/events").to_return(
        body: '{"data":[{"created":"1970-01-12T21:42:34.472Z","id":"obj_123","object":"v2.core.event","type":"type","livemode":true}],"next_page_url":null,"previous_page_url":null}',
        status: 200
      )
      client = Stripe::StripeClient.new("sk_test_123")

      events = client.v2.core.events.list
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v2/core/events"
    end
    should "Test v2 core event get 2 (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/core/events/id_123").to_return(
        body: '{"created":"1970-01-12T21:42:34.472Z","id":"obj_123","object":"v2.core.event","type":"type","livemode":true}',
        status: 200
      )
      client = Stripe::StripeClient.new("sk_test_123")

      event = client.v2.core.events.retrieve("id_123")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v2/core/events/id_123"
    end
    should "Test v2 core event destination get (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/core/event_destinations").to_return(
        body: '{"data":[{"created":"1970-01-12T21:42:34.472Z","description":"description","enabled_events":["enabled_events"],"event_payload":"thin","id":"obj_123","name":"name","object":"v2.core.event_destination","status":"disabled","type":"amazon_eventbridge","updated":"1970-01-03T17:07:10.277Z","livemode":true}],"next_page_url":null,"previous_page_url":null}',
        status: 200
      )
      client = Stripe::StripeClient.new("sk_test_123")

      event_destinations = client.v2.core.event_destinations.list
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v2/core/event_destinations"
    end
    should "Test v2 core event destination post (service)" do
      stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v2/core/event_destinations").to_return(
        body: '{"created":"1970-01-12T21:42:34.472Z","description":"description","enabled_events":["enabled_events"],"event_payload":"thin","id":"obj_123","name":"name","object":"v2.core.event_destination","status":"disabled","type":"amazon_eventbridge","updated":"1970-01-03T17:07:10.277Z","livemode":true}',
        status: 200
      )
      client = Stripe::StripeClient.new("sk_test_123")

      event_destination = client.v2.core.event_destinations.create({
        enabled_events: ["enabled_events"],
        event_payload: "thin",
        name: "name",
        type: "amazon_eventbridge",
      })
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v2/core/event_destinations"
    end
    should "Test v2 core event destination delete (service)" do
      stub_request(
        :delete,
        "#{Stripe::DEFAULT_API_BASE}/v2/core/event_destinations/id_123"
      ).to_return(body: '{"id":"abc_123","object":"some.object.tag"}', status: 200)
      client = Stripe::StripeClient.new("sk_test_123")

      deleted = client.v2.core.event_destinations.delete("id_123")
      assert_requested :delete, "#{Stripe::DEFAULT_API_BASE}/v2/core/event_destinations/id_123"
    end
    should "Test v2 core event destination get 2 (service)" do
      stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/core/event_destinations/id_123").to_return(
        body: '{"created":"1970-01-12T21:42:34.472Z","description":"description","enabled_events":["enabled_events"],"event_payload":"thin","id":"obj_123","name":"name","object":"v2.core.event_destination","status":"disabled","type":"amazon_eventbridge","updated":"1970-01-03T17:07:10.277Z","livemode":true}',
        status: 200
      )
      client = Stripe::StripeClient.new("sk_test_123")

      event_destination = client.v2.core.event_destinations.retrieve("id_123")
      assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v2/core/event_destinations/id_123"
    end
    should "Test v2 core event destination post 2 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v2/core/event_destinations/id_123"
      ).to_return(
        body: '{"created":"1970-01-12T21:42:34.472Z","description":"description","enabled_events":["enabled_events"],"event_payload":"thin","id":"obj_123","name":"name","object":"v2.core.event_destination","status":"disabled","type":"amazon_eventbridge","updated":"1970-01-03T17:07:10.277Z","livemode":true}',
        status: 200
      )
      client = Stripe::StripeClient.new("sk_test_123")

      event_destination = client.v2.core.event_destinations.update("id_123")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v2/core/event_destinations/id_123"
    end
    should "Test v2 core event destination post 3 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v2/core/event_destinations/id_123/disable"
      ).to_return(
        body: '{"created":"1970-01-12T21:42:34.472Z","description":"description","enabled_events":["enabled_events"],"event_payload":"thin","id":"obj_123","name":"name","object":"v2.core.event_destination","status":"disabled","type":"amazon_eventbridge","updated":"1970-01-03T17:07:10.277Z","livemode":true}',
        status: 200
      )
      client = Stripe::StripeClient.new("sk_test_123")

      event_destination = client.v2.core.event_destinations.disable("id_123")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v2/core/event_destinations/id_123/disable"
    end
    should "Test v2 core event destination post 4 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v2/core/event_destinations/id_123/enable"
      ).to_return(
        body: '{"created":"1970-01-12T21:42:34.472Z","description":"description","enabled_events":["enabled_events"],"event_payload":"thin","id":"obj_123","name":"name","object":"v2.core.event_destination","status":"disabled","type":"amazon_eventbridge","updated":"1970-01-03T17:07:10.277Z","livemode":true}',
        status: 200
      )
      client = Stripe::StripeClient.new("sk_test_123")

      event_destination = client.v2.core.event_destinations.enable("id_123")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v2/core/event_destinations/id_123/enable"
    end
    should "Test v2 core event destination post 5 (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_API_BASE}/v2/core/event_destinations/id_123/ping"
      ).to_return(
        body: '{"created":"1970-01-12T21:42:34.472Z","id":"obj_123","object":"v2.core.event","type":"type","livemode":true}',
        status: 200
      )
      client = Stripe::StripeClient.new("sk_test_123")

      event = client.v2.core.event_destinations.ping("id_123")
      assert_requested :post, "#{Stripe::DEFAULT_API_BASE}/v2/core/event_destinations/id_123/ping"
    end
    should "Test temporary session expired error (service)" do
      stub_request(
        :post,
        "#{Stripe::DEFAULT_METER_EVENTS_BASE}/v2/billing/meter_event_stream"
      ).to_return(
        body: '{"error":{"type":"temporary_session_expired","code":"billing_meter_event_session_expired"}}',
        status: 400
      )
      client = Stripe::StripeClient.new("sk_test_123")

      assert_raises Stripe::TemporarySessionExpiredError do
        empty_object = client.v2.billing.meter_event_stream.create({
          events: [
            {
              event_name: "event_name",
              payload: { key: "payload" },
            },
          ],
        })
      end
      assert_requested :post, "#{Stripe::DEFAULT_METER_EVENTS_BASE}/v2/billing/meter_event_stream"
    end
  end
end
