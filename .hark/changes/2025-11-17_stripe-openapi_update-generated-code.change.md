---
title: Update generated code for private-preview
pr_link: https://github.com/stripe/stripe-ruby/pull/1730
is_stripe_api_change: true
released_in_version: 18.1.0-alpha.1
---

* Add support for new resources `BalanceTransfer` and `Radar::AccountEvaluation`
* Add support for `create` method on resource `BalanceTransfer`
* Add support for `create`, `retrieve`, and `update` methods on resource `Radar::AccountEvaluation`
* Change `Tax::Association.tax_transaction_attempts` to be required
* Add support for `specified_commercial_transactions_act_url` on `Account::BusinessProfile`, `AccountCreateParams::BusinessProfile`, and `AccountUpdateParams::BusinessProfile`
* Add support for `paypay_payments` on `Account::Setting`, `AccountCreateParams::Setting`, and `AccountUpdateParams::Setting`
* Change type of `Billing::Analytics::MeterUsageRetrieveParams::Meter.dimension_filters` from `string` to `array(string)`
* Change type of `Billing::Analytics::MeterUsageRetrieveParams::Meter.tenant_filters` from `string` to `array(string)`
* Add support for `payment_method_configuration` on `BillingPortal::Configuration::Feature::PaymentMethodUpdate`
* Add support for `car_rental_data`, `flight_data`, and `lodging_data` on `ChargeCaptureParams::PaymentDetail`, `ChargeUpdateParams::PaymentDetail`, `PaymentIntentCaptureParams::PaymentDetail`, `PaymentIntentConfirmParams::PaymentDetail`, `PaymentIntentCreateParams::PaymentDetail`, and `PaymentIntentUpdateParams::PaymentDetail`
* Add support for `transaction_id` on `Charge::PaymentMethodDetail::Ideal`, `PaymentAttemptRecord::PaymentMethodDetail::Ideal`, and `PaymentRecord::PaymentMethodDetail::Ideal`
* Add support for `created` on `CustomerCustomerBalanceTransactionListParams` and `InvoicePaymentListParams`
* Add support for `account_numbers` on `FinancialConnections::Account`
* Change type of `FinancialConnections::Session.client_secret` from `string` to `nullable(string)`
* Add support for `fraud_risk` on `Issuing::AuthorizationCreateParams::RiskAssessment`
* Add support for `latest_fraud_warning` on `Issuing::Card`
* Add support for `supplementary_purchase_data` on `OrderCreateParams::Payment::Setting::PaymentMethodOption::Klarna`, `OrderUpdateParams::Payment::Setting::PaymentMethodOption::Klarna`, `PaymentIntentConfirmParams::PaymentMethodOption::Klarna`, `PaymentIntentCreateParams::PaymentMethodOption::Klarna`, and `PaymentIntentUpdateParams::PaymentMethodOption::Klarna`
* Add support for `capture_method` on `PaymentIntent::PaymentMethodOption::CardPresent`, `PaymentIntentConfirmParams::PaymentMethodOption::CardPresent`, `PaymentIntentCreateParams::PaymentMethodOption::CardPresent`, and `PaymentIntentUpdateParams::PaymentMethodOption::CardPresent`
* Add support for `allow_redisplay` and `customer_account` on `PaymentMethodListParams`
* Add support for `mb_way` and `twint` on `Refund::DestinationDetail`
* Change type of `SubscriptionScheduleUpdateParams.billing_schedules` from `array(billing_schedules_update_params)` to `emptyable(array(billing_schedules_update_params))`
