---
title: Update generated code
pr_url: https://github.com/stripe/stripe-ruby/pull/1996
semver_level: major
is_stripe_api_change: true
released_in_version: 20.1.0-alpha.4
---

* Add support for new resources `Risk::Form` and `V2::Data::SearchResultList`
* Add support for `retrieve` and `update` methods on resource `Risk::Form`
* Add support for `search` method on resource `V2::Data::SearchResultList`
* Add support for `business_profile_management` and `reporting_chart` on `AccountSession::Component`
* Change type of `AccountSession::Component.terminal_hardware_orders` from `nullable(ConnectEmbeddedBaseConfig)` to `ConnectEmbeddedBaseConfig`
* Change type of `AccountSession::Component.terminal_hardware_shop` from `nullable(ConnectEmbeddedBaseConfig)` to `ConnectEmbeddedBaseConfig`
* Change `AccountSession::Component.terminal_hardware_orders` to be required
* Change `AccountSession::Component.terminal_hardware_shop` to be required
* Add support for `subscription_pause` on `BillingPortal::Configuration::Feature`
* Change `BillingPortal::Session::Flow.subscription_pause` to be required
* Add support for `marketing_attributions` on `Checkout::SessionCreateParams` and `Checkout::Session`
* Add support for `metronome_commit` on `Checkout::Session::Item` and `Checkout::SessionCreateParams::Item`
* Add support for `adjustable_quantity` on `Checkout::SessionCreateParams::Item::Subscription::Item`
* Add support for `mandate_options` on `Checkout::Session::PaymentMethodOption::Card`
* ⚠️ Change type of `Dispute::Evidence.appeal` from `DisputeAppeal` to `nullable(DisputeAppeal)`
* Change `Dispute::EvidenceDetail.submission_method` to be required
* ⚠️ Remove support for `details` on `Identity::VerificationReport::Email`
* Add support for `merchant_amount_exchange_rate` on `Issuing::AuthorizationCaptureParams`, `Issuing::AuthorizationCreateParams`, and `Issuing::TransactionCreateForceCaptureParams`
* Add support for `type` on `Issuing::AuthorizationCreateParams` and `Issuing::Authorization`
* Add support for `settlement_details` on `Issuing::AuthorizationCaptureParams` and `Issuing::TransactionCreateForceCaptureParams`
* ⚠️ Remove support for `healthcare` on `Issuing::AuthorizationCaptureParams::PurchaseDetail`, `Issuing::TransactionCreateForceCaptureParams::PurchaseDetail`, and `Issuing::TransactionCreateUnlinkedRefundParams::PurchaseDetail`
* Add support for `product_eligibility_inquiry` on `Issuing::Authorization`
* Add support for `account_tax_ids`, `custom_fields`, `description`, and `footer` on `PaymentLink::SubscriptionDatum::InvoiceSetting`
* Change type of `Radar::PaymentEvaluation::Signal.early_fraud_warning` from `nullable(Payment Evaluation Signal)` to `Payment Evaluation Signal`
* ⚠️ Change `Radar::PaymentEvaluation::Signal.early_fraud_warning` to be optional
* Add support for `reference_status` and `reference` on `Refund::DestinationDetail::AfterpayClearpay`, `Refund::DestinationDetail::Klarna`, and `Refund::DestinationDetail::Paypal`
* Add support for `bw`, `ci`, `gh`, and `mu` on `Tax::Registration::CountryOption`
* Add support for `czk`, `nok`, `pln`, and `sek` on `V2::Core::Account::Configuration::MoneyManager::Capability::BusinessStorage::Inbound`, `V2::Core::Account::Configuration::MoneyManager::Capability::BusinessStorage::Outbound`, `V2::Core::AccountCreateParams::Configuration::MoneyManager::Capability::BusinessStorage::Inbound`, `V2::Core::AccountCreateParams::Configuration::MoneyManager::Capability::BusinessStorage::Outbound`, `V2::Core::AccountUpdateParams::Configuration::MoneyManager::Capability::BusinessStorage::Inbound`, and `V2::Core::AccountUpdateParams::Configuration::MoneyManager::Capability::BusinessStorage::Outbound`
* Add support for `stablecoin_custodial` on `V2::Core::Account::Configuration::Recipient::Capability::StripeBalance`, `V2::Core::AccountCreateParams::Configuration::Recipient::Capability::StripeBalance`, and `V2::Core::AccountUpdateParams::Configuration::Recipient::Capability::StripeBalance`
* Add support for `account_takeover_confirmation`, `account_takeover_report`, `credential_change`, `mfa_addition`, and `mfa_removal` on `V2::Signals::AccountActivityCreateParams`, `V2::Signals::AccountActivity`, and `V2::Signals::AccountEvaluationCreateParams::AccountActivityDetail::Data`
* Add support for `account_takeover` on `V2::Signals::AccountEvaluation::EvaluatedSignal` and `V2::Signals::AccountSignal`
* Add support for `customer_risk` on `V2::Signals::AccountSignal`
* Add support for event notification `V2SignalsAccountSignalCustomerRiskReadyEvent` with related object `V2::Signals::AccountSignal`
