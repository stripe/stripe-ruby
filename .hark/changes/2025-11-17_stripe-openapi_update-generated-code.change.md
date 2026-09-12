---
title: Update generated code for beta
pr_url: https://github.com/stripe/stripe-ruby/pull/1722
is_stripe_api_change: true
released_in_version: 18.1.0-beta.1
---

* Add support for new resources `V2::Core::AccountPersonToken` and `V2::Core::AccountToken`
* Remove support for resource `V2::Payments::OffSessionPayment`
* Add support for `create` and `retrieve` methods on resources `V2::Core::AccountPersonToken` and `V2::Core::AccountToken`
* Remove support for `cancel`, `capture`, `create`, `list`, and `retrieve` methods on resource `V2::Payments::OffSessionPayment`
* Change `Tax::Association.tax_transaction_attempts` to be required
* Add support for `specified_commercial_transactions_act_url` on `Account::BusinessProfile`, `AccountCreateParams::BusinessProfile`, and `AccountUpdateParams::BusinessProfile`
* Add support for `paypay_payments` on `Account::Setting`, `AccountCreateParams::Setting`, and `AccountUpdateParams::Setting`
* Change type of `Billing::Analytics::MeterUsageRetrieveParams::Meter.dimension_filters` from `string` to `array(string)`
* Change type of `Billing::Analytics::MeterUsageRetrieveParams::Meter.tenant_filters` from `string` to `array(string)`
* Add support for `car_rental_data`, `flight_data`, and `lodging_data` on `ChargeCaptureParams::PaymentDetail`, `ChargeUpdateParams::PaymentDetail`, `PaymentIntentCaptureParams::PaymentDetail`, `PaymentIntentConfirmParams::PaymentDetail`, `PaymentIntentCreateParams::PaymentDetail`, and `PaymentIntentUpdateParams::PaymentDetail`
* Add support for `supplementary_purchase_data` on `OrderCreateParams::Payment::Setting::PaymentMethodOption::Klarna`, `OrderUpdateParams::Payment::Setting::PaymentMethodOption::Klarna`, `PaymentIntentConfirmParams::PaymentMethodOption::Klarna`, `PaymentIntentCreateParams::PaymentMethodOption::Klarna`, and `PaymentIntentUpdateParams::PaymentMethodOption::Klarna`
* Add support for `allow_redisplay` and `customer_account` on `PaymentMethodListParams`
* Add support for `future_requirements` on `V2::Core::Account`
* Add support for `konbini_payments` and `script_statement_descriptor` on `V2::Core::Account::Configuration::Merchant`, `V2::Core::AccountCreateParams::Configuration::Merchant`, and `V2::Core::AccountUpdateParams::Configuration::Merchant`
* Add support for `eur` on `V2::Core::Account::Configuration::Storer::Capability::HoldsCurrency`, `V2::Core::AccountCreateParams::Configuration::Storer::Capability::HoldsCurrency`, and `V2::Core::AccountUpdateParams::Configuration::Storer::Capability::HoldsCurrency`
* Add support for `requirements_collector` on `V2::Core::Account::Default::Responsibility`
* Remove support for `collector` on `V2::Core::Account::Requirement`
* Add support for `changes` on `V2::Core::Event`
* Add support for `account_token` on `V2::Core::AccountCreateParams` and `V2::Core::AccountUpdateParams`
* Add support for `person_token` on `V2::Core::AccountPersonCreateParams` and `V2::Core::AccountPersonUpdateParams`
* Add support for `changes` on `V2::Core::Event`
* Add support for thin event `V2CoreHealthEventGenerationFailureResolvedEvent`
* Remove support for thin events `V2PaymentsOffSessionPaymentAuthorizationAttemptFailedEvent`, `V2PaymentsOffSessionPaymentAuthorizationAttemptStartedEvent`, `V2PaymentsOffSessionPaymentCanceledEvent`, `V2PaymentsOffSessionPaymentCreatedEvent`, `V2PaymentsOffSessionPaymentFailedEvent`, `V2PaymentsOffSessionPaymentRequiresCaptureEvent`, and `V2PaymentsOffSessionPaymentSucceededEvent` with related object `V2::Payments::OffSessionPayment`
