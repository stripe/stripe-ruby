---
title: Update generated code for beta
pr_url: https://github.com/stripe/stripe-ruby/pull/1607
is_stripe_api_change: true
released_in_version: 15.4.0-beta.1
---

* Change type of `Checkout::Session::CreateParams::SubscriptionDatum.billing_mode`, `Invoice::CreatePreviewParams::ScheduleDetail.billing_mode`, `Invoice::CreatePreviewParams::SubscriptionDetail.billing_mode`, `Quote::CreateParams::SubscriptionDatum.billing_mode`, `Quote::SubscriptionDatum.billing_mode`, `Subscription::CreateParams.billing_mode`, and `SubscriptionSchedule::CreateParams.billing_mode` from `enum('classic'|'flexible')` to `billing_mode`
* Add support for `submission_method` on `Dispute::EvidenceDetail`
* Add support for `on_demand` and `subscriptions` on `Order::CreateParams::Payment::Setting::PaymentMethodOption::Klarna` and `Order::UpdateParams::Payment::Setting::PaymentMethodOption::Klarna`
* Change type of `Order::CreateParams::Payment::Setting::PaymentMethodOption::Klarna.setup_future_usage`, `Order::Payment::Setting::PaymentMethodOption::Klarna.setup_future_usage`, and `Order::UpdateParams::Payment::Setting::PaymentMethodOption::Klarna.setup_future_usage` from `literal('none')` to `enum('none'|'off_session'|'on_session')`
* Add support for `crypto` on `PaymentAttemptRecord::PaymentMethodDetail` and `PaymentRecord::PaymentMethodDetail`
* Change type of `PaymentIntent::ConfirmParams::PaymentMethodOption::Gopay.setup_future_usage`, `PaymentIntent::CreateParams::PaymentMethodOption::Gopay.setup_future_usage`, `PaymentIntent::PaymentMethodOption::Gopay.setup_future_usage`, and `PaymentIntent::UpdateParams::PaymentMethodOption::Gopay.setup_future_usage` from `literal('none')` to `enum('none'|'off_session')`
* Change `Quote::SubscriptionDatum.billing_mode`, `QuotePreviewSubscriptionSchedule.billing_mode`, `Subscription.billing_mode`, and `SubscriptionSchedule.billing_mode` to be required
* Change type of `QuotePreviewSubscriptionSchedule.billing_mode`, `Subscription.billing_mode`, and `SubscriptionSchedule.billing_mode` from `enum('classic'|'flexible')` to `SubscriptionsResourceBillingMode`
* Change type of `Subscription::MigrateParams.billing_mode` from `literal('flexible')` to `billing_mode_migrate`
* Remove support for `billing_mode_details` on `Subscription`
* Add support for `proof_of_address` on `V2::Core::Account::CreateParams::Identity::BusinessDetail::Document`, `V2::Core::Account::Identity::BusinessDetail::Document`, and `V2::Core::Account::UpdateParams::Identity::BusinessDetail::Document`
* Add support for `metadata` on `V2::MoneyManagement::FinancialAccount`
* Remove support for `description` on `V2::MoneyManagement::FinancialAccount`
* Remove support for `attempts` on `V2::Payments::OffSessionPayment`
* Change type of `V2::Payments::OffSessionPayment::TransferDatum.amount` from `integer` to `nullable(integer)`
* Add support for `from_account`, `outbound_payment`, and `outbound_transfer` on `V2::MoneyManagement::ReceivedCredit::BalanceTransfer`
* Change type of `V2::MoneyManagement::ReceivedCredit::BalanceTransfer.type` from `literal('payout_v1')` to `enum('outbound_payment'|'outbound_transfer'|'payout_v1')`
* Change type of `V2::MoneyManagement::ReceivedCredit::BalanceTransfer.payout_v1` from `string` to `nullable(string)`
* Change `V2::Payments::OffSessionPayment::CreateParams::TransferDatum.amount` to be optional
