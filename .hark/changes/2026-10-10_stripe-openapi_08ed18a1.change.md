---
title: Update generated code
pr_url: https://github.com/stripe/stripe-ruby/pull/1993
semver_level: major
is_stripe_api_change: true
---

* ⚠️ Remove support for `capture` method on resource `V2::Payments::OffSessionPayment`
* ⚠️ Remove support for `acknowledge_confirmation_of_payee` and `initiate_confirmation_of_payee` methods on resource `V2::Core::Vault::GbBankAccount`
* Add support for `wechat_pay_mobile_web_payments` on `Account::Setting`, `AccountCreateParams::Setting`, and `AccountUpdateParams::Setting`
* ⚠️ Remove support for `wechat_pay_payments` on `Account::Setting`, `AccountCreateParams::Setting`, and `AccountUpdateParams::Setting`
* Add support for `settlement_reserved` on `Balance`
* Add support for `carecredit`, `getflex`, and `sezzle` on `Charge::PaymentMethodDetail`, `ConfirmationToken::PaymentMethodPreview`, `ConfirmationTokenCreateParams::PaymentMethodDatum`, `PaymentAttemptRecord::PaymentMethodDetail`, `PaymentIntent::PaymentMethodOption`, `PaymentIntentConfirmParams::PaymentMethodDatum`, `PaymentIntentConfirmParams::PaymentMethodOption`, `PaymentIntentCreateParams::PaymentMethodDatum`, `PaymentIntentCreateParams::PaymentMethodOption`, `PaymentIntentUpdateParams::PaymentMethodDatum`, `PaymentIntentUpdateParams::PaymentMethodOption`, `PaymentMethodCreateParams`, `PaymentMethod`, `PaymentRecord::PaymentMethodDetail`, `SetupIntentConfirmParams::PaymentMethodDatum`, `SetupIntentCreateParams::PaymentMethodDatum`, and `SetupIntentUpdateParams::PaymentMethodDatum`
* Add support for `mandate_options` on `Checkout::SessionCreateParams::PaymentMethodOption::Card`
* Change `Checkout::Session::Item::Subscription.backdate_start_date` to be required
* Add support for `contact_email` on `V2::Core::AccountEvaluation::AccountDatum`, `V2::Core::AccountEvaluationCreateParams::AccountDatum`, `V2::Signals::AccountActivity::AccountDetail::Datum`, `V2::Signals::AccountActivityCreateParams::AccountDetail::Data`, `V2::Signals::AccountEvaluation::AccountDetail::Datum`, and `V2::Signals::AccountEvaluationCreateParams::AccountDetail::Data`
* Add support for `bre_b`, `nip`, and `pix` on `V2::MoneyManagement::FinancialAddress::BankAccount` and `V2::MoneyManagement::ReceivedCredit::BankTransfer::OriginatingBankAccount`
* ⚠️ Remove support for `amount_capturable` on `V2::Payments::OffSessionPayment`
* ⚠️ Remove support for `capture` on `V2::Payments::OffSessionPaymentCreateParams` and `V2::Payments::OffSessionPayment`
* ⚠️ Remove support for event notification `V2PaymentsOffSessionPaymentRequiresCaptureEvent` with related object `V2::Payments::OffSessionPayment`
