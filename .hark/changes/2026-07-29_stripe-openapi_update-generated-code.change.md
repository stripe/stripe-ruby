---
title: Update generated code
pr_url: https://github.com/stripe/stripe-ruby/pull/1913
is_stripe_api_change: true
released_in_version: 19.4.0
---

* Add support for new resource `FinancialConnections::Authorization`
* Add support for `unreject` method on resource `Account`
* Add support for `list` method on resource `PaymentRecord`
* Add support for `smart_disputes_management` on `AccountSession::Component::DisputesList::Feature`, `AccountSession::Component::Payment::Feature`, `AccountSession::Component::PaymentDetail::Feature`, `AccountSession::Component::PaymentDispute::Feature`, `AccountSessionCreateParams::Component::DisputesList::Feature`, `AccountSessionCreateParams::Component::Payment::Feature`, `AccountSessionCreateParams::Component::PaymentDetail::Feature`, and `AccountSessionCreateParams::Component::PaymentDispute::Feature`
* Add support for `administrative_address` and `principal_place_of_business` on `Account::Company`, `AccountCreateParams::Company`, `AccountUpdateParams::Company`, and `TokenCreateParams::Account::Company`
* Add support for `sepa_debit_payments` on `AccountUpdateParams::Setting`
* Remove support for `proof_of_registration` on `AccountCreateParams::Document`.  This field was limited-use and is being deprecated.
* Add support for `payouts_action` on `AccountRejectParams`
* Remove support for `dynamic_tax_rates` on `Checkout::SessionCreateParams::LineItem`.  This field was limited-use and is being deprecated.
* Add support for `setup_future_usage` on `Checkout::Session::PaymentMethodOption::Payco`, `Checkout::Session::PaymentMethodOption::SamsungPay`, `Checkout::SessionCreateParams::PaymentMethodOption::Payco`, `Checkout::SessionCreateParams::PaymentMethodOption::SamsungPay`, `PaymentIntent::PaymentMethodOption::Payco`, `PaymentIntent::PaymentMethodOption::SamsungPay`, `PaymentIntentConfirmParams::PaymentMethodOption::Payco`, `PaymentIntentConfirmParams::PaymentMethodOption::SamsungPay`, `PaymentIntentCreateParams::PaymentMethodOption::Payco`, `PaymentIntentCreateParams::PaymentMethodOption::SamsungPay`, `PaymentIntentUpdateParams::PaymentMethodOption::Payco`, `PaymentIntentUpdateParams::PaymentMethodOption::SamsungPay`, and `PaymentLinkUpdateParams::PaymentIntentDatum`
* Add support for `network` on `Dispute::PaymentMethodDetail::Card`
* Add support for `limits` and `manual_entry` on `FinancialConnections::SessionCreateParams` and `FinancialConnections::Session`
* Add support for `require_payment_method_support` on `FinancialConnections::Session::Filter` and `FinancialConnections::SessionCreateParams::Filter`
* Add support for `bank_account_token` on `FinancialConnections::Session`
* Add support for `metadata` on `InvoiceCreatePreviewParams::SubscriptionDetail`
* Add support for `business_name` on `Issuing::Card::Shipping`, `Issuing::CardCreateParams::Shipping`, and `Issuing::CardUpdateParams::Shipping`
* Add support for `allowed_payment_method_types` on `PaymentIntentConfirmParams`, `PaymentIntentCreateParams`, `PaymentIntentUpdateParams`, `PaymentIntent`, `SetupIntentConfirmParams`, `SetupIntentCreateParams`, `SetupIntentUpdateParams`, and `SetupIntent`
* Add support for `referrer` on `PaymentIntentConfirmParams::RadarOption` and `PaymentIntentCreateParams::RadarOption`
* Add support for `consent_collection` and `shipping_options` on `PaymentLinkUpdateParams`
* Add support for `custom_fields`, `description`, and `footer` on `Quote::InvoiceSetting`, `QuoteCreateParams::InvoiceSetting`, `QuoteUpdateParams::InvoiceSetting`, `SubscriptionSchedule::DefaultSetting::InvoiceSetting`, `SubscriptionSchedule::Phase::InvoiceSetting`, `SubscriptionScheduleCreateParams::DefaultSetting::InvoiceSetting`, `SubscriptionScheduleCreateParams::Phase::InvoiceSetting`, `SubscriptionScheduleUpdateParams::DefaultSetting::InvoiceSetting`, and `SubscriptionScheduleUpdateParams::Phase::InvoiceSetting`
* Add support for `customer_account` and `customer` on `Refund`
* Add support for `payment_method` on `Refund` and `Topup`
* Add support for `trial` on `SubscriptionSchedule::Phase`
* Add support for `mass_transit_parking_tax` and `parking_tax` on `Tax::Registration::CountryOption::Me` and `Tax::RegistrationCreateParams::CountryOption::Me`
* Add support for `initiated_by` and `payment_method_options` on `Topup`
* Add support for `additional_addresses` on `V2::Core::Account::Identity::BusinessDetail`, `V2::Core::AccountCreateParams::Identity::BusinessDetail`, `V2::Core::AccountTokenCreateParams::Identity::BusinessDetail`, and `V2::Core::AccountUpdateParams::Identity::BusinessDetail`
