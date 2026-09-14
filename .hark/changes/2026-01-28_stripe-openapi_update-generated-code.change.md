---
title: Update generated code for private-preview
pr_url: https://github.com/stripe/stripe-ruby/pull/1772
is_stripe_api_change: true
released_in_version: 18.4.0-alpha.1
---

* Add support for new resources `FrMealVouchersOnboarding`, `Reserve::Hold`, `Reserve::Plan`, and `Reserve::Release`
* Add support for `create`, `list`, `retrieve`, and `update` methods on resource `FrMealVouchersOnboarding`
* Add support for `list` and `retrieve` methods on resources `Reserve::Hold` and `Reserve::Release`
* Add support for `retrieve` method on resource `Reserve::Plan`
* Add support for `pause` method on resource `Subscription`
* Add support for `service_period_details` on `Discount`
* Add support for `agentic_commerce_settings` on `AccountSession::Component`
* Add support for `service_period` on `CouponCreateParams` and `Coupon`
* Change type of `InvoiceItem::Pricing::PriceDetail.price` and `InvoiceLineItem::Pricing::PriceDetail.price` from `string` to `expandable($Price)`
* Add support for `settings` on `InvoiceCreatePreviewParams::Discount`, `InvoiceCreatePreviewParams::ScheduleDetail::Amendment::DiscountAction::Add`, `InvoiceCreatePreviewParams::ScheduleDetail::Amendment::DiscountAction::Set`, `InvoiceCreatePreviewParams::ScheduleDetail::Amendment::ItemAction::Add::Discount`, `InvoiceCreatePreviewParams::ScheduleDetail::Amendment::ItemAction::Set::Discount`, `InvoiceCreatePreviewParams::ScheduleDetail::Phase::Discount`, `InvoiceCreatePreviewParams::ScheduleDetail::Phase::Item::Discount`, `InvoiceCreatePreviewParams::SubscriptionDetail::Item::Discount`, `QuoteCreateParams::Line::Action::AddDiscount`, `QuoteCreateParams::Line::Action::AddItem::Discount`, `QuoteCreateParams::Line::Action::SetDiscount`, `QuoteCreateParams::Line::Action::SetItem::Discount`, `QuoteUpdateParams::Line::Action::AddDiscount`, `QuoteUpdateParams::Line::Action::AddItem::Discount`, `QuoteUpdateParams::Line::Action::SetDiscount`, `QuoteUpdateParams::Line::Action::SetItem::Discount`, `SubscriptionCreateParams::Discount`, `SubscriptionCreateParams::Item::Discount`, `SubscriptionItemCreateParams::Discount`, `SubscriptionItemUpdateParams::Discount`, `SubscriptionScheduleAmendParams::Amendment::DiscountAction::Add`, `SubscriptionScheduleAmendParams::Amendment::DiscountAction::Set`, `SubscriptionScheduleAmendParams::Amendment::ItemAction::Add::Discount`, `SubscriptionScheduleAmendParams::Amendment::ItemAction::Set::Discount`, `SubscriptionScheduleCreateParams::Phase::Discount`, `SubscriptionScheduleCreateParams::Phase::Item::Discount`, `SubscriptionScheduleUpdateParams::Phase::Discount`, `SubscriptionScheduleUpdateParams::Phase::Item::Discount`, `SubscriptionUpdateParams::Discount`, and `SubscriptionUpdateParams::Item::Discount`
* Add support for `subtotal` on `InvoiceLineItem`
* Add support for `billing_cadence` on `SubscriptionListParams`
