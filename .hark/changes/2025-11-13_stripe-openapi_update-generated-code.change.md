---
title: Update generated code for private-preview
pr_link: https://github.com/stripe/stripe-ruby/pull/1728
is_stripe_api_change: true
released_in_version: 17.3.0-alpha.2
---

* Add support for new resource `Issuing::Program`
* Add support for `create`, `list`, `retrieve`, and `update` methods on resource `Issuing::Program`
* Add support for `schedule` on `Discount`
* Add support for `applicable_fees` on `DelegatedCheckout::RequestedSession::TotalDetail`
* Add support for `schedule_details` on `Invoice::Parent`, `InvoiceItem::Parent`, `InvoiceLineItem::Parent`, and `QuotePreviewInvoice::Parent`
* Add support for `billing_schedules` on `InvoiceCreatePreviewParams::ScheduleDetail`, `QuotePreviewSubscriptionSchedule`, `SubscriptionScheduleCreateParams`, `SubscriptionScheduleUpdateParams`, and `SubscriptionSchedule`
* Add support for `latest_invoice` on `QuotePreviewSubscriptionSchedule` and `SubscriptionSchedule`
* Add support for `phase_effective_at` on `QuotePreviewSubscriptionSchedule::DefaultSetting`, `SubscriptionSchedule::DefaultSetting`, `SubscriptionScheduleCreateParams::DefaultSetting`, and `SubscriptionScheduleUpdateParams::DefaultSetting`
