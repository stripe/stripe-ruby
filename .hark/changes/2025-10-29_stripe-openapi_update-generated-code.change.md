---
title: Update generated code for private-preview
pr_url: https://github.com/stripe/stripe-ruby/pull/1713
is_stripe_api_change: true
released_in_version: 17.2.0-alpha.1
---

* Add support for `report_refund` method on resource `PaymentRecord`
* Add support for `tenants` on `Billing::Analytics::MeterUsageRow`
* Add support for `representative_declaration` on `Account::Company`, `AccountCreateParams::Company`, `AccountUpdateParams::Company`, and `TokenCreateParams::Account::Company`
* Add support for `transfer` on `ApplicationFee::FeeSource`
* Add support for `transit_balances_total` on `Balance`
* Add support for `tenant_group_by_keys` on `Billing::Analytics::MeterUsageRetrieveParams::Meter`
* Change `Billing::CreditGrantCreateParams.category` to be optional
* Add support for `payment_method_configuration` on `BillingPortal::ConfigurationCreateParams::Feature::PaymentMethodUpdate` and `BillingPortal::ConfigurationUpdateParams::Feature::PaymentMethodUpdate`
* Add support for `payment_portal_url` on `Charge::PaymentMethodDetail::Rechnung`, `PaymentAttemptRecord::PaymentMethodDetail::Rechnung`, and `PaymentRecord::PaymentMethodDetail::Rechnung`
* Add support for `twint` on `Checkout::Session::PaymentMethodOption` and `Checkout::SessionCreateParams::PaymentMethodOption`
* Change `CreditNote::Refund.payment_record_refund` to be required
* Change `CreditNote::Refund.type` to be required
* Add support for `customer_sheet`, `mobile_payment_element`, and `tax_id_element` on `CustomerSession::Component` and `CustomerSessionCreateParams::Component`
* Add support for `provider` on `Customer::Tax`
* Remove support for `risk_details` on `DelegatedCheckout::RequestedSessionCreateParams`
* Add support for `risk_details` on `DelegatedCheckout::RequestedSessionConfirmParams`
* Add support for `starting_after` on `PaymentAttemptRecordListParams`
* Add support for `reference` on `PaymentIntentAmountDetailsLineItem::PaymentMethodOption::Klarna`, `PaymentIntentCaptureParams::AmountDetail::LineItem::PaymentMethodOption::Klarna`, `PaymentIntentConfirmParams::AmountDetail::LineItem::PaymentMethodOption::Klarna`, `PaymentIntentCreateParams::AmountDetail::LineItem::PaymentMethodOption::Klarna`, `PaymentIntentIncrementAuthorizationParams::AmountDetail::LineItem::PaymentMethodOption::Klarna`, and `PaymentIntentUpdateParams::AmountDetail::LineItem::PaymentMethodOption::Klarna`
* Add support for `allocated_funds` on `PaymentIntent`
* Change `PaymentIntent::PaymentDetail.customer_reference` to be required
* Change `PaymentIntent::PaymentDetail.order_reference` to be required
* Add support for `subscription_reference` on `PaymentIntentAmountDetailsLineItem::PaymentMethodOption::Klarna`
* Add support for `name_collection` on `PaymentLinkCreateParams`, `PaymentLinkUpdateParams`, and `PaymentLink`
* Add support for `crypto` on `PaymentMethodConfigurationCreateParams`, `PaymentMethodConfigurationUpdateParams`, `PaymentMethodConfiguration`, and `Refund::DestinationDetail`
* Add support for `mb_way` on `PaymentMethodConfigurationCreateParams`, `PaymentMethodConfigurationUpdateParams`, and `PaymentMethodConfiguration`
* Add support for `custom` on `PaymentMethodCreateParams` and `PaymentMethod`
* Add support for `excluded_payment_method_types` on `SetupIntentCreateParams`, `SetupIntentUpdateParams`, and `SetupIntent`
* Change `SetupIntent.flow_directions` to be optional
* Add support for `tw` on `Tax::Registration::CountryOption` and `Tax::RegistrationCreateParams::CountryOption`
* Add support for `gip` on `Terminal::Configuration::Tipping`, `Terminal::ConfigurationCreateParams::Tipping`, and `Terminal::ConfigurationUpdateParams::Tipping`
* Add support for `last_seen_at` on `Terminal::Reader`
* Add support for `application_fee_amount` on `TransferCreateParams` and `Transfer`
* Add support for `application_fee` on `Transfer`
* Add support for `high_risk_activities_description`, `high_risk_activities`, `money_services_description`, `operates_in_prohibited_countries`, `participates_in_regulated_activity`, `purpose_of_funds_description`, `purpose_of_funds`, `regulated_activity`, `source_of_funds_description`, and `source_of_funds` on `V2::Core::Account::Configuration::Storer`, `V2::Core::AccountCreateParams::Configuration::Storer`, and `V2::Core::AccountUpdateParams::Configuration::Storer`
* Add support for `crypto_wallets` on `V2::Core::Account::Configuration::Storer::Capability::FinancialAddress`, `V2::Core::Account::Configuration::Storer::Capability::OutboundPayment`, `V2::Core::Account::Configuration::Storer::Capability::OutboundTransfer`, `V2::Core::AccountCreateParams::Configuration::Storer::Capability::FinancialAddress`, `V2::Core::AccountCreateParams::Configuration::Storer::Capability::OutboundPayment`, `V2::Core::AccountCreateParams::Configuration::Storer::Capability::OutboundTransfer`, `V2::Core::AccountUpdateParams::Configuration::Storer::Capability::FinancialAddress`, `V2::Core::AccountUpdateParams::Configuration::Storer::Capability::OutboundPayment`, and `V2::Core::AccountUpdateParams::Configuration::Storer::Capability::OutboundTransfer`
* Add support for `usdc` on `V2::Core::Account::Configuration::Storer::Capability::HoldsCurrency`, `V2::Core::AccountCreateParams::Configuration::Storer::Capability::HoldsCurrency`, and `V2::Core::AccountUpdateParams::Configuration::Storer::Capability::HoldsCurrency`
* Add support for `crypto_storer` on `V2::Core::Account::Identity::Attestation::TermsOfService` and `V2::Core::AccountCreateParams::Identity::Attestation::TermsOfService`
* Add support for `compliance_screening_description` on `V2::Core::Account::Identity::BusinessDetail`, `V2::Core::AccountCreateParams::Identity::BusinessDetail`, and `V2::Core::AccountUpdateParams::Identity::BusinessDetail`
* Add support for `external_amount` on `V2::MoneyManagement::ReceivedCredit` and `V2::MoneyManagement::ReceivedDebit`
