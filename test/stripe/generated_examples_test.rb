# File generated from our OpenAPI spec
# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)
module Stripe
  class CodegennedExampleTest < Test::Unit::TestCase
    should "Test account links post" do
      Stripe::AccountLink.create({
        account: "acct_xxxxxxxxxxxxx",
        refresh_url: "https://example.com/reauth",
        return_url: "https://example.com/return",
        type: "account_onboarding",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/account_links"
    end
    should "Test accounts capabilities get" do
      Stripe::Account.list_capabilities("acct_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/capabilities?"
    end
    should "Test accounts capabilities get 2" do
      Stripe::Account.retrieve_capability("acct_xxxxxxxxxxxxx", "card_payments")
      assert_requested :get, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/capabilities/card_payments?"
    end
    should "Test accounts capabilities post" do
      Stripe::Account.update_capability("acct_xxxxxxxxxxxxx", "card_payments", { requested: true })
      assert_requested :post, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/capabilities/card_payments"
    end
    should "Test accounts delete" do
      Stripe::Account.delete("acct_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx?"
    end
    should "Test accounts external accounts delete" do
      Stripe::Account.delete_external_account("acct_xxxxxxxxxxxxx", "ba_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts/ba_xxxxxxxxxxxxx?"
    end
    should "Test accounts external accounts delete 2" do
      Stripe::Account.delete_external_account("acct_xxxxxxxxxxxxx", "card_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts/card_xxxxxxxxxxxxx?"
    end
    should "Test accounts external accounts get" do
      Stripe::Account.list_external_accounts("acct_xxxxxxxxxxxxx", { limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts?limit=3"
    end
    should "Test accounts external accounts get 2" do
      Stripe::Account.list_external_accounts(
        "acct_xxxxxxxxxxxxx",
        {
          object: "bank_account",
          limit: 3,
        }
      )
      assert_requested :get, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts?object=bank_account&limit=3"
    end
    should "Test accounts external accounts get 3" do
      Stripe::Account.list_external_accounts(
        "acct_xxxxxxxxxxxxx",
        {
          object: "card",
          limit: 3,
        }
      )
      assert_requested :get, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts?object=card&limit=3"
    end
    should "Test accounts external accounts post" do
      Stripe::Account.create_external_account(
        "acct_xxxxxxxxxxxxx",
        { external_account: "btok_xxxxxxxxxxxxx" }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts"
    end
    should "Test accounts external accounts post 2" do
      Stripe::Account.create_external_account(
        "acct_xxxxxxxxxxxxx",
        { external_account: "tok_xxxx_debit" }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts"
    end
    should "Test accounts external accounts post 3" do
      Stripe::Account.update_external_account(
        "acct_xxxxxxxxxxxxx",
        "ba_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts/ba_xxxxxxxxxxxxx"
    end
    should "Test accounts external accounts post 4" do
      Stripe::Account.update_external_account(
        "acct_xxxxxxxxxxxxx",
        "card_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts/card_xxxxxxxxxxxxx"
    end
    should "Test accounts get" do
      Stripe::Account.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/accounts?limit=3"
    end
    should "Test accounts get 2" do
      Stripe::Account.retrieve("acct_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx?"
    end
    should "Test accounts persons get" do
      Stripe::Account.persons("acct_xxxxxxxxxxxxx", { limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/persons?limit=3"
    end
    should "Test accounts persons get 2" do
      Stripe::Account.retrieve_person("acct_xxxxxxxxxxxxx", "person_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/persons/person_xxxxxxxxxxxxx?"
    end
    should "Test accounts persons post 2" do
      Stripe::Account.update_person(
        "acct_xxxxxxxxxxxxx",
        "person_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/persons/person_xxxxxxxxxxxxx"
    end
    should "Test accounts post" do
      Stripe::Account.create({
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
    should "Test accounts post 2" do
      Stripe::Account.update("acct_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx"
    end
    should "Test accounts reject post" do
      Stripe::Account.reject("acct_xxxxxxxxxxxxx", { reason: "fraud" })
      assert_requested :post, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/reject"
    end
    should "Test application fees get" do
      Stripe::ApplicationFee.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/application_fees?limit=3"
    end
    should "Test application fees get 2" do
      Stripe::ApplicationFee.retrieve("fee_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/application_fees/fee_xxxxxxxxxxxxx?"
    end
    should "Test application fees refunds get" do
      Stripe::ApplicationFee.list_refunds("fee_xxxxxxxxxxxxx", { limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/application_fees/fee_xxxxxxxxxxxxx/refunds?limit=3"
    end
    should "Test application fees refunds get 2" do
      Stripe::ApplicationFee.retrieve_refund("fee_xxxxxxxxxxxxx", "fr_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/application_fees/fee_xxxxxxxxxxxxx/refunds/fr_xxxxxxxxxxxxx?"
    end
    should "Test application fees refunds post 2" do
      Stripe::ApplicationFee.update_refund(
        "fee_xxxxxxxxxxxxx",
        "fr_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/application_fees/fee_xxxxxxxxxxxxx/refunds/fr_xxxxxxxxxxxxx"
    end
    should "Test apps secrets delete post" do
      Stripe::Apps::Secret.delete_where({
        name: "my-api-key",
        scope: { type: "account" },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/apps/secrets/delete"
    end
    should "Test apps secrets find get" do
      Stripe::Apps::Secret.find({
        name: "sec_123",
        scope: { type: "account" },
      })
      assert_requested :get, "#{Stripe.api_base}/v1/apps/secrets/find?name=sec_123&scope[type]=account"
    end
    should "Test apps secrets get" do
      Stripe::Apps::Secret.list({
        scope: { type: "account" },
        limit: 2,
      })
      assert_requested :get, "#{Stripe.api_base}/v1/apps/secrets?scope[type]=account&limit=2"
    end
    should "Test apps secrets get 2" do
      Stripe::Apps::Secret.list({
        scope: { type: "account" },
        limit: 2,
      })
      assert_requested :get, "#{Stripe.api_base}/v1/apps/secrets?scope[type]=account&limit=2"
    end
    should "Test apps secrets post" do
      Stripe::Apps::Secret.create({
        name: "sec_123",
        payload: "very secret string",
        scope: { type: "account" },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/apps/secrets"
    end
    should "Test apps secrets post 2" do
      Stripe::Apps::Secret.create({
        name: "my-api-key",
        payload: "secret_key_xxxxxx",
        scope: { type: "account" },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/apps/secrets"
    end
    should "Test balance transactions get" do
      Stripe::BalanceTransaction.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/balance_transactions?limit=3"
    end
    should "Test balance transactions get 2" do
      Stripe::BalanceTransaction.retrieve("txn_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/balance_transactions/txn_xxxxxxxxxxxxx?"
    end
    should "Test billing portal configurations get" do
      Stripe::BillingPortal::Configuration.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/billing_portal/configurations?limit=3"
    end
    should "Test billing portal configurations get 2" do
      Stripe::BillingPortal::Configuration.retrieve("bpc_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/billing_portal/configurations/bpc_xxxxxxxxxxxxx?"
    end
    should "Test billing portal configurations post" do
      Stripe::BillingPortal::Configuration.create({
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
    should "Test billing portal configurations post 2" do
      Stripe::BillingPortal::Configuration.update(
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
    should "Test billing portal sessions post" do
      Stripe::BillingPortal::Session.create({
        customer: "cus_xxxxxxxxxxxxx",
        return_url: "https://example.com/account",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/billing_portal/sessions"
    end
    should "Test charges capture post" do
      Stripe::Charge.capture("ch_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/charges/ch_xxxxxxxxxxxxx/capture?"
    end
    should "Test charges get" do
      Stripe::Charge.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/charges?limit=3"
    end
    should "Test charges get 2" do
      Stripe::Charge.retrieve("ch_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/charges/ch_xxxxxxxxxxxxx?"
    end
    should "Test charges post" do
      Stripe::Charge.create({
        amount: 2000,
        currency: "usd",
        source: "tok_xxxx",
        description: "My First Test Charge (created for API docs at https://www.stripe.com/docs/api)",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/charges"
    end
    should "Test charges post 2" do
      Stripe::Charge.update("ch_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/charges/ch_xxxxxxxxxxxxx"
    end
    should "Test charges search get" do
      Stripe::Charge.search({ query: "amount>999 AND metadata['order_id']:'6735'" })
      assert_requested :get, "#{Stripe.api_base}/v1/charges/search?query=amount>999 AND metadata['order_id']:'6735'"
    end
    should "Test checkout sessions expire post" do
      Stripe::Checkout::Session.expire("sess_xyz")
      assert_requested :post, "#{Stripe.api_base}/v1/checkout/sessions/sess_xyz/expire?"
    end
    should "Test checkout sessions expire post 2" do
      Stripe::Checkout::Session.expire("cs_test_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/checkout/sessions/cs_test_xxxxxxxxxxxxx/expire?"
    end
    should "Test checkout sessions get" do
      Stripe::Checkout::Session.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/checkout/sessions?limit=3"
    end
    should "Test checkout sessions get 2" do
      Stripe::Checkout::Session.retrieve("cs_test_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/checkout/sessions/cs_test_xxxxxxxxxxxxx?"
    end
    should "Test checkout sessions line items get" do
      Stripe::Checkout::Session.list_line_items("sess_xyz")
      assert_requested :get, "#{Stripe.api_base}/v1/checkout/sessions/sess_xyz/line_items?"
    end
    should "Test checkout sessions post" do
      Stripe::Checkout::Session.create({
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
    should "Test checkout sessions post 2" do
      Stripe::Checkout::Session.create({
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
    should "Test country specs get" do
      Stripe::CountrySpec.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/country_specs?limit=3"
    end
    should "Test country specs get 2" do
      Stripe::CountrySpec.retrieve("US")
      assert_requested :get, "#{Stripe.api_base}/v1/country_specs/US?"
    end
    should "Test coupons delete" do
      Stripe::Coupon.delete("Z4OV52SU")
      assert_requested :delete, "#{Stripe.api_base}/v1/coupons/Z4OV52SU?"
    end
    should "Test coupons get" do
      Stripe::Coupon.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/coupons?limit=3"
    end
    should "Test coupons get 2" do
      Stripe::Coupon.retrieve("Z4OV52SU")
      assert_requested :get, "#{Stripe.api_base}/v1/coupons/Z4OV52SU?"
    end
    should "Test coupons post" do
      Stripe::Coupon.create({
        percent_off: 25.5,
        duration: "repeating",
        duration_in_months: 3,
      })
      assert_requested :post, "#{Stripe.api_base}/v1/coupons"
    end
    should "Test coupons post 2" do
      Stripe::Coupon.update("Z4OV52SU", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/coupons/Z4OV52SU"
    end
    should "Test credit notes get" do
      Stripe::CreditNote.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/credit_notes?limit=3"
    end
    should "Test credit notes post" do
      Stripe::CreditNote.create({
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
    should "Test credit notes void post" do
      Stripe::CreditNote.void_credit_note("cn_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/credit_notes/cn_xxxxxxxxxxxxx/void?"
    end
    should "Test customer sessions post" do
      Stripe::CustomerSession.create({
        customer: "cus_123",
        components: { buy_button: { enabled: true } },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/customer_sessions"
    end
    should "Test customers balance transactions get" do
      Stripe::Customer.list_balance_transactions("cus_xxxxxxxxxxxxx", { limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/balance_transactions?limit=3"
    end
    should "Test customers balance transactions get 2" do
      Stripe::Customer.retrieve_balance_transaction("cus_xxxxxxxxxxxxx", "cbtxn_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/balance_transactions/cbtxn_xxxxxxxxxxxxx?"
    end
    should "Test customers balance transactions post 2" do
      Stripe::Customer.update_balance_transaction(
        "cus_xxxxxxxxxxxxx",
        "cbtxn_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/balance_transactions/cbtxn_xxxxxxxxxxxxx"
    end
    should "Test customers cash balance get" do
      Stripe::Customer.retrieve_cash_balance("cus_123")
      assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_123/cash_balance?"
    end
    should "Test customers cash balance post" do
      Stripe::Customer.update_cash_balance("cus_123", { settings: { reconciliation_mode: "manual" } })
      assert_requested :post, "#{Stripe.api_base}/v1/customers/cus_123/cash_balance"
    end
    should "Test customers cash balance transactions get" do
      Stripe::Customer.list_cash_balance_transactions("cus_123", { limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_123/cash_balance_transactions?limit=3"
    end
    should "Test customers delete" do
      Stripe::Customer.delete("cus_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx?"
    end
    should "Test customers funding instructions post" do
      Stripe::Customer.create_funding_instructions(
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
    should "Test customers get" do
      Stripe::Customer.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/customers?limit=3"
    end
    should "Test customers get 2" do
      Stripe::Customer.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/customers?limit=3"
    end
    should "Test customers get 3" do
      Stripe::Customer.retrieve("cus_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx?"
    end
    should "Test customers payment methods get" do
      Stripe::Customer.list_payment_methods("cus_xyz", { type: "card" })
      assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xyz/payment_methods?type=card"
    end
    should "Test customers payment methods get 2" do
      Stripe::Customer.list_payment_methods("cus_xxxxxxxxxxxxx", { type: "card" })
      assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/payment_methods?type=card"
    end
    should "Test customers post" do
      Stripe::Customer.create({
        description: "My First Test Customer (created for API docs at https://www.stripe.com/docs/api)",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/customers"
    end
    should "Test customers post 2" do
      Stripe::Customer.update("cus_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx"
    end
    should "Test customers search get" do
      Stripe::Customer.search({ query: "name:'fakename' AND metadata['foo']:'bar'" })
      assert_requested :get, "#{Stripe.api_base}/v1/customers/search?query=name:'fakename' AND metadata['foo']:'bar'"
    end
    should "Test customers search get 2" do
      Stripe::Customer.search({ query: "name:'fakename' AND metadata['foo']:'bar'" })
      assert_requested :get, "#{Stripe.api_base}/v1/customers/search?query=name:'fakename' AND metadata['foo']:'bar'"
    end
    should "Test customers sources delete" do
      Stripe::Customer.delete_source("cus_xxxxxxxxxxxxx", "ba_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/sources/ba_xxxxxxxxxxxxx?"
    end
    should "Test customers sources delete 2" do
      Stripe::Customer.delete_source("cus_xxxxxxxxxxxxx", "card_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/sources/card_xxxxxxxxxxxxx?"
    end
    should "Test customers sources get" do
      Stripe::Customer.list_sources(
        "cus_xxxxxxxxxxxxx",
        {
          object: "bank_account",
          limit: 3,
        }
      )
      assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/sources?object=bank_account&limit=3"
    end
    should "Test customers sources get 2" do
      Stripe::Customer.list_sources(
        "cus_xxxxxxxxxxxxx",
        {
          object: "card",
          limit: 3,
        }
      )
      assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/sources?object=card&limit=3"
    end
    should "Test customers sources get 3" do
      Stripe::Customer.retrieve_source("cus_xxxxxxxxxxxxx", "ba_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/sources/ba_xxxxxxxxxxxxx?"
    end
    should "Test customers sources get 4" do
      Stripe::Customer.retrieve_source("cus_xxxxxxxxxxxxx", "card_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/sources/card_xxxxxxxxxxxxx?"
    end
    should "Test customers sources post" do
      Stripe::Customer.update_source("cus_123", "card_123", { account_holder_name: "Kamil" })
      assert_requested :post, "#{Stripe.api_base}/v1/customers/cus_123/sources/card_123"
    end
    should "Test customers sources post 2" do
      Stripe::Customer.create_source("cus_xxxxxxxxxxxxx", { source: "btok_xxxxxxxxxxxxx" })
      assert_requested :post, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/sources"
    end
    should "Test customers sources post 3" do
      Stripe::Customer.create_source("cus_xxxxxxxxxxxxx", { source: "tok_xxxx" })
      assert_requested :post, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/sources"
    end
    should "Test customers sources post 4" do
      Stripe::Customer.update_source(
        "cus_xxxxxxxxxxxxx",
        "ba_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/sources/ba_xxxxxxxxxxxxx"
    end
    should "Test customers sources post 5" do
      Stripe::Customer.update_source(
        "cus_xxxxxxxxxxxxx",
        "card_xxxxxxxxxxxxx",
        { name: "Jenny Rosen" }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/sources/card_xxxxxxxxxxxxx"
    end
    should "Test customers tax ids delete" do
      Stripe::Customer.delete_tax_id("cus_xxxxxxxxxxxxx", "txi_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/tax_ids/txi_xxxxxxxxxxxxx?"
    end
    should "Test customers tax ids get" do
      Stripe::Customer.list_tax_ids("cus_xxxxxxxxxxxxx", { limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/tax_ids?limit=3"
    end
    should "Test customers tax ids get 2" do
      Stripe::Customer.retrieve_tax_id("cus_xxxxxxxxxxxxx", "txi_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/tax_ids/txi_xxxxxxxxxxxxx?"
    end
    should "Test disputes close post" do
      Stripe::Dispute.close("dp_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/disputes/dp_xxxxxxxxxxxxx/close?"
    end
    should "Test disputes get" do
      Stripe::Dispute.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/disputes?limit=3"
    end
    should "Test disputes get 2" do
      Stripe::Dispute.retrieve("dp_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/disputes/dp_xxxxxxxxxxxxx?"
    end
    should "Test disputes post" do
      Stripe::Dispute.update("dp_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/disputes/dp_xxxxxxxxxxxxx"
    end
    should "Test events get" do
      Stripe::Event.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/events?limit=3"
    end
    should "Test events get 2" do
      Stripe::Event.retrieve("evt_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/events/evt_xxxxxxxxxxxxx?"
    end
    should "Test file links get" do
      Stripe::FileLink.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/file_links?limit=3"
    end
    should "Test file links get 2" do
      Stripe::FileLink.retrieve("link_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/file_links/link_xxxxxxxxxxxxx?"
    end
    should "Test file links post" do
      Stripe::FileLink.create({ file: "file_xxxxxxxxxxxxx" })
      assert_requested :post, "#{Stripe.api_base}/v1/file_links"
    end
    should "Test file links post 2" do
      Stripe::FileLink.update("link_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/file_links/link_xxxxxxxxxxxxx"
    end
    should "Test files get" do
      Stripe::File.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/files?limit=3"
    end
    should "Test files get 2" do
      Stripe::File.retrieve("file_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/files/file_xxxxxxxxxxxxx?"
    end
    should "Test financial connections accounts disconnect post" do
      Stripe::FinancialConnections::Account.disconnect("fca_xyz")
      assert_requested :post, "#{Stripe.api_base}/v1/financial_connections/accounts/fca_xyz/disconnect?"
    end
    should "Test financial connections accounts disconnect post 2" do
      Stripe::FinancialConnections::Account.disconnect("fca_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/financial_connections/accounts/fca_xxxxxxxxxxxxx/disconnect?"
    end
    should "Test financial connections accounts get" do
      Stripe::FinancialConnections::Account.list
      assert_requested :get, "#{Stripe.api_base}/v1/financial_connections/accounts?"
    end
    should "Test financial connections accounts get 2" do
      Stripe::FinancialConnections::Account.retrieve("fca_xyz")
      assert_requested :get, "#{Stripe.api_base}/v1/financial_connections/accounts/fca_xyz?"
    end
    should "Test financial connections accounts get 3" do
      Stripe::FinancialConnections::Account.list({ account_holder: { customer: "cus_xxxxxxxxxxxxx" } })
      assert_requested :get, "#{Stripe.api_base}/v1/financial_connections/accounts?account_holder[customer]=cus_xxxxxxxxxxxxx"
    end
    should "Test financial connections accounts get 4" do
      Stripe::FinancialConnections::Account.retrieve("fca_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/financial_connections/accounts/fca_xxxxxxxxxxxxx?"
    end
    should "Test financial connections accounts owners get" do
      Stripe::FinancialConnections::Account.list_owners("fca_xyz", { ownership: "fcaowns_xyz" })
      assert_requested :get, "#{Stripe.api_base}/v1/financial_connections/accounts/fca_xyz/owners?ownership=fcaowns_xyz"
    end
    should "Test financial connections accounts owners get 2" do
      Stripe::FinancialConnections::Account.list_owners(
        "fca_xxxxxxxxxxxxx",
        {
          limit: 3,
          ownership: "fcaowns_xxxxxxxxxxxxx",
        }
      )
      assert_requested :get, "#{Stripe.api_base}/v1/financial_connections/accounts/fca_xxxxxxxxxxxxx/owners?limit=3&ownership=fcaowns_xxxxxxxxxxxxx"
    end
    should "Test financial connections accounts refresh post" do
      Stripe::FinancialConnections::Account.refresh_account("fca_xyz", { features: ["balance"] })
      assert_requested :post, "#{Stripe.api_base}/v1/financial_connections/accounts/fca_xyz/refresh"
    end
    should "Test financial connections accounts subscribe post" do
      Stripe::FinancialConnections::Account.subscribe("fa_123", { features: ["transactions"] })
      assert_requested :post, "#{Stripe.api_base}/v1/financial_connections/accounts/fa_123/subscribe"
    end
    should "Test financial connections accounts unsubscribe post" do
      Stripe::FinancialConnections::Account.unsubscribe("fa_123", { features: ["transactions"] })
      assert_requested :post, "#{Stripe.api_base}/v1/financial_connections/accounts/fa_123/unsubscribe"
    end
    should "Test financial connections sessions get" do
      Stripe::FinancialConnections::Session.retrieve("fcsess_xyz")
      assert_requested :get, "#{Stripe.api_base}/v1/financial_connections/sessions/fcsess_xyz?"
    end
    should "Test financial connections sessions get 2" do
      Stripe::FinancialConnections::Session.retrieve("fcsess_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/financial_connections/sessions/fcsess_xxxxxxxxxxxxx?"
    end
    should "Test financial connections sessions post" do
      Stripe::FinancialConnections::Session.create({
        account_holder: {
          type: "customer",
          customer: "cus_123",
        },
        permissions: ["balances"],
      })
      assert_requested :post, "#{Stripe.api_base}/v1/financial_connections/sessions"
    end
    should "Test financial connections sessions post 2" do
      Stripe::FinancialConnections::Session.create({
        account_holder: {
          type: "customer",
          customer: "cus_xxxxxxxxxxxxx",
        },
        permissions: %w[payment_method balances],
        filters: { countries: ["US"] },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/financial_connections/sessions"
    end
    should "Test financial connections transactions get" do
      Stripe::FinancialConnections::Transaction.retrieve("tr_123")
      assert_requested :get, "#{Stripe.api_base}/v1/financial_connections/transactions/tr_123?"
    end
    should "Test financial connections transactions get 2" do
      Stripe::FinancialConnections::Transaction.list({ account: "fca_xyz" })
      assert_requested :get, "#{Stripe.api_base}/v1/financial_connections/transactions?account=fca_xyz"
    end
    should "Test identity verification reports get" do
      Stripe::Identity::VerificationReport.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/identity/verification_reports?limit=3"
    end
    should "Test identity verification reports get 2" do
      Stripe::Identity::VerificationReport.retrieve("vr_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/identity/verification_reports/vr_xxxxxxxxxxxxx?"
    end
    should "Test identity verification sessions cancel post" do
      Stripe::Identity::VerificationSession.cancel("vs_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/identity/verification_sessions/vs_xxxxxxxxxxxxx/cancel?"
    end
    should "Test identity verification sessions get" do
      Stripe::Identity::VerificationSession.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/identity/verification_sessions?limit=3"
    end
    should "Test identity verification sessions get 2" do
      Stripe::Identity::VerificationSession.retrieve("vs_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/identity/verification_sessions/vs_xxxxxxxxxxxxx?"
    end
    should "Test identity verification sessions post" do
      Stripe::Identity::VerificationSession.create({ type: "document" })
      assert_requested :post, "#{Stripe.api_base}/v1/identity/verification_sessions"
    end
    should "Test identity verification sessions post 2" do
      Stripe::Identity::VerificationSession.update("vs_xxxxxxxxxxxxx", { type: "id_number" })
      assert_requested :post, "#{Stripe.api_base}/v1/identity/verification_sessions/vs_xxxxxxxxxxxxx"
    end
    should "Test identity verification sessions redact post" do
      Stripe::Identity::VerificationSession.redact("vs_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/identity/verification_sessions/vs_xxxxxxxxxxxxx/redact?"
    end
    should "Test invoiceitems delete" do
      Stripe::InvoiceItem.delete("ii_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/invoiceitems/ii_xxxxxxxxxxxxx?"
    end
    should "Test invoiceitems get" do
      Stripe::InvoiceItem.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/invoiceitems?limit=3"
    end
    should "Test invoiceitems get 2" do
      Stripe::InvoiceItem.retrieve("ii_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/invoiceitems/ii_xxxxxxxxxxxxx?"
    end
    should "Test invoiceitems post" do
      Stripe::InvoiceItem.create({
        customer: "cus_xxxxxxxxxxxxx",
        price: "price_xxxxxxxxxxxxx",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/invoiceitems"
    end
    should "Test invoiceitems post 2" do
      Stripe::InvoiceItem.update("ii_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/invoiceitems/ii_xxxxxxxxxxxxx"
    end
    should "Test invoices delete" do
      Stripe::Invoice.delete("in_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/invoices/in_xxxxxxxxxxxxx?"
    end
    should "Test invoices finalize post" do
      Stripe::Invoice.finalize_invoice("in_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/invoices/in_xxxxxxxxxxxxx/finalize?"
    end
    should "Test invoices get" do
      Stripe::Invoice.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/invoices?limit=3"
    end
    should "Test invoices get 2" do
      Stripe::Invoice.retrieve("in_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/invoices/in_xxxxxxxxxxxxx?"
    end
    should "Test invoices get 3" do
      Stripe::Invoice.retrieve({
        expand: ["customer"],
        id: "in_xxxxxxxxxxxxx",
      })
      assert_requested :get, "#{Stripe.api_base}/v1/invoices/in_xxxxxxxxxxxxx?expand[0]=customer"
    end
    should "Test invoices mark uncollectible post" do
      Stripe::Invoice.mark_uncollectible("in_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/invoices/in_xxxxxxxxxxxxx/mark_uncollectible?"
    end
    should "Test invoices pay post" do
      Stripe::Invoice.pay("in_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/invoices/in_xxxxxxxxxxxxx/pay?"
    end
    should "Test invoices post" do
      Stripe::Invoice.create({ customer: "cus_xxxxxxxxxxxxx" })
      assert_requested :post, "#{Stripe.api_base}/v1/invoices"
    end
    should "Test invoices post 2" do
      Stripe::Invoice.update("in_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/invoices/in_xxxxxxxxxxxxx"
    end
    should "Test invoices search get" do
      Stripe::Invoice.search({ query: "total>999 AND metadata['order_id']:'6735'" })
      assert_requested :get, "#{Stripe.api_base}/v1/invoices/search?query=total>999 AND metadata['order_id']:'6735'"
    end
    should "Test invoices send post" do
      Stripe::Invoice.send_invoice("in_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/invoices/in_xxxxxxxxxxxxx/send?"
    end
    should "Test invoices upcoming get" do
      Stripe::Invoice.upcoming({ customer: "cus_9utnxg47pWjV1e" })
      assert_requested :get, "#{Stripe.api_base}/v1/invoices/upcoming?customer=cus_9utnxg47pWjV1e"
    end
    should "Test invoices void post" do
      Stripe::Invoice.void_invoice("in_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/invoices/in_xxxxxxxxxxxxx/void?"
    end
    should "Test issuing authorizations approve post" do
      Stripe::Issuing::Authorization.approve("iauth_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/issuing/authorizations/iauth_xxxxxxxxxxxxx/approve?"
    end
    should "Test issuing authorizations decline post" do
      Stripe::Issuing::Authorization.decline("iauth_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/issuing/authorizations/iauth_xxxxxxxxxxxxx/decline?"
    end
    should "Test issuing authorizations get" do
      Stripe::Issuing::Authorization.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/issuing/authorizations?limit=3"
    end
    should "Test issuing authorizations get 2" do
      Stripe::Issuing::Authorization.retrieve("iauth_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/issuing/authorizations/iauth_xxxxxxxxxxxxx?"
    end
    should "Test issuing authorizations post" do
      Stripe::Issuing::Authorization.update("iauth_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/issuing/authorizations/iauth_xxxxxxxxxxxxx"
    end
    should "Test issuing cardholders get" do
      Stripe::Issuing::Cardholder.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/issuing/cardholders?limit=3"
    end
    should "Test issuing cardholders get 2" do
      Stripe::Issuing::Cardholder.retrieve("ich_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/issuing/cardholders/ich_xxxxxxxxxxxxx?"
    end
    should "Test issuing cardholders post" do
      Stripe::Issuing::Cardholder.create({
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
    should "Test issuing cardholders post 2" do
      Stripe::Issuing::Cardholder.update("ich_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/issuing/cardholders/ich_xxxxxxxxxxxxx"
    end
    should "Test issuing cards get" do
      Stripe::Issuing::Card.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/issuing/cards?limit=3"
    end
    should "Test issuing cards get 2" do
      Stripe::Issuing::Card.retrieve("ic_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/issuing/cards/ic_xxxxxxxxxxxxx?"
    end
    should "Test issuing cards post" do
      Stripe::Issuing::Card.create({
        cardholder: "ich_xxxxxxxxxxxxx",
        currency: "usd",
        type: "virtual",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/issuing/cards"
    end
    should "Test issuing cards post 2" do
      Stripe::Issuing::Card.update("ic_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/issuing/cards/ic_xxxxxxxxxxxxx"
    end
    should "Test issuing disputes get" do
      Stripe::Issuing::Dispute.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/issuing/disputes?limit=3"
    end
    should "Test issuing disputes get 2" do
      Stripe::Issuing::Dispute.retrieve("idp_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/issuing/disputes/idp_xxxxxxxxxxxxx?"
    end
    should "Test issuing disputes post" do
      Stripe::Issuing::Dispute.create({
        transaction: "ipi_xxxxxxxxxxxxx",
        evidence: {
          reason: "fraudulent",
          fraudulent: { explanation: "Purchase was unrecognized." },
        },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/issuing/disputes"
    end
    should "Test issuing disputes submit post" do
      Stripe::Issuing::Dispute.submit("idp_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/issuing/disputes/idp_xxxxxxxxxxxxx/submit?"
    end
    should "Test issuing transactions get" do
      Stripe::Issuing::Transaction.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/issuing/transactions?limit=3"
    end
    should "Test issuing transactions get 2" do
      Stripe::Issuing::Transaction.retrieve("ipi_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/issuing/transactions/ipi_xxxxxxxxxxxxx?"
    end
    should "Test issuing transactions post" do
      Stripe::Issuing::Transaction.update("ipi_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/issuing/transactions/ipi_xxxxxxxxxxxxx"
    end
    should "Test mandates get" do
      Stripe::Mandate.retrieve("mandate_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/mandates/mandate_xxxxxxxxxxxxx?"
    end
    should "Test payment intents apply customer balance post" do
      Stripe::PaymentIntent.apply_customer_balance("pi_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_xxxxxxxxxxxxx/apply_customer_balance?"
    end
    should "Test payment intents cancel post" do
      Stripe::PaymentIntent.cancel("pi_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_xxxxxxxxxxxxx/cancel?"
    end
    should "Test payment intents capture post" do
      Stripe::PaymentIntent.capture("pi_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_xxxxxxxxxxxxx/capture?"
    end
    should "Test payment intents confirm post" do
      Stripe::PaymentIntent.confirm("pi_xxxxxxxxxxxxx", { payment_method: "pm_card_visa" })
      assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_xxxxxxxxxxxxx/confirm"
    end
    should "Test payment intents get" do
      Stripe::PaymentIntent.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/payment_intents?limit=3"
    end
    should "Test payment intents get 2" do
      Stripe::PaymentIntent.retrieve("pi_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/payment_intents/pi_xxxxxxxxxxxxx?"
    end
    should "Test payment intents increment authorization post" do
      Stripe::PaymentIntent.increment_authorization("pi_xxxxxxxxxxxxx", { amount: 2099 })
      assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_xxxxxxxxxxxxx/increment_authorization"
    end
    should "Test payment intents post" do
      Stripe::PaymentIntent.create({
        amount: 1099,
        currency: "eur",
        automatic_payment_methods: { enabled: true },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/payment_intents"
    end
    should "Test payment intents post 2" do
      Stripe::PaymentIntent.create({
        amount: 2000,
        currency: "usd",
        automatic_payment_methods: { enabled: true },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/payment_intents"
    end
    should "Test payment intents post 3" do
      Stripe::PaymentIntent.update("pi_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_xxxxxxxxxxxxx"
    end
    should "Test payment intents post 4" do
      Stripe::PaymentIntent.create({
        amount: 200,
        currency: "usd",
        payment_method_data: {
          type: "p24",
          p24: { bank: "blik" },
        },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/payment_intents"
    end
    should "Test payment intents search get" do
      Stripe::PaymentIntent.search({
        query: "status:'succeeded' AND metadata['order_id']:'6735'",
      })
      assert_requested :get, "#{Stripe.api_base}/v1/payment_intents/search?query=status:'succeeded' AND metadata['order_id']:'6735'"
    end
    should "Test payment intents verify microdeposits post" do
      Stripe::PaymentIntent.verify_microdeposits("pi_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_xxxxxxxxxxxxx/verify_microdeposits?"
    end
    should "Test payment intents verify microdeposits post 2" do
      Stripe::PaymentIntent.verify_microdeposits("pi_xxxxxxxxxxxxx", { amounts: [32, 45] })
      assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_xxxxxxxxxxxxx/verify_microdeposits"
    end
    should "Test payment links get" do
      Stripe::PaymentLink.retrieve("pl_xyz")
      assert_requested :get, "#{Stripe.api_base}/v1/payment_links/pl_xyz?"
    end
    should "Test payment links get 2" do
      Stripe::PaymentLink.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/payment_links?limit=3"
    end
    should "Test payment links get 3" do
      Stripe::PaymentLink.retrieve("plink_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/payment_links/plink_xxxxxxxxxxxxx?"
    end
    should "Test payment links line items get" do
      Stripe::PaymentLink.list_line_items("pl_xyz")
      assert_requested :get, "#{Stripe.api_base}/v1/payment_links/pl_xyz/line_items?"
    end
    should "Test payment links post" do
      Stripe::PaymentLink.create({
        line_items: [
          {
            price: "price_xxxxxxxxxxxxx",
            quantity: 1,
          },
        ],
      })
      assert_requested :post, "#{Stripe.api_base}/v1/payment_links"
    end
    should "Test payment links post 2" do
      Stripe::PaymentLink.create({
        line_items: [
          {
            price: "price_xxxxxxxxxxxxx",
            quantity: 1,
          },
        ],
      })
      assert_requested :post, "#{Stripe.api_base}/v1/payment_links"
    end
    should "Test payment links post 3" do
      Stripe::PaymentLink.update("plink_xxxxxxxxxxxxx", { active: false })
      assert_requested :post, "#{Stripe.api_base}/v1/payment_links/plink_xxxxxxxxxxxxx"
    end
    should "Test payment method configurations get" do
      Stripe::PaymentMethodConfiguration.list({ application: "foo" })
      assert_requested :get, "#{Stripe.api_base}/v1/payment_method_configurations?application=foo"
    end
    should "Test payment method configurations get 2" do
      Stripe::PaymentMethodConfiguration.retrieve("foo")
      assert_requested :get, "#{Stripe.api_base}/v1/payment_method_configurations/foo?"
    end
    should "Test payment method configurations post" do
      Stripe::PaymentMethodConfiguration.create({
        acss_debit: { display_preference: { preference: "none" } },
        affirm: { display_preference: { preference: "none" } },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/payment_method_configurations"
    end
    should "Test payment method configurations post 2" do
      Stripe::PaymentMethodConfiguration.update(
        "foo",
        { acss_debit: { display_preference: { preference: "on" } } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/payment_method_configurations/foo"
    end
    should "Test payment methods attach post" do
      Stripe::PaymentMethod.attach("pm_xxxxxxxxxxxxx", { customer: "cus_xxxxxxxxxxxxx" })
      assert_requested :post, "#{Stripe.api_base}/v1/payment_methods/pm_xxxxxxxxxxxxx/attach"
    end
    should "Test payment methods detach post" do
      Stripe::PaymentMethod.detach("pm_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/payment_methods/pm_xxxxxxxxxxxxx/detach?"
    end
    should "Test payment methods get" do
      Stripe::PaymentMethod.list({
        customer: "cus_xxxxxxxxxxxxx",
        type: "card",
      })
      assert_requested :get, "#{Stripe.api_base}/v1/payment_methods?customer=cus_xxxxxxxxxxxxx&type=card"
    end
    should "Test payment methods get 2" do
      Stripe::PaymentMethod.retrieve("pm_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/payment_methods/pm_xxxxxxxxxxxxx?"
    end
    should "Test payment methods post" do
      Stripe::PaymentMethod.create({
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
    should "Test payment methods post 2" do
      Stripe::PaymentMethod.update("pm_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/payment_methods/pm_xxxxxxxxxxxxx"
    end
    should "Test payouts cancel post" do
      Stripe::Payout.cancel("po_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/payouts/po_xxxxxxxxxxxxx/cancel?"
    end
    should "Test payouts get" do
      Stripe::Payout.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/payouts?limit=3"
    end
    should "Test payouts get 2" do
      Stripe::Payout.retrieve("po_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/payouts/po_xxxxxxxxxxxxx?"
    end
    should "Test payouts post" do
      Stripe::Payout.create({
        amount: 1100,
        currency: "usd",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/payouts"
    end
    should "Test payouts post 2" do
      Stripe::Payout.update("po_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/payouts/po_xxxxxxxxxxxxx"
    end
    should "Test payouts reverse post" do
      Stripe::Payout.reverse("po_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/payouts/po_xxxxxxxxxxxxx/reverse?"
    end
    should "Test plans delete" do
      Stripe::Plan.delete("price_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/plans/price_xxxxxxxxxxxxx?"
    end
    should "Test plans get" do
      Stripe::Plan.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/plans?limit=3"
    end
    should "Test plans get 2" do
      Stripe::Plan.retrieve("price_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/plans/price_xxxxxxxxxxxxx?"
    end
    should "Test plans post" do
      Stripe::Plan.create({
        amount: 2000,
        currency: "usd",
        interval: "month",
        product: "prod_xxxxxxxxxxxxx",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/plans"
    end
    should "Test plans post 2" do
      Stripe::Plan.create({
        amount: 2000,
        currency: "usd",
        interval: "month",
        product: { name: "My product" },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/plans"
    end
    should "Test plans post 3" do
      Stripe::Plan.update("price_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/plans/price_xxxxxxxxxxxxx"
    end
    should "Test prices get" do
      Stripe::Price.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/prices?limit=3"
    end
    should "Test prices get 2" do
      Stripe::Price.retrieve("price_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/prices/price_xxxxxxxxxxxxx?"
    end
    should "Test prices post" do
      Stripe::Price.create({
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
    should "Test prices post 2" do
      Stripe::Price.create({
        unit_amount: 2000,
        currency: "usd",
        recurring: { interval: "month" },
        product: "prod_xxxxxxxxxxxxx",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/prices"
    end
    should "Test prices post 3" do
      Stripe::Price.update("price_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/prices/price_xxxxxxxxxxxxx"
    end
    should "Test prices search get" do
      Stripe::Price.search({ query: "active:'true' AND metadata['order_id']:'6735'" })
      assert_requested :get, "#{Stripe.api_base}/v1/prices/search?query=active:'true' AND metadata['order_id']:'6735'"
    end
    should "Test products delete" do
      Stripe::Product.delete("prod_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/products/prod_xxxxxxxxxxxxx?"
    end
    should "Test products get" do
      Stripe::Product.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/products?limit=3"
    end
    should "Test products get 2" do
      Stripe::Product.retrieve("prod_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/products/prod_xxxxxxxxxxxxx?"
    end
    should "Test products post" do
      Stripe::Product.create({ name: "Gold Special" })
      assert_requested :post, "#{Stripe.api_base}/v1/products"
    end
    should "Test products post 2" do
      Stripe::Product.update("prod_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/products/prod_xxxxxxxxxxxxx"
    end
    should "Test products search get" do
      Stripe::Product.search({ query: "active:'true' AND metadata['order_id']:'6735'" })
      assert_requested :get, "#{Stripe.api_base}/v1/products/search?query=active:'true' AND metadata['order_id']:'6735'"
    end
    should "Test promotion codes get" do
      Stripe::PromotionCode.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/promotion_codes?limit=3"
    end
    should "Test promotion codes get 2" do
      Stripe::PromotionCode.retrieve("promo_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/promotion_codes/promo_xxxxxxxxxxxxx?"
    end
    should "Test promotion codes post" do
      Stripe::PromotionCode.create({ coupon: "Z4OV52SU" })
      assert_requested :post, "#{Stripe.api_base}/v1/promotion_codes"
    end
    should "Test promotion codes post 2" do
      Stripe::PromotionCode.update("promo_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/promotion_codes/promo_xxxxxxxxxxxxx"
    end
    should "Test quotes accept post" do
      Stripe::Quote.accept("qt_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/quotes/qt_xxxxxxxxxxxxx/accept?"
    end
    should "Test quotes cancel post" do
      Stripe::Quote.cancel("qt_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/quotes/qt_xxxxxxxxxxxxx/cancel?"
    end
    should "Test quotes finalize post" do
      Stripe::Quote.finalize_quote("qt_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/quotes/qt_xxxxxxxxxxxxx/finalize?"
    end
    should "Test quotes get" do
      Stripe::Quote.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/quotes?limit=3"
    end
    should "Test quotes get 2" do
      Stripe::Quote.retrieve("qt_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/quotes/qt_xxxxxxxxxxxxx?"
    end
    should "Test quotes line items get" do
      Stripe::Quote.list_line_items("qt_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/quotes/qt_xxxxxxxxxxxxx/line_items?"
    end
    should "Test quotes pdf get" do
      block_handler = {}
      Stripe::Quote.pdf("qt_xxxxxxxxxxxxx", &block_handler)
      assert_requested :get, "#{Stripe.api_base}/v1/quotes/qt_xxxxxxxxxxxxx/pdf?"
    end
    should "Test quotes post" do
      Stripe::Quote.create({
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
    should "Test quotes post 2" do
      Stripe::Quote.update("qt_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/quotes/qt_xxxxxxxxxxxxx"
    end
    should "Test radar early fraud warnings get" do
      Stripe::Radar::EarlyFraudWarning.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/radar/early_fraud_warnings?limit=3"
    end
    should "Test radar early fraud warnings get 2" do
      Stripe::Radar::EarlyFraudWarning.retrieve("issfr_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/radar/early_fraud_warnings/issfr_xxxxxxxxxxxxx?"
    end
    should "Test radar value list items delete" do
      Stripe::Radar::ValueListItem.delete("rsli_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/radar/value_list_items/rsli_xxxxxxxxxxxxx?"
    end
    should "Test radar value list items get" do
      Stripe::Radar::ValueListItem.list({
        limit: 3,
        value_list: "rsl_xxxxxxxxxxxxx",
      })
      assert_requested :get, "#{Stripe.api_base}/v1/radar/value_list_items?limit=3&value_list=rsl_xxxxxxxxxxxxx"
    end
    should "Test radar value list items get 2" do
      Stripe::Radar::ValueListItem.retrieve("rsli_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/radar/value_list_items/rsli_xxxxxxxxxxxxx?"
    end
    should "Test radar value list items post" do
      Stripe::Radar::ValueListItem.create({
        value_list: "rsl_xxxxxxxxxxxxx",
        value: "1.2.3.4",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/radar/value_list_items"
    end
    should "Test radar value lists delete" do
      Stripe::Radar::ValueList.delete("rsl_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/radar/value_lists/rsl_xxxxxxxxxxxxx?"
    end
    should "Test radar value lists get" do
      Stripe::Radar::ValueList.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/radar/value_lists?limit=3"
    end
    should "Test radar value lists get 2" do
      Stripe::Radar::ValueList.retrieve("rsl_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/radar/value_lists/rsl_xxxxxxxxxxxxx?"
    end
    should "Test radar value lists post" do
      Stripe::Radar::ValueList.create({
        alias: "custom_ip_xxxxxxxxxxxxx",
        name: "Custom IP Blocklist",
        item_type: "ip_address",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/radar/value_lists"
    end
    should "Test radar value lists post 2" do
      Stripe::Radar::ValueList.update("rsl_xxxxxxxxxxxxx", { name: "Updated IP Block List" })
      assert_requested :post, "#{Stripe.api_base}/v1/radar/value_lists/rsl_xxxxxxxxxxxxx"
    end
    should "Test refunds cancel post" do
      Stripe::Refund.cancel("re_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/refunds/re_xxxxxxxxxxxxx/cancel?"
    end
    should "Test refunds get" do
      Stripe::Refund.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/refunds?limit=3"
    end
    should "Test refunds get 2" do
      Stripe::Refund.retrieve("re_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/refunds/re_xxxxxxxxxxxxx?"
    end
    should "Test refunds post" do
      Stripe::Refund.create({ charge: "ch_xxxxxxxxxxxxx" })
      assert_requested :post, "#{Stripe.api_base}/v1/refunds"
    end
    should "Test refunds post 2" do
      Stripe::Refund.update("re_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/refunds/re_xxxxxxxxxxxxx"
    end
    should "Test reporting report runs get" do
      Stripe::Reporting::ReportRun.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/reporting/report_runs?limit=3"
    end
    should "Test reporting report runs get 2" do
      Stripe::Reporting::ReportRun.retrieve("frr_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/reporting/report_runs/frr_xxxxxxxxxxxxx?"
    end
    should "Test reporting report runs post" do
      Stripe::Reporting::ReportRun.create({
        report_type: "balance.summary.1",
        parameters: {
          interval_start: 1_522_540_800,
          interval_end: 1_525_132_800,
        },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/reporting/report_runs"
    end
    should "Test reporting report types get" do
      Stripe::Reporting::ReportType.list
      assert_requested :get, "#{Stripe.api_base}/v1/reporting/report_types?"
    end
    should "Test reporting report types get 2" do
      Stripe::Reporting::ReportType.retrieve("balance.summary.1")
      assert_requested :get, "#{Stripe.api_base}/v1/reporting/report_types/balance.summary.1?"
    end
    should "Test reviews approve post" do
      Stripe::Review.approve("prv_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/reviews/prv_xxxxxxxxxxxxx/approve?"
    end
    should "Test reviews get" do
      Stripe::Review.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/reviews?limit=3"
    end
    should "Test reviews get 2" do
      Stripe::Review.retrieve("prv_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/reviews/prv_xxxxxxxxxxxxx?"
    end
    should "Test setup attempts get" do
      Stripe::SetupAttempt.list({
        limit: 3,
        setup_intent: "si_xyz",
      })
      assert_requested :get, "#{Stripe.api_base}/v1/setup_attempts?limit=3&setup_intent=si_xyz"
    end
    should "Test setup intents cancel post" do
      Stripe::SetupIntent.cancel("seti_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/setup_intents/seti_xxxxxxxxxxxxx/cancel?"
    end
    should "Test setup intents confirm post" do
      Stripe::SetupIntent.confirm("seti_xxxxxxxxxxxxx", { payment_method: "pm_card_visa" })
      assert_requested :post, "#{Stripe.api_base}/v1/setup_intents/seti_xxxxxxxxxxxxx/confirm"
    end
    should "Test setup intents get" do
      Stripe::SetupIntent.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/setup_intents?limit=3"
    end
    should "Test setup intents get 2" do
      Stripe::SetupIntent.retrieve("seti_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/setup_intents/seti_xxxxxxxxxxxxx?"
    end
    should "Test setup intents post" do
      Stripe::SetupIntent.create({ payment_method_types: ["card"] })
      assert_requested :post, "#{Stripe.api_base}/v1/setup_intents"
    end
    should "Test setup intents post 2" do
      Stripe::SetupIntent.update("seti_xxxxxxxxxxxxx", { metadata: { user_id: "3435453" } })
      assert_requested :post, "#{Stripe.api_base}/v1/setup_intents/seti_xxxxxxxxxxxxx"
    end
    should "Test setup intents verify microdeposits post" do
      Stripe::SetupIntent.verify_microdeposits("seti_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/setup_intents/seti_xxxxxxxxxxxxx/verify_microdeposits?"
    end
    should "Test setup intents verify microdeposits post 2" do
      Stripe::SetupIntent.verify_microdeposits("seti_xxxxxxxxxxxxx", { amounts: [32, 45] })
      assert_requested :post, "#{Stripe.api_base}/v1/setup_intents/seti_xxxxxxxxxxxxx/verify_microdeposits"
    end
    should "Test shipping rates get" do
      Stripe::ShippingRate.list
      assert_requested :get, "#{Stripe.api_base}/v1/shipping_rates?"
    end
    should "Test shipping rates get 2" do
      Stripe::ShippingRate.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/shipping_rates?limit=3"
    end
    should "Test shipping rates get 3" do
      Stripe::ShippingRate.retrieve("shr_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/shipping_rates/shr_xxxxxxxxxxxxx?"
    end
    should "Test shipping rates post" do
      Stripe::ShippingRate.create({
        display_name: "Sample Shipper",
        fixed_amount: {
          currency: "usd",
          amount: 400,
        },
        type: "fixed_amount",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/shipping_rates"
    end
    should "Test shipping rates post 2" do
      Stripe::ShippingRate.create({
        display_name: "Ground shipping",
        type: "fixed_amount",
        fixed_amount: {
          amount: 500,
          currency: "usd",
        },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/shipping_rates"
    end
    should "Test shipping rates post 3" do
      Stripe::ShippingRate.update("shr_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/shipping_rates/shr_xxxxxxxxxxxxx"
    end
    should "Test sigma scheduled query runs get" do
      Stripe::Sigma::ScheduledQueryRun.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/sigma/scheduled_query_runs?limit=3"
    end
    should "Test sigma scheduled query runs get 2" do
      Stripe::Sigma::ScheduledQueryRun.retrieve("sqr_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/sigma/scheduled_query_runs/sqr_xxxxxxxxxxxxx?"
    end
    should "Test sources get" do
      Stripe::Source.retrieve("src_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/sources/src_xxxxxxxxxxxxx?"
    end
    should "Test sources get 2" do
      Stripe::Source.retrieve("src_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/sources/src_xxxxxxxxxxxxx?"
    end
    should "Test sources post" do
      Stripe::Source.update("src_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/sources/src_xxxxxxxxxxxxx"
    end
    should "Test subscription items delete" do
      Stripe::SubscriptionItem.delete("si_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/subscription_items/si_xxxxxxxxxxxxx?"
    end
    should "Test subscription items get" do
      Stripe::SubscriptionItem.list({ subscription: "sub_xxxxxxxxxxxxx" })
      assert_requested :get, "#{Stripe.api_base}/v1/subscription_items?subscription=sub_xxxxxxxxxxxxx"
    end
    should "Test subscription items get 2" do
      Stripe::SubscriptionItem.retrieve("si_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/subscription_items/si_xxxxxxxxxxxxx?"
    end
    should "Test subscription items post" do
      Stripe::SubscriptionItem.create({
        subscription: "sub_xxxxxxxxxxxxx",
        price: "price_xxxxxxxxxxxxx",
        quantity: 2,
      })
      assert_requested :post, "#{Stripe.api_base}/v1/subscription_items"
    end
    should "Test subscription items post 2" do
      Stripe::SubscriptionItem.update("si_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/subscription_items/si_xxxxxxxxxxxxx"
    end
    should "Test subscription schedules cancel post" do
      Stripe::SubscriptionSchedule.cancel("sub_sched_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/subscription_schedules/sub_sched_xxxxxxxxxxxxx/cancel?"
    end
    should "Test subscription schedules get" do
      Stripe::SubscriptionSchedule.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/subscription_schedules?limit=3"
    end
    should "Test subscription schedules get 2" do
      Stripe::SubscriptionSchedule.retrieve("sub_sched_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/subscription_schedules/sub_sched_xxxxxxxxxxxxx?"
    end
    should "Test subscription schedules post" do
      Stripe::SubscriptionSchedule.create({
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
            iterations: 12,
          },
        ],
      })
      assert_requested :post, "#{Stripe.api_base}/v1/subscription_schedules"
    end
    should "Test subscription schedules post 2" do
      Stripe::SubscriptionSchedule.update("sub_sched_xxxxxxxxxxxxx", { end_behavior: "release" })
      assert_requested :post, "#{Stripe.api_base}/v1/subscription_schedules/sub_sched_xxxxxxxxxxxxx"
    end
    should "Test subscription schedules release post" do
      Stripe::SubscriptionSchedule.release("sub_sched_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/subscription_schedules/sub_sched_xxxxxxxxxxxxx/release?"
    end
    should "Test subscriptions discount delete" do
      Stripe::Subscription.delete_discount("sub_xyz")
      assert_requested :delete, "#{Stripe.api_base}/v1/subscriptions/sub_xyz/discount?"
    end
    should "Test subscriptions get" do
      Stripe::Subscription.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/subscriptions?limit=3"
    end
    should "Test subscriptions get 2" do
      Stripe::Subscription.retrieve("sub_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/subscriptions/sub_xxxxxxxxxxxxx?"
    end
    should "Test subscriptions post" do
      Stripe::Subscription.create({
        customer: "cus_xxxxxxxxxxxxx",
        items: [{ price: "price_xxxxxxxxxxxxx" }],
      })
      assert_requested :post, "#{Stripe.api_base}/v1/subscriptions"
    end
    should "Test subscriptions post 2" do
      Stripe::Subscription.update("sub_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/subscriptions/sub_xxxxxxxxxxxxx"
    end
    should "Test subscriptions search get" do
      Stripe::Subscription.search({ query: "status:'active' AND metadata['order_id']:'6735'" })
      assert_requested :get, "#{Stripe.api_base}/v1/subscriptions/search?query=status:'active' AND metadata['order_id']:'6735'"
    end
    should "Test tax calculations line items get" do
      Stripe::Tax::Calculation.list_line_items("xxx")
      assert_requested :get, "#{Stripe.api_base}/v1/tax/calculations/xxx/line_items?"
    end
    should "Test tax calculations post" do
      Stripe::Tax::Calculation.create({
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
    should "Test tax codes get" do
      Stripe::TaxCode.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/tax_codes?limit=3"
    end
    should "Test tax codes get 2" do
      Stripe::TaxCode.retrieve("txcd_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/tax_codes/txcd_xxxxxxxxxxxxx?"
    end
    should "Test tax ids delete" do
      Stripe::TaxId.delete("taxid_123")
      assert_requested :delete, "#{Stripe.api_base}/v1/tax_ids/taxid_123?"
    end
    should "Test tax ids get" do
      Stripe::TaxId.list
      assert_requested :get, "#{Stripe.api_base}/v1/tax_ids?"
    end
    should "Test tax ids get 2" do
      Stripe::TaxId.retrieve("taxid_123")
      assert_requested :get, "#{Stripe.api_base}/v1/tax_ids/taxid_123?"
    end
    should "Test tax ids post" do
      Stripe::TaxId.create({
        type: "eu_vat",
        value: "123",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/tax_ids"
    end
    should "Test tax rates get" do
      Stripe::TaxRate.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/tax_rates?limit=3"
    end
    should "Test tax rates get 2" do
      Stripe::TaxRate.retrieve("txr_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/tax_rates/txr_xxxxxxxxxxxxx?"
    end
    should "Test tax rates post" do
      Stripe::TaxRate.create({
        display_name: "VAT",
        description: "VAT Germany",
        jurisdiction: "DE",
        percentage: 16,
        inclusive: false,
      })
      assert_requested :post, "#{Stripe.api_base}/v1/tax_rates"
    end
    should "Test tax rates post 2" do
      Stripe::TaxRate.update("txr_xxxxxxxxxxxxx", { active: false })
      assert_requested :post, "#{Stripe.api_base}/v1/tax_rates/txr_xxxxxxxxxxxxx"
    end
    should "Test tax registrations get" do
      Stripe::Tax::Registration.list({ status: "all" })
      assert_requested :get, "#{Stripe.api_base}/v1/tax/registrations?status=all"
    end
    should "Test tax registrations post" do
      Stripe::Tax::Registration.create({
        country: "IE",
        country_options: { ie: { type: "oss_union" } },
        active_from: "now",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/tax/registrations"
    end
    should "Test tax registrations post 2" do
      Stripe::Tax::Registration.update("taxreg_xxxxxxxxxxxxx", { expires_at: "now" })
      assert_requested :post, "#{Stripe.api_base}/v1/tax/registrations/taxreg_xxxxxxxxxxxxx"
    end
    should "Test tax settings get" do
      Stripe::Tax::Settings.retrieve
      assert_requested :get, "#{Stripe.api_base}/v1/tax/settings?"
    end
    should "Test tax settings post" do
      Stripe::Tax::Settings.update({ defaults: { tax_code: "txcd_10000000" } })
      assert_requested :post, "#{Stripe.api_base}/v1/tax/settings"
    end
    should "Test tax transactions create from calculation post" do
      Stripe::Tax::Transaction.create_from_calculation({
        calculation: "xxx",
        reference: "yyy",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/tax/transactions/create_from_calculation"
    end
    should "Test terminal configurations delete" do
      Stripe::Terminal::Configuration.delete("uc_123")
      assert_requested :delete, "#{Stripe.api_base}/v1/terminal/configurations/uc_123?"
    end
    should "Test terminal configurations delete 2" do
      Stripe::Terminal::Configuration.delete("tmc_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/terminal/configurations/tmc_xxxxxxxxxxxxx?"
    end
    should "Test terminal configurations get" do
      Stripe::Terminal::Configuration.list
      assert_requested :get, "#{Stripe.api_base}/v1/terminal/configurations?"
    end
    should "Test terminal configurations get 2" do
      Stripe::Terminal::Configuration.retrieve("uc_123")
      assert_requested :get, "#{Stripe.api_base}/v1/terminal/configurations/uc_123?"
    end
    should "Test terminal configurations get 3" do
      Stripe::Terminal::Configuration.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/terminal/configurations?limit=3"
    end
    should "Test terminal configurations get 4" do
      Stripe::Terminal::Configuration.retrieve("tmc_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/terminal/configurations/tmc_xxxxxxxxxxxxx?"
    end
    should "Test terminal configurations post" do
      Stripe::Terminal::Configuration.create
      assert_requested :post, "#{Stripe.api_base}/v1/terminal/configurations?"
    end
    should "Test terminal configurations post 2" do
      Stripe::Terminal::Configuration.update("uc_123", { tipping: { usd: { fixed_amounts: [10] } } })
      assert_requested :post, "#{Stripe.api_base}/v1/terminal/configurations/uc_123"
    end
    should "Test terminal configurations post 3" do
      Stripe::Terminal::Configuration.create({
        bbpos_wisepos_e: { splashscreen: "file_xxxxxxxxxxxxx" },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/terminal/configurations"
    end
    should "Test terminal configurations post 4" do
      Stripe::Terminal::Configuration.update(
        "tmc_xxxxxxxxxxxxx",
        { bbpos_wisepos_e: { splashscreen: "file_xxxxxxxxxxxxx" } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/terminal/configurations/tmc_xxxxxxxxxxxxx"
    end
    should "Test terminal connection tokens post" do
      Stripe::Terminal::ConnectionToken.create
      assert_requested :post, "#{Stripe.api_base}/v1/terminal/connection_tokens?"
    end
    should "Test terminal locations delete" do
      Stripe::Terminal::Location.delete("tml_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/terminal/locations/tml_xxxxxxxxxxxxx?"
    end
    should "Test terminal locations get" do
      Stripe::Terminal::Location.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/terminal/locations?limit=3"
    end
    should "Test terminal locations get 2" do
      Stripe::Terminal::Location.retrieve("tml_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/terminal/locations/tml_xxxxxxxxxxxxx?"
    end
    should "Test terminal locations post" do
      Stripe::Terminal::Location.create({
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
    should "Test terminal locations post 2" do
      Stripe::Terminal::Location.update("tml_xxxxxxxxxxxxx", { display_name: "My First Store" })
      assert_requested :post, "#{Stripe.api_base}/v1/terminal/locations/tml_xxxxxxxxxxxxx"
    end
    should "Test terminal readers cancel action post" do
      Stripe::Terminal::Reader.cancel_action("tmr_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/terminal/readers/tmr_xxxxxxxxxxxxx/cancel_action?"
    end
    should "Test terminal readers delete" do
      Stripe::Terminal::Reader.delete("tmr_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/terminal/readers/tmr_xxxxxxxxxxxxx?"
    end
    should "Test terminal readers get" do
      Stripe::Terminal::Reader.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/terminal/readers?limit=3"
    end
    should "Test terminal readers get 2" do
      Stripe::Terminal::Reader.retrieve("tmr_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/terminal/readers/tmr_xxxxxxxxxxxxx?"
    end
    should "Test terminal readers post" do
      Stripe::Terminal::Reader.create({
        registration_code: "puppies-plug-could",
        label: "Blue Rabbit",
        location: "tml_1234",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/terminal/readers"
    end
    should "Test terminal readers post 2" do
      Stripe::Terminal::Reader.update("tmr_xxxxxxxxxxxxx", { label: "Blue Rabbit" })
      assert_requested :post, "#{Stripe.api_base}/v1/terminal/readers/tmr_xxxxxxxxxxxxx"
    end
    should "Test terminal readers process payment intent post" do
      Stripe::Terminal::Reader.process_payment_intent(
        "tmr_xxxxxxxxxxxxx",
        { payment_intent: "pi_xxxxxxxxxxxxx" }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/terminal/readers/tmr_xxxxxxxxxxxxx/process_payment_intent"
    end
    should "Test terminal readers process setup intent post" do
      Stripe::Terminal::Reader.process_setup_intent(
        "tmr_xxxxxxxxxxxxx",
        {
          setup_intent: "seti_xxxxxxxxxxxxx",
          customer_consent_collected: true,
        }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/terminal/readers/tmr_xxxxxxxxxxxxx/process_setup_intent"
    end
    should "Test test helpers customers fund cash balance post" do
      Stripe::Customer::TestHelpers.fund_cash_balance(
        "cus_123",
        {
          amount: 30,
          currency: "eur",
        }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/customers/cus_123/fund_cash_balance"
    end
    should "Test test helpers issuing authorizations capture post" do
      Stripe::Issuing::Authorization::TestHelpers.capture(
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
              volume_decimal: "10",
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
    should "Test test helpers issuing authorizations expire post" do
      Stripe::Issuing::Authorization::TestHelpers.expire("example_authorization")
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/issuing/authorizations/example_authorization/expire?"
    end
    should "Test test helpers issuing authorizations increment post" do
      Stripe::Issuing::Authorization::TestHelpers.increment(
        "example_authorization",
        {
          increment_amount: 50,
          is_amount_controllable: true,
        }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/issuing/authorizations/example_authorization/increment"
    end
    should "Test test helpers issuing authorizations post" do
      Stripe::Issuing::Authorization::TestHelpers.create({
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
    should "Test test helpers issuing authorizations reverse post" do
      Stripe::Issuing::Authorization::TestHelpers.reverse(
        "example_authorization",
        { reverse_amount: 20 }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/issuing/authorizations/example_authorization/reverse"
    end
    should "Test test helpers issuing cards shipping deliver post" do
      Stripe::Issuing::Card::TestHelpers.deliver_card("card_123")
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/issuing/cards/card_123/shipping/deliver?"
    end
    should "Test test helpers issuing cards shipping fail post" do
      Stripe::Issuing::Card::TestHelpers.fail_card("card_123")
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/issuing/cards/card_123/shipping/fail?"
    end
    should "Test test helpers issuing cards shipping return post" do
      Stripe::Issuing::Card::TestHelpers.return_card("card_123")
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/issuing/cards/card_123/shipping/return?"
    end
    should "Test test helpers issuing cards shipping ship post" do
      Stripe::Issuing::Card::TestHelpers.ship_card("card_123")
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/issuing/cards/card_123/shipping/ship?"
    end
    should "Test test helpers issuing transactions create force capture post" do
      Stripe::Issuing::Transaction::TestHelpers.create_force_capture({
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
            volume_decimal: "10",
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
    should "Test test helpers issuing transactions create unlinked refund post" do
      Stripe::Issuing::Transaction::TestHelpers.create_unlinked_refund({
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
            volume_decimal: "10",
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
    should "Test test helpers issuing transactions refund post" do
      Stripe::Issuing::Transaction::TestHelpers.refund("example_transaction", { refund_amount: 50 })
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/issuing/transactions/example_transaction/refund"
    end
    should "Test test helpers refunds expire post" do
      Stripe::Refund::TestHelpers.expire("re_123")
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/refunds/re_123/expire?"
    end
    should "Test test helpers test clocks advance post" do
      Stripe::TestHelpers::TestClock.advance("clock_xyz", { frozen_time: 142 })
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/test_clocks/clock_xyz/advance"
    end
    should "Test test helpers test clocks advance post 2" do
      Stripe::TestHelpers::TestClock.advance("clock_xxxxxxxxxxxxx", { frozen_time: 1_675_552_261 })
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/test_clocks/clock_xxxxxxxxxxxxx/advance"
    end
    should "Test test helpers test clocks delete" do
      Stripe::TestHelpers::TestClock.delete("clock_xyz")
      assert_requested :delete, "#{Stripe.api_base}/v1/test_helpers/test_clocks/clock_xyz?"
    end
    should "Test test helpers test clocks delete 2" do
      Stripe::TestHelpers::TestClock.delete("clock_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/test_helpers/test_clocks/clock_xxxxxxxxxxxxx?"
    end
    should "Test test helpers test clocks get" do
      Stripe::TestHelpers::TestClock.list
      assert_requested :get, "#{Stripe.api_base}/v1/test_helpers/test_clocks?"
    end
    should "Test test helpers test clocks get 2" do
      Stripe::TestHelpers::TestClock.retrieve("clock_xyz")
      assert_requested :get, "#{Stripe.api_base}/v1/test_helpers/test_clocks/clock_xyz?"
    end
    should "Test test helpers test clocks get 3" do
      Stripe::TestHelpers::TestClock.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/test_helpers/test_clocks?limit=3"
    end
    should "Test test helpers test clocks get 4" do
      Stripe::TestHelpers::TestClock.retrieve("clock_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/test_helpers/test_clocks/clock_xxxxxxxxxxxxx?"
    end
    should "Test test helpers test clocks post" do
      Stripe::TestHelpers::TestClock.create({
        frozen_time: 123,
        name: "cogsworth",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/test_clocks"
    end
    should "Test test helpers test clocks post 2" do
      Stripe::TestHelpers::TestClock.create({ frozen_time: 1_577_836_800 })
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/test_clocks"
    end
    should "Test test helpers treasury inbound transfers fail post" do
      Stripe::Treasury::InboundTransfer::TestHelpers.fail(
        "ibt_123",
        { failure_details: { code: "account_closed" } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/treasury/inbound_transfers/ibt_123/fail"
    end
    should "Test test helpers treasury inbound transfers return post" do
      Stripe::Treasury::InboundTransfer::TestHelpers.return_inbound_transfer("ibt_123")
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/treasury/inbound_transfers/ibt_123/return?"
    end
    should "Test test helpers treasury inbound transfers succeed post" do
      Stripe::Treasury::InboundTransfer::TestHelpers.succeed("ibt_123")
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/treasury/inbound_transfers/ibt_123/succeed?"
    end
    should "Test test helpers treasury outbound transfers fail post" do
      Stripe::Treasury::OutboundTransfer::TestHelpers.fail("obt_123")
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/treasury/outbound_transfers/obt_123/fail?"
    end
    should "Test test helpers treasury outbound transfers post post" do
      Stripe::Treasury::OutboundTransfer::TestHelpers.post("obt_123")
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/treasury/outbound_transfers/obt_123/post?"
    end
    should "Test test helpers treasury outbound transfers return post" do
      Stripe::Treasury::OutboundTransfer::TestHelpers.return_outbound_transfer(
        "obt_123",
        { returned_details: { code: "account_closed" } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/treasury/outbound_transfers/obt_123/return"
    end
    should "Test test helpers treasury received credits post" do
      Stripe::Treasury::ReceivedCredit::TestHelpers.create({
        financial_account: "fa_123",
        network: "ach",
        amount: 1234,
        currency: "usd",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/treasury/received_credits"
    end
    should "Test test helpers treasury received debits post" do
      Stripe::Treasury::ReceivedDebit::TestHelpers.create({
        financial_account: "fa_123",
        network: "ach",
        amount: 1234,
        currency: "usd",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/treasury/received_debits"
    end
    should "Test tokens get" do
      Stripe::Token.retrieve("tok_xxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/tokens/tok_xxxx?"
    end
    should "Test tokens post" do
      Stripe::Token.create({
        card: {
          number: "4242424242424242",
          exp_month: "5",
          exp_year: "2023",
          cvc: "314",
        },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/tokens"
    end
    should "Test tokens post 2" do
      Stripe::Token.create({
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
    should "Test tokens post 3" do
      Stripe::Token.create({ pii: { id_number: "000000000" } })
      assert_requested :post, "#{Stripe.api_base}/v1/tokens"
    end
    should "Test tokens post 4" do
      Stripe::Token.create({
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
    should "Test tokens post 5" do
      Stripe::Token.create({
        person: {
          first_name: "Jane",
          last_name: "Doe",
          relationship: { owner: true },
        },
      })
      assert_requested :post, "#{Stripe.api_base}/v1/tokens"
    end
    should "Test tokens post 6" do
      Stripe::Token.create({ cvc_update: { cvc: "123" } })
      assert_requested :post, "#{Stripe.api_base}/v1/tokens"
    end
    should "Test topups cancel post" do
      Stripe::Topup.cancel("tu_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/topups/tu_xxxxxxxxxxxxx/cancel?"
    end
    should "Test topups get" do
      Stripe::Topup.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/topups?limit=3"
    end
    should "Test topups get 2" do
      Stripe::Topup.retrieve("tu_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/topups/tu_xxxxxxxxxxxxx?"
    end
    should "Test topups post" do
      Stripe::Topup.create({
        amount: 2000,
        currency: "usd",
        description: "Top-up for Jenny Rosen",
        statement_descriptor: "Top-up",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/topups"
    end
    should "Test topups post 2" do
      Stripe::Topup.update("tu_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/topups/tu_xxxxxxxxxxxxx"
    end
    should "Test transfers get" do
      Stripe::Transfer.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/transfers?limit=3"
    end
    should "Test transfers get 2" do
      Stripe::Transfer.retrieve("tr_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/transfers/tr_xxxxxxxxxxxxx?"
    end
    should "Test transfers post" do
      Stripe::Transfer.create({
        amount: 400,
        currency: "usd",
        destination: "acct_xxxxxxxxxxxxx",
        transfer_group: "ORDER_95",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/transfers"
    end
    should "Test transfers post 2" do
      Stripe::Transfer.update("tr_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/transfers/tr_xxxxxxxxxxxxx"
    end
    should "Test transfers reversals get" do
      Stripe::Transfer.list_reversals("tr_xxxxxxxxxxxxx", { limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/transfers/tr_xxxxxxxxxxxxx/reversals?limit=3"
    end
    should "Test transfers reversals get 2" do
      Stripe::Transfer.retrieve_reversal("tr_xxxxxxxxxxxxx", "trr_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/transfers/tr_xxxxxxxxxxxxx/reversals/trr_xxxxxxxxxxxxx?"
    end
    should "Test transfers reversals post 2" do
      Stripe::Transfer.update_reversal(
        "tr_xxxxxxxxxxxxx",
        "trr_xxxxxxxxxxxxx",
        { metadata: { order_id: "6735" } }
      )
      assert_requested :post, "#{Stripe.api_base}/v1/transfers/tr_xxxxxxxxxxxxx/reversals/trr_xxxxxxxxxxxxx"
    end
    should "Test treasury credit reversals get" do
      Stripe::Treasury::CreditReversal.list({
        financial_account: "fa_xxxxxxxxxxxxx",
        limit: 3,
      })
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/credit_reversals?financial_account=fa_xxxxxxxxxxxxx&limit=3"
    end
    should "Test treasury credit reversals get 2" do
      Stripe::Treasury::CreditReversal.retrieve("credrev_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/credit_reversals/credrev_xxxxxxxxxxxxx?"
    end
    should "Test treasury credit reversals post" do
      Stripe::Treasury::CreditReversal.create({ received_credit: "rc_xxxxxxxxxxxxx" })
      assert_requested :post, "#{Stripe.api_base}/v1/treasury/credit_reversals"
    end
    should "Test treasury debit reversals get" do
      Stripe::Treasury::DebitReversal.list({
        financial_account: "fa_xxxxxxxxxxxxx",
        limit: 3,
      })
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/debit_reversals?financial_account=fa_xxxxxxxxxxxxx&limit=3"
    end
    should "Test treasury debit reversals get 2" do
      Stripe::Treasury::DebitReversal.retrieve("debrev_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/debit_reversals/debrev_xxxxxxxxxxxxx?"
    end
    should "Test treasury debit reversals post" do
      Stripe::Treasury::DebitReversal.create({ received_debit: "rd_xxxxxxxxxxxxx" })
      assert_requested :post, "#{Stripe.api_base}/v1/treasury/debit_reversals"
    end
    should "Test treasury financial accounts features get" do
      Stripe::Treasury::FinancialAccount.retrieve_features("fa_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/financial_accounts/fa_xxxxxxxxxxxxx/features?"
    end
    should "Test treasury financial accounts get" do
      Stripe::Treasury::FinancialAccount.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/financial_accounts?limit=3"
    end
    should "Test treasury financial accounts get 2" do
      Stripe::Treasury::FinancialAccount.retrieve("fa_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/financial_accounts/fa_xxxxxxxxxxxxx?"
    end
    should "Test treasury financial accounts post" do
      Stripe::Treasury::FinancialAccount.create({
        supported_currencies: ["usd"],
        features: {},
      })
      assert_requested :post, "#{Stripe.api_base}/v1/treasury/financial_accounts"
    end
    should "Test treasury financial accounts post 2" do
      Stripe::Treasury::FinancialAccount.update("fa_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
      assert_requested :post, "#{Stripe.api_base}/v1/treasury/financial_accounts/fa_xxxxxxxxxxxxx"
    end
    should "Test treasury inbound transfers cancel post" do
      Stripe::Treasury::InboundTransfer.cancel("ibt_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/treasury/inbound_transfers/ibt_xxxxxxxxxxxxx/cancel?"
    end
    should "Test treasury inbound transfers get" do
      Stripe::Treasury::InboundTransfer.list({
        financial_account: "fa_xxxxxxxxxxxxx",
        limit: 3,
      })
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/inbound_transfers?financial_account=fa_xxxxxxxxxxxxx&limit=3"
    end
    should "Test treasury inbound transfers get 2" do
      Stripe::Treasury::InboundTransfer.retrieve("ibt_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/inbound_transfers/ibt_xxxxxxxxxxxxx?"
    end
    should "Test treasury inbound transfers post" do
      Stripe::Treasury::InboundTransfer.create({
        financial_account: "fa_xxxxxxxxxxxxx",
        amount: 10_000,
        currency: "usd",
        origin_payment_method: "pm_xxxxxxxxxxxxx",
        description: "InboundTransfer from my bank account",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/treasury/inbound_transfers"
    end
    should "Test treasury outbound payments cancel post" do
      Stripe::Treasury::OutboundPayment.cancel("bot_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/treasury/outbound_payments/bot_xxxxxxxxxxxxx/cancel?"
    end
    should "Test treasury outbound payments get" do
      Stripe::Treasury::OutboundPayment.list({
        financial_account: "fa_xxxxxxxxxxxxx",
        limit: 3,
      })
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/outbound_payments?financial_account=fa_xxxxxxxxxxxxx&limit=3"
    end
    should "Test treasury outbound payments get 2" do
      Stripe::Treasury::OutboundPayment.retrieve("bot_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/outbound_payments/bot_xxxxxxxxxxxxx?"
    end
    should "Test treasury outbound payments post" do
      Stripe::Treasury::OutboundPayment.create({
        financial_account: "fa_xxxxxxxxxxxxx",
        amount: 10_000,
        currency: "usd",
        customer: "cus_xxxxxxxxxxxxx",
        destination_payment_method: "pm_xxxxxxxxxxxxx",
        description: "OutboundPayment to a 3rd party",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/treasury/outbound_payments"
    end
    should "Test treasury outbound transfers cancel post" do
      Stripe::Treasury::OutboundTransfer.cancel("obt_xxxxxxxxxxxxx")
      assert_requested :post, "#{Stripe.api_base}/v1/treasury/outbound_transfers/obt_xxxxxxxxxxxxx/cancel?"
    end
    should "Test treasury outbound transfers get" do
      Stripe::Treasury::OutboundTransfer.list({
        financial_account: "fa_xxxxxxxxxxxxx",
        limit: 3,
      })
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/outbound_transfers?financial_account=fa_xxxxxxxxxxxxx&limit=3"
    end
    should "Test treasury outbound transfers get 2" do
      Stripe::Treasury::OutboundTransfer.retrieve("obt_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/outbound_transfers/obt_xxxxxxxxxxxxx?"
    end
    should "Test treasury outbound transfers post" do
      Stripe::Treasury::OutboundTransfer.create({
        financial_account: "fa_xxxxxxxxxxxxx",
        destination_payment_method: "pm_xxxxxxxxxxxxx",
        amount: 500,
        currency: "usd",
        description: "OutboundTransfer to my external bank account",
      })
      assert_requested :post, "#{Stripe.api_base}/v1/treasury/outbound_transfers"
    end
    should "Test treasury received credits get" do
      Stripe::Treasury::ReceivedCredit.list({
        financial_account: "fa_xxxxxxxxxxxxx",
        limit: 3,
      })
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/received_credits?financial_account=fa_xxxxxxxxxxxxx&limit=3"
    end
    should "Test treasury received credits get 2" do
      Stripe::Treasury::ReceivedCredit.retrieve("rc_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/received_credits/rc_xxxxxxxxxxxxx?"
    end
    should "Test treasury received debits get" do
      Stripe::Treasury::ReceivedDebit.list({
        financial_account: "fa_xxxxxxxxxxxxx",
        limit: 3,
      })
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/received_debits?financial_account=fa_xxxxxxxxxxxxx&limit=3"
    end
    should "Test treasury received debits get 2" do
      Stripe::Treasury::ReceivedDebit.retrieve("rd_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/received_debits/rd_xxxxxxxxxxxxx?"
    end
    should "Test treasury transaction entries get" do
      Stripe::Treasury::TransactionEntry.list({
        financial_account: "fa_xxxxxxxxxxxxx",
        limit: 3,
      })
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/transaction_entries?financial_account=fa_xxxxxxxxxxxxx&limit=3"
    end
    should "Test treasury transaction entries get 2" do
      Stripe::Treasury::TransactionEntry.retrieve("trxne_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/transaction_entries/trxne_xxxxxxxxxxxxx?"
    end
    should "Test treasury transactions get" do
      Stripe::Treasury::Transaction.list({
        financial_account: "fa_xxxxxxxxxxxxx",
        limit: 3,
      })
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/transactions?financial_account=fa_xxxxxxxxxxxxx&limit=3"
    end
    should "Test treasury transactions get 2" do
      Stripe::Treasury::Transaction.retrieve("trxn_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/treasury/transactions/trxn_xxxxxxxxxxxxx?"
    end
    should "Test webhook endpoints delete" do
      Stripe::WebhookEndpoint.delete("we_xxxxxxxxxxxxx")
      assert_requested :delete, "#{Stripe.api_base}/v1/webhook_endpoints/we_xxxxxxxxxxxxx?"
    end
    should "Test webhook endpoints get" do
      Stripe::WebhookEndpoint.list({ limit: 3 })
      assert_requested :get, "#{Stripe.api_base}/v1/webhook_endpoints?limit=3"
    end
    should "Test webhook endpoints get 2" do
      Stripe::WebhookEndpoint.retrieve("we_xxxxxxxxxxxxx")
      assert_requested :get, "#{Stripe.api_base}/v1/webhook_endpoints/we_xxxxxxxxxxxxx?"
    end
    should "Test webhook endpoints post" do
      Stripe::WebhookEndpoint.create({
        url: "https://example.com/my/webhook/endpoint",
        enabled_events: ["charge.failed", "charge.succeeded"],
      })
      assert_requested :post, "#{Stripe.api_base}/v1/webhook_endpoints"
    end
    should "Test webhook endpoints post 2" do
      Stripe::WebhookEndpoint.update("we_xxxxxxxxxxxxx", { url: "https://example.com/new_endpoint" })
      assert_requested :post, "#{Stripe.api_base}/v1/webhook_endpoints/we_xxxxxxxxxxxxx"
    end
  end
end
