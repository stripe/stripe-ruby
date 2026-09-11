---
title: Update generated code
pr_link: https://github.com/stripe/stripe-ruby/pull/1725
is_stripe_api_change: true
released_in_version: 18.0.0
---

* Add support for new resources `Tax::Association` and `Terminal::OnboardingLink`
* Add support for `find` method on resource `Tax::Association`
* Add support for `create` method on resource `Terminal::OnboardingLink`
* Add support for `payment_method_configuration` on `BillingPortal::Configuration::Feature::PaymentMethodUpdate`
* Add support for `transaction_id` on `Charge::PaymentMethodDetail::Ideal`, `PaymentAttemptRecord::PaymentMethodDetail::Ideal`, and `PaymentRecord::PaymentMethodDetail::Ideal`
* Add support for `created` on `CustomerCustomerBalanceTransactionListParams` and `InvoicePaymentListParams`
* Add support for `account_numbers` on `FinancialConnections::Account`
* Change type of `FinancialConnections::Session.client_secret` from `string` to `nullable(string)`
* Add support for `fraud_risk` on `Issuing::AuthorizationCreateParams::RiskAssessment`
* Add support for `latest_fraud_warning` on `Issuing::Card`
* Add support for `hooks` on `PaymentIntentCaptureParams`, `PaymentIntentConfirmParams`, `PaymentIntentCreateParams`, `PaymentIntentIncrementAuthorizationParams`, `PaymentIntentUpdateParams`, and `PaymentIntent`
* Add support for `mb_way` and `twint` on `Refund::DestinationDetail`
