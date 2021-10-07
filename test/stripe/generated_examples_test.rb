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
    context "Dispute.close" do
      should "support requests with args: id" do
        Stripe::Dispute.close("dp_xxxxxxxxxxxxx")
        assert_requested :post, "#{Stripe.api_base}/v1/disputes/dp_xxxxxxxxxxxxx/close?"
      end
    end
    context "Dispute.list" do
      should "support requests with args: limit" do
        Stripe::Dispute.list(limit: 3)
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
