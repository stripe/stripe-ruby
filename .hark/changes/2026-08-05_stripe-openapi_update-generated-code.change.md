---
title: Update generated code for private-preview
pr_link: https://github.com/stripe/stripe-ruby/pull/1920
is_stripe_api_change: true
released_in_version: 19.5.0-alpha.2
---

* Add support for new resource `Billing::FeedbackOptions`
* Add support for `sequra_payments` on `Account::Capability`
* Add support for `feedback_options` on `BillingPortal::Configuration::Feature::SubscriptionCancel::CancellationReason`
* Add support for `sequra` on `Charge::PaymentMethodDetail`, `Checkout::Session::PaymentMethodOption`, `ConfirmationToken::PaymentMethodPreview`, `PaymentAttemptRecord::PaymentMethodDetail`, `PaymentIntent::PaymentMethodOption`, and `PaymentRecord::PaymentMethodDetail`
* Add support for `retrieval_reference_number` on `Charge::PaymentMethodDetail::CardPresent`, `ConfirmationToken::PaymentMethodPreview::Card::GeneratedFrom::PaymentMethodDetail::CardPresent`, `PaymentAttemptRecord::PaymentMethodDetail::CardPresent`, `PaymentMethod::Card::GeneratedFrom::PaymentMethodDetail::CardPresent`, and `PaymentRecord::PaymentMethodDetail::CardPresent`
* Add support for `pricing_group` on `Charge::PaymentMethodDetail::Link`
* Add support for `tax_rates` on `Checkout::Session::ShippingOption`, `Checkout::SessionCreateParams::ShippingOption`, and `Checkout::SessionUpdateParams::ShippingOption`
* Add support for `funding_types_blocked` on `Checkout::Session::PaymentMethodOption::Card::Restriction`
* Add support for `healthcare` on `Issuing::AuthorizationCaptureParams::PurchaseDetail`, `Issuing::AuthorizationCreateParams`, `Issuing::TransactionCreateForceCaptureParams::PurchaseDetail`, and `Issuing::TransactionCreateUnlinkedRefundParams::PurchaseDetail`
* Change type of `Issuing::Authorization::Healthcare.verification_status` from `nullable(enum('iias_merchant_exempt'|'iias_merchant_not_certified'|'iias_verified'|'not_verified'))` to `enum('iias_merchant_exempt'|'iias_merchant_not_certified'|'iias_verified'|'not_verified')`
* Add support for `is_anomalous` on `PaymentAttemptRecordReportGuaranteedParams`
* Add support for `aade_data` on `PaymentIntent::PaymentMethodOption::CardPresent`
* Change `Radar::PaymentEvaluation::PaymentDetail::PaymentMethodDetail::Card.first6` to be required
* Change `Radar::PaymentEvaluation::PaymentDetail::PaymentMethodDetail::Card.last4` to be required
* Add support for `feedback_option` on `Subscription::CancellationDetail`
* Add support for `application` on `V2::Payments::OffSessionPayment`
* Add support for `status` on `V2::MoneyManagement::FinancialAccountStatementListParams`
* Change `V2::Billing::ContractCreateParams.pricing_lines` to be optional
