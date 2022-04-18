# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)
module Stripe
  class CodegennedExampleTest < Test::Unit::TestCase
    context "Account.create" do
      should "support requests with args: type, country, email, capabilities" do
        Stripe::Account.create(
          type: "custom",
          country: "US",
          email: "jenny.rosen@example.com",
          capabilities: {
            card_payments: { requested: true },
            transfers: { requested: true },
          }
        )
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
        Stripe::Account.list(limit: 3)
        assert_requested :get, "#{Stripe.api_base}/v1/accounts?limit=3"
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
        Stripe::AccountLink.create(
          account: "acct_xxxxxxxxxxxxx",
          refresh_url: "https://example.com/reauth",
          return_url: "https://example.com/return",
          type: "account_onboarding"
        )
        assert_requested :post, "#{Stripe.api_base}/v1/account_links"
      end
    end
    context "ApplicationFee.list" do
      should "support requests with args: limit" do
        Stripe::ApplicationFee.list(limit: 3)
        assert_requested :get, "#{Stripe.api_base}/v1/application_fees?limit=3"
      end
    end
    context "ApplicationFee.retrieve" do
      should "support requests with args: id" do
        Stripe::ApplicationFee.retrieve("fee_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/application_fees/fee_xxxxxxxxxxxxx?"
      end
    end
    context "Authorization.approve" do
      should "support requests with args: id" do
        Stripe::Issuing::Authorization.approve("iauth_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/issuing/authorizations/iauth_xxxxxxxxxxxxx/approve?"
      end
    end
    context "Authorization.decline" do
      should "support requests with args: id" do
        Stripe::Issuing::Authorization.decline("iauth_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/issuing/authorizations/iauth_xxxxxxxxxxxxx/decline?"
      end
    end
    context "Authorization.list" do
      should "support requests with args: limit" do
        Stripe::Issuing::Authorization.list(limit: 3)
        assert_requested :get, "#{Stripe.api_base}/v1/issuing/authorizations?limit=3"
      end
    end
    context "Authorization.retrieve" do
      should "support requests with args: id" do
        Stripe::Issuing::Authorization.retrieve("iauth_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/issuing/authorizations/iauth_xxxxxxxxxxxxx?"
      end
    end
    context "Authorization.update" do
      should "support requests with args: metadata, id" do
        Stripe::Issuing::Authorization.update(
          "iauth_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/issuing/authorizations/iauth_xxxxxxxxxxxxx"
      end
    end
    context "BalanceTransaction.list" do
      should "support requests with args: limit" do
        Stripe::BalanceTransaction.list(limit: 3)
        assert_requested :get, "#{Stripe.api_base}/v1/balance_transactions?limit=3"
      end
    end
    context "BalanceTransaction.retrieve" do
      should "support requests with args: id" do
        Stripe::BalanceTransaction.retrieve("txn_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/balance_transactions/txn_xxxxxxxxxxxxx?"
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
    context "Card.create" do
      should "support requests with args: cardholder, currency, type" do
        Stripe::Issuing::Card.create(
          cardholder: "ich_xxxxxxxxxxxxx",
          currency: "usd",
          type: "virtual"
        )
        assert_requested :post, "#{Stripe.api_base}/v1/issuing/cards"
      end
    end
    context "Card.list" do
      should "support requests with args: limit" do
        Stripe::Issuing::Card.list(limit: 3)
        assert_requested :get, "#{Stripe.api_base}/v1/issuing/cards?limit=3"
      end
    end
    context "Card.retrieve" do
      should "support requests with args: id" do
        Stripe::Issuing::Card.retrieve("ic_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/issuing/cards/ic_xxxxxxxxxxxxx?"
      end
    end
    context "Card.update" do
      should "support requests with args: metadata, id" do
        Stripe::Issuing::Card.update(
          "ic_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/issuing/cards/ic_xxxxxxxxxxxxx"
      end
    end
    context "Cardholder.create" do
      should "support requests with args: type, name, email, phone_number, billing" do
        Stripe::Issuing::Cardholder.create(
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
          }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/issuing/cardholders"
      end
    end
    context "Cardholder.list" do
      should "support requests with args: limit" do
        Stripe::Issuing::Cardholder.list(limit: 3)
        assert_requested :get, "#{Stripe.api_base}/v1/issuing/cardholders?limit=3"
      end
    end
    context "Cardholder.retrieve" do
      should "support requests with args: id" do
        Stripe::Issuing::Cardholder.retrieve("ich_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/issuing/cardholders/ich_xxxxxxxxxxxxx?"
      end
    end
    context "Cardholder.update" do
      should "support requests with args: metadata, id" do
        Stripe::Issuing::Cardholder.update(
          "ich_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/issuing/cardholders/ich_xxxxxxxxxxxxx"
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
        Stripe::Charge.create(
          amount: 2000,
          currency: "usd",
          source: "tok_xxxx",
          description: "My First Test Charge (created for API docs)"
        )
        assert_requested :post, "#{Stripe.api_base}/v1/charges"
      end
    end
    context "Charge.list" do
      should "support requests with args: limit" do
        Stripe::Charge.list(limit: 3)
        assert_requested :get, "#{Stripe.api_base}/v1/charges?limit=3"
      end
    end
    context "Charge.retrieve" do
      should "support requests with args: id" do
        Stripe::Charge.retrieve("ch_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/charges/ch_xxxxxxxxxxxxx?"
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
    context "Configuration.create" do
      should "support requests with args: features, business_profile" do
        Stripe::BillingPortal::Configuration.create(
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
          }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/billing_portal/configurations"
      end
      should "work" do
        Stripe::Terminal::Configuration.create
        assert_requested :post, "#{Stripe.api_base}/v1/terminal/configurations?"
      end
    end
    context "Configuration.delete" do
      should "support requests with args: configuration" do
        Stripe::Terminal::Configuration.delete("uc_123")
        assert_requested :delete, "#{Stripe.api_base}/v1/terminal/configurations/uc_123?"
      end
    end
    context "Configuration.list" do
      should "support requests with args: limit" do
        Stripe::BillingPortal::Configuration.list(limit: 3)
        assert_requested :get, "#{Stripe.api_base}/v1/billing_portal/configurations?limit=3"
      end
      should "work" do
        Stripe::Terminal::Configuration.list
        assert_requested :get, "#{Stripe.api_base}/v1/terminal/configurations?"
      end
    end
    context "Configuration.retrieve" do
      should "support requests with args: id" do
        Stripe::BillingPortal::Configuration.retrieve("bpc_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/billing_portal/configurations/bpc_xxxxxxxxxxxxx?"
      end
      should "support requests with args: configuration" do
        Stripe::Terminal::Configuration.retrieve("uc_123")
        assert_requested :get, "#{Stripe.api_base}/v1/terminal/configurations/uc_123?"
      end
    end
    context "Configuration.update" do
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
      should "support requests with args: configuration, tipping" do
        Stripe::Terminal::Configuration.update(
          "uc_123",
          { tipping: { usd: { fixed_amounts: [10] } } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/terminal/configurations/uc_123"
      end
    end
    context "ConnectionToken.create" do
      should "work" do
        Stripe::Terminal::ConnectionToken.create
        assert_requested :post, "#{Stripe.api_base}/v1/terminal/connection_tokens?"
      end
    end
    context "CountrySpec.list" do
      should "support requests with args: limit" do
        Stripe::CountrySpec.list(limit: 3)
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
        Stripe::Coupon.create(
          percent_off: 25,
          duration: "repeating",
          duration_in_months: 3
        )
        assert_requested :post, "#{Stripe.api_base}/v1/coupons"
      end
    end
    context "Coupon.delete" do
      should "support requests with args: id" do
        Stripe::Coupon.delete("co_xxxxxxxxxxxxx")
        assert_requested :delete,  "#{Stripe.api_base}/v1/coupons/co_xxxxxxxxxxxxx?"
      end
    end
    context "Coupon.list" do
      should "support requests with args: limit" do
        Stripe::Coupon.list(limit: 3)
        assert_requested :get, "#{Stripe.api_base}/v1/coupons?limit=3"
      end
    end
    context "Coupon.retrieve" do
      should "support requests with args: id" do
        Stripe::Coupon.retrieve("25_5OFF")
        assert_requested :get, "#{Stripe.api_base}/v1/coupons/25_5OFF?"
      end
    end
    context "Coupon.update" do
      should "support requests with args: metadata, id" do
        Stripe::Coupon.update(
          "co_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/coupons/co_xxxxxxxxxxxxx"
      end
    end
    context "CreditNote.create" do
      should "support requests with args: invoice, lines" do
        Stripe::CreditNote.create(
          invoice: "in_xxxxxxxxxxxxx",
          lines: [
            {
              type: "invoice_line_item",
              invoice_line_item: "il_xxxxxxxxxxxxx",
              quantity: 1,
            },
          ]
        )
        assert_requested :post, "#{Stripe.api_base}/v1/credit_notes"
      end
    end
    context "CreditNote.list" do
      should "support requests with args: limit" do
        Stripe::CreditNote.list(limit: 3)
        assert_requested :get, "#{Stripe.api_base}/v1/credit_notes?limit=3"
      end
    end
    context "CreditNote.retrieve" do
      should "support requests with args: id" do
        Stripe::CreditNote.retrieve("cn_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/credit_notes/cn_xxxxxxxxxxxxx?"
      end
    end
    context "CreditNote.update" do
      should "support requests with args: metadata, id" do
        Stripe::CreditNote.update(
          "cn_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/credit_notes/cn_xxxxxxxxxxxxx"
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
        Stripe::Customer.create(
          description: "My First Test Customer (created for API docs)"
        )
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
    context "Customer.list" do
      should "support requests with args: limit" do
        Stripe::Customer.list(limit: 3)
        assert_requested :get, "#{Stripe.api_base}/v1/customers?limit=3"
      end
      should "support requests with args: limit2" do
        Stripe::Customer.list(limit: 3)
        assert_requested :get, "#{Stripe.api_base}/v1/customers?limit=3"
      end
    end
    context "Customer.list_payment_methods" do
      should "support requests with args: customer, type" do
        Stripe::Customer.list_payment_methods("cus_xyz", { type: "card" })
        assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xyz/payment_methods?type=card"
      end
    end
    context "Customer.retrieve" do
      should "support requests with args: id" do
        Stripe::Customer.retrieve("cus_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/customers/cus_xxxxxxxxxxxxx?"
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
    context "Dispute.create" do
      should "support requests with args: transaction, evidence" do
        Stripe::Issuing::Dispute.create(
          transaction: "ipi_xxxxxxxxxxxxx",
          evidence: {
            reason: "fraudulent",
            fraudulent: { explanation: "Purchase was unrecognized." },
          }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/issuing/disputes"
      end
    end
    context "Dispute.list" do
      should "support requests with args: limit" do
        Stripe::Dispute.list(limit: 3)
        assert_requested :get, "#{Stripe.api_base}/v1/disputes?limit=3"
      end
      should "support requests with args: limit2" do
        Stripe::Issuing::Dispute.list(limit: 3)
        assert_requested :get, "#{Stripe.api_base}/v1/issuing/disputes?limit=3"
      end
    end
    context "Dispute.retrieve" do
      should "support requests with args: id" do
        Stripe::Dispute.retrieve("dp_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/disputes/dp_xxxxxxxxxxxxx?"
      end
      should "support requests with args: id2" do
        Stripe::Issuing::Dispute.retrieve("idp_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/issuing/disputes/idp_xxxxxxxxxxxxx?"
      end
    end
    context "Dispute.submit" do
      should "support requests with args: id" do
        Stripe::Issuing::Dispute.submit("idp_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/issuing/disputes/idp_xxxxxxxxxxxxx/submit?"
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
      should "support requests with args: evidence, id" do
        Stripe::Issuing::Dispute.update(
          "idp_xxxxxxxxxxxxx",
          {
            evidence: {
              reason: "not_received",
              not_received: {
                expected_at: 1_590_000_000,
                explanation: "",
                product_description: "Baseball cap",
                product_type: "merchandise",
              },
            },
          }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/issuing/disputes/idp_xxxxxxxxxxxxx"
      end
    end
    context "EarlyFraudWarning.list" do
      should "support requests with args: limit" do
        Stripe::Radar::EarlyFraudWarning.list(limit: 3)
        assert_requested :get, "#{Stripe.api_base}/v1/radar/early_fraud_warnings?limit=3"
      end
    end
    context "EarlyFraudWarning.retrieve" do
      should "support requests with args: id" do
        Stripe::Radar::EarlyFraudWarning.retrieve("issfr_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/radar/early_fraud_warnings/issfr_xxxxxxxxxxxxx?"
      end
    end
    context "Event.list" do
      should "support requests with args: limit" do
        Stripe::Event.list(limit: 3)
        assert_requested :get, "#{Stripe.api_base}/v1/events?limit=3"
      end
    end
    context "Event.retrieve" do
      should "support requests with args: id" do
        Stripe::Event.retrieve("evt_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/events/evt_xxxxxxxxxxxxx?"
      end
    end
    context "FeeRefund.list" do
      should "support requests with args: limit, parent_id" do
        Stripe::ApplicationFee.list_refunds("fee_xxxxxxxxxxxxx", { limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/application_fees/fee_xxxxxxxxxxxxx/refunds?limit=3"
      end
    end
    context "FeeRefund.retrieve" do
      should "support requests with args: parent_id, id" do
        Stripe::ApplicationFee.retrieve_refund(
          "fee_xxxxxxxxxxxxx",
          "fr_xxxxxxxxxxxxx"
        )
        assert_requested :get, "#{Stripe.api_base}/v1/application_fees/fee_xxxxxxxxxxxxx/refunds/fr_xxxxxxxxxxxxx?"
      end
    end
    context "FeeRefund.update" do
      should "support requests with args: metadata, parent_id, id" do
        Stripe::ApplicationFee.update_refund(
          "fee_xxxxxxxxxxxxx",
          "fr_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post,  "#{Stripe.api_base}/v1/application_fees/fee_xxxxxxxxxxxxx/refunds/fr_xxxxxxxxxxxxx"
      end
    end
    context "File.list" do
      should "support requests with args: limit" do
        Stripe::File.list(limit: 3)
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
        Stripe::FileLink.create(file: "file_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/file_links"
      end
    end
    context "FileLink.list" do
      should "support requests with args: limit" do
        Stripe::FileLink.list(limit: 3)
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
    context "Invoice.create" do
      should "support requests with args: customer" do
        Stripe::Invoice.create(customer: "cus_xxxxxxxxxxxxx")
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
        Stripe::Invoice.list(limit: 3)
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
    end
    context "Invoice.send_invoice" do
      should "support requests with args: id" do
        Stripe::Invoice.send_invoice("in_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/invoices/in_xxxxxxxxxxxxx/send?"
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
        Stripe::InvoiceItem.create(
          customer: "cus_xxxxxxxxxxxxx",
          price: "price_xxxxxxxxxxxxx"
        )
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
        Stripe::InvoiceItem.list(limit: 3)
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
    context "Location.create" do
      should "support requests with args: display_name, address" do
        Stripe::Terminal::Location.create(
          display_name: "My First Store",
          address: {
            line1: "1234 Main Street",
            city: "San Francisco",
            country: "US",
            postal_code: "94111",
          }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/terminal/locations"
      end
    end
    context "Location.delete" do
      should "support requests with args: id" do
        Stripe::Terminal::Location.delete("tml_xxxxxxxxxxxxx")
        assert_requested :delete, "#{Stripe.api_base}/v1/terminal/locations/tml_xxxxxxxxxxxxx?"
      end
    end
    context "Location.list" do
      should "support requests with args: limit" do
        Stripe::Terminal::Location.list(limit: 3)
        assert_requested :get, "#{Stripe.api_base}/v1/terminal/locations?limit=3"
      end
    end
    context "Location.retrieve" do
      should "support requests with args: id" do
        Stripe::Terminal::Location.retrieve("tml_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/terminal/locations/tml_xxxxxxxxxxxxx?"
      end
    end
    context "Location.update" do
      should "support requests with args: display_name, id" do
        Stripe::Terminal::Location.update(
          "tml_xxxxxxxxxxxxx",
          { display_name: "My First Store" }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/terminal/locations/tml_xxxxxxxxxxxxx"
      end
    end
    context "Mandate.retrieve" do
      should "support requests with args: id" do
        Stripe::Mandate.retrieve("mandate_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/mandates/mandate_xxxxxxxxxxxxx?"
      end
    end
    context "Order.create" do
      should "support requests with args: currency, email, items, shipping" do
        Stripe::Order.create(
          currency: "usd",
          email: "jenny.rosen@example.com",
          items: [{ type: "sku", parent: "sku_xxxxxxxxxxxxx" }],
          shipping: {
            name: "Jenny Rosen",
            address: {
              line1: "1234 Main Street",
              city: "San Francisco",
              state: "CA",
              country: "US",
              postal_code: "94111",
            },
          }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/orders"
      end
    end
    context "Order.list" do
      should "support requests with args: limit" do
        Stripe::Order.list(limit: 3)
        assert_requested :get, "#{Stripe.api_base}/v1/orders?limit=3"
      end
    end
    context "Order.pay" do
      should "support requests with args: source, id" do
        Stripe::Order.pay("or_xxxxxxxxxxxxx", { source: "tok_xxxx" })
        assert_requested :post, "#{Stripe.api_base}/v1/orders/or_xxxxxxxxxxxxx/pay"
      end
    end
    context "Order.retrieve" do
      should "support requests with args: id" do
        Stripe::Order.retrieve("or_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/orders/or_xxxxxxxxxxxxx?"
      end
    end
    context "Order.update" do
      should "support requests with args: metadata, id" do
        Stripe::Order.update("or_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
        assert_requested :post, "#{Stripe.api_base}/v1/orders/or_xxxxxxxxxxxxx"
      end
    end
    context "OrderReturn.list" do
      should "support requests with args: limit" do
        Stripe::OrderReturn.list(limit: 3)
        assert_requested :get, "#{Stripe.api_base}/v1/order_returns?limit=3"
      end
    end
    context "OrderReturn.retrieve" do
      should "support requests with args: id" do
        Stripe::OrderReturn.retrieve("orret_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/order_returns/orret_xxxxxxxxxxxxx?"
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
      should "support requests with args: amount, currency, payment_method_types" do
        Stripe::PaymentIntent.create(
          amount: 2000,
          currency: "usd",
          payment_method_types: ["card"]
        )
        assert_requested :post, "#{Stripe.api_base}/v1/payment_intents"
      end
      should "support requests with args: amount, currency, automatic_payment_methods" do
        Stripe::PaymentIntent.create(
          amount: 1099,
          currency: "eur",
          automatic_payment_methods: { enabled: true }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/payment_intents"
      end
    end
    context "PaymentIntent.list" do
      should "support requests with args: limit" do
        Stripe::PaymentIntent.list(limit: 3)
        assert_requested :get, "#{Stripe.api_base}/v1/payment_intents?limit=3"
      end
    end
    context "PaymentIntent.retrieve" do
      should "support requests with args: id" do
        Stripe::PaymentIntent.retrieve("pi_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/payment_intents/pi_xxxxxxxxxxxxx?"
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
    end
    context "PaymentLink.create" do
      should "support requests with args: line_items" do
        Stripe::PaymentLink.create(
          line_items: [{ price: "price_xxxxxxxxxxxxx", quantity: 1 }]
        )
        assert_requested :post, "#{Stripe.api_base}/v1/payment_links"
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
        Stripe::PaymentMethod.create(
          type: "card",
          card: {
            number: "4242424242424242",
            exp_month: 5,
            exp_year: 2022,
            cvc: "314",
          }
        )
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
        Stripe::PaymentMethod.list(customer: "cus_xxxxxxxxxxxxx", type: "card")
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
    context "Payout.cancel" do
      should "support requests with args: id" do
        Stripe::Payout.cancel("po_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/payouts/po_xxxxxxxxxxxxx/cancel?"
      end
    end
    context "Payout.create" do
      should "support requests with args: amount, currency" do
        Stripe::Payout.create(amount: 1100, currency: "usd")
        assert_requested :post, "#{Stripe.api_base}/v1/payouts"
      end
    end
    context "Payout.list" do
      should "support requests with args: limit" do
        Stripe::Payout.list(limit: 3)
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
    context "Person.list" do
      should "support requests with args: limit, parent_id" do
        Stripe::Account.list_persons("acct_xxxxxxxxxxxxx", { limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/accounts/acct_xxxxxxxxxxxxx/persons?limit=3"
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
        Stripe::Plan.create(
          amount: 2000,
          currency: "usd",
          interval: "month",
          product: "prod_xxxxxxxxxxxxx"
        )
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
        Stripe::Plan.list(limit: 3)
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
      should "support requests with args: unit_amount, currency, recurring, product" do
        Stripe::Price.create(
          unit_amount: 2000,
          currency: "usd",
          recurring: { interval: "month" },
          product: "prod_xxxxxxxxxxxxx"
        )
        assert_requested :post, "#{Stripe.api_base}/v1/prices"
      end
    end
    context "Price.list" do
      should "support requests with args: limit" do
        Stripe::Price.list(limit: 3)
        assert_requested :get, "#{Stripe.api_base}/v1/prices?limit=3"
      end
    end
    context "Price.retrieve" do
      should "support requests with args: id" do
        Stripe::Price.retrieve("price_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/prices/price_xxxxxxxxxxxxx?"
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
        Stripe::Product.create(name: "Gold Special")
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
        Stripe::Product.list(limit: 3)
        assert_requested :get, "#{Stripe.api_base}/v1/products?limit=3"
      end
    end
    context "Product.retrieve" do
      should "support requests with args: id" do
        Stripe::Product.retrieve("prod_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/products/prod_xxxxxxxxxxxxx?"
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
        Stripe::PromotionCode.create(coupon: "25_5OFF")
        assert_requested :post, "#{Stripe.api_base}/v1/promotion_codes"
      end
    end
    context "PromotionCode.list" do
      should "support requests with args: limit" do
        Stripe::PromotionCode.list(limit: 3)
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
    context "Reader.create" do
      should "support requests with args: registration_code, label, location" do
        Stripe::Terminal::Reader.create(
          registration_code: "puppies-plug-could",
          label: "Blue Rabbit",
          location: "tml_1234"
        )
        assert_requested :post, "#{Stripe.api_base}/v1/terminal/readers"
      end
    end
    context "Reader.delete" do
      should "support requests with args: id" do
        Stripe::Terminal::Reader.delete("tmr_P400-123-456-789")
        assert_requested :delete, "#{Stripe.api_base}/v1/terminal/readers/tmr_P400-123-456-789?"
      end
    end
    context "Reader.list" do
      should "support requests with args: limit" do
        Stripe::Terminal::Reader.list(limit: 3)
        assert_requested :get, "#{Stripe.api_base}/v1/terminal/readers?limit=3"
      end
    end
    context "Reader.retrieve" do
      should "support requests with args: id" do
        Stripe::Terminal::Reader.retrieve("tmr_P400-123-456-789")
        assert_requested :get, "#{Stripe.api_base}/v1/terminal/readers/tmr_P400-123-456-789?"
      end
    end
    context "Reader.update" do
      should "support requests with args: label, id" do
        Stripe::Terminal::Reader.update(
          "tmr_P400-123-456-789",
          { label: "Blue Rabbit" }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/terminal/readers/tmr_P400-123-456-789"
      end
    end
    context "Refund.create" do
      should "support requests with args: charge" do
        Stripe::Refund.create(charge: "ch_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/refunds"
      end
    end
    context "Refund.list" do
      should "support requests with args: limit" do
        Stripe::Refund.list(limit: 3)
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
    context "ReportRun.create" do
      should "support requests with args: report_type, parameters" do
        Stripe::Reporting::ReportRun.create(
          report_type: "balance.summary.1",
          parameters: { interval_start: 1_522_540_800, interval_end: 1_525_132_800 }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/reporting/report_runs"
      end
    end
    context "ReportRun.list" do
      should "support requests with args: limit" do
        Stripe::Reporting::ReportRun.list(limit: 3)
        assert_requested :get, "#{Stripe.api_base}/v1/reporting/report_runs?limit=3"
      end
    end
    context "ReportRun.retrieve" do
      should "support requests with args: id" do
        Stripe::Reporting::ReportRun.retrieve("frr_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/reporting/report_runs/frr_xxxxxxxxxxxxx?"
      end
    end
    context "ReportType.list" do
      should "work" do
        Stripe::Reporting::ReportType.list
        assert_requested :get, "#{Stripe.api_base}/v1/reporting/report_types?"
      end
    end
    context "ReportType.retrieve" do
      should "support requests with args: id" do
        Stripe::Reporting::ReportType.retrieve("balance.summary.1")
        assert_requested :get, "#{Stripe.api_base}/v1/reporting/report_types/balance.summary.1?"
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
        Stripe::Review.list(limit: 3)
        assert_requested :get, "#{Stripe.api_base}/v1/reviews?limit=3"
      end
    end
    context "Review.retrieve" do
      should "support requests with args: id" do
        Stripe::Review.retrieve("prv_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/reviews/prv_xxxxxxxxxxxxx?"
      end
    end
    context "ScheduledQueryRun.list" do
      should "support requests with args: limit" do
        Stripe::Sigma::ScheduledQueryRun.list(limit: 3)
        assert_requested :get, "#{Stripe.api_base}/v1/sigma/scheduled_query_runs?limit=3"
      end
    end
    context "ScheduledQueryRun.retrieve" do
      should "support requests with args: id" do
        Stripe::Sigma::ScheduledQueryRun.retrieve("sqr_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/sigma/scheduled_query_runs/sqr_xxxxxxxxxxxxx?"
      end
    end
    context "Session.create" do
      should "support requests with args: success_url, cancel_url, payment_method_types, line_items, mode" do
        Stripe::Checkout::Session.create(
          success_url: "https://example.com/success",
          cancel_url: "https://example.com/cancel",
          payment_method_types: ["card"],
          line_items: [{ price: "price_xxxxxxxxxxxxx", quantity: 2 }],
          mode: "payment"
        )
        assert_requested :post, "#{Stripe.api_base}/v1/checkout/sessions"
      end
      should "support requests with args: customer, return_url" do
        Stripe::BillingPortal::Session.create(
          customer: "cus_xxxxxxxxxxxxx",
          return_url: "https://example.com/account"
        )
        assert_requested :post, "#{Stripe.api_base}/v1/billing_portal/sessions"
      end
      should "support requests with args: success_url, cancel_url, mode, shipping_options" do
        Stripe::Checkout::Session.create(
          success_url: "https://example.com/success",
          cancel_url: "https://example.com/cancel",
          mode: "payment",
          shipping_options: [
            { shipping_rate: "shr_standard" },
            {
              shipping_rate_data: {
                display_name: "Standard",
                delivery_estimate: {
                  minimum: { unit: "day", value: 5 },
                  maximum: { unit: "day", value: 7 },
                },
              },
            },
          ]
        )
        assert_requested :post, "#{Stripe.api_base}/v1/checkout/sessions"
      end
    end
    context "Session.expire" do
      should "support requests with args: session" do
        Stripe::Checkout::Session.expire("sess_xyz")
        assert_requested :post, "#{Stripe.api_base}/v1/checkout/sessions/sess_xyz/expire?"
      end
    end
    context "Session.list" do
      should "support requests with args: limit" do
        Stripe::Checkout::Session.list(limit: 3)
        assert_requested :get, "#{Stripe.api_base}/v1/checkout/sessions?limit=3"
      end
    end
    context "Session.retrieve" do
      should "support requests with args: id" do
        Stripe::Checkout::Session.retrieve("cs_test_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/checkout/sessions/cs_test_xxxxxxxxxxxxx?"
      end
    end
    context "SetupAttempt.list" do
      should "support requests with args: setup_intent, limit" do
        Stripe::SetupAttempt.list(setup_intent: "seti_xxxxxxxxxxxxx", limit: 3)
        assert_requested :get, "#{Stripe.api_base}/v1/setup_attempts?setup_intent=seti_xxxxxxxxxxxxx&limit=3"
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
        Stripe::SetupIntent.create(payment_method_types: ["card"])
        assert_requested :post, "#{Stripe.api_base}/v1/setup_intents"
      end
    end
    context "SetupIntent.list" do
      should "support requests with args: limit" do
        Stripe::SetupIntent.list(limit: 3)
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
    end
    context "ShippingRate.create" do
      should "support requests with args: display_name, fixed_amount, type" do
        Stripe::ShippingRate.create(
          display_name: "Sample Shipper",
          fixed_amount: { currency: "usd", amount: 400 },
          type: "fixed_amount"
        )
        assert_requested :post, "#{Stripe.api_base}/v1/shipping_rates"
      end
    end
    context "ShippingRate.list" do
      should "work" do
        Stripe::ShippingRate.list
        assert_requested :get, "#{Stripe.api_base}/v1/shipping_rates?"
      end
    end
    context "SKU.create" do
      should "support requests with args: attributes, price, currency, inventory, product" do
        Stripe::SKU.create(
          attributes: { size: "Medium", gender: "Unisex" },
          price: 1500,
          currency: "usd",
          inventory: { type: "finite", quantity: 500 },
          product: "prod_xxxxxxxxxxxxx"
        )
        assert_requested :post, "#{Stripe.api_base}/v1/skus"
      end
    end
    context "SKU.delete" do
      should "support requests with args: id" do
        Stripe::SKU.delete("sku_xxxxxxxxxxxxx")
        assert_requested :delete, "#{Stripe.api_base}/v1/skus/sku_xxxxxxxxxxxxx?"
      end
    end
    context "SKU.list" do
      should "support requests with args: limit" do
        Stripe::SKU.list(limit: 3)
        assert_requested :get,  "#{Stripe.api_base}/v1/skus?limit=3"
      end
    end
    context "SKU.retrieve" do
      should "support requests with args: id" do
        Stripe::SKU.retrieve("sku_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/skus/sku_xxxxxxxxxxxxx?"
      end
    end
    context "SKU.update" do
      should "support requests with args: metadata, id" do
        Stripe::SKU.update("sku_xxxxxxxxxxxxx", { metadata: { order_id: "6735" } })
        assert_requested :post, "#{Stripe.api_base}/v1/skus/sku_xxxxxxxxxxxxx"
      end
    end
    context "Source.retrieve" do
      should "support requests with args: id" do
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
        Stripe::Subscription.create(
          customer: "cus_xxxxxxxxxxxxx",
          items: [{ price: "price_xxxxxxxxxxxxx" }]
        )
        assert_requested :post, "#{Stripe.api_base}/v1/subscriptions"
      end
    end
    context "Subscription.list" do
      should "support requests with args: limit" do
        Stripe::Subscription.list(limit: 3)
        assert_requested :get, "#{Stripe.api_base}/v1/subscriptions?limit=3"
      end
    end
    context "Subscription.retrieve" do
      should "support requests with args: id" do
        Stripe::Subscription.retrieve("sub_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/subscriptions/sub_xxxxxxxxxxxxx?"
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
        Stripe::SubscriptionItem.create(
          subscription: "sub_xxxxxxxxxxxxx",
          price: "price_xxxxxxxxxxxxx",
          quantity: 2
        )
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
        Stripe::SubscriptionItem.list(subscription: "sub_xxxxxxxxxxxxx")
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
        Stripe::SubscriptionSchedule.create(
          customer: "cus_xxxxxxxxxxxxx",
          start_date: 1_620_753_115,
          end_behavior: "release",
          phases: [
            {
              items: [{ price: "price_xxxxxxxxxxxxx", quantity: 1 }],
              iterations: 12,
            },
          ]
        )
        assert_requested :post, "#{Stripe.api_base}/v1/subscription_schedules"
      end
    end
    context "SubscriptionSchedule.list" do
      should "support requests with args: limit" do
        Stripe::SubscriptionSchedule.list(limit: 3)
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
        Stripe::TaxRate.create(
          display_name: "VAT",
          description: "VAT Germany",
          jurisdiction: "DE",
          percentage: 16,
          inclusive: false
        )
        assert_requested :post, "#{Stripe.api_base}/v1/tax_rates"
      end
    end
    context "TaxRate.list" do
      should "support requests with args: limit" do
        Stripe::TaxRate.list(limit: 3)
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
    context "TestClock.advance" do
      should "support requests with args: test_clock, frozen_time" do
        Stripe::TestHelpers::TestClock.advance("clock_xyz", { frozen_time: 142 })
        assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/test_clocks/clock_xyz/advance"
      end
    end
    context "TestClock.create" do
      should "support requests with args: frozen_time, name" do
        Stripe::TestHelpers::TestClock.create(
          frozen_time: 123,
          name: "cogsworth"
        )
        assert_requested :post, "#{Stripe.api_base}/v1/test_helpers/test_clocks"
      end
    end
    context "TestClock.delete" do
      should "support requests with args: test_clock" do
        Stripe::TestHelpers::TestClock.delete("clock_xyz")
        assert_requested :delete, "#{Stripe.api_base}/v1/test_helpers/test_clocks/clock_xyz?"
      end
    end
    context "TestClock.list" do
      should "work" do
        Stripe::TestHelpers::TestClock.list
        assert_requested :get, "#{Stripe.api_base}/v1/test_helpers/test_clocks?"
      end
    end
    context "TestClock.retrieve" do
      should "support requests with args: test_clock" do
        Stripe::TestHelpers::TestClock.retrieve("clock_xyz")
        assert_requested :get, "#{Stripe.api_base}/v1/test_helpers/test_clocks/clock_xyz?"
      end
    end
    context "Token.create" do
      should "support requests with args: card" do
        Stripe::Token.create(
          card: {
            number: "4242424242424242",
            exp_month: "5",
            exp_year: "2022",
            cvc: "314",
          }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/tokens"
      end
      should "support requests with args: bank_account" do
        Stripe::Token.create(
          bank_account: {
            country: "US",
            currency: "usd",
            account_holder_name: "Jenny Rosen",
            account_holder_type: "individual",
            routing_number: "110000000",
            account_number: "000123456789",
          }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/tokens"
      end
      should "support requests with args: pii" do
        Stripe::Token.create(pii: { id_number: "000000000" })
        assert_requested :post, "#{Stripe.api_base}/v1/tokens"
      end
      should "support requests with args: account" do
        Stripe::Token.create(
          account: {
            individual: { first_name: "Jane", last_name: "Doe" },
            tos_shown_and_accepted: true,
          }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/tokens"
      end
      should "support requests with args: person" do
        Stripe::Token.create(
          person: {
            first_name: "Jane",
            last_name: "Doe",
            relationship: { owner: true },
          }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/tokens"
      end
      should "support requests with args: cvc_update" do
        Stripe::Token.create(cvc_update: { cvc: "123" })
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
        Stripe::Topup.create(
          amount: 2000,
          currency: "usd",
          description: "Top-up for Jenny Rosen",
          statement_descriptor: "Top-up"
        )
        assert_requested :post, "#{Stripe.api_base}/v1/topups"
      end
    end
    context "Topup.list" do
      should "support requests with args: limit" do
        Stripe::Topup.list(limit: 3)
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
    context "Transaction.list" do
      should "support requests with args: limit" do
        Stripe::Issuing::Transaction.list(limit: 3)
        assert_requested :get, "#{Stripe.api_base}/v1/issuing/transactions?limit=3"
      end
    end
    context "Transaction.retrieve" do
      should "support requests with args: id" do
        Stripe::Issuing::Transaction.retrieve("ipi_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/issuing/transactions/ipi_xxxxxxxxxxxxx?"
      end
    end
    context "Transaction.update" do
      should "support requests with args: metadata, id" do
        Stripe::Issuing::Transaction.update(
          "ipi_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/issuing/transactions/ipi_xxxxxxxxxxxxx"
      end
    end
    context "Transfer.create" do
      should "support requests with args: amount, currency, destination, transfer_group" do
        Stripe::Transfer.create(
          amount: 400,
          currency: "usd",
          destination: "acct_xxxxxxxxxxxxx",
          transfer_group: "ORDER_95"
        )
        assert_requested :post, "#{Stripe.api_base}/v1/transfers"
      end
    end
    context "Transfer.list" do
      should "support requests with args: limit" do
        Stripe::Transfer.list(limit: 3)
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
    context "TransferReversal.list" do
      should "support requests with args: limit, parent_id" do
        Stripe::Transfer.list_reversals("tr_xxxxxxxxxxxxx", { limit: 3 })
        assert_requested :get, "#{Stripe.api_base}/v1/transfers/tr_xxxxxxxxxxxxx/reversals?limit=3"
      end
    end
    context "TransferReversal.retrieve" do
      should "support requests with args: parent_id, id" do
        Stripe::Transfer.retrieve_reversal(
          "tr_xxxxxxxxxxxxx",
          "trr_xxxxxxxxxxxxx"
        )
        assert_requested :get, "#{Stripe.api_base}/v1/transfers/tr_xxxxxxxxxxxxx/reversals/trr_xxxxxxxxxxxxx?"
      end
    end
    context "TransferReversal.update" do
      should "support requests with args: metadata, parent_id, id" do
        Stripe::Transfer.update_reversal(
          "tr_xxxxxxxxxxxxx",
          "trr_xxxxxxxxxxxxx",
          { metadata: { order_id: "6735" } }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/transfers/tr_xxxxxxxxxxxxx/reversals/trr_xxxxxxxxxxxxx"
      end
    end
    context "ValueList.create" do
      should "support requests with args: alias, name, item_type" do
        Stripe::Radar::ValueList.create(
          alias: "custom_ip_xxxxxxxxxxxxx",
          name: "Custom IP Blocklist",
          item_type: "ip_address"
        )
        assert_requested :post, "#{Stripe.api_base}/v1/radar/value_lists"
      end
    end
    context "ValueList.delete" do
      should "support requests with args: id" do
        Stripe::Radar::ValueList.delete("rsl_xxxxxxxxxxxxx")
        assert_requested :delete, "#{Stripe.api_base}/v1/radar/value_lists/rsl_xxxxxxxxxxxxx?"
      end
    end
    context "ValueList.list" do
      should "support requests with args: limit" do
        Stripe::Radar::ValueList.list(limit: 3)
        assert_requested :get, "#{Stripe.api_base}/v1/radar/value_lists?limit=3"
      end
    end
    context "ValueList.retrieve" do
      should "support requests with args: id" do
        Stripe::Radar::ValueList.retrieve("rsl_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/radar/value_lists/rsl_xxxxxxxxxxxxx?"
      end
    end
    context "ValueList.update" do
      should "support requests with args: name, id" do
        Stripe::Radar::ValueList.update(
          "rsl_xxxxxxxxxxxxx",
          { name: "Updated IP Block List" }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/radar/value_lists/rsl_xxxxxxxxxxxxx"
      end
    end
    context "ValueListItem.create" do
      should "support requests with args: value_list, value" do
        Stripe::Radar::ValueListItem.create(
          value_list: "rsl_xxxxxxxxxxxxx",
          value: "1.2.3.4"
        )
        assert_requested :post, "#{Stripe.api_base}/v1/radar/value_list_items"
      end
    end
    context "ValueListItem.delete" do
      should "support requests with args: id" do
        Stripe::Radar::ValueListItem.delete("rsli_xxxxxxxxxxxxx")
        assert_requested :delete, "#{Stripe.api_base}/v1/radar/value_list_items/rsli_xxxxxxxxxxxxx?"
      end
    end
    context "ValueListItem.list" do
      should "support requests with args: limit, value_list" do
        Stripe::Radar::ValueListItem.list(
          limit: 3,
          value_list: "rsl_xxxxxxxxxxxxx"
        )
        assert_requested :get, "#{Stripe.api_base}/v1/radar/value_list_items?limit=3&value_list=rsl_xxxxxxxxxxxxx"
      end
    end
    context "ValueListItem.retrieve" do
      should "support requests with args: id" do
        Stripe::Radar::ValueListItem.retrieve("rsli_xxxxxxxxxxxxx")
        assert_requested :get, "#{Stripe.api_base}/v1/radar/value_list_items/rsli_xxxxxxxxxxxxx?"
      end
    end
    context "WebhookEndpoint.create" do
      should "support requests with args: url, enabled_events" do
        Stripe::WebhookEndpoint.create(
          url: "https://example.com/my/webhook/endpoint",
          enabled_events: ["charge.failed", "charge.succeeded"]
        )
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
        Stripe::WebhookEndpoint.list(limit: 3)
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
