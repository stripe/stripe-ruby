---
title: Update generated code for beta
pr_url: https://github.com/stripe/stripe-ruby/pull/1589
is_stripe_api_change: true
released_in_version: 15.2.0-beta.1
---

This release changes the pinned API version to `2025-04-30.preview`.

* Add support for `billing_mode` on `Checkout::Session::CreateParams::SubscriptionDatum`, `Invoice::CreatePreviewParams::ScheduleDetail`, `Invoice::CreatePreviewParams::SubscriptionDetail`, `Quote::CreateParams::SubscriptionDatum`, `Quote::SubscriptionDatum`, `QuotePreviewSubscriptionSchedule`, `Subscription::CreateParams`, `SubscriptionSchedule::CreateParams`, `SubscriptionSchedule`, and `Subscription`
* Change `Checkout::Session::AutomaticTax.provider`, `Invoice::AutomaticTax.provider`, `Quote::AutomaticTax.provider`, and `QuotePreviewInvoice::AutomaticTax.provider` to be required
* Add support for `account_number` on `ConfirmationToken::PaymentMethodPreview::AcssDebit` and `PaymentMethod::AcssDebit`
