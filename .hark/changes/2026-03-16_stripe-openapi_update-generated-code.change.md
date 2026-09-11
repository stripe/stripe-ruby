---
title: Update generated code for private-preview
pr_link: https://github.com/stripe/stripe-ruby/pull/1812
is_breaking: true
is_stripe_api_change: true
released_in_version: 18.5.0-alpha.4
---

* Add support for new resources `Orchestration::PaymentAttempt` and `Radar::CustomerEvaluation`
* Add support for `retrieve` method on resource `Orchestration::PaymentAttempt`
* Add support for `create` and `update` methods on resource `Radar::CustomerEvaluation`
* Add support for `approve` method on resource `Checkout::Session`
* Add support for `report_authenticated`, `report_canceled`, `report_failed`, `report_guaranteed`, `report_informational`, and `report_refund` methods on resource `PaymentAttemptRecord`
* Add support for `create_us_paper_check_on_application` on `AccountSessionCreateParams::Component::CheckScanning::Feature`
* ⚠️ Change `AccountSignals.delinquency` to be optional
* Add support for `approval_method` on `Checkout::SessionCreateParams` and `Checkout::Session`
* Add support for `current_attempt` on `Checkout::Session`
* Add support for `selected_fulfillment_option_overrides` on `DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetail`
* Add support for `pricing_plan_subscription_details` on `InvoiceItem::Parent` and `InvoiceLineItem::Parent`
* ⚠️ Remove support for `license_fee_subscription_details` on `InvoiceItem::Parent` and `InvoiceLineItem::Parent`
* ⚠️ Remove support for `pricing_plan_subscription` and `pricing_plan_version` on `InvoiceItem::Parent::RateCardSubscriptionDetail` and `InvoiceLineItem::Parent::RateCardSubscriptionDetail`
* Add support for `token_details` on `Issuing::Authorization`
* Add support for `failure_code` on `PaymentRecordReportPaymentAttemptFailedParams`, `PaymentRecordReportPaymentAttemptParams::Failed`, and `PaymentRecordReportPaymentParams::Failed`
* Change `PaymentRecordReportPaymentAttemptCanceledParams.canceled_at` to be optional
* Change `PaymentRecordReportPaymentAttemptFailedParams.failed_at` to be optional
* Change `PaymentRecordReportPaymentAttemptGuaranteedParams.guaranteed_at` to be optional
* Change `PaymentRecordReportRefundParams.refunded` to be optional
* ⚠️ Change `Radar::IssuingAuthorizationEvaluationCreateParams::CardDetail.bin_country` to be required
* Add support for `recurring_interval` on `SharedPayment::GrantedTokenCreateParams::UsageLimit`
* Change `SharedPayment::GrantedTokenCreateParams::UsageLimit.expires_at` to be optional
* Add support for `home_rule_tax` on `Tax::Registration::CountryOption::Me` and `Tax::RegistrationCreateParams::CountryOption::Me`
