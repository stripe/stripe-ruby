# frozen_string_literal: true

# File generated from our OpenAPI spec
require ::File.expand_path("../test_helper", __dir__)
module Stripe
  class CodegennedExampleTest < Test::Unit::TestCase
    context "Account.create" do
      should "support requests with args: type, country, email, capabilities" do
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
    end
    context "Account.delete" do
      should "support requests with args: id" do
        Stripe::Account.delete("acct_xxxxxxxxxxxxx")
        assert_requested :delete, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx?"
      end
    end
    context "Account.list" do
      should "support requests with args: limit" do
        Stripe::Account.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/accounts?limit=3"
      end
    end
    context "Account.persons" do
      should "support requests with args: limit, parent_id" do
        Stripe::Account.persons("acct_xxxxxxxxxxxxx", { limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/persons?limit=3"
      end
    end
    context "Account.reject" do
      should "support requests with args: reason, id" do
        Stripe::Account.reject("acct_xxxxxxxxxxxxx", { reason: "fraud" })
        assert_requested :post, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/reject"
      end
    end
    context "Account.retrieve" do
      should "support requests with args: id" do
        Stripe::Account.retrieve("acct_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx?"
      end
    end
    context "Account.update" do
      should "support requests with args: metadata, id" do
        Stripe::Account.update(
          "acct_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx"
      end
    end
    context "AccountLink.create" do
      should "support requests with args: account, refresh_url, return_url, type" do
        Stripe::AccountLink.create({
          account: "acct_xxxxxxxxxxxxx",
          refresh_url: "https://example.com/reauth",
          return_url: "https://example.com/return",
          type: "account_onboarding",
        })
        assert_requested :post, "#{Stripe.api_base}/v1/account_links"
      end
    end
    context "ApplicationFee.list" do
      should "support requests with args: limit" do
        Stripe::ApplicationFee.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/application_fees?limit=3"
      end
    end
    context "ApplicationFee.retrieve" do
      should "support requests with args: id" do
        Stripe::ApplicationFee.retrieve("fee_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/application_fees/fee_xxxxxxxxxxxxx?"
      end
    end
    context "ApplicationFeeRefund.list" do
      should "support requests with args: limit, parent_id" do
        Stripe::ApplicationFee.list_refunds("fee_xxxxxxxxxxxxx", { limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/application_fees/fee_xxxxxxxxxxxxx/refunds?limit=3"
      end
    end
    context "ApplicationFeeRefund.retrieve" do
      should "support requests with args: parent_id, id" do
        Stripe::ApplicationFee.retrieve_refund(
          "fee_xxxxxxxxxxxxx",
          "fr_xxxxxxxxxxxxx"
        )
        assert_requested :get, "#{Stripe.api_base}/v1/application_fees/fee_xxxxxxxxxxxxx/refunds/fr_xxxxxxxxxxxxx?"
      end
    end
    context "ApplicationFeeRefund.update" do
      should "support requests with args: metadata, parent_id, id" do
        Stripe::ApplicationFee.update_refund(
          "fee_xxxxxxxxxxxxx",
          "fr_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/application_fees/fee_xxxxxxxxxxxxx/refunds/fr_xxxxxxxxxxxxx"
      end
    end
    context "Apps.Secret.create" do
      should "support requests with args: name, payload, scope" do
        Stripe::Apps::Secret.create({
          name: "sec_123",
          payload: "very secret string",
          scope: { type: "account" },
        })
        assert_requested :post, "#{Stripe.api_base}/v1/apps/secrets"
      end
      should "support requests with args: name, payload, scope2" do
        Stripe::Apps::Secret.create({
          name: "my-api-key",
          payload: "secret_key_xxxxxx",
          scope: { type: "account" },
        })
        assert_requested :post, "#{Stripe.api_base}/v1/apps/secrets"
      end
    end
    context "Apps.Secret.delete_where" do
      should "support requests with args: name, scope" do
        Stripe::Apps::Secret.delete_where({
          name: "my-api-key",
          scope: { type: "account" },
        })
        assert_requested :post, "#{Stripe.api_base}/v1/apps/secrets/delete"
      end
    end
    context "Apps.Secret.find" do
      should "support requests with args: name, scope" do
        Stripe::Apps::Secret.find({
          name: "sec_123",
          scope: { type: "account" },
        })
        assert_requested :get, "#{Stripe.api_base}/v1/apps/secrets/find?name=sec_123&scope[type]=account"
      end
    end
    context "Apps.Secret.list" do
      should "support requests with args: scope, limit" do
        Stripe::Apps::Secret.list({
          scope: { type: "account" },
          limit: 2,
        })
        assert_requested :get, "#{Stripe.api_base}/v1/apps/secrets?scope[type]=account&limit=2"
      end
      should "support requests with args: scope, limit2" do
        Stripe::Apps::Secret.list({
          scope: { type: "account" },
          limit: 2,
        })
        assert_requested :get, "#{Stripe.api_base}/v1/apps/secrets?scope[type]=account&limit=2"
      end
    end
    context "BalanceTransaction.list" do
      should "support requests with args: limit" do
        Stripe::BalanceTransaction.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/balance_transactions?limit=3"
      end
    end
    context "BalanceTransaction.retrieve" do
      should "support requests with args: id" do
        Stripe::BalanceTransaction.retrieve("txn_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/balance_transactions/txn_xxxxxxxxxxxxx?"
      end
    end
    context "BillingPortal.Configuration.create" do
      should "support requests with args: features, business_profile" do
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
    end
    context "BillingPortal.Configuration.list" do
      should "support requests with args: limit" do
        Stripe::BillingPortal::Configuration.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/billing_portal/configurations?limit=3"
      end
    end
    context "BillingPortal.Configuration.retrieve" do
      should "support requests with args: id" do
        Stripe::BillingPortal::Configuration.retrieve("bpc_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/billing_portal/configurations/bpc_xxxxxxxxxxxxx?"
      end
    end
    context "BillingPortal.Configuration.update" do
      should "support requests with args: business_profile, id" do
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
    end
    context "BillingPortal.Session.create" do
      should "support requests with args: customer, return_url" do
        Stripe::BillingPortal::Session.create({
          customer: "cus_xxxxxxxxxxxxx",
          return_url: "https://example.com/account",
        })
        assert_requested :post, "#{Stripe.api_base}/v1/billing_portal/sessions"
      end
    end
    context "Capability.list" do
      should "support requests with args: parent_id" do
        Stripe::Account.list_capabilities("acct_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/capabilities?"
      end
    end
    context "Capability.retrieve" do
      should "support requests with args: parent_id, id" do
        Stripe::Account.retrieve_capability(
          "acct_xxxxxxxxxxxxx",
          "card_payments"
        )
        assert_requested :get, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/capabilities/card_payments?"
      end
    end
    context "Capability.update" do
      should "support requests with args: requested, parent_id, id" do
        Stripe::Account.update_capability(
          "acct_xxxxxxxxxxxxx",
          "card_payments",
          { requested: true }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/capabilities/card_payments"
      end
    end
    context "CashBalance.retrieve" do
      should "support requests with args: customer" do
        Stripe::Customer.retrieve_cash_balance("cus_123")
        assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_123/cash_balance?"
      end
    end
    context "CashBalance.update" do
      should "support requests with args: customer, settings" do
        Stripe::Customer.update_cash_balance(
          "cus_123",
          { settings: { reconciliation_mode: "manual" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/customers/cus_123/cash_balance"
      end
    end
    context "Charge.capture" do
      should "support requests with args: id" do
        Stripe::Charge.capture("ch_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/charges/ch_xxxxxxxxxxxxx/capture?"
      end
    end
    context "Charge.create" do
      should "support requests with args: amount, currency, source, description" do
        Stripe::Charge.create({
          amount: 2000,
          currency: "usd",
          source: "tok_xxxx",
          description: "My First Test Charge (created for API docs at https://www.stripe.com/docs/api)",
        })
        assert_requested :post, "#{Stripe.api_base}/v1/charges"
      end
    end
    context "Charge.list" do
      should "support requests with args: limit" do
        Stripe::Charge.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/charges?limit=3"
      end
    end
    context "Charge.retrieve" do
      should "support requests with args: id" do
        Stripe::Charge.retrieve("ch_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/charges/ch_xxxxxxxxxxxxx?"
      end
    end
    context "Charge.search" do
      should "support requests with args: query" do
        Stripe::Charge.search({
          query: "amount>999 AND metadata['order_id']:'6735'",
        })
        assert_requested :get, "#{Stripe.api_base}/v1/charges/search?query=amount>999 AND metadata['order_id']:'6735'"
      end
    end
    context "Charge.update" do
      should "support requests with args: metadata, id" do
        Stripe::Charge.update(
          "ch_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/charges/ch_xxxxxxxxxxxxx"
      end
    end
    context "Checkout.Session.create" do
      should "support requests with args: success_url, cancel_url, mode, shipping_options" do
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
      should "support requests with args: success_url, line_items, mode" do
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
    end
    context "Checkout.Session.expire" do
      should "support requests with args: session" do
        Stripe::Checkout::Session.expire("sess_xyz")
        assert_requested :post, "#{Stripe.api_base}/v1/checkout/sessions/sess_xyz/expire?"
      end
      should "support requests with args: id" do
        Stripe::Checkout::Session.expire("cs_test_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/checkout/sessions/cs_test_xxxxxxxxxxxxx/expire?"
      end
    end
    context "Checkout.Session.list" do
      should "support requests with args: limit" do
        Stripe::Checkout::Session.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/checkout/sessions?limit=3"
      end
    end
    context "Checkout.Session.list_line_items" do
      should "support requests with args: session" do
        Stripe::Checkout::Session.list_line_items("sess_xyz")
        assert_requested :get, "#{Stripe.api_base}/v1/checkout/sessions/sess_xyz/line_items?"
      end
    end
    context "Checkout.Session.retrieve" do
      should "support requests with args: id" do
        Stripe::Checkout::Session.retrieve("cs_test_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/checkout/sessions/cs_test_xxxxxxxxxxxxx?"
      end
    end
    context "CountrySpec.list" do
      should "support requests with args: limit" do
        Stripe::CountrySpec.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/country_specs?limit=3"
      end
    end
    context "CountrySpec.retrieve" do
      should "support requests with args: id" do
        Stripe::CountrySpec.retrieve("US")
        assert_requested :get, "#{Stripe.api_base}/v1/country_specs/US?"
      end
    end
    context "Coupon.create" do
      should "support requests with args: percent_off, duration, duration_in_months" do
        Stripe::Coupon.create({
          percent_off: 25.5,
          duration: "repeating",
          duration_in_months: 3,
        })
        assert_requested :post, "#{Stripe.api_base}/v1/coupons"
      end
    end
    context "Coupon.delete" do
      should "support requests with args: id" do
        Stripe::Coupon.delete("Z4OV52SU")
        assert_requested :delete, "#{Stripe.api_base}/v1/coupons/Z4OV52SU?"
      end
    end
    context "Coupon.list" do
      should "support requests with args: limit" do
        Stripe::Coupon.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/coupons?limit=3"
      end
    end
    context "Coupon.retrieve" do
      should "support requests with args: id" do
        Stripe::Coupon.retrieve("Z4OV52SU")
        assert_requested :get, "#{Stripe.api_base}/v1/coupons/Z4OV52SU?"
      end
    end
    context "Coupon.update" do
      should "support requests with args: metadata, id" do
        Stripe::Coupon.update("Z4OV52SU", { metadata: { order_id: "6735" } })
        assert_requested :post, "#{Stripe.api_base}/v1/coupons/Z4OV52SU"
      end
    end
    context "CreditNote.create" do
      should "support requests with args: invoice, lines" do
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
    end
    context "CreditNote.list" do
      should "support requests with args: limit" do
        Stripe::CreditNote.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/credit_notes?limit=3"
      end
    end
    context "CreditNote.void_credit_note" do
      should "support requests with args: id" do
        Stripe::CreditNote.void_credit_note("cn_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/credit_notes/cn_xxxxxxxxxxxxx/void?"
      end
    end
    context "Customer.create" do
      should "support requests with args: description" do
        Stripe::Customer.create({
          description: "My First Test Customer (created for API docs at https://www.stripe.com/docs/api)",
        })
        assert_requested :post, "#{Stripe.api_base}/v1/customers"
      end
    end
    context "Customer.create_funding_instructions" do
      should "support requests with args: customer, bank_transfer, currency, funding_type" do
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
    end
    context "Customer.delete" do
      should "support requests with args: id" do
        Stripe::Customer.delete("cus_xxxxxxxxxxxxx")
        assert_requested :delete, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx?"
      end
    end
    context "Customer.fund_cash_balance" do
      should "support requests with args: customer, amount, currency" do
        Stripe::Customer::TestHelpers.fund_cash_balance(
          "cus_123",
          {
            amount: 30,
            currency: "eur",
          }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/customers/cus_123/fund_cash_balance"
      end
    end
    context "Customer.list" do
      should "support requests with args: limit" do
        Stripe::Customer.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/customers?limit=3"
      end
      should "support requests with args: limit2" do
        Stripe::Customer.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/customers?limit=3"
      end
    end
    context "Customer.list_payment_methods" do
      should "support requests with args: customer, type" do
        Stripe::Customer.list_payment_methods("cus_xyz", { type: "card" })
        assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xyz/payment_methods?type=card"
      end
      should "support requests with args: type, parent_id" do
        Stripe::Customer.list_payment_methods(
          "cus_xxxxxxxxxxxxx",
          { type: "card" }
        )
        assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/payment_methods?type=card"
      end
    end
    context "Customer.retrieve" do
      should "support requests with args: id" do
        Stripe::Customer.retrieve("cus_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx?"
      end
    end
    context "Customer.search" do
      should "support requests with args: query" do
        Stripe::Customer.search({
          query: "name:'fakename' AND metadata['foo']:'bar'",
        })
        assert_requested :get, "#{Stripe.api_base}/v1/customers/search?query=name:'fakename' AND metadata['foo']:'bar'"
      end
      should "support requests with args: query2" do
        Stripe::Customer.search({
          query: "name:'fakename' AND metadata['foo']:'bar'",
        })
        assert_requested :get, "#{Stripe.api_base}/v1/customers/search?query=name:'fakename' AND metadata['foo']:'bar'"
      end
    end
    context "Customer.update" do
      should "support requests with args: metadata, id" do
        Stripe::Customer.update(
          "cus_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx"
      end
    end
    context "CustomerBalanceTransaction.list" do
      should "support requests with args: limit, parent_id" do
        Stripe::Customer.list_balance_transactions(
          "cus_xxxxxxxxxxxxx",
          { limit: 3 }
        )
        assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/balance_transactions?limit=3"
      end
    end
    context "CustomerBalanceTransaction.retrieve" do
      should "support requests with args: parent_id, id" do
        Stripe::Customer.retrieve_balance_transaction(
          "cus_xxxxxxxxxxxxx",
          "cbtxn_xxxxxxxxxxxxx"
        )
        assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/balance_transactions/cbtxn_xxxxxxxxxxxxx?"
      end
    end
    context "CustomerBalanceTransaction.update" do
      should "support requests with args: metadata, parent_id, id" do
        Stripe::Customer.update_balance_transaction(
          "cus_xxxxxxxxxxxxx",
          "cbtxn_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/balance_transactions/cbtxn_xxxxxxxxxxxxx"
      end
    end
    context "Dispute.close" do
      should "support requests with args: id" do
        Stripe::Dispute.close("dp_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/disputes/dp_xxxxxxxxxxxxx/close?"
      end
    end
    context "Dispute.list" do
      should "support requests with args: limit" do
        Stripe::Dispute.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/disputes?limit=3"
      end
    end
    context "Dispute.retrieve" do
      should "support requests with args: id" do
        Stripe::Dispute.retrieve("dp_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/disputes/dp_xxxxxxxxxxxxx?"
      end
    end
    context "Dispute.update" do
      should "support requests with args: metadata, id" do
        Stripe::Dispute.update(
          "dp_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/disputes/dp_xxxxxxxxxxxxx"
      end
    end
    context "Event.list" do
      should "support requests with args: limit" do
        Stripe::Event.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/events?limit=3"
      end
    end
    context "Event.retrieve" do
      should "support requests with args: id" do
        Stripe::Event.retrieve("evt_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/events/evt_xxxxxxxxxxxxx?"
      end
    end
    context "ExternalAccount.create" do
      should "support requests with args: external_account, parent_id" do
        Stripe::Account.create_external_account(
          "acct_xxxxxxxxxxxxx",
          { external_account: "btok_xxxxxxxxxxxxx" }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts"
      end
      should "support requests with args: external_account, parent_id2" do
        Stripe::Account.create_external_account(
          "acct_xxxxxxxxxxxxx",
          { external_account: "tok_xxxx_debit" }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts"
      end
    end
    context "ExternalAccount.delete" do
      should "support requests with args: parent_id, id" do
        Stripe::Account.delete_external_account(
          "acct_xxxxxxxxxxxxx",
          "ba_xxxxxxxxxxxxx"
        )
        assert_requested :delete, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts/ba_xxxxxxxxxxxxx?"
      end
      should "support requests with args: parent_id, id2" do
        Stripe::Account.delete_external_account(
          "acct_xxxxxxxxxxxxx",
          "card_xxxxxxxxxxxxx"
        )
        assert_requested :delete, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts/card_xxxxxxxxxxxxx?"
      end
    end
    context "ExternalAccount.list" do
      should "support requests with args: limit, parent_id" do
        Stripe::Account.list_external_accounts("acct_xxxxxxxxxxxxx", { limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts?limit=3"
      end
    end
    context "ExternalAccount.update" do
      should "support requests with args: metadata, parent_id, id" do
        Stripe::Account.update_external_account(
          "acct_xxxxxxxxxxxxx",
          "ba_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts/ba_xxxxxxxxxxxxx"
      end
      should "support requests with args: metadata, parent_id, id2" do
        Stripe::Account.update_external_account(
          "acct_xxxxxxxxxxxxx",
          "card_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/external_accounts/card_xxxxxxxxxxxxx"
      end
    end
    context "File.list" do
      should "support requests with args: limit" do
        Stripe::File.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/files?limit=3"
      end
    end
    context "File.retrieve" do
      should "support requests with args: id" do
        Stripe::File.retrieve("file_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/files/file_xxxxxxxxxxxxx?"
      end
    end
    context "FileLink.create" do
      should "support requests with args: file" do
        Stripe::FileLink.create({ file: "file_xxxxxxxxxxxxx" })
        assert_requested :post, "#{Stripe.api_base}/v1/file_links"
      end
    end
    context "FileLink.list" do
      should "support requests with args: limit" do
        Stripe::FileLink.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/file_links?limit=3"
      end
    end
    context "FileLink.retrieve" do
      should "support requests with args: id" do
        Stripe::FileLink.retrieve("link_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/file_links/link_xxxxxxxxxxxxx?"
      end
    end
    context "FileLink.update" do
      should "support requests with args: metadata, id" do
        Stripe::FileLink.update(
          "link_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/file_links/link_xxxxxxxxxxxxx"
      end
    end
    context "FinancialConnections.Account.disconnect" do
      should "support requests with args: account" do
        Stripe::FinancialConnections::Account.disconnect("fca_xyz")
        assert_requested :post, "#{Stripe.api_base}/v1/financial_connections/accounts/fca_xyz/disconnect?"
      end
      should "support requests with args: id" do
        Stripe::FinancialConnections::Account.disconnect("fca_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/financial_connections/accounts/fca_xxxxxxxxxxxxx/disconnect?"
      end
    end
    context "FinancialConnections.Account.list" do
      should "work" do
        Stripe::FinancialConnections::Account.list
        assert_requested :get, "#{Stripe.api_base}/v1/financial_connections/accounts?"
      end
      should "support requests with args: account_holder" do
        Stripe::FinancialConnections::Account.list({
          account_holder: { customer: "cus_xxxxxxxxxxxxx" },
        })
        assert_requested :get, "#{Stripe.api_base}/v1/financial_connections/accounts?account_holder[customer]=cus_xxxxxxxxxxxxx"
      end
    end
    context "FinancialConnections.Account.list_owners" do
      should "support requests with args: account, ownership" do
        Stripe::FinancialConnections::Account.list_owners(
          "fca_xyz",
          { ownership: "fcaowns_xyz" }
        )
        assert_requested :get, "#{Stripe.api_base}/v1/financial_connections/accounts/fca_xyz/owners?ownership=fcaowns_xyz"
      end
      should "support requests with args: limit, ownership, parent_id" do
        Stripe::FinancialConnections::Account.list_owners(
          "fca_xxxxxxxxxxxxx",
          {
            limit: 3,
            ownership: "fcaowns_xxxxxxxxxxxxx",
          }
        )
        assert_requested :get, "#{Stripe.api_base}/v1/financial_connections/accounts/fca_xxxxxxxxxxxxx/owners?limit=3&ownership=fcaowns_xxxxxxxxxxxxx"
      end
    end
    context "FinancialConnections.Account.refresh_account" do
      should "support requests with args: account, features" do
        Stripe::FinancialConnections::Account.refresh_account(
          "fca_xyz",
          { features: ["balance"] }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/financial_connections/accounts/fca_xyz/refresh"
      end
    end
    context "FinancialConnections.Account.retrieve" do
      should "support requests with args: account" do
        Stripe::FinancialConnections::Account.retrieve("fca_xyz")
        assert_requested :get, "#{Stripe.api_base}/v1/financial_connections/accounts/fca_xyz?"
      end
      should "support requests with args: id" do
        Stripe::FinancialConnections::Account.retrieve("fca_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/financial_connections/accounts/fca_xxxxxxxxxxxxx?"
      end
    end
    context "FinancialConnections.Session.create" do
      should "support requests with args: account_holder, permissions" do
        Stripe::FinancialConnections::Session.create({
          account_holder: {
            type: "customer",
            customer: "cus_123",
          },
          permissions: ["balances"],
        })
        assert_requested :post, "#{Stripe.api_base}/v1/financial_connections/sessions"
      end
      should "support requests with args: account_holder, permissions, filters" do
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
    end
    context "FinancialConnections.Session.retrieve" do
      should "support requests with args: session" do
        Stripe::FinancialConnections::Session.retrieve("fcsess_xyz")
        assert_requested :get, "#{Stripe.api_base}/v1/financial_connections/sessions/fcsess_xyz?"
      end
      should "support requests with args: id" do
        Stripe::FinancialConnections::Session.retrieve("fcsess_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/financial_connections/sessions/fcsess_xxxxxxxxxxxxx?"
      end
    end
    context "Identity.VerificationReport.list" do
      should "support requests with args: limit" do
        Stripe::Identity::VerificationReport.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/identity/verification_reports?limit=3"
      end
    end
    context "Identity.VerificationReport.retrieve" do
      should "support requests with args: id" do
        Stripe::Identity::VerificationReport.retrieve("vr_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/identity/verification_reports/vr_xxxxxxxxxxxxx?"
      end
    end
    context "Identity.VerificationSession.cancel" do
      should "support requests with args: id" do
        Stripe::Identity::VerificationSession.cancel("vs_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/identity/verification_sessions/vs_xxxxxxxxxxxxx/cancel?"
      end
    end
    context "Identity.VerificationSession.create" do
      should "support requests with args: type" do
        Stripe::Identity::VerificationSession.create({ type: "document" })
        assert_requested :post, "#{Stripe.api_base}/v1/identity/verification_sessions"
      end
    end
    context "Identity.VerificationSession.list" do
      should "support requests with args: limit" do
        Stripe::Identity::VerificationSession.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/identity/verification_sessions?limit=3"
      end
    end
    context "Identity.VerificationSession.redact" do
      should "support requests with args: id" do
        Stripe::Identity::VerificationSession.redact("vs_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/identity/verification_sessions/vs_xxxxxxxxxxxxx/redact?"
      end
    end
    context "Identity.VerificationSession.retrieve" do
      should "support requests with args: id" do
        Stripe::Identity::VerificationSession.retrieve("vs_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/identity/verification_sessions/vs_xxxxxxxxxxxxx?"
      end
    end
    context "Identity.VerificationSession.update" do
      should "support requests with args: type, id" do
        Stripe::Identity::VerificationSession.update(
          "vs_xxxxxxxxxxxxx",
          { type: "id_number" }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/identity/verification_sessions/vs_xxxxxxxxxxxxx"
      end
    end
    context "Invoice.create" do
      should "support requests with args: customer" do
        Stripe::Invoice.create({ customer: "cus_xxxxxxxxxxxxx" })
        assert_requested :post, "#{Stripe.api_base}/v1/invoices"
      end
    end
    context "Invoice.delete" do
      should "support requests with args: id" do
        Stripe::Invoice.delete("in_xxxxxxxxxxxxx")
        assert_requested :delete, "#{Stripe.api_base}/v1/invoices/in_xxxxxxxxxxxxx?"
      end
    end
    context "Invoice.finalize_invoice" do
      should "support requests with args: id" do
        Stripe::Invoice.finalize_invoice("in_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/invoices/in_xxxxxxxxxxxxx/finalize?"
      end
    end
    context "Invoice.list" do
      should "support requests with args: limit" do
        Stripe::Invoice.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/invoices?limit=3"
      end
    end
    context "Invoice.mark_uncollectible" do
      should "support requests with args: id" do
        Stripe::Invoice.mark_uncollectible("in_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/invoices/in_xxxxxxxxxxxxx/mark_uncollectible?"
      end
    end
    context "Invoice.pay" do
      should "support requests with args: id" do
        Stripe::Invoice.pay("in_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/invoices/in_xxxxxxxxxxxxx/pay?"
      end
    end
    context "Invoice.retrieve" do
      should "support requests with args: id" do
        Stripe::Invoice.retrieve("in_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/invoices/in_xxxxxxxxxxxxx?"
      end
      should "support requests with args: id, expand" do
        Stripe::Invoice.retrieve({
          expand: ["customer"],
          id: "in_xxxxxxxxxxxxx",
        })
        assert_requested :get, "#{Stripe.api_base}/v1/invoices/in_xxxxxxxxxxxxx?expand[0]=customer"
      end
    end
    context "Invoice.search" do
      should "support requests with args: query" do
        Stripe::Invoice.search({
          query: "total>999 AND metadata['order_id']:'6735'",
        })
        assert_requested :get, "#{Stripe.api_base}/v1/invoices/search?query=total>999 AND metadata['order_id']:'6735'"
      end
    end
    context "Invoice.send_invoice" do
      should "support requests with args: id" do
        Stripe::Invoice.send_invoice("in_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/invoices/in_xxxxxxxxxxxxx/send?"
      end
    end
    context "Invoice.upcoming" do
      should "support requests with args: customer" do
        Stripe::Invoice.upcoming({ customer: "cus_9utnxg47pWjV1e" })
        assert_requested :get, "#{Stripe.api_base}/v1/invoices/upcoming?customer=cus_9utnxg47pWjV1e"
      end
    end
    context "Invoice.update" do
      should "support requests with args: metadata, id" do
        Stripe::Invoice.update(
          "in_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/invoices/in_xxxxxxxxxxxxx"
      end
    end
    context "Invoice.void_invoice" do
      should "support requests with args: id" do
        Stripe::Invoice.void_invoice("in_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/invoices/in_xxxxxxxxxxxxx/void?"
      end
    end
    context "InvoiceItem.create" do
      should "support requests with args: customer, price" do
        Stripe::InvoiceItem.create({
          customer: "cus_xxxxxxxxxxxxx",
          price: "price_xxxxxxxxxxxxx",
        })
        assert_requested :post, "#{Stripe.api_base}/v1/invoiceitems"
      end
    end
    context "InvoiceItem.delete" do
      should "support requests with args: id" do
        Stripe::InvoiceItem.delete("ii_xxxxxxxxxxxxx")
        assert_requested :delete, "#{Stripe.api_base}/v1/invoiceitems/ii_xxxxxxxxxxxxx?"
      end
    end
    context "InvoiceItem.list" do
      should "support requests with args: limit" do
        Stripe::InvoiceItem.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/invoiceitems?limit=3"
      end
    end
    context "InvoiceItem.retrieve" do
      should "support requests with args: id" do
        Stripe::InvoiceItem.retrieve("ii_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/invoiceitems/ii_xxxxxxxxxxxxx?"
      end
    end
    context "InvoiceItem.update" do
      should "support requests with args: metadata, id" do
        Stripe::InvoiceItem.update(
          "ii_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/invoiceitems/ii_xxxxxxxxxxxxx"
      end
    end
    context "Issuing.Authorization.approve" do
      should "support requests with args: id" do
        Stripe::Issuing::Authorization.approve("iauth_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/issuing/authorizations/iauth_xxxxxxxxxxxxx/approve?"
      end
    end
    context "Issuing.Authorization.decline" do
      should "support requests with args: id" do
        Stripe::Issuing::Authorization.decline("iauth_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/issuing/authorizations/iauth_xxxxxxxxxxxxx/decline?"
      end
    end
    context "Issuing.Authorization.list" do
      should "support requests with args: limit" do
        Stripe::Issuing::Authorization.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/issuing/authorizations?limit=3"
      end
    end
    context "Issuing.Authorization.retrieve" do
      should "support requests with args: id" do
        Stripe::Issuing::Authorization.retrieve("iauth_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/issuing/authorizations/iauth_xxxxxxxxxxxxx?"
      end
    end
    context "Issuing.Authorization.update" do
      should "support requests with args: metadata, id" do
        Stripe::Issuing::Authorization.update(
          "iauth_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/issuing/authorizations/iauth_xxxxxxxxxxxxx"
      end
    end
    context "Issuing.Card.create" do
      should "support requests with args: cardholder, currency, type" do
        Stripe::Issuing::Card.create({
          cardholder: "ich_xxxxxxxxxxxxx",
          currency: "usd",
          type: "virtual",
        })
        assert_requested :post, "#{Stripe.api_base}/v1/issuing/cards"
      end
    end
    context "Issuing.Card.deliver_card" do
      should "support requests with args: card" do
        Stripe::Issuing::Card::TestHelpers.deliver_card("card_123")
        assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/issuing/cards/card_123/shipping/deliver?"
      end
    end
    context "Issuing.Card.fail_card" do
      should "support requests with args: card" do
        Stripe::Issuing::Card::TestHelpers.fail_card("card_123")
        assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/issuing/cards/card_123/shipping/fail?"
      end
    end
    context "Issuing.Card.list" do
      should "support requests with args: limit" do
        Stripe::Issuing::Card.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/issuing/cards?limit=3"
      end
    end
    context "Issuing.Card.retrieve" do
      should "support requests with args: id" do
        Stripe::Issuing::Card.retrieve("ic_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/issuing/cards/ic_xxxxxxxxxxxxx?"
      end
    end
    context "Issuing.Card.return_card" do
      should "support requests with args: card" do
        Stripe::Issuing::Card::TestHelpers.return_card("card_123")
        assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/issuing/cards/card_123/shipping/return?"
      end
    end
    context "Issuing.Card.ship_card" do
      should "support requests with args: card" do
        Stripe::Issuing::Card::TestHelpers.ship_card("card_123")
        assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/issuing/cards/card_123/shipping/ship?"
      end
    end
    context "Issuing.Card.update" do
      should "support requests with args: metadata, id" do
        Stripe::Issuing::Card.update(
          "ic_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/issuing/cards/ic_xxxxxxxxxxxxx"
      end
    end
    context "Issuing.Cardholder.create" do
      should "support requests with args: type, name, email, phone_number, billing" do
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
    end
    context "Issuing.Cardholder.list" do
      should "support requests with args: limit" do
        Stripe::Issuing::Cardholder.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/issuing/cardholders?limit=3"
      end
    end
    context "Issuing.Cardholder.retrieve" do
      should "support requests with args: id" do
        Stripe::Issuing::Cardholder.retrieve("ich_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/issuing/cardholders/ich_xxxxxxxxxxxxx?"
      end
    end
    context "Issuing.Cardholder.update" do
      should "support requests with args: metadata, id" do
        Stripe::Issuing::Cardholder.update(
          "ich_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/issuing/cardholders/ich_xxxxxxxxxxxxx"
      end
    end
    context "Issuing.Dispute.create" do
      should "support requests with args: transaction, evidence" do
        Stripe::Issuing::Dispute.create({
          transaction: "ipi_xxxxxxxxxxxxx",
          evidence: {
            reason: "fraudulent",
            fraudulent: { explanation: "Purchase was unrecognized." },
          },
        })
        assert_requested :post, "#{Stripe.api_base}/v1/issuing/disputes"
      end
    end
    context "Issuing.Dispute.list" do
      should "support requests with args: limit" do
        Stripe::Issuing::Dispute.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/issuing/disputes?limit=3"
      end
    end
    context "Issuing.Dispute.retrieve" do
      should "support requests with args: id" do
        Stripe::Issuing::Dispute.retrieve("idp_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/issuing/disputes/idp_xxxxxxxxxxxxx?"
      end
    end
    context "Issuing.Dispute.submit" do
      should "support requests with args: id" do
        Stripe::Issuing::Dispute.submit("idp_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/issuing/disputes/idp_xxxxxxxxxxxxx/submit?"
      end
    end
    context "Issuing.Transaction.list" do
      should "support requests with args: limit" do
        Stripe::Issuing::Transaction.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/issuing/transactions?limit=3"
      end
    end
    context "Issuing.Transaction.retrieve" do
      should "support requests with args: id" do
        Stripe::Issuing::Transaction.retrieve("ipi_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/issuing/transactions/ipi_xxxxxxxxxxxxx?"
      end
    end
    context "Issuing.Transaction.update" do
      should "support requests with args: metadata, id" do
        Stripe::Issuing::Transaction.update(
          "ipi_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/issuing/transactions/ipi_xxxxxxxxxxxxx"
      end
    end
    context "Mandate.retrieve" do
      should "support requests with args: id" do
        Stripe::Mandate.retrieve("mandate_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/mandates/mandate_xxxxxxxxxxxxx?"
      end
    end
    context "PaymentIntent.apply_customer_balance" do
      should "support requests with args: id" do
        Stripe::PaymentIntent.apply_customer_balance("pi_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_xxxxxxxxxxxxx/apply_customer_balance?"
      end
    end
    context "PaymentIntent.cancel" do
      should "support requests with args: id" do
        Stripe::PaymentIntent.cancel("pi_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_xxxxxxxxxxxxx/cancel?"
      end
    end
    context "PaymentIntent.capture" do
      should "support requests with args: id" do
        Stripe::PaymentIntent.capture("pi_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_xxxxxxxxxxxxx/capture?"
      end
    end
    context "PaymentIntent.confirm" do
      should "support requests with args: payment_method, id" do
        Stripe::PaymentIntent.confirm(
          "pi_xxxxxxxxxxxxx",
          { payment_method: "pm_card_visa" }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_xxxxxxxxxxxxx/confirm"
      end
    end
    context "PaymentIntent.create" do
      should "support requests with args: amount, currency, automatic_payment_methods" do
        Stripe::PaymentIntent.create({
          amount: 1099,
          currency: "eur",
          automatic_payment_methods: { enabled: true },
        })
        assert_requested :post, "#{Stripe.api_base}/v1/payment_intents"
      end
      should "support requests with args: amount, currency, automatic_payment_methods2" do
        Stripe::PaymentIntent.create({
          amount: 2000,
          currency: "usd",
          automatic_payment_methods: { enabled: true },
        })
        assert_requested :post, "#{Stripe.api_base}/v1/payment_intents"
      end
      should "support requests with args: amount, currency, payment_method_data" do
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
    end
    context "PaymentIntent.increment_authorization" do
      should "support requests with args: amount, id" do
        Stripe::PaymentIntent.increment_authorization(
          "pi_xxxxxxxxxxxxx",
          { amount: 2099 }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_xxxxxxxxxxxxx/increment_authorization"
      end
    end
    context "PaymentIntent.list" do
      should "support requests with args: limit" do
        Stripe::PaymentIntent.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/payment_intents?limit=3"
      end
    end
    context "PaymentIntent.retrieve" do
      should "support requests with args: id" do
        Stripe::PaymentIntent.retrieve("pi_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/payment_intents/pi_xxxxxxxxxxxxx?"
      end
    end
    context "PaymentIntent.search" do
      should "support requests with args: query" do
        Stripe::PaymentIntent.search({
          query: "status:'succeeded' AND metadata['order_id']:'6735'",
        })
        assert_requested :get, "#{Stripe.api_base}/v1/payment_intents/search?query=status:'succeeded' AND metadata['order_id']:'6735'"
      end
    end
    context "PaymentIntent.update" do
      should "support requests with args: metadata, id" do
        Stripe::PaymentIntent.update(
          "pi_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_xxxxxxxxxxxxx"
      end
    end
    context "PaymentIntent.verify_microdeposits" do
      should "support requests with args: payment_intent" do
        Stripe::PaymentIntent.verify_microdeposits("pi_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_xxxxxxxxxxxxx/verify_microdeposits?"
      end
      should "support requests with args: amounts, id" do
        Stripe::PaymentIntent.verify_microdeposits(
          "pi_xxxxxxxxxxxxx",
          { amounts: [32, 45] }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/payment_intents/pi_xxxxxxxxxxxxx/verify_microdeposits"
      end
    end
    context "PaymentLink.create" do
      should "support requests with args: line_items" do
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
      should "support requests with args: line_items2" do
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
    end
    context "PaymentLink.list" do
      should "support requests with args: limit" do
        Stripe::PaymentLink.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/payment_links?limit=3"
      end
    end
    context "PaymentLink.list_line_items" do
      should "support requests with args: payment_link" do
        Stripe::PaymentLink.list_line_items("pl_xyz")
        assert_requested :get, "#{Stripe.api_base}/v1/payment_links/pl_xyz/line_items?"
      end
    end
    context "PaymentLink.retrieve" do
      should "support requests with args: payment_link" do
        Stripe::PaymentLink.retrieve("pl_xyz")
        assert_requested :get, "#{Stripe.api_base}/v1/payment_links/pl_xyz?"
      end
      should "support requests with args: id" do
        Stripe::PaymentLink.retrieve("plink_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/payment_links/plink_xxxxxxxxxxxxx?"
      end
    end
    context "PaymentLink.update" do
      should "support requests with args: active, id" do
        Stripe::PaymentLink.update("plink_xxxxxxxxxxxxx", { active: false })
        assert_requested :post, "#{Stripe.api_base}/v1/payment_links/plink_xxxxxxxxxxxxx"
      end
    end
    context "PaymentMethod.attach" do
      should "support requests with args: customer, id" do
        Stripe::PaymentMethod.attach(
          "pm_xxxxxxxxxxxxx",
          { customer: "cus_xxxxxxxxxxxxx" }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/payment_methods/pm_xxxxxxxxxxxxx/attach"
      end
    end
    context "PaymentMethod.create" do
      should "support requests with args: type, card" do
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
    end
    context "PaymentMethod.detach" do
      should "support requests with args: id" do
        Stripe::PaymentMethod.detach("pm_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/payment_methods/pm_xxxxxxxxxxxxx/detach?"
      end
    end
    context "PaymentMethod.list" do
      should "support requests with args: customer, type" do
        Stripe::PaymentMethod.list({
          customer: "cus_xxxxxxxxxxxxx",
          type: "card",
        })
        assert_requested :get, "#{Stripe.api_base}/v1/payment_methods?customer=cus_xxxxxxxxxxxxx&type=card"
      end
    end
    context "PaymentMethod.retrieve" do
      should "support requests with args: id" do
        Stripe::PaymentMethod.retrieve("pm_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/payment_methods/pm_xxxxxxxxxxxxx?"
      end
    end
    context "PaymentMethod.update" do
      should "support requests with args: metadata, id" do
        Stripe::PaymentMethod.update(
          "pm_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/payment_methods/pm_xxxxxxxxxxxxx"
      end
    end
    context "PaymentSource.create" do
      should "support requests with args: source, parent_id" do
        Stripe::Customer.create_source(
          "cus_xxxxxxxxxxxxx",
          { source: "btok_xxxxxxxxxxxxx" }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/sources"
      end
      should "support requests with args: source, parent_id2" do
        Stripe::Customer.create_source(
          "cus_xxxxxxxxxxxxx",
          { source: "tok_xxxx" }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/sources"
      end
    end
    context "PaymentSource.list" do
      should "support requests with args: object, limit, parent_id" do
        Stripe::Customer.list_sources(
          "cus_xxxxxxxxxxxxx",
          {
            object: "bank_account",
            limit: 3,
          }
        )
        assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/sources?object=bank_account&limit=3"
      end
      should "support requests with args: object, limit, parent_id2" do
        Stripe::Customer.list_sources(
          "cus_xxxxxxxxxxxxx",
          {
            object: "card",
            limit: 3,
          }
        )
        assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/sources?object=card&limit=3"
      end
    end
    context "PaymentSource.retrieve" do
      should "support requests with args: parent_id, id" do
        Stripe::Customer.retrieve_source(
          "cus_xxxxxxxxxxxxx",
          "ba_xxxxxxxxxxxxx"
        )
        assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/sources/ba_xxxxxxxxxxxxx?"
      end
      should "support requests with args: parent_id, id2" do
        Stripe::Customer.retrieve_source(
          "cus_xxxxxxxxxxxxx",
          "card_xxxxxxxxxxxxx"
        )
        assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/sources/card_xxxxxxxxxxxxx?"
      end
    end
    context "Payout.cancel" do
      should "support requests with args: id" do
        Stripe::Payout.cancel("po_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/payouts/po_xxxxxxxxxxxxx/cancel?"
      end
    end
    context "Payout.create" do
      should "support requests with args: amount, currency" do
        Stripe::Payout.create({
          amount: 1100,
          currency: "usd",
        })
        assert_requested :post, "#{Stripe.api_base}/v1/payouts"
      end
    end
    context "Payout.list" do
      should "support requests with args: limit" do
        Stripe::Payout.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/payouts?limit=3"
      end
    end
    context "Payout.retrieve" do
      should "support requests with args: id" do
        Stripe::Payout.retrieve("po_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/payouts/po_xxxxxxxxxxxxx?"
      end
    end
    context "Payout.reverse" do
      should "support requests with args: id" do
        Stripe::Payout.reverse("po_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/payouts/po_xxxxxxxxxxxxx/reverse?"
      end
    end
    context "Payout.update" do
      should "support requests with args: metadata, id" do
        Stripe::Payout.update(
          "po_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/payouts/po_xxxxxxxxxxxxx"
      end
    end
    context "Person.retrieve" do
      should "support requests with args: parent_id, id" do
        Stripe::Account.retrieve_person(
          "acct_xxxxxxxxxxxxx",
          "person_xxxxxxxxxxxxx"
        )
        assert_requested :get, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/persons/person_xxxxxxxxxxxxx?"
      end
    end
    context "Person.update" do
      should "support requests with args: metadata, parent_id, id" do
        Stripe::Account.update_person(
          "acct_xxxxxxxxxxxxx",
          "person_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/persons/person_xxxxxxxxxxxxx"
      end
    end
    context "Plan.create" do
      should "support requests with args: amount, currency, interval, product" do
        Stripe::Plan.create({
          amount: 2000,
          currency: "usd",
          interval: "month",
          product: "prod_xxxxxxxxxxxxx",
        })
        assert_requested :post, "#{Stripe.api_base}/v1/plans"
      end
      should "support requests with args: amount, currency, interval, product2" do
        Stripe::Plan.create({
          amount: 2000,
          currency: "usd",
          interval: "month",
          product: { name: "My product" },
        })
        assert_requested :post, "#{Stripe.api_base}/v1/plans"
      end
    end
    context "Plan.delete" do
      should "support requests with args: id" do
        Stripe::Plan.delete("price_xxxxxxxxxxxxx")
        assert_requested :delete, "#{Stripe.api_base}/v1/plans/price_xxxxxxxxxxxxx?"
      end
    end
    context "Plan.list" do
      should "support requests with args: limit" do
        Stripe::Plan.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/plans?limit=3"
      end
    end
    context "Plan.retrieve" do
      should "support requests with args: id" do
        Stripe::Plan.retrieve("price_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/plans/price_xxxxxxxxxxxxx?"
      end
    end
    context "Plan.update" do
      should "support requests with args: metadata, id" do
        Stripe::Plan.update(
          "price_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/plans/price_xxxxxxxxxxxxx"
      end
    end
    context "Price.create" do
      should "support requests with args: unit_amount, currency, currency_options, recurring, product" do
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
      should "support requests with args: unit_amount, currency, recurring, product" do
        Stripe::Price.create({
          unit_amount: 2000,
          currency: "usd",
          recurring: { interval: "month" },
          product: "prod_xxxxxxxxxxxxx",
        })
        assert_requested :post, "#{Stripe.api_base}/v1/prices"
      end
    end
    context "Price.list" do
      should "support requests with args: limit" do
        Stripe::Price.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/prices?limit=3"
      end
    end
    context "Price.retrieve" do
      should "support requests with args: id" do
        Stripe::Price.retrieve("price_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/prices/price_xxxxxxxxxxxxx?"
      end
    end
    context "Price.search" do
      should "support requests with args: query" do
        Stripe::Price.search({
          query: "active:'true' AND metadata['order_id']:'6735'",
        })
        assert_requested :get, "#{Stripe.api_base}/v1/prices/search?query=active:'true' AND metadata['order_id']:'6735'"
      end
    end
    context "Price.update" do
      should "support requests with args: metadata, id" do
        Stripe::Price.update(
          "price_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/prices/price_xxxxxxxxxxxxx"
      end
    end
    context "Product.create" do
      should "support requests with args: name" do
        Stripe::Product.create({ name: "Gold Special" })
        assert_requested :post, "#{Stripe.api_base}/v1/products"
      end
    end
    context "Product.delete" do
      should "support requests with args: id" do
        Stripe::Product.delete("prod_xxxxxxxxxxxxx")
        assert_requested :delete, "#{Stripe.api_base}/v1/products/prod_xxxxxxxxxxxxx?"
      end
    end
    context "Product.list" do
      should "support requests with args: limit" do
        Stripe::Product.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/products?limit=3"
      end
    end
    context "Product.retrieve" do
      should "support requests with args: id" do
        Stripe::Product.retrieve("prod_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/products/prod_xxxxxxxxxxxxx?"
      end
    end
    context "Product.search" do
      should "support requests with args: query" do
        Stripe::Product.search({
          query: "active:'true' AND metadata['order_id']:'6735'",
        })
        assert_requested :get, "#{Stripe.api_base}/v1/products/search?query=active:'true' AND metadata['order_id']:'6735'"
      end
    end
    context "Product.update" do
      should "support requests with args: metadata, id" do
        Stripe::Product.update(
          "prod_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/products/prod_xxxxxxxxxxxxx"
      end
    end
    context "PromotionCode.create" do
      should "support requests with args: coupon" do
        Stripe::PromotionCode.create({ coupon: "Z4OV52SU" })
        assert_requested :post, "#{Stripe.api_base}/v1/promotion_codes"
      end
    end
    context "PromotionCode.list" do
      should "support requests with args: limit" do
        Stripe::PromotionCode.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/promotion_codes?limit=3"
      end
    end
    context "PromotionCode.retrieve" do
      should "support requests with args: id" do
        Stripe::PromotionCode.retrieve("promo_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/promotion_codes/promo_xxxxxxxxxxxxx?"
      end
    end
    context "PromotionCode.update" do
      should "support requests with args: metadata, id" do
        Stripe::PromotionCode.update(
          "promo_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/promotion_codes/promo_xxxxxxxxxxxxx"
      end
    end
    context "Quote.accept" do
      should "support requests with args: id" do
        Stripe::Quote.accept("qt_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/quotes/qt_xxxxxxxxxxxxx/accept?"
      end
    end
    context "Quote.cancel" do
      should "support requests with args: id" do
        Stripe::Quote.cancel("qt_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/quotes/qt_xxxxxxxxxxxxx/cancel?"
      end
    end
    context "Quote.create" do
      should "support requests with args: customer, line_items" do
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
    end
    context "Quote.finalize_quote" do
      should "support requests with args: id" do
        Stripe::Quote.finalize_quote("qt_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/quotes/qt_xxxxxxxxxxxxx/finalize?"
      end
    end
    context "Quote.list" do
      should "support requests with args: limit" do
        Stripe::Quote.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/quotes?limit=3"
      end
    end
    context "Quote.list_line_items" do
      should "support requests with args: id" do
        Stripe::Quote.list_line_items("qt_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/quotes/qt_xxxxxxxxxxxxx/line_items?"
      end
    end
    context "Quote.pdf" do
      should "support requests with args: id" do
        block_handler = {}
        Stripe::Quote.pdf("qt_xxxxxxxxxxxxx", &block_handler)
        assert_requested :get, "#{Stripe.api_base}/v1/quotes/qt_xxxxxxxxxxxxx/pdf?"
      end
    end
    context "Quote.retrieve" do
      should "support requests with args: id" do
        Stripe::Quote.retrieve("qt_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/quotes/qt_xxxxxxxxxxxxx?"
      end
    end
    context "Quote.update" do
      should "support requests with args: metadata, id" do
        Stripe::Quote.update("qt_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
        assert_requested :post, "#{Stripe.api_base}/v1/quotes/qt_xxxxxxxxxxxxx"
      end
    end
    context "Radar.EarlyFraudWarning.list" do
      should "support requests with args: limit" do
        Stripe::Radar::EarlyFraudWarning.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/radar/early_fraud_warnings?limit=3"
      end
    end
    context "Radar.EarlyFraudWarning.retrieve" do
      should "support requests with args: id" do
        Stripe::Radar::EarlyFraudWarning.retrieve("issfr_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/radar/early_fraud_warnings/issfr_xxxxxxxxxxxxx?"
      end
    end
    context "Radar.ValueList.create" do
      should "support requests with args: alias, name, item_type" do
        Stripe::Radar::ValueList.create({
          alias: "custom_ip_xxxxxxxxxxxxx",
          name: "Custom IP Blocklist",
          item_type: "ip_address",
        })
        assert_requested :post, "#{Stripe.api_base}/v1/radar/value_lists"
      end
    end
    context "Radar.ValueList.delete" do
      should "support requests with args: id" do
        Stripe::Radar::ValueList.delete("rsl_xxxxxxxxxxxxx")
        assert_requested :delete, "#{Stripe.api_base}/v1/radar/value_lists/rsl_xxxxxxxxxxxxx?"
      end
    end
    context "Radar.ValueList.list" do
      should "support requests with args: limit" do
        Stripe::Radar::ValueList.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/radar/value_lists?limit=3"
      end
    end
    context "Radar.ValueList.retrieve" do
      should "support requests with args: id" do
        Stripe::Radar::ValueList.retrieve("rsl_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/radar/value_lists/rsl_xxxxxxxxxxxxx?"
      end
    end
    context "Radar.ValueList.update" do
      should "support requests with args: name, id" do
        Stripe::Radar::ValueList.update(
          "rsl_xxxxxxxxxxxxx",
          { name: "Updated IP Block List" }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/radar/value_lists/rsl_xxxxxxxxxxxxx"
      end
    end
    context "Radar.ValueListItem.create" do
      should "support requests with args: value_list, value" do
        Stripe::Radar::ValueListItem.create({
          value_list: "rsl_xxxxxxxxxxxxx",
          value: "1.2.3.4",
        })
        assert_requested :post, "#{Stripe.api_base}/v1/radar/value_list_items"
      end
    end
    context "Radar.ValueListItem.delete" do
      should "support requests with args: id" do
        Stripe::Radar::ValueListItem.delete("rsli_xxxxxxxxxxxxx")
        assert_requested :delete, "#{Stripe.api_base}/v1/radar/value_list_items/rsli_xxxxxxxxxxxxx?"
      end
    end
    context "Radar.ValueListItem.list" do
      should "support requests with args: limit, value_list" do
        Stripe::Radar::ValueListItem.list({
          limit: 3,
          value_list: "rsl_xxxxxxxxxxxxx",
        })
        assert_requested :get, "#{Stripe.api_base}/v1/radar/value_list_items?limit=3&value_list=rsl_xxxxxxxxxxxxx"
      end
    end
    context "Radar.ValueListItem.retrieve" do
      should "support requests with args: id" do
        Stripe::Radar::ValueListItem.retrieve("rsli_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/radar/value_list_items/rsli_xxxxxxxxxxxxx?"
      end
    end
    context "Refund.cancel" do
      should "support requests with args: id" do
        Stripe::Refund.cancel("re_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/refunds/re_xxxxxxxxxxxxx/cancel?"
      end
    end
    context "Refund.create" do
      should "support requests with args: charge" do
        Stripe::Refund.create({ charge: "ch_xxxxxxxxxxxxx" })
        assert_requested :post, "#{Stripe.api_base}/v1/refunds"
      end
    end
    context "Refund.expire" do
      should "support requests with args: refund" do
        Stripe::Refund::TestHelpers.expire("re_123")
        assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/refunds/re_123/expire?"
      end
    end
    context "Refund.list" do
      should "support requests with args: limit" do
        Stripe::Refund.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/refunds?limit=3"
      end
    end
    context "Refund.retrieve" do
      should "support requests with args: id" do
        Stripe::Refund.retrieve("re_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/refunds/re_xxxxxxxxxxxxx?"
      end
    end
    context "Refund.update" do
      should "support requests with args: metadata, id" do
        Stripe::Refund.update(
          "re_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/refunds/re_xxxxxxxxxxxxx"
      end
    end
    context "Reporting.ReportRun.create" do
      should "support requests with args: report_type, parameters" do
        Stripe::Reporting::ReportRun.create({
          report_type: "balance.summary.1",
          parameters: {
            interval_start: 1_522_540_800,
            interval_end: 1_525_132_800,
          },
        })
        assert_requested :post, "#{Stripe.api_base}/v1/reporting/report_runs"
      end
    end
    context "Reporting.ReportRun.list" do
      should "support requests with args: limit" do
        Stripe::Reporting::ReportRun.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/reporting/report_runs?limit=3"
      end
    end
    context "Reporting.ReportRun.retrieve" do
      should "support requests with args: id" do
        Stripe::Reporting::ReportRun.retrieve("frr_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/reporting/report_runs/frr_xxxxxxxxxxxxx?"
      end
    end
    context "Reporting.ReportType.list" do
      should "work" do
        Stripe::Reporting::ReportType.list
        assert_requested :get, "#{Stripe.api_base}/v1/reporting/report_types?"
      end
    end
    context "Reporting.ReportType.retrieve" do
      should "support requests with args: id" do
        Stripe::Reporting::ReportType.retrieve("balance.summary.1")
        assert_requested :get, "#{Stripe.api_base}/v1/reporting/report_types/balance.summary.1?"
      end
    end
    context "Reversal.list" do
      should "support requests with args: limit, parent_id" do
        Stripe::Transfer.list_reversals("tr_xxxxxxxxxxxxx", { limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/transfers/tr_xxxxxxxxxxxxx/reversals?limit=3"
      end
    end
    context "Reversal.retrieve" do
      should "support requests with args: parent_id, id" do
        Stripe::Transfer.retrieve_reversal(
          "tr_xxxxxxxxxxxxx",
          "trr_xxxxxxxxxxxxx"
        )
        assert_requested :get, "#{Stripe.api_base}/v1/transfers/tr_xxxxxxxxxxxxx/reversals/trr_xxxxxxxxxxxxx?"
      end
    end
    context "Reversal.update" do
      should "support requests with args: metadata, parent_id, id" do
        Stripe::Transfer.update_reversal(
          "tr_xxxxxxxxxxxxx",
          "trr_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/transfers/tr_xxxxxxxxxxxxx/reversals/trr_xxxxxxxxxxxxx"
      end
    end
    context "Review.approve" do
      should "support requests with args: id" do
        Stripe::Review.approve("prv_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/reviews/prv_xxxxxxxxxxxxx/approve?"
      end
    end
    context "Review.list" do
      should "support requests with args: limit" do
        Stripe::Review.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/reviews?limit=3"
      end
    end
    context "Review.retrieve" do
      should "support requests with args: id" do
        Stripe::Review.retrieve("prv_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/reviews/prv_xxxxxxxxxxxxx?"
      end
    end
    context "SetupAttempt.list" do
      should "support requests with args: limit, setup_intent" do
        Stripe::SetupAttempt.list({
          limit: 3,
          setup_intent: "si_xyz",
        })
        assert_requested :get, "#{Stripe.api_base}/v1/setup_attempts?limit=3&setup_intent=si_xyz"
      end
    end
    context "SetupIntent.cancel" do
      should "support requests with args: id" do
        Stripe::SetupIntent.cancel("seti_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/setup_intents/seti_xxxxxxxxxxxxx/cancel?"
      end
    end
    context "SetupIntent.confirm" do
      should "support requests with args: payment_method, id" do
        Stripe::SetupIntent.confirm(
          "seti_xxxxxxxxxxxxx",
          { payment_method: "pm_card_visa" }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/setup_intents/seti_xxxxxxxxxxxxx/confirm"
      end
    end
    context "SetupIntent.create" do
      should "support requests with args: payment_method_types" do
        Stripe::SetupIntent.create({ payment_method_types: ["card"] })
        assert_requested :post, "#{Stripe.api_base}/v1/setup_intents"
      end
    end
    context "SetupIntent.list" do
      should "support requests with args: limit" do
        Stripe::SetupIntent.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/setup_intents?limit=3"
      end
    end
    context "SetupIntent.retrieve" do
      should "support requests with args: id" do
        Stripe::SetupIntent.retrieve("seti_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/setup_intents/seti_xxxxxxxxxxxxx?"
      end
    end
    context "SetupIntent.update" do
      should "support requests with args: metadata, id" do
        Stripe::SetupIntent.update(
          "seti_xxxxxxxxxxxxx",
          { metadata: { user_id: "3435453" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/setup_intents/seti_xxxxxxxxxxxxx"
      end
    end
    context "SetupIntent.verify_microdeposits" do
      should "support requests with args: setup_intent" do
        Stripe::SetupIntent.verify_microdeposits("seti_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/setup_intents/seti_xxxxxxxxxxxxx/verify_microdeposits?"
      end
      should "support requests with args: amounts, id" do
        Stripe::SetupIntent.verify_microdeposits(
          "seti_xxxxxxxxxxxxx",
          { amounts: [32, 45] }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/setup_intents/seti_xxxxxxxxxxxxx/verify_microdeposits"
      end
    end
    context "ShippingRate.create" do
      should "support requests with args: display_name, fixed_amount, type" do
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
      should "support requests with args: display_name, type, fixed_amount" do
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
    end
    context "ShippingRate.list" do
      should "work" do
        Stripe::ShippingRate.list
        assert_requested :get, "#{Stripe.api_base}/v1/shipping_rates?"
      end
      should "support requests with args: limit" do
        Stripe::ShippingRate.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/shipping_rates?limit=3"
      end
    end
    context "ShippingRate.retrieve" do
      should "support requests with args: id" do
        Stripe::ShippingRate.retrieve("shr_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/shipping_rates/shr_xxxxxxxxxxxxx?"
      end
    end
    context "ShippingRate.update" do
      should "support requests with args: metadata, id" do
        Stripe::ShippingRate.update(
          "shr_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/shipping_rates/shr_xxxxxxxxxxxxx"
      end
    end
    context "Sigma.ScheduledQueryRun.list" do
      should "support requests with args: limit" do
        Stripe::Sigma::ScheduledQueryRun.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/sigma/scheduled_query_runs?limit=3"
      end
    end
    context "Sigma.ScheduledQueryRun.retrieve" do
      should "support requests with args: id" do
        Stripe::Sigma::ScheduledQueryRun.retrieve("sqr_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/sigma/scheduled_query_runs/sqr_xxxxxxxxxxxxx?"
      end
    end
    context "Source.retrieve" do
      should "support requests with args: id" do
        Stripe::Source.retrieve("src_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/sources/src_xxxxxxxxxxxxx?"
      end
      should "support requests with args: id2" do
        Stripe::Source.retrieve("src_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/sources/src_xxxxxxxxxxxxx?"
      end
    end
    context "Source.update" do
      should "support requests with args: metadata, id" do
        Stripe::Source.update(
          "src_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/sources/src_xxxxxxxxxxxxx"
      end
    end
    context "Subscription.create" do
      should "support requests with args: customer, items" do
        Stripe::Subscription.create({
          customer: "cus_xxxxxxxxxxxxx",
          items: [{ price: "price_xxxxxxxxxxxxx" }],
        })
        assert_requested :post, "#{Stripe.api_base}/v1/subscriptions"
      end
    end
    context "Subscription.list" do
      should "support requests with args: limit" do
        Stripe::Subscription.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/subscriptions?limit=3"
      end
    end
    context "Subscription.retrieve" do
      should "support requests with args: id" do
        Stripe::Subscription.retrieve("sub_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/subscriptions/sub_xxxxxxxxxxxxx?"
      end
    end
    context "Subscription.search" do
      should "support requests with args: query" do
        Stripe::Subscription.search({
          query: "status:'active' AND metadata['order_id']:'6735'",
        })
        assert_requested :get, "#{Stripe.api_base}/v1/subscriptions/search?query=status:'active' AND metadata['order_id']:'6735'"
      end
    end
    context "Subscription.update" do
      should "support requests with args: metadata, id" do
        Stripe::Subscription.update(
          "sub_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/subscriptions/sub_xxxxxxxxxxxxx"
      end
    end
    context "SubscriptionItem.create" do
      should "support requests with args: subscription, price, quantity" do
        Stripe::SubscriptionItem.create({
          subscription: "sub_xxxxxxxxxxxxx",
          price: "price_xxxxxxxxxxxxx",
          quantity: 2,
        })
        assert_requested :post, "#{Stripe.api_base}/v1/subscription_items"
      end
    end
    context "SubscriptionItem.delete" do
      should "support requests with args: id" do
        Stripe::SubscriptionItem.delete("si_xxxxxxxxxxxxx")
        assert_requested :delete, "#{Stripe.api_base}/v1/subscription_items/si_xxxxxxxxxxxxx?"
      end
    end
    context "SubscriptionItem.list" do
      should "support requests with args: subscription" do
        Stripe::SubscriptionItem.list({ subscription: "sub_xxxxxxxxxxxxx" })
        assert_requested :get, "#{Stripe.api_base}/v1/subscription_items?subscription=sub_xxxxxxxxxxxxx"
      end
    end
    context "SubscriptionItem.retrieve" do
      should "support requests with args: id" do
        Stripe::SubscriptionItem.retrieve("si_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/subscription_items/si_xxxxxxxxxxxxx?"
      end
    end
    context "SubscriptionItem.update" do
      should "support requests with args: metadata, id" do
        Stripe::SubscriptionItem.update(
          "si_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/subscription_items/si_xxxxxxxxxxxxx"
      end
    end
    context "SubscriptionSchedule.cancel" do
      should "support requests with args: id" do
        Stripe::SubscriptionSchedule.cancel("sub_sched_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/subscription_schedules/sub_sched_xxxxxxxxxxxxx/cancel?"
      end
    end
    context "SubscriptionSchedule.create" do
      should "support requests with args: customer, start_date, end_behavior, phases" do
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
    end
    context "SubscriptionSchedule.list" do
      should "support requests with args: limit" do
        Stripe::SubscriptionSchedule.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/subscription_schedules?limit=3"
      end
    end
    context "SubscriptionSchedule.release" do
      should "support requests with args: id" do
        Stripe::SubscriptionSchedule.release("sub_sched_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/subscription_schedules/sub_sched_xxxxxxxxxxxxx/release?"
      end
    end
    context "SubscriptionSchedule.retrieve" do
      should "support requests with args: id" do
        Stripe::SubscriptionSchedule.retrieve("sub_sched_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/subscription_schedules/sub_sched_xxxxxxxxxxxxx?"
      end
    end
    context "SubscriptionSchedule.update" do
      should "support requests with args: end_behavior, id" do
        Stripe::SubscriptionSchedule.update(
          "sub_sched_xxxxxxxxxxxxx",
          { end_behavior: "release" }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/subscription_schedules/sub_sched_xxxxxxxxxxxxx"
      end
    end
    context "Tax.Calculation.create" do
      should "support requests with args: currency, line_items, customer_details" do
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
    end
    context "Tax.Calculation.list_line_items" do
      should "support requests with args: calculation" do
        Stripe::Tax::Calculation.list_line_items("xxx")
        assert_requested :get, "#{Stripe.api_base}/v1/tax/calculations/xxx/line_items?"
      end
    end
    context "Tax.Transaction.create_from_calculation" do
      should "support requests with args: calculation, reference" do
        Stripe::Tax::Transaction.create_from_calculation({
          calculation: "xxx",
          reference: "yyy",
        })
        assert_requested :post, "#{Stripe.api_base}/v1/tax/transactions/create_from_calculation"
      end
    end
    context "TaxCode.list" do
      should "support requests with args: limit" do
        Stripe::TaxCode.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/tax_codes?limit=3"
      end
    end
    context "TaxCode.retrieve" do
      should "support requests with args: id" do
        Stripe::TaxCode.retrieve("txcd_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/tax_codes/txcd_xxxxxxxxxxxxx?"
      end
    end
    context "TaxId.delete" do
      should "support requests with args: parent_id, id" do
        Stripe::Customer.delete_tax_id("cus_xxxxxxxxxxxxx", "txi_xxxxxxxxxxxxx")
        assert_requested :delete, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/tax_ids/txi_xxxxxxxxxxxxx?"
      end
    end
    context "TaxId.list" do
      should "support requests with args: limit, parent_id" do
        Stripe::Customer.list_tax_ids("cus_xxxxxxxxxxxxx", { limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/tax_ids?limit=3"
      end
    end
    context "TaxId.retrieve" do
      should "support requests with args: id, parent_id" do
        Stripe::Customer.retrieve_tax_id(
          "cus_xxxxxxxxxxxxx",
          "txi_xxxxxxxxxxxxx"
        )
        assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx/tax_ids/txi_xxxxxxxxxxxxx?"
      end
    end
    context "TaxRate.create" do
      should "support requests with args: display_name, description, jurisdiction, percentage, inclusive" do
        Stripe::TaxRate.create({
          display_name: "VAT",
          description: "VAT Germany",
          jurisdiction: "DE",
          percentage: 16,
          inclusive: false,
        })
        assert_requested :post, "#{Stripe.api_base}/v1/tax_rates"
      end
    end
    context "TaxRate.list" do
      should "support requests with args: limit" do
        Stripe::TaxRate.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/tax_rates?limit=3"
      end
    end
    context "TaxRate.retrieve" do
      should "support requests with args: id" do
        Stripe::TaxRate.retrieve("txr_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/tax_rates/txr_xxxxxxxxxxxxx?"
      end
    end
    context "TaxRate.update" do
      should "support requests with args: active, id" do
        Stripe::TaxRate.update("txr_xxxxxxxxxxxxx", { active: false })
        assert_requested :post, "#{Stripe.api_base}/v1/tax_rates/txr_xxxxxxxxxxxxx"
      end
    end
    context "Terminal.Configuration.create" do
      should "work" do
        Stripe::Terminal::Configuration.create
        assert_requested :post, "#{Stripe.api_base}/v1/terminal/configurations?"
      end
      should "support requests with args: bbpos_wisepos_e" do
        Stripe::Terminal::Configuration.create({
          bbpos_wisepos_e: { splashscreen: "file_xxxxxxxxxxxxx" },
        })
        assert_requested :post, "#{Stripe.api_base}/v1/terminal/configurations"
      end
    end
    context "Terminal.Configuration.delete" do
      should "support requests with args: configuration" do
        Stripe::Terminal::Configuration.delete("uc_123")
        assert_requested :delete, "#{Stripe.api_base}/v1/terminal/configurations/uc_123?"
      end
      should "support requests with args: id" do
        Stripe::Terminal::Configuration.delete("tmc_xxxxxxxxxxxxx")
        assert_requested :delete, "#{Stripe.api_base}/v1/terminal/configurations/tmc_xxxxxxxxxxxxx?"
      end
    end
    context "Terminal.Configuration.list" do
      should "work" do
        Stripe::Terminal::Configuration.list
        assert_requested :get, "#{Stripe.api_base}/v1/terminal/configurations?"
      end
      should "support requests with args: limit" do
        Stripe::Terminal::Configuration.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/terminal/configurations?limit=3"
      end
    end
    context "Terminal.Configuration.retrieve" do
      should "support requests with args: configuration" do
        Stripe::Terminal::Configuration.retrieve("uc_123")
        assert_requested :get, "#{Stripe.api_base}/v1/terminal/configurations/uc_123?"
      end
      should "support requests with args: id" do
        Stripe::Terminal::Configuration.retrieve("tmc_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/terminal/configurations/tmc_xxxxxxxxxxxxx?"
      end
    end
    context "Terminal.Configuration.update" do
      should "support requests with args: configuration, tipping" do
        Stripe::Terminal::Configuration.update(
          "uc_123",
          { tipping: { usd: { fixed_amounts: [10] } } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/terminal/configurations/uc_123"
      end
      should "support requests with args: bbpos_wisepos_e, id" do
        Stripe::Terminal::Configuration.update(
          "tmc_xxxxxxxxxxxxx",
          { bbpos_wisepos_e: { splashscreen: "file_xxxxxxxxxxxxx" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/terminal/configurations/tmc_xxxxxxxxxxxxx"
      end
    end
    context "Terminal.ConnectionToken.create" do
      should "work" do
        Stripe::Terminal::ConnectionToken.create
        assert_requested :post, "#{Stripe.api_base}/v1/terminal/connection_tokens?"
      end
    end
    context "Terminal.Location.create" do
      should "support requests with args: display_name, address" do
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
    end
    context "Terminal.Location.delete" do
      should "support requests with args: id" do
        Stripe::Terminal::Location.delete("tml_xxxxxxxxxxxxx")
        assert_requested :delete, "#{Stripe.api_base}/v1/terminal/locations/tml_xxxxxxxxxxxxx?"
      end
    end
    context "Terminal.Location.list" do
      should "support requests with args: limit" do
        Stripe::Terminal::Location.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/terminal/locations?limit=3"
      end
    end
    context "Terminal.Location.retrieve" do
      should "support requests with args: id" do
        Stripe::Terminal::Location.retrieve("tml_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/terminal/locations/tml_xxxxxxxxxxxxx?"
      end
    end
    context "Terminal.Location.update" do
      should "support requests with args: display_name, id" do
        Stripe::Terminal::Location.update(
          "tml_xxxxxxxxxxxxx",
          { display_name: "My First Store" }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/terminal/locations/tml_xxxxxxxxxxxxx"
      end
    end
    context "Terminal.Reader.cancel_action" do
      should "support requests with args: id" do
        Stripe::Terminal::Reader.cancel_action("tmr_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/terminal/readers/tmr_xxxxxxxxxxxxx/cancel_action?"
      end
    end
    context "Terminal.Reader.create" do
      should "support requests with args: registration_code, label, location" do
        Stripe::Terminal::Reader.create({
          registration_code: "puppies-plug-could",
          label: "Blue Rabbit",
          location: "tml_1234",
        })
        assert_requested :post, "#{Stripe.api_base}/v1/terminal/readers"
      end
    end
    context "Terminal.Reader.delete" do
      should "support requests with args: id" do
        Stripe::Terminal::Reader.delete("tmr_xxxxxxxxxxxxx")
        assert_requested :delete, "#{Stripe.api_base}/v1/terminal/readers/tmr_xxxxxxxxxxxxx?"
      end
    end
    context "Terminal.Reader.list" do
      should "support requests with args: limit" do
        Stripe::Terminal::Reader.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/terminal/readers?limit=3"
      end
    end
    context "Terminal.Reader.process_payment_intent" do
      should "support requests with args: payment_intent, id" do
        Stripe::Terminal::Reader.process_payment_intent(
          "tmr_xxxxxxxxxxxxx",
          { payment_intent: "pi_xxxxxxxxxxxxx" }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/terminal/readers/tmr_xxxxxxxxxxxxx/process_payment_intent"
      end
    end
    context "Terminal.Reader.process_setup_intent" do
      should "support requests with args: setup_intent, customer_consent_collected, id" do
        Stripe::Terminal::Reader.process_setup_intent(
          "tmr_xxxxxxxxxxxxx",
          {
            setup_intent: "seti_xxxxxxxxxxxxx",
            customer_consent_collected: true,
          }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/terminal/readers/tmr_xxxxxxxxxxxxx/process_setup_intent"
      end
    end
    context "Terminal.Reader.retrieve" do
      should "support requests with args: id" do
        Stripe::Terminal::Reader.retrieve("tmr_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/terminal/readers/tmr_xxxxxxxxxxxxx?"
      end
    end
    context "Terminal.Reader.update" do
      should "support requests with args: label, id" do
        Stripe::Terminal::Reader.update(
          "tmr_xxxxxxxxxxxxx",
          { label: "Blue Rabbit" }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/terminal/readers/tmr_xxxxxxxxxxxxx"
      end
    end
    context "TestHelpers.TestClock.advance" do
      should "support requests with args: test_clock, frozen_time" do
        Stripe::TestHelpers::TestClock.advance("clock_xyz", { frozen_time: 142 })
        assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/test_clocks/clock_xyz/advance"
      end
      should "support requests with args: frozen_time, id" do
        Stripe::TestHelpers::TestClock.advance(
          "clock_xxxxxxxxxxxxx",
          { frozen_time: 1_675_552_261 }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/test_clocks/clock_xxxxxxxxxxxxx/advance"
      end
    end
    context "TestHelpers.TestClock.create" do
      should "support requests with args: frozen_time, name" do
        Stripe::TestHelpers::TestClock.create({
          frozen_time: 123,
          name: "cogsworth",
        })
        assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/test_clocks"
      end
      should "support requests with args: frozen_time" do
        Stripe::TestHelpers::TestClock.create({ frozen_time: 1_577_836_800 })
        assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/test_clocks"
      end
    end
    context "TestHelpers.TestClock.delete" do
      should "support requests with args: test_clock" do
        Stripe::TestHelpers::TestClock.delete("clock_xyz")
        assert_requested :delete, "#{Stripe.api_base}/v1/test_helpers/test_clocks/clock_xyz?"
      end
      should "support requests with args: id" do
        Stripe::TestHelpers::TestClock.delete("clock_xxxxxxxxxxxxx")
        assert_requested :delete, "#{Stripe.api_base}/v1/test_helpers/test_clocks/clock_xxxxxxxxxxxxx?"
      end
    end
    context "TestHelpers.TestClock.list" do
      should "work" do
        Stripe::TestHelpers::TestClock.list
        assert_requested :get, "#{Stripe.api_base}/v1/test_helpers/test_clocks?"
      end
      should "support requests with args: limit" do
        Stripe::TestHelpers::TestClock.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/test_helpers/test_clocks?limit=3"
      end
    end
    context "TestHelpers.TestClock.retrieve" do
      should "support requests with args: test_clock" do
        Stripe::TestHelpers::TestClock.retrieve("clock_xyz")
        assert_requested :get, "#{Stripe.api_base}/v1/test_helpers/test_clocks/clock_xyz?"
      end
      should "support requests with args: id" do
        Stripe::TestHelpers::TestClock.retrieve("clock_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/test_helpers/test_clocks/clock_xxxxxxxxxxxxx?"
      end
    end
    context "Token.create" do
      should "support requests with args: card" do
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
      should "support requests with args: bank_account" do
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
      should "support requests with args: pii" do
        Stripe::Token.create({ pii: { id_number: "000000000" } })
        assert_requested :post, "#{Stripe.api_base}/v1/tokens"
      end
      should "support requests with args: account" do
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
      should "support requests with args: person" do
        Stripe::Token.create({
          person: {
            first_name: "Jane",
            last_name: "Doe",
            relationship: { owner: true },
          },
        })
        assert_requested :post, "#{Stripe.api_base}/v1/tokens"
      end
      should "support requests with args: cvc_update" do
        Stripe::Token.create({ cvc_update: { cvc: "123" } })
        assert_requested :post, "#{Stripe.api_base}/v1/tokens"
      end
    end
    context "Token.retrieve" do
      should "support requests with args: id" do
        Stripe::Token.retrieve("tok_xxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/tokens/tok_xxxx?"
      end
    end
    context "Topup.cancel" do
      should "support requests with args: id" do
        Stripe::Topup.cancel("tu_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/topups/tu_xxxxxxxxxxxxx/cancel?"
      end
    end
    context "Topup.create" do
      should "support requests with args: amount, currency, description, statement_descriptor" do
        Stripe::Topup.create({
          amount: 2000,
          currency: "usd",
          description: "Top-up for Jenny Rosen",
          statement_descriptor: "Top-up",
        })
        assert_requested :post, "#{Stripe.api_base}/v1/topups"
      end
    end
    context "Topup.list" do
      should "support requests with args: limit" do
        Stripe::Topup.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/topups?limit=3"
      end
    end
    context "Topup.retrieve" do
      should "support requests with args: id" do
        Stripe::Topup.retrieve("tu_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/topups/tu_xxxxxxxxxxxxx?"
      end
    end
    context "Topup.update" do
      should "support requests with args: metadata, id" do
        Stripe::Topup.update("tu_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
        assert_requested :post, "#{Stripe.api_base}/v1/topups/tu_xxxxxxxxxxxxx"
      end
    end
    context "Transfer.create" do
      should "support requests with args: amount, currency, destination, transfer_group" do
        Stripe::Transfer.create({
          amount: 400,
          currency: "usd",
          destination: "acct_xxxxxxxxxxxxx",
          transfer_group: "ORDER_95",
        })
        assert_requested :post, "#{Stripe.api_base}/v1/transfers"
      end
    end
    context "Transfer.list" do
      should "support requests with args: limit" do
        Stripe::Transfer.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/transfers?limit=3"
      end
    end
    context "Transfer.retrieve" do
      should "support requests with args: id" do
        Stripe::Transfer.retrieve("tr_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/transfers/tr_xxxxxxxxxxxxx?"
      end
    end
    context "Transfer.update" do
      should "support requests with args: metadata, id" do
        Stripe::Transfer.update(
          "tr_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/transfers/tr_xxxxxxxxxxxxx"
      end
    end
    context "Treasury.CreditReversal.create" do
      should "support requests with args: received_credit" do
        Stripe::Treasury::CreditReversal.create({
          received_credit: "rc_xxxxxxxxxxxxx",
        })
        assert_requested :post, "#{Stripe.api_base}/v1/treasury/credit_reversals"
      end
    end
    context "Treasury.CreditReversal.list" do
      should "support requests with args: financial_account, limit" do
        Stripe::Treasury::CreditReversal.list({
          financial_account: "fa_xxxxxxxxxxxxx",
          limit: 3,
        })
        assert_requested :get, "#{Stripe.api_base}/v1/treasury/credit_reversals?financial_account=fa_xxxxxxxxxxxxx&limit=3"
      end
    end
    context "Treasury.CreditReversal.retrieve" do
      should "support requests with args: id" do
        Stripe::Treasury::CreditReversal.retrieve("credrev_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/treasury/credit_reversals/credrev_xxxxxxxxxxxxx?"
      end
    end
    context "Treasury.DebitReversal.create" do
      should "support requests with args: received_debit" do
        Stripe::Treasury::DebitReversal.create({
          received_debit: "rd_xxxxxxxxxxxxx",
        })
        assert_requested :post, "#{Stripe.api_base}/v1/treasury/debit_reversals"
      end
    end
    context "Treasury.DebitReversal.list" do
      should "support requests with args: financial_account, limit" do
        Stripe::Treasury::DebitReversal.list({
          financial_account: "fa_xxxxxxxxxxxxx",
          limit: 3,
        })
        assert_requested :get, "#{Stripe.api_base}/v1/treasury/debit_reversals?financial_account=fa_xxxxxxxxxxxxx&limit=3"
      end
    end
    context "Treasury.DebitReversal.retrieve" do
      should "support requests with args: id" do
        Stripe::Treasury::DebitReversal.retrieve("debrev_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/treasury/debit_reversals/debrev_xxxxxxxxxxxxx?"
      end
    end
    context "Treasury.FinancialAccount.create" do
      should "support requests with args: supported_currencies, features" do
        Stripe::Treasury::FinancialAccount.create({
          supported_currencies: ["usd"],
          features: {},
        })
        assert_requested :post, "#{Stripe.api_base}/v1/treasury/financial_accounts"
      end
    end
    context "Treasury.FinancialAccount.list" do
      should "support requests with args: limit" do
        Stripe::Treasury::FinancialAccount.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/treasury/financial_accounts?limit=3"
      end
    end
    context "Treasury.FinancialAccount.retrieve" do
      should "support requests with args: id" do
        Stripe::Treasury::FinancialAccount.retrieve("fa_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/treasury/financial_accounts/fa_xxxxxxxxxxxxx?"
      end
    end
    context "Treasury.FinancialAccount.retrieve_features" do
      should "support requests with args: parent_id" do
        Stripe::Treasury::FinancialAccount.retrieve_features("fa_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/treasury/financial_accounts/fa_xxxxxxxxxxxxx/features?"
      end
    end
    context "Treasury.FinancialAccount.update" do
      should "support requests with args: metadata, id" do
        Stripe::Treasury::FinancialAccount.update(
          "fa_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/treasury/financial_accounts/fa_xxxxxxxxxxxxx"
      end
    end
    context "Treasury.InboundTransfer.cancel" do
      should "support requests with args: id" do
        Stripe::Treasury::InboundTransfer.cancel("ibt_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/treasury/inbound_transfers/ibt_xxxxxxxxxxxxx/cancel?"
      end
    end
    context "Treasury.InboundTransfer.create" do
      should "support requests with args: financial_account, amount, currency, origin_payment_method, description" do
        Stripe::Treasury::InboundTransfer.create({
          financial_account: "fa_xxxxxxxxxxxxx",
          amount: 10_000,
          currency: "usd",
          origin_payment_method: "pm_xxxxxxxxxxxxx",
          description: "InboundTransfer from my bank account",
        })
        assert_requested :post, "#{Stripe.api_base}/v1/treasury/inbound_transfers"
      end
    end
    context "Treasury.InboundTransfer.fail" do
      should "support requests with args: id, failure_details" do
        Stripe::Treasury::InboundTransfer::TestHelpers.fail(
          "ibt_123",
          { failure_details: { code: "account_closed" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/treasury/inbound_transfers/ibt_123/fail"
      end
    end
    context "Treasury.InboundTransfer.list" do
      should "support requests with args: financial_account, limit" do
        Stripe::Treasury::InboundTransfer.list({
          financial_account: "fa_xxxxxxxxxxxxx",
          limit: 3,
        })
        assert_requested :get, "#{Stripe.api_base}/v1/treasury/inbound_transfers?financial_account=fa_xxxxxxxxxxxxx&limit=3"
      end
    end
    context "Treasury.InboundTransfer.retrieve" do
      should "support requests with args: id" do
        Stripe::Treasury::InboundTransfer.retrieve("ibt_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/treasury/inbound_transfers/ibt_xxxxxxxxxxxxx?"
      end
    end
    context "Treasury.InboundTransfer.return_inbound_transfer" do
      should "support requests with args: id" do
        Stripe::Treasury::InboundTransfer::TestHelpers.return_inbound_transfer("ibt_123")
        assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/treasury/inbound_transfers/ibt_123/return?"
      end
    end
    context "Treasury.InboundTransfer.succeed" do
      should "support requests with args: id" do
        Stripe::Treasury::InboundTransfer::TestHelpers.succeed("ibt_123")
        assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/treasury/inbound_transfers/ibt_123/succeed?"
      end
    end
    context "Treasury.OutboundPayment.cancel" do
      should "support requests with args: id" do
        Stripe::Treasury::OutboundPayment.cancel("bot_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/treasury/outbound_payments/bot_xxxxxxxxxxxxx/cancel?"
      end
    end
    context "Treasury.OutboundPayment.create" do
      should "support requests with args: financial_account, amount, currency, customer, destination_payment_method, description" do
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
    end
    context "Treasury.OutboundPayment.list" do
      should "support requests with args: financial_account, limit" do
        Stripe::Treasury::OutboundPayment.list({
          financial_account: "fa_xxxxxxxxxxxxx",
          limit: 3,
        })
        assert_requested :get, "#{Stripe.api_base}/v1/treasury/outbound_payments?financial_account=fa_xxxxxxxxxxxxx&limit=3"
      end
    end
    context "Treasury.OutboundPayment.retrieve" do
      should "support requests with args: id" do
        Stripe::Treasury::OutboundPayment.retrieve("bot_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/treasury/outbound_payments/bot_xxxxxxxxxxxxx?"
      end
    end
    context "Treasury.OutboundTransfer.cancel" do
      should "support requests with args: id" do
        Stripe::Treasury::OutboundTransfer.cancel("obt_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/treasury/outbound_transfers/obt_xxxxxxxxxxxxx/cancel?"
      end
    end
    context "Treasury.OutboundTransfer.create" do
      should "support requests with args: financial_account, destination_payment_method, amount, currency, description" do
        Stripe::Treasury::OutboundTransfer.create({
          financial_account: "fa_xxxxxxxxxxxxx",
          destination_payment_method: "pm_xxxxxxxxxxxxx",
          amount: 500,
          currency: "usd",
          description: "OutboundTransfer to my external bank account",
        })
        assert_requested :post, "#{Stripe.api_base}/v1/treasury/outbound_transfers"
      end
    end
    context "Treasury.OutboundTransfer.fail" do
      should "support requests with args: id" do
        Stripe::Treasury::OutboundTransfer::TestHelpers.fail("obt_123")
        assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/treasury/outbound_transfers/obt_123/fail?"
      end
    end
    context "Treasury.OutboundTransfer.list" do
      should "support requests with args: financial_account, limit" do
        Stripe::Treasury::OutboundTransfer.list({
          financial_account: "fa_xxxxxxxxxxxxx",
          limit: 3,
        })
        assert_requested :get, "#{Stripe.api_base}/v1/treasury/outbound_transfers?financial_account=fa_xxxxxxxxxxxxx&limit=3"
      end
    end
    context "Treasury.OutboundTransfer.post" do
      should "support requests with args: id" do
        Stripe::Treasury::OutboundTransfer::TestHelpers.post("obt_123")
        assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/treasury/outbound_transfers/obt_123/post?"
      end
    end
    context "Treasury.OutboundTransfer.retrieve" do
      should "support requests with args: id" do
        Stripe::Treasury::OutboundTransfer.retrieve("obt_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/treasury/outbound_transfers/obt_xxxxxxxxxxxxx?"
      end
    end
    context "Treasury.OutboundTransfer.return_outbound_transfer" do
      should "support requests with args: id, returned_details" do
        Stripe::Treasury::OutboundTransfer::TestHelpers.return_outbound_transfer(
          "obt_123",
          { returned_details: { code: "account_closed" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/treasury/outbound_transfers/obt_123/return"
      end
    end
    context "Treasury.ReceivedCredit.create" do
      should "support requests with args: financial_account, network, amount, currency" do
        Stripe::Treasury::ReceivedCredit::TestHelpers.create({
          financial_account: "fa_123",
          network: "ach",
          amount: 1234,
          currency: "usd",
        })
        assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/treasury/received_credits"
      end
    end
    context "Treasury.ReceivedCredit.list" do
      should "support requests with args: financial_account, limit" do
        Stripe::Treasury::ReceivedCredit.list({
          financial_account: "fa_xxxxxxxxxxxxx",
          limit: 3,
        })
        assert_requested :get, "#{Stripe.api_base}/v1/treasury/received_credits?financial_account=fa_xxxxxxxxxxxxx&limit=3"
      end
    end
    context "Treasury.ReceivedCredit.retrieve" do
      should "support requests with args: id" do
        Stripe::Treasury::ReceivedCredit.retrieve("rc_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/treasury/received_credits/rc_xxxxxxxxxxxxx?"
      end
    end
    context "Treasury.ReceivedDebit.create" do
      should "support requests with args: financial_account, network, amount, currency" do
        Stripe::Treasury::ReceivedDebit::TestHelpers.create({
          financial_account: "fa_123",
          network: "ach",
          amount: 1234,
          currency: "usd",
        })
        assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/treasury/received_debits"
      end
    end
    context "Treasury.ReceivedDebit.list" do
      should "support requests with args: financial_account, limit" do
        Stripe::Treasury::ReceivedDebit.list({
          financial_account: "fa_xxxxxxxxxxxxx",
          limit: 3,
        })
        assert_requested :get, "#{Stripe.api_base}/v1/treasury/received_debits?financial_account=fa_xxxxxxxxxxxxx&limit=3"
      end
    end
    context "Treasury.ReceivedDebit.retrieve" do
      should "support requests with args: id" do
        Stripe::Treasury::ReceivedDebit.retrieve("rd_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/treasury/received_debits/rd_xxxxxxxxxxxxx?"
      end
    end
    context "Treasury.Transaction.list" do
      should "support requests with args: financial_account, limit" do
        Stripe::Treasury::Transaction.list({
          financial_account: "fa_xxxxxxxxxxxxx",
          limit: 3,
        })
        assert_requested :get, "#{Stripe.api_base}/v1/treasury/transactions?financial_account=fa_xxxxxxxxxxxxx&limit=3"
      end
    end
    context "Treasury.Transaction.retrieve" do
      should "support requests with args: id" do
        Stripe::Treasury::Transaction.retrieve("trxn_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/treasury/transactions/trxn_xxxxxxxxxxxxx?"
      end
    end
    context "Treasury.TransactionEntry.list" do
      should "support requests with args: financial_account, limit" do
        Stripe::Treasury::TransactionEntry.list({
          financial_account: "fa_xxxxxxxxxxxxx",
          limit: 3,
        })
        assert_requested :get, "#{Stripe.api_base}/v1/treasury/transaction_entries?financial_account=fa_xxxxxxxxxxxxx&limit=3"
      end
    end
    context "Treasury.TransactionEntry.retrieve" do
      should "support requests with args: id" do
        Stripe::Treasury::TransactionEntry.retrieve("trxne_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/treasury/transaction_entries/trxne_xxxxxxxxxxxxx?"
      end
    end
    context "WebhookEndpoint.create" do
      should "support requests with args: url, enabled_events" do
        Stripe::WebhookEndpoint.create({
          url: "https://example.com/my/webhook/endpoint",
          enabled_events: ["charge.failed", "charge.succeeded"],
        })
        assert_requested :post, "#{Stripe.api_base}/v1/webhook_endpoints"
      end
    end
    context "WebhookEndpoint.delete" do
      should "support requests with args: id" do
        Stripe::WebhookEndpoint.delete("we_xxxxxxxxxxxxx")
        assert_requested :delete, "#{Stripe.api_base}/v1/webhook_endpoints/we_xxxxxxxxxxxxx?"
      end
    end
    context "WebhookEndpoint.list" do
      should "support requests with args: limit" do
        Stripe::WebhookEndpoint.list({ limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/webhook_endpoints?limit=3"
      end
    end
    context "WebhookEndpoint.retrieve" do
      should "support requests with args: id" do
        Stripe::WebhookEndpoint.retrieve("we_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/webhook_endpoints/we_xxxxxxxxxxxxx?"
      end
    end
    context "WebhookEndpoint.update" do
      should "support requests with args: url, id" do
        Stripe::WebhookEndpoint.update(
          "we_xxxxxxxxxxxxx",
          { url: "https://example.com/new_endpoint" }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/webhook_endpoints/we_xxxxxxxxxxxxx"
      end
    end
  end
end
