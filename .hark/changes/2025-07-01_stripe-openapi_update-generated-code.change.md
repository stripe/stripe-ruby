---
title: Update generated code
pr_url: https://github.com/stripe/stripe-ruby/pull/1618
is_stripe_api_change: true
released_in_version: 15.3.0
---

* Add support for `migrate` method on resource `Subscription`
* Add support for `collect_payment_method` and `confirm_payment_intent` methods on resource `Terminal::Reader`
* Add support for `crypto_payments` on `Account::Capability`, `Account::CreateParams::Capability`, and `Account::UpdateParams::Capability`
* Add support for `proof_of_address` on `Account::CreateParams::Document` and `Account::UpdateParams::Document`
* Add support for `monthly_payout_days` and `weekly_payout_days` on `Account::CreateParams::Setting::Payout::Schedule`, `Account::Setting::Payout::Schedule`, and `Account::UpdateParams::Setting::Payout::Schedule`
* Change `Account::Setting::Invoice.hosted_payment_method_save` to be required
* Add support for `crypto` on `Charge::PaymentMethodDetail`, `ConfirmationToken::CreateParams::PaymentMethodDatum`, `ConfirmationToken::PaymentMethodPreview`, `PaymentIntent::ConfirmParams::PaymentMethodDatum`, `PaymentIntent::ConfirmParams::PaymentMethodOption`, `PaymentIntent::CreateParams::PaymentMethodDatum`, `PaymentIntent::CreateParams::PaymentMethodOption`, `PaymentIntent::PaymentMethodOption`, `PaymentIntent::UpdateParams::PaymentMethodDatum`, `PaymentIntent::UpdateParams::PaymentMethodOption`, `PaymentMethod::CreateParams`, `PaymentMethod`, `SetupIntent::ConfirmParams::PaymentMethodDatum`, `SetupIntent::CreateParams::PaymentMethodDatum`, and `SetupIntent::UpdateParams::PaymentMethodDatum`
* Change type of `Charge::PaymentMethodDetail::Card::Installment::Plan.type`, `ConfirmationToken::CreateParams::PaymentMethodOption::Card::Installment::Plan.type`, `ConfirmationToken::PaymentMethodOption::Card::Installment::Plan.type`, `Invoice::CreateParams::PaymentSetting::PaymentMethodOption::Card::Installment::Plan.type`, `Invoice::UpdateParams::PaymentSetting::PaymentMethodOption::Card::Installment::Plan.type`, `PaymentIntent::ConfirmParams::PaymentMethodOption::Card::Installment::Plan.type`, `PaymentIntent::CreateParams::PaymentMethodOption::Card::Installment::Plan.type`, `PaymentIntent::PaymentMethodOption::Card::Installment::AvailablePlan.type`, `PaymentIntent::PaymentMethodOption::Card::Installment::Plan.type`, and `PaymentIntent::UpdateParams::PaymentMethodOption::Card::Installment::Plan.type` from `literal('fixed_count')` to `enum('bonus'|'fixed_count'|'revolving')`
* Add support for `subscriptions` on `Checkout::Session::CreateParams::PaymentMethodOption::Klarna`, `PaymentIntent::ConfirmParams::PaymentMethodOption::Klarna`, `PaymentIntent::CreateParams::PaymentMethodOption::Klarna`, and `PaymentIntent::UpdateParams::PaymentMethodOption::Klarna`
* Add support for `billing_mode` on `Checkout::Session::CreateParams::SubscriptionDatum`, `Invoice::CreatePreviewParams::ScheduleDetail`, `Invoice::CreatePreviewParams::SubscriptionDetail`, `Quote::CreateParams::SubscriptionDatum`, `Quote::SubscriptionDatum`, `Subscription::CreateParams`, `SubscriptionSchedule::CreateParams`, `SubscriptionSchedule`, and `Subscription`
* Change type of `Dispute.enhanced_eligibility_types` from `literal('visa_compelling_evidence_3')` to `enum('visa_compelling_evidence_3'|'visa_compliance')`
* Add support for `related_person` on `Identity::VerificationSession::CreateParams` and `Identity::VerificationSession`
* Add support for `matching` on `Identity::VerificationSession::Option`
* Add support for `klarna` on `Mandate::PaymentMethodDetail`, `SetupIntent::ConfirmParams::PaymentMethodOption`, `SetupIntent::CreateParams::PaymentMethodOption`, `SetupIntent::PaymentMethodOption`, and `SetupIntent::UpdateParams::PaymentMethodOption`
* Add support for `on_demand` on `PaymentIntent::ConfirmParams::PaymentMethodOption::Klarna`, `PaymentIntent::CreateParams::PaymentMethodOption::Klarna`, and `PaymentIntent::UpdateParams::PaymentMethodOption::Klarna`
* Change type of `PaymentIntent::ConfirmParams::PaymentMethodOption::Klarna.setup_future_usage`, `PaymentIntent::CreateParams::PaymentMethodOption::Klarna.setup_future_usage`, `PaymentIntent::PaymentMethodOption::Klarna.setup_future_usage`, and `PaymentIntent::UpdateParams::PaymentMethodOption::Klarna.setup_future_usage` from `literal('none')` to `enum('none'|'off_session'|'on_session')`
* Add support for `ua` on `Tax::Registration::CountryOption` and `Tax::Registration::CreateParams::CountryOption`
* Change type of `Terminal::Location::UpdateParams.display_name` from `string` to `emptyable(string)`
* Add support for `collect_payment_method` and `confirm_payment_intent` on `Terminal::Reader::Action`
* Add support for `status` on `Treasury::FinancialAccount::ListParams`
