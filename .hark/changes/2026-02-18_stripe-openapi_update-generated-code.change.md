---
title: Update generated code for private-preview
pr_link: https://github.com/stripe/stripe-ruby/pull/1792
is_stripe_api_change: true
released_in_version: 18.4.0-alpha.5
---

* Add support for `spend_threshold` on `Billing::AlertCreateParams` and `Billing::Alert`
* Add support for `invoice_item`, `proration_details`, `proration`, and `subscription` on `InvoiceLineItem::Parent::ScheduleDetail`
* Add support for `custom` on `PaymentMethodUpdateParams`
* Add support for `payment_method_reference` and `usage` on `PaymentMethod::Custom`
* Add support for `outstanding_usage_through` and `unused_time_from` on `SubscriptionPauseParams::BillFor`
* Remove support for `outstanding_usage` and `unused_time` on `SubscriptionPauseParams::BillFor`
* Remove support for `payment_behavior` on `SubscriptionResumeParams`
