---
title: Update generated code for beta
pr_url: https://github.com/stripe/stripe-ruby/pull/1671
is_stripe_api_change: true
released_in_version: 16.1.0-beta.1
---

* Add support for `attach_cadence` method on resource `Subscription`
* Add support for `billing_cadence` on `Invoice::CreatePreviewParams`, `Subscription::CreateParams`, `Subscription::UpdateParams`, and `Subscription`
* Add support for `billing_cadence_details` on `Invoice::Parent` and `QuotePreviewInvoice::Parent`
