---
title: Update generated code for private-preview
pr_link: https://github.com/stripe/stripe-ruby/pull/1865
is_breaking: true
is_stripe_api_change: true
released_in_version: 19.2.0-alpha.6
---

* Add support for new resource `PaymentLocationCapability`
* Add support for `list`, `retrieve`, and `update` methods on resource `PaymentLocationCapability`
* Add support for `close` and `simulate_network_lifecycle_dispute_response` test helper methods on resource `Issuing::Dispute`
* Change type of `DelegatedCheckout::RequestedSessionUpdateParams::Discount.codes` from `array(string)` to `emptyable(array(string))`
* ⚠️ Remove support for `credited_items` on `InvoiceItem::ProrationDetail`
* Add support for `balance_response` on `Issuing::Authorization`
* Add support for `payment_evaluations` on `PaymentAttemptRecordReportCanceledParams`, `PaymentAttemptRecordReportFailedParams`, `PaymentRecordReportPaymentAttemptCanceledParams`, `PaymentRecordReportPaymentAttemptFailedParams`, `PaymentRecordReportPaymentAttemptParams::Failed`, and `PaymentRecordReportPaymentParams::Failed`
* Add support for `enabled` on `PaymentIntentConfirmParams::PaymentDetail::Benefit::FrMealVoucher`, `PaymentIntentCreateParams::PaymentDetail::Benefit::FrMealVoucher`, `PaymentIntentUpdateParams::PaymentDetail::Benefit::FrMealVoucher`, `SetupIntentConfirmParams::SetupDetail::Benefit::FrMealVoucher`, `SetupIntentCreateParams::SetupDetail::Benefit::FrMealVoucher`, and `SetupIntentUpdateParams::SetupDetail::Benefit::FrMealVoucher`
* Add support for `advanced_feature_details` and `allowed_payment_method_types` on `PaymentIntent`
* Change type of `PaymentLocationUpdateParams::Address.city` from `string` to `emptyable(string)`
* Change type of `PaymentLocationUpdateParams::Address.line1` from `string` to `emptyable(string)`
* Change type of `PaymentLocationUpdateParams::Address.line2` from `string` to `emptyable(string)`
* Change type of `PaymentLocationUpdateParams::Address.postal_code` from `string` to `emptyable(string)`
* Change type of `PaymentLocationUpdateParams::Address.state` from `string` to `emptyable(string)`
* Change `SubscriptionPauseParams.type` to be optional
* ⚠️ Remove support for `payment_behavior` on `SubscriptionResumeParams`
* ⚠️ Remove support for `status_details` on `Subscription`
