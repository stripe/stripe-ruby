---
title: Update generated code for beta
pr_link: https://github.com/stripe/stripe-ruby/pull/1624
is_stripe_api_change: true
released_in_version: 15.5.0-beta.1
---

* Add support for new resources `Billing::MeterUsageRow`, `Billing::MeterUsage`, and `Terminal::OnboardingLink`
* Add support for `retrieve` method on resource `Billing::MeterUsage`
* Add support for `create` method on resource `Terminal::OnboardingLink`
* Add support for `monthly_payout_days` and `weekly_payout_days` on `BalanceSettings::Payout::Schedule` and `BalanceSettings::UpdateParams::Payout::Schedule`
* Remove support for `monthly_anchor` and `weekly_anchor` on `BalanceSettings::Payout::Schedule` and `BalanceSettings::UpdateParams::Payout::Schedule`
* Add support for `delay_days_override` on `BalanceSettings::UpdateParams::SettlementTiming`
* Remove support for `delay_days` on `BalanceSettings::UpdateParams::SettlementTiming`
* Add support for `update_discounts` on `Checkout::Session::CreateParams::Permission`
* Add support for `discounts` and `subscription_data` on `Checkout::Session::UpdateParams`
* Add support for `smart_disputes` on `Dispute`
* Add support for `upi` on `Invoice::CreateParams::PaymentSetting::PaymentMethodOption`, `Invoice::PaymentSetting::PaymentMethodOption`, `Invoice::UpdateParams::PaymentSetting::PaymentMethodOption`, `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption`, `Subscription::CreateParams::PaymentSetting::PaymentMethodOption`, `Subscription::PaymentSetting::PaymentMethodOption`, and `Subscription::UpdateParams::PaymentSetting::PaymentMethodOption`
* Add support for `transaction_id` on `PaymentAttemptRecord::PaymentMethodDetail::Cashapp` and `PaymentRecord::PaymentMethodDetail::Cashapp`
* Add support for `amount_details` on `PaymentIntent::CaptureParams`, `PaymentIntent::ConfirmParams`, `PaymentIntent::CreateParams`, `PaymentIntent::IncrementAuthorizationParams`, and `PaymentIntent::UpdateParams`
* Add support for `payment_details` on `PaymentIntent::IncrementAuthorizationParams`
* Add support for `storer` on `V2::Core::Account::CreateParams::Identity::Attestation::TermsOfService`, `V2::Core::Account::Identity::Attestation::TermsOfService`, and `V2::Core::Account::UpdateParams::Identity::Attestation::TermsOfService`
* Add support for `collection_options` on `V2::Core::AccountLink::CreateParams::UseCase::AccountOnboarding`, `V2::Core::AccountLink::CreateParams::UseCase::AccountUpdate`, `V2::Core::AccountLink::UseCase::AccountOnboarding`, and `V2::Core::AccountLink::UseCase::AccountUpdate`
* Change type of `V2::Core::AccountLink::CreateParams::UseCase::AccountOnboarding.configurations`, `V2::Core::AccountLink::CreateParams::UseCase::AccountUpdate.configurations`, `V2::Core::AccountLink::UseCase::AccountOnboarding.configurations`, and `V2::Core::AccountLink::UseCase::AccountUpdate.configurations` from `literal('recipient')` to `enum('customer'|'merchant'|'recipient'|'storer')`
* Add support for `bank_account_type` on `V2::MoneyManagement::PayoutMethod::BankAccount`
* Add support for thin event `V2CoreAccountLinkReturnedEvent`
* Add support for thin event `V2MoneyManagementPayoutMethodUpdatedEvent` with related object `V2::MoneyManagement::PayoutMethod`
* Remove support for thin event `V2CoreAccountLinkCompletedEvent`
* Remove support for thin event `V2OffSessionPaymentRequiresCaptureEvent` with related object `V2::Payments::OffSessionPayment`
