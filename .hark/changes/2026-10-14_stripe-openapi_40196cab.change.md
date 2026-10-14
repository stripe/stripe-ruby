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
* Change type of `BalanceSettings::Payment.default_settlement_currency` from `nullable(string)` to `string`
* Add support for `carecredit`, `getflex`, and `sezzle` on `Charge::PaymentMethodDetail`, `ConfirmationToken::PaymentMethodPreview`, `ConfirmationTokenCreateParams::PaymentMethodDatum`, `PaymentAttemptRecord::PaymentMethodDetail`, `PaymentIntent::PaymentMethodOption`, `PaymentIntentConfirmParams::PaymentMethodDatum`, `PaymentIntentConfirmParams::PaymentMethodOption`, `PaymentIntentCreateParams::PaymentMethodDatum`, `PaymentIntentCreateParams::PaymentMethodOption`, `PaymentIntentUpdateParams::PaymentMethodDatum`, `PaymentIntentUpdateParams::PaymentMethodOption`, `PaymentMethodCreateParams`, `PaymentMethod`, `PaymentRecord::PaymentMethodDetail`, `SetupIntentConfirmParams::PaymentMethodDatum`, `SetupIntentCreateParams::PaymentMethodDatum`, and `SetupIntentUpdateParams::PaymentMethodDatum`
* Add support for `rakuten_pay` on `Charge::PaymentMethodDetail`, `ConfirmationToken::PaymentMethodPreview`, `ConfirmationTokenCreateParams::PaymentMethodDatum`, `PaymentAttemptRecord::PaymentMethodDetail`, `PaymentIntentConfirmParams::PaymentMethodDatum`, `PaymentIntentCreateParams::PaymentMethodDatum`, `PaymentIntentUpdateParams::PaymentMethodDatum`, `PaymentMethodCreateParams`, `PaymentMethod`, `PaymentRecord::PaymentMethodDetail`, `SetupIntentConfirmParams::PaymentMethodDatum`, `SetupIntentCreateParams::PaymentMethodDatum`, and `SetupIntentUpdateParams::PaymentMethodDatum`
* Add support for `mandate_options` on `Checkout::SessionCreateParams::PaymentMethodOption::Card`
* Change `Checkout::Session::Item::Subscription.backdate_start_date` to be required
* Add support for `fraudulent_document` on `Identity::VerificationReport::Signal`
* Add support for `contact_email` on `V2::Core::AccountEvaluation::AccountDatum`, `V2::Core::AccountEvaluationCreateParams::AccountDatum`, `V2::Signals::AccountActivity::AccountDetail::Datum`, `V2::Signals::AccountActivityCreateParams::AccountDetail::Data`, `V2::Signals::AccountEvaluation::AccountDetail::Datum`, and `V2::Signals::AccountEvaluationCreateParams::AccountDetail::Data`
* ⚠️ Change type of `V2::Core::Account::Identity::Individual::AdditionalAddress.purpose` and `V2::Core::AccountPerson::AdditionalAddress.purpose` from `literal('registered')` to `enum('birthplace'|'registered')`
* Add support for `bre_b`, `nip`, and `pix` on `V2::MoneyManagement::FinancialAddress::BankAccount` and `V2::MoneyManagement::ReceivedCredit::BankTransfer::OriginatingBankAccount`
* ⚠️ Remove support for `amount_capturable` on `V2::Payments::OffSessionPayment`
* ⚠️ Remove support for `capture` on `V2::Payments::OffSessionPaymentCreateParams` and `V2::Payments::OffSessionPayment`
* Add support for `user_merchant_fit` on `V2::Signals::AccountEvaluation::EvaluatedSignal` and `V2::Signals::AccountSignal`
* Change type of `V2::Core::AccountCreateParams::Identity::Individual::AdditionalAddress.purpose`, `V2::Core::AccountPersonCreateParams::AdditionalAddress.purpose`, `V2::Core::AccountPersonTokenCreateParams::AdditionalAddress.purpose`, `V2::Core::AccountPersonUpdateParams::AdditionalAddress.purpose`, `V2::Core::AccountTokenCreateParams::Identity::Individual::AdditionalAddress.purpose`, and `V2::Core::AccountUpdateParams::Identity::Individual::AdditionalAddress.purpose` from `literal('registered')` to `enum('birthplace'|'registered')`
* ⚠️ Remove support for event notification `V2PaymentsOffSessionPaymentRequiresCaptureEvent` with related object `V2::Payments::OffSessionPayment`
