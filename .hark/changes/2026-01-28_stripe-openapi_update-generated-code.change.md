---
title: Update generated code
pr_url: https://github.com/stripe/stripe-ruby/pull/1771
is_stripe_api_change: true
released_in_version: 18.3.0
---

* Add support for new resource `Radar::PaymentEvaluation`
* Add support for `create` method on resource `Radar::PaymentEvaluation`
* Add support for `adjustable_quantity` on `LineItem`
* Change `Invoice::PaymentSetting::PaymentMethodOption.payto` and `Subscription::PaymentSetting::PaymentMethodOption.payto` to be required
* Add support for `enforce_arithmetic_validation` on `PaymentIntentCaptureParams::AmountDetail`, `PaymentIntentConfirmParams::AmountDetail`, `PaymentIntentCreateParams::AmountDetail`, `PaymentIntentIncrementAuthorizationParams::AmountDetail`, and `PaymentIntentUpdateParams::AmountDetail`
* Add support for `error` on `PaymentIntent::AmountDetail`
* Remove support for `bgn` on `Terminal::Configuration::Tipping`, `Terminal::ConfigurationCreateParams::Tipping`, and `Terminal::ConfigurationUpdateParams::Tipping`
* Add support for `topup` on `Treasury::ReceivedDebit::LinkedFlow`
* Add support for `contact_phone` on `V2::Core::AccountCreateParams`, `V2::Core::AccountTokenCreateParams`, `V2::Core::AccountUpdateParams`, and `V2::Core::Account`
* Add support for `registration_date` on `V2::Core::Account::Identity::BusinessDetail`, `V2::Core::AccountCreateParams::Identity::BusinessDetail`, `V2::Core::AccountTokenCreateParams::Identity::BusinessDetail`, and `V2::Core::AccountUpdateParams::Identity::BusinessDetail`
