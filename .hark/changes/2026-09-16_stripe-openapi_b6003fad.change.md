---
title: Update generated code
pr_url: https://github.com/stripe/stripe-ruby/pull/1963
semver_level: major
is_stripe_api_change: true
released_in_version: 19.7.0-alpha.4
---

* Add support for new resources `Apps::Install` and `V2::Core::Vault::NetworkToken`
* Add support for `create_from_credential`, `create`, `generate_cryptogram`, and `retrieve` methods on resource `V2::Core::Vault::NetworkToken`
* ⚠️ Remove support for `nesting_demo` on `AccountSession::Component`
* Add support for `shared_payment_granted_token` on `Charge::PaymentMethodDetail`
* Change type of `Charge::PaymentMethodDetail::Card.mandate` from `string` to `expandable($Mandate)`
* Add support for `current_trial` on `Checkout::Session::Item::Subscription::Item` and `Checkout::SessionCreateParams::Item::Subscription::Item`
* Add support for `verification_method` on `Checkout::Session::PaymentMethodOption::BacsDebit` and `Checkout::SessionCreateParams::PaymentMethodOption::BacsDebit`
* Add support for `appeal` on `Dispute::Evidence`
* Add support for `bacs_debit` on `Invoice::PaymentSetting::PaymentMethodOption`, `InvoiceCreateParams::PaymentSetting::PaymentMethodOption`, `InvoiceUpdateParams::PaymentSetting::PaymentMethodOption`, `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption`, `Subscription::PaymentSetting::PaymentMethodOption`, `SubscriptionCreateParams::PaymentSetting::PaymentMethodOption`, and `SubscriptionUpdateParams::PaymentSetting::PaymentMethodOption`
* Add support for `pricing_token` on `InvoiceCreatePreviewParams`
* Add support for `expires_at` on `Mandate::PaymentMethodDetail::Blik`, `PaymentIntent::NextAction::SwishHandleRedirectOrDisplayQrCode::QrCode`, and `Subscription::PaymentSetting::PaymentMethodOption::Blik::MandateOption`
* ⚠️ Remove support for `expires_after` on `Mandate::PaymentMethodDetail::Blik` and `Subscription::PaymentSetting::PaymentMethodOption::Blik::MandateOption`
* Add support for `momo` on `PaymentAttemptRecord::PaymentMethodDetail` and `PaymentRecord::PaymentMethodDetail`
* Add support for `link` on `PaymentAttemptRecord::PaymentMethodDetail::Card::Wallet` and `PaymentRecord::PaymentMethodDetail::Card::Wallet`
* Add support for `funding_source_group` on `PaymentAttemptRecord::PaymentMethodDetail::Link` and `PaymentRecord::PaymentMethodDetail::Link`
* Add support for `payout_method_options` on `PayoutCreateParams`
* ⚠️ Change `ProductCatalog::TrialOffer::EndBehavior.transition` to be optional
* Add support for `early_fraud_warning` and `fraudulent_dispute` on `Radar::PaymentEvaluation::Signal`
* ⚠️ Remove support for `igic` on `Tax::Registration::CountryOption::At`, `Tax::Registration::CountryOption::Be`, `Tax::Registration::CountryOption::Bg`, `Tax::Registration::CountryOption::Cy`, `Tax::Registration::CountryOption::Cz`, `Tax::Registration::CountryOption::De`, `Tax::Registration::CountryOption::Dk`, `Tax::Registration::CountryOption::Ee`, `Tax::Registration::CountryOption::Fi`, `Tax::Registration::CountryOption::Fr`, `Tax::Registration::CountryOption::Gr`, `Tax::Registration::CountryOption::Hr`, `Tax::Registration::CountryOption::Hu`, `Tax::Registration::CountryOption::Ie`, `Tax::Registration::CountryOption::It`, `Tax::Registration::CountryOption::Lt`, `Tax::Registration::CountryOption::Lu`, `Tax::Registration::CountryOption::Lv`, `Tax::Registration::CountryOption::Mt`, `Tax::Registration::CountryOption::Nl`, `Tax::Registration::CountryOption::Pl`, `Tax::Registration::CountryOption::Pt`, `Tax::Registration::CountryOption::Ro`, `Tax::Registration::CountryOption::Se`, `Tax::Registration::CountryOption::Si`, and `Tax::Registration::CountryOption::Sk`
* Add support for `metadata` on `V2::Billing::Contract::OneTimeFee::Datum`, `V2::Billing::ContractCreateParams::OneTimeFee`, `V2::Billing::ContractUpdateParams::OneTimeFeeAction::Add`, and `V2::Billing::ContractUpdateParams::OneTimeFeeAction::Update`
* Add support for `bank_account` and `crypto_wallet` on `V2::MoneyManagement::FinancialAddressCreateParams` and `V2::MoneyManagement::FinancialAddress`
* Add support for `type` on `V2::MoneyManagement::FinancialAddress` and `V2::MoneyManagement::ReceivedCredit::CryptoWalletTransfer`
* ⚠️ Remove support for `credentials` and `currency` on `V2::MoneyManagement::FinancialAddress`
* Add support for `amount_received` on `V2::MoneyManagement::ReceivedCredit`
* Add support for `originating_bank_account` on `V2::MoneyManagement::ReceivedCredit::BankTransfer`
* ⚠️ Remove support for `origin_type` on `V2::MoneyManagement::ReceivedCredit::BankTransfer` and `V2::MoneyManagement::ReceivedCredit::CryptoWalletTransfer`
* Add support for `latest_payment_attempt_record_details` on `V2::Payments::OffSessionPayment`
* Add support for `account_reviewed` on `V2::Signals::AccountActivityCreateParams` and `V2::Signals::AccountActivity`
* ⚠️ Change `V2::Signals::PaymentRetrySignal.payment_record` to be optional
* Add support for `include` on `V2::Payments::OffSessionPaymentCreateParams`
* ⚠️ Remove support for `include` on `V2::MoneyManagement::FinancialAddressListParams` and `V2::MoneyManagement::FinancialAddressRetrieveParams`
* ⚠️ Remove support for `crypto_properties` and `sepa_bank_account` on `V2::MoneyManagement::FinancialAddressCreateParams`
* Add support for error type `MerchantNotGatedError`
