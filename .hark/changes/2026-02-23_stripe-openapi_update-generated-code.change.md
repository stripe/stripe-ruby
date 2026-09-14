---
title: Update generated code for beta
pr_url: https://github.com/stripe/stripe-ruby/pull/1789
is_stripe_api_change: true
released_in_version: 18.5.0-beta.1
---

* Add support for `smart_disputes` on `Account::Setting`, `AccountCreateParams::Setting`, `AccountUpdateParams::Setting`, `V2::Core::Account::Configuration::Merchant`, `V2::Core::AccountCreateParams::Configuration::Merchant`, and `V2::Core::AccountUpdateParams::Configuration::Merchant`
* Add support for `email_customers_on_successful_payment` on `Account::Setting::Payment`, `AccountCreateParams::Setting::Payment`, and `AccountUpdateParams::Setting::Payment`
* Add support for `managed_payments` on `Checkout::SessionCreateParams`, `Checkout::Session`, `PaymentIntent`, `SetupIntent`, and `Subscription`
* Add support for `purpose` on `V2::MoneyManagement::OutboundPaymentCreateParams` and `V2::MoneyManagement::OutboundPayment`
* Add support for `branch_number` and `swift_code` on `V2::MoneyManagement::PayoutMethod::BankAccount`
* Change `V2::MoneyManagement::Transaction.flow` and `V2::MoneyManagement::TransactionEntry::TransactionDetail.flow` to be optional
