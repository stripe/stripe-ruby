---
title: Update generated code for beta
pr_url: https://github.com/stripe/stripe-ruby/pull/1639
is_stripe_api_change: true
released_in_version: 16.1.0-beta.1
---

* Add support for new resources `Billing::Analytics::MeterUsageRow` and `Billing::Analytics::MeterUsage`
* Remove support for resources `Billing::MeterUsageRow` and `Billing::MeterUsage`
* Add support for `retrieve` method on resource `Billing::Analytics::MeterUsage`
* Remove support for `retrieve` method on resource `Billing::MeterUsage`
* Add support for `report_payment_attempt_informational` method on resource `PaymentRecord`
* Add support for `minimum_balance_by_currency` on `BalanceSettings::Payment::Payout` and `BalanceSettings::UpdateParams::Payment::Payout`
* Change type of `BalanceSettings::UpdateParams::Payment::SettlementTiming.delay_days_override` from `longInteger` to `emptyable(longInteger)`
* Change `BalanceSettings::UpdateParams.payments` to be optional
* Add support for `delay_days_override` on `BalanceSettings::Payment::SettlementTiming`
* Add support for `automatic_tax` and `invoice_creation` on `Checkout::Session::UpdateParams`
* Add support for `unit_label` on `Checkout::Session::UpdateParams::LineItem::PriceDatum::ProductDatum`
* Add support for `invoice_settings` on `Checkout::Session::UpdateParams::SubscriptionDatum`
* Change `Checkout::Session::CollectedInformation.business_name` to be required
* Add support for `intended_submission_method` on `Dispute::UpdateParams` and `Dispute`
* Change type of `Dispute::SmartDispute.recommended_evidence` from `string` to `array(string)`
* Add support for `pix` on `Invoice::CreateParams::PaymentSetting::PaymentMethodOption`, `Invoice::PaymentSetting::PaymentMethodOption`, `Invoice::UpdateParams::PaymentSetting::PaymentMethodOption`, `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption`, `Subscription::CreateParams::PaymentSetting::PaymentMethodOption`, `Subscription::PaymentSetting::PaymentMethodOption`, and `Subscription::UpdateParams::PaymentSetting::PaymentMethodOption`
* Add support for `billing_schedules` on `Invoice::CreatePreviewParams::SubscriptionDetail`, `Subscription::CreateParams`, `Subscription::UpdateParams`, and `Subscription`
* Add support for `paypay` on `PaymentAttemptRecord::PaymentMethodDetail` and `PaymentRecord::PaymentMethodDetail`
* Add support for `wallet` on `PaymentAttemptRecord::PaymentMethodDetail::Card` and `PaymentRecord::PaymentMethodDetail::Card`
* Change type of `PaymentAttemptRecord::ProcessorDetail::Custom.payment_reference` and `PaymentRecord::ProcessorDetail::Custom.payment_reference` from `string` to `nullable(string)`
* Add support for `flexible` on `QuotePreviewSubscriptionSchedule::BillingMode`
* Add support for `billed_until` on `SubscriptionItem`
