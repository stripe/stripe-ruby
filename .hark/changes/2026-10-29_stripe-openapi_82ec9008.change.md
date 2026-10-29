---
title: Update generated code
pr_url: https://github.com/stripe/stripe-ruby/pull/1987
semver_level: major
is_stripe_api_change: true
released_in_version: 20.2.0-beta.1
---

* Add support for new resources `PaymentPlan`, `V2::Data::QueryRun`, `V2::Data::ReportRun`, `V2::Data::Report`, and `V2::Data::Schema`
* Add support for `create`, `list`, `retrieve`, and `update` methods on resource `PaymentPlan`
* Add support for `list` and `retrieve` methods on resources `V2::Data::Report` and `V2::Data::Schema`
* Add support for `create` and `retrieve` methods on resources `V2::Data::QueryRun` and `V2::Data::ReportRun`
* ⚠️ Remove support for `acknowledge_confirmation_of_payee` and `initiate_confirmation_of_payee` methods on resource `V2::Core::Vault::GbBankAccount`
* Add support for `settlement_currencies` on `BalanceSettings::Payment` and `BalanceSettingsUpdateParams::Payment`
* Add support for `default_settlement_currency` on `BalanceSettings::Payment`
* Add support for `wero` on `Charge::PaymentMethodDetail`, `ConfirmationToken::PaymentMethodPreview`, `ConfirmationTokenCreateParams::PaymentMethodDatum`, `PaymentAttemptRecord::PaymentMethodDetail`, `PaymentIntent::PaymentMethodOption`, `PaymentIntentConfirmParams::PaymentMethodDatum`, `PaymentIntentConfirmParams::PaymentMethodOption`, `PaymentIntentCreateParams::PaymentMethodDatum`, `PaymentIntentCreateParams::PaymentMethodOption`, `PaymentIntentUpdateParams::PaymentMethodDatum`, `PaymentIntentUpdateParams::PaymentMethodOption`, `PaymentMethodConfigurationCreateParams`, `PaymentMethodConfigurationUpdateParams`, `PaymentMethodConfiguration`, `PaymentMethodCreateParams`, `PaymentMethod`, `PaymentRecord::PaymentMethodDetail`, `SetupIntentConfirmParams::PaymentMethodDatum`, `SetupIntentCreateParams::PaymentMethodDatum`, and `SetupIntentUpdateParams::PaymentMethodDatum`
* Add support for `external_token` on `ConfirmationTokenCreateParams::PaymentMethodDatum::UsBankAccount`, `PaymentIntentConfirmParams::PaymentMethodDatum::UsBankAccount`, `PaymentIntentCreateParams::PaymentMethodDatum::UsBankAccount`, `PaymentIntentUpdateParams::PaymentMethodDatum::UsBankAccount`, `PaymentMethodCreateParams::UsBankAccount`, `SetupIntentConfirmParams::PaymentMethodDatum::UsBankAccount`, `SetupIntentCreateParams::PaymentMethodDatum::UsBankAccount`, `SetupIntentUpdateParams::PaymentMethodDatum::UsBankAccount`, and `Treasury::OutboundPaymentCreateParams::DestinationPaymentMethodDatum::UsBankAccount`
* ⚠️ Change type of `Dispute::Evidence.appeal` from `DisputeAppeal` to `nullable(DisputeAppeal)`
* Change `Dispute::EvidenceDetail.submission_method` to be required
* Change `Dispute.intended_submission_method` to be required
* Add support for `payment_plan` on `Invoice`
* Change `QuotePreviewSubscriptionSchedule.pause_schedules` to be required
* ⚠️ Remove support for `default_outbound_destination` on `V2::Core::Account::Configuration::Recipient` and `V2::Core::AccountUpdateParams::Configuration::Recipient`
* Add support for `crypto_wallets` on `V2::Core::Account::Configuration::Recipient::Capability`, `V2::Core::AccountCreateParams::Configuration::Recipient::Capability`, and `V2::Core::AccountUpdateParams::Configuration::Recipient::Capability`
* Add support for `ach`, `fedwire`, `fps`, `rtp`, `sepa`, and `swift` on `V2::Core::Account::Configuration::Recipient::Capability::BankAccount`, `V2::Core::AccountCreateParams::Configuration::Recipient::Capability::BankAccount`, and `V2::Core::AccountUpdateParams::Configuration::Recipient::Capability::BankAccount`
* ⚠️ Remove support for `wire` on `V2::Core::Account::Configuration::Recipient::Capability::BankAccount`, `V2::Core::AccountCreateParams::Configuration::Recipient::Capability::BankAccount`, and `V2::Core::AccountUpdateParams::Configuration::Recipient::Capability::BankAccount`
* Add support for `proof_of_business_presence` on `V2::Core::Account::Identity::BusinessDetail::Document`, `V2::Core::AccountCreateParams::Identity::BusinessDetail::Document`, `V2::Core::AccountTokenCreateParams::Identity::BusinessDetail::Document`, and `V2::Core::AccountUpdateParams::Identity::BusinessDetail::Document`
* Add support for `partial_output_file` on `V2::Core::BatchJob::StatusDetail::BatchFailed`
* Add support for `fingerprint` on `V2::Core::Vault::GbBankAccount`, `V2::Core::Vault::UsBankAccount`, and `V2::MoneyManagement::PayoutMethod::BankAccount`
* Add support for `fedwire_fingerprint` on `V2::Core::Vault::UsBankAccount`
* Add support for `address` on `V2::MoneyManagement::FinancialAddress::BankAccount::Aba`
* ⚠️ Remove support for `account_holder_address` on `V2::MoneyManagement::FinancialAddress::BankAccount::Aba`
* ⚠️ Remove support for `last4` on `V2::MoneyManagement::FinancialAddress::BankAccount::Aba`, `V2::MoneyManagement::FinancialAddress::BankAccount::Iban`, and `V2::MoneyManagement::FinancialAddress::BankAccount::SortCode`
* ⚠️ Remove support for `country` on `V2::MoneyManagement::FinancialAddress::BankAccount::Iban`
* Change `V2::MoneyManagement::FinancialAddress::BankAccount::Aba.account_number` and `V2::MoneyManagement::FinancialAddress::BankAccount::SortCode.account_number` to be required
* Change `V2::MoneyManagement::FinancialAddress::BankAccount::Iban.iban` to be required
* Change `V2::MoneyManagement::FinancialAddress.settlement_currency` to be required
* Add support for `tax_amount` on `V2::MoneyManagement::OutboundPaymentQuote::EstimatedFee`
* Add support for `payout_method_options` on `V2::MoneyManagement::OutboundPayment::To`, `V2::MoneyManagement::OutboundPaymentCreateParams::To`, `V2::MoneyManagement::OutboundPaymentQuote::To`, `V2::MoneyManagement::OutboundPaymentQuoteCreateParams::To`, `V2::MoneyManagement::OutboundTransfer::To`, and `V2::MoneyManagement::OutboundTransferCreateParams::To`
* Add support for `payout_intent` and `tracking_details` on `V2::MoneyManagement::OutboundPayment`
* Add support for `recipient_verification` on `V2::MoneyManagement::OutboundPaymentCreateParams` and `V2::MoneyManagement::OutboundPayment`
* ⚠️ Change `V2::MoneyManagement::OutboundPayment::To.payout_method` and `V2::MoneyManagement::OutboundSetupIntent.payout_method` to be optional
* Add support for `crypto_wallet` on `V2::MoneyManagement::OutboundSetupIntentCreateParams::PayoutMethodDatum` and `V2::MoneyManagement::PayoutMethod`
* Add support for `network` on `V2::MoneyManagement::ReceivedCredit::BankTransfer`
* ⚠️ Remove support for `gb_bank_account`, `sepa_bank_account`, and `us_bank_account` on `V2::MoneyManagement::ReceivedCredit::BankTransfer`
* ⚠️ Remove support for `network` on `V2::MoneyManagement::ReceivedCredit::BankTransfer::OriginatingBankAccount::Aba`, `V2::MoneyManagement::ReceivedCredit::BankTransfer::OriginatingBankAccount::Iban`, and `V2::MoneyManagement::ReceivedCredit::BankTransfer::OriginatingBankAccount::SortCode`
* Add support for `fee_batch` on `V2::MoneyManagement::Transaction::Flow` and `V2::MoneyManagement::TransactionEntry::TransactionDetail::Flow`
* ⚠️ Remove support for `fee_transaction` on `V2::MoneyManagement::Transaction::Flow` and `V2::MoneyManagement::TransactionEntry::TransactionDetail::Flow`
* Add support for `metadata` and `regulatory_receipt` on `V2::MoneyManagement::Transaction`
* Add support for `contact_email` on `V2::Signals::AccountActivity::AccountDetail::Datum`, `V2::Signals::AccountActivityCreateParams::AccountDetail::Data`, `V2::Signals::AccountEvaluation::AccountDetail::Datum`, and `V2::Signals::AccountEvaluationCreateParams::AccountDetail::Data`
* Add support for `statement_descriptor` on `V2::MoneyManagement::OutboundPaymentCreateParams` and `V2::MoneyManagement::OutboundTransferCreateParams`
* ⚠️ Remove support for `created_gt`, `created_gte`, `created_lt`, and `created_lte` on `V2::MoneyManagement::OutboundPaymentListParams`
* ⚠️ Change type of `V2::MoneyManagement::OutboundPaymentListParams.created` from `DateTime` to `an object`
* ⚠️ Remove support for `settlement_currency` on `V2::MoneyManagement::FinancialAddressCreateParams`
* ⚠️ Remove support for `deposit_insurance_eligibility` on `V2::MoneyManagement::FinancialAccountCreateParams::Storage`
* Add support for event notifications `V2DataQueryRunCreatedEvent`, `V2DataQueryRunFailedEvent`, `V2DataQueryRunSucceededEvent`, and `V2DataQueryRunUpdatedEvent` with related object `V2::Data::QueryRun`
* Add support for event notifications `V2DataReportRunCreatedEvent`, `V2DataReportRunFailedEvent`, `V2DataReportRunSucceededEvent`, and `V2DataReportRunUpdatedEvent` with related object `V2::Data::ReportRun`
