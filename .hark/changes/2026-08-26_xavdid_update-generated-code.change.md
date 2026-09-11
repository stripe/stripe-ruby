---
title: Update generated code
pr_link: https://github.com/stripe/stripe-ruby/pull/1934
is_breaking: true
is_stripe_api_change: true
released_in_version: 19.6.0
---

* Add support for new resource `Billing::FeedbackOption`
* Add support for `create`, `deactivate`, `list`, `retrieve`, and `update` methods on resource `Billing::FeedbackOption`
* Add support for `payment_method_settings` on `AccountSession::Component` and `AccountSessionCreateParams::Component`
* Add support for `feedback_options` on `BillingPortal::Configuration::Feature::SubscriptionCancel::CancellationReason`, `BillingPortal::ConfigurationCreateParams::Feature::SubscriptionCancel::CancellationReason`, and `BillingPortal::ConfigurationUpdateParams::Feature::SubscriptionCancel::CancellationReason`
* Add support for `customer_update` on `BillingPortal::Session::Flow`
* Add support for `funding_source_group` on `Charge::PaymentMethodDetail::Card::Wallet::Link` and `Charge::PaymentMethodDetail::Link`
* Add support for `funding_types_blocked` on `Checkout::Session::PaymentMethodOption::Card::Restriction` and `Checkout::SessionCreateParams::PaymentMethodOption::Card::Restriction`
* Add support for `metadata` on `ConfirmationToken`
* Add support for `active_entitlements` and `customer_portal` on `CustomerSession::Component` and `CustomerSessionCreateParams::Component`
* Add support for `country` on `FinancialConnections::Session::Filter`
* Add support for `frozen_fields` on `InvoiceItem`
* Add support for `billie` on `Invoice::PaymentSetting::PaymentMethodOption`, `InvoiceCreateParams::PaymentSetting::PaymentMethodOption`, `InvoiceUpdateParams::PaymentSetting::PaymentMethodOption`, `Subscription::PaymentSetting::PaymentMethodOption`, `SubscriptionCreateParams::PaymentSetting::PaymentMethodOption`, and `SubscriptionUpdateParams::PaymentSetting::PaymentMethodOption`
* ⚠️ Remove support for `cryptogram` on `PaymentAttemptRecord::PaymentMethodDetail::Card::ThreeDSecure` and `PaymentRecord::PaymentMethodDetail::Card::ThreeDSecure`
* Change `PaymentIntent.allowed_payment_method_types` and `SetupIntent.allowed_payment_method_types` to be required
* Add support for `application_fee_amount`, `application_fee_percent`, `on_behalf_of`, and `transfer_data` on `PaymentLinkUpdateParams`
* Add support for `feedback_option` on `Subscription::CancellationDetail`, `SubscriptionCancelParams::CancellationDetail`, and `SubscriptionUpdateParams::CancellationDetail`
* Add support for `igic` on `Tax::Registration::CountryOption::At`, `Tax::Registration::CountryOption::Be`, `Tax::Registration::CountryOption::Bg`, `Tax::Registration::CountryOption::Cy`, `Tax::Registration::CountryOption::Cz`, `Tax::Registration::CountryOption::De`, `Tax::Registration::CountryOption::Dk`, `Tax::Registration::CountryOption::E`, `Tax::Registration::CountryOption::Ee`, `Tax::Registration::CountryOption::Fi`, `Tax::Registration::CountryOption::Fr`, `Tax::Registration::CountryOption::Gr`, `Tax::Registration::CountryOption::Hr`, `Tax::Registration::CountryOption::Hu`, `Tax::Registration::CountryOption::Ie`, `Tax::Registration::CountryOption::It`, `Tax::Registration::CountryOption::Lt`, `Tax::Registration::CountryOption::Lu`, `Tax::Registration::CountryOption::Lv`, `Tax::Registration::CountryOption::Mt`, `Tax::Registration::CountryOption::Nl`, `Tax::Registration::CountryOption::Pl`, `Tax::Registration::CountryOption::Pt`, `Tax::Registration::CountryOption::Ro`, `Tax::Registration::CountryOption::Se`, `Tax::Registration::CountryOption::Si`, `Tax::Registration::CountryOption::Sk`, `Tax::RegistrationCreateParams::CountryOption::At`, `Tax::RegistrationCreateParams::CountryOption::Be`, `Tax::RegistrationCreateParams::CountryOption::Bg`, `Tax::RegistrationCreateParams::CountryOption::Cy`, `Tax::RegistrationCreateParams::CountryOption::Cz`, `Tax::RegistrationCreateParams::CountryOption::De`, `Tax::RegistrationCreateParams::CountryOption::Dk`, `Tax::RegistrationCreateParams::CountryOption::E`, `Tax::RegistrationCreateParams::CountryOption::Ee`, `Tax::RegistrationCreateParams::CountryOption::Fi`, `Tax::RegistrationCreateParams::CountryOption::Fr`, `Tax::RegistrationCreateParams::CountryOption::Gr`, `Tax::RegistrationCreateParams::CountryOption::Hr`, `Tax::RegistrationCreateParams::CountryOption::Hu`, `Tax::RegistrationCreateParams::CountryOption::Ie`, `Tax::RegistrationCreateParams::CountryOption::It`, `Tax::RegistrationCreateParams::CountryOption::Lt`, `Tax::RegistrationCreateParams::CountryOption::Lu`, `Tax::RegistrationCreateParams::CountryOption::Lv`, `Tax::RegistrationCreateParams::CountryOption::Mt`, `Tax::RegistrationCreateParams::CountryOption::Nl`, `Tax::RegistrationCreateParams::CountryOption::Pl`, `Tax::RegistrationCreateParams::CountryOption::Pt`, `Tax::RegistrationCreateParams::CountryOption::Ro`, `Tax::RegistrationCreateParams::CountryOption::Se`, `Tax::RegistrationCreateParams::CountryOption::Si`, and `Tax::RegistrationCreateParams::CountryOption::Sk`
