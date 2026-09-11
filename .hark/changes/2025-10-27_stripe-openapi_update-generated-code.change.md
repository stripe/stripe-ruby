---
title: Update generated code for beta
pr_link: https://github.com/stripe/stripe-ruby/pull/1696
is_stripe_api_change: true
released_in_version: 17.2.0-beta.1
---

* Add support for `update` method on resource `V2::MoneyManagement::FinancialAccount`
* Add support for `confirm_microdeposits`, `list`, and `send_microdeposits` methods on resource `V2::Core::Vault::UsBankAccount`
* Add support for `list` method on resource `V2::Core::Vault::GbBankAccount`
* Add support for `payment_portal_url` on `Charge::PaymentMethodDetail::Rechnung`, `PaymentAttemptRecord::PaymentMethodDetail::Rechnung`, and `PaymentRecord::PaymentMethodDetail::Rechnung`
* Add support for `tax_id_element` on `CustomerSession::Component` and `CustomerSessionCreateParams::Component`
* Add support for `starting_after` on `PaymentAttemptRecordListParams`
* Add support for `reference` on `PaymentIntentAmountDetailsLineItem::PaymentMethodOption::Klarna`, `PaymentIntentCaptureParams::AmountDetail::LineItem::PaymentMethodOption::Klarna`, `PaymentIntentConfirmParams::AmountDetail::LineItem::PaymentMethodOption::Klarna`, `PaymentIntentCreateParams::AmountDetail::LineItem::PaymentMethodOption::Klarna`, `PaymentIntentIncrementAuthorizationParams::AmountDetail::LineItem::PaymentMethodOption::Klarna`, and `PaymentIntentUpdateParams::AmountDetail::LineItem::PaymentMethodOption::Klarna`
* Change `PaymentIntent::PaymentDetail.customer_reference` to be required
* Change `PaymentIntent::PaymentDetail.order_reference` to be required
* Add support for `subscription_reference` on `PaymentIntentAmountDetailsLineItem::PaymentMethodOption::Klarna`
* Add support for `closed` on `V2::Core::AccountListParams` and `V2::Core::Account`
* Add support for `usd` on `V2::Core::Account::Configuration::Storer::Capability::HoldsCurrency`, `V2::Core::AccountCreateParams::Configuration::Storer::Capability::HoldsCurrency`, and `V2::Core::AccountUpdateParams::Configuration::Storer::Capability::HoldsCurrency`
* Add support for `representative_declaration` on `V2::Core::Account::Identity::Attestation`, `V2::Core::AccountCreateParams::Identity::Attestation`, and `V2::Core::AccountUpdateParams::Identity::Attestation`
* Add support for `verification` on `V2::Core::Vault::UsBankAccount`
* Add support for `v1_id` on `EventsV2MoneyManagementTransactionCreatedEvent`
* Remove support for thin event `V2BillingBillSettingUpdatedEvent` with related object `V2::Billing::BillSetting`
