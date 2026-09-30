---
title: Update generated code
pr_url: https://github.com/stripe/stripe-ruby/pull/1975
semver_level: major
is_stripe_api_change: true
---

* Add support for new resources `V2::Data::QueryRun`, `V2::Data::ReportRun`, `V2::Data::Report`, `V2::Data::Schema`, `V2::MoneyManagement::EarnedCreditSimulation`, `V2::MoneyManagement::EarnedCredit`, and `V2::Provisioning::ResourceAccessConfiguration`
* Add support for `earned_credits` method on resource `V2::MoneyManagement::EarnedCreditSimulation`
* Add support for `list` and `retrieve` methods on resources `V2::Data::Report`, `V2::Data::Schema`, and `V2::MoneyManagement::EarnedCredit`
* Add support for `create` and `retrieve` methods on resources `V2::Data::QueryRun` and `V2::Data::ReportRun`
* Add support for `reveal_access_configuration` method on resource `V2::Provisioning::Resource`
* Add support for `refresh_regulatory_receipt` method on resource `V2::MoneyManagement::Transaction`
* Add support for `capital_financing_manual_payment` on `AccountSessionCreateParams::Component`
* ⚠️ Remove support for `authorized_content_security_policy`, `authorized_endpoints`, `authorized_permissions`, and `state` on `Apps::Install`
* Change type of `Apps::Install.content_security_policy_granted` from `nullable(AppServiceResourceInstallContentSecurityPolicy)` to `AppServiceResourceInstallContentSecurityPolicy`
* Change type of `Apps::Install.endpoints_granted` from `nullable(array(string))` to `array(string)`
* Change type of `Apps::Install.permissions_granted` from `nullable(array(string))` to `array(string)`
* Change type of `Apps::Install.status` from `nullable(enum)` to `enum`
* Add support for `financing_documents` on `Capital::FinancingOffer`
* Add support for `enabled_payment_types` and `overdue_amount` on `Capital::FinancingSummary::Detail`
* Add support for `card_account_update` on `Charge::PaymentMethodDetail::Card`
* Add support for `on_behalf_of` on `Checkout::SessionCreateParams`
* Add support for `billing_cycle_anchor` on `Checkout::Session::Item::Subscription::TrialSetting::EndBehavior`, `Checkout::SessionCreateParams::Item::Subscription::TrialSetting::EndBehavior`, `Checkout::SessionCreateParams::SubscriptionDatum::TrialSetting::EndBehavior`, `PaymentLink::SubscriptionDatum::TrialSetting::EndBehavior`, `PaymentLinkCreateParams::SubscriptionDatum::TrialSetting::EndBehavior`, and `PaymentLinkUpdateParams::SubscriptionDatum::TrialSetting::EndBehavior`
* Add support for `payment_method_preselect` on `Checkout::Session::SavedPaymentMethodOption` and `Checkout::SessionCreateParams::SavedPaymentMethodOption`
* Add support for `es` on `CustomerCustomerTaxExemptionCreateParams` and `CustomerTaxExemption`
* ⚠️ Remove support for `financial_activity` on `FinancialConnections::Transaction::Classification`
* Add support for `enablement_details` on `Invoice::AutomaticTax` and `QuotePreviewInvoice::AutomaticTax`
* Add support for `return_code` on `PaymentAttemptRecord::PaymentMethodDetail::UsBankAccount` and `PaymentRecord::PaymentMethodDetail::UsBankAccount`
* Add support for `request_card_account_update` on `PaymentIntent::PaymentMethodOption::Card`, `PaymentIntentConfirmParams::PaymentMethodOption::Card`, `PaymentIntentCreateParams::PaymentMethodOption::Card`, and `PaymentIntentUpdateParams::PaymentMethodOption::Card`
* ⚠️ Remove support for `name` on `ProductCatalog::TrialOffer`
* ⚠️ Change type of `Radar::PaymentEvaluation::Signal::EarlyFraudWarning.score` and `Radar::PaymentEvaluation::Signal::FraudulentDispute.score` from `number` to `nullable(number)`
* Add support for `status` on `Tax::FormListParams` and `Tax::Form`
* Add support for `card_not_present_transactions`, `gross_amount_of_transactions_decimal`, `monthly_volumes`, `payment_transactions_count`, and `state_income_tax_withheld` on `Tax::Form::Us1099K`
* Add support for `cash_tips`, `currency`, and `federal_income_tax_withheld` on `Tax::Form::Us1099K`, `Tax::Form::Us1099Misc`, and `Tax::Form::Us1099Nec`
* Add support for `crop_insurance_proceeds`, `direct_sales_for_resale`, `excess_golden_parachute_payments`, `fatca_filing_required`, `fish_purchased_for_resale`, `fishing_boat_proceeds`, `gross_proceeds_paid_to_an_attorney`, `medical_and_health_care_payments`, `nonqualified_deferred_compensation`, `other_income`, `rents`, `royalties`, `section_409a_deferrals`, and `substitute_payments` on `Tax::Form::Us1099Misc`
* Add support for `overtime_compensation`, `state_income`, and `state_tax_withheld` on `Tax::Form::Us1099Misc` and `Tax::Form::Us1099Nec`
* Add support for `direct_sales_indicator`, `fatca_filing_requirement`, and `nonemployee_compensation` on `Tax::Form::Us1099Nec`
* ⚠️ Remove support for `tamper_state` on `Terminal::ReaderListParams`
* ⚠️ Remove support for `configurations` on `V2::Core::AccountLink::UseCase::RecipientOnboarding`, `V2::Core::AccountLink::UseCase::RecipientUpdate`, `V2::Core::AccountLinkCreateParams::UseCase::RecipientOnboarding`, and `V2::Core::AccountLinkCreateParams::UseCase::RecipientUpdate`
* Add support for `ousd` on `V2::Core::Account::Configuration::MoneyManager::Capability::BusinessStorage::Inbound`, `V2::Core::Account::Configuration::MoneyManager::Capability::BusinessStorage::Outbound`, `V2::Core::AccountCreateParams::Configuration::MoneyManager::Capability::BusinessStorage::Inbound`, `V2::Core::AccountCreateParams::Configuration::MoneyManager::Capability::BusinessStorage::Outbound`, `V2::Core::AccountUpdateParams::Configuration::MoneyManager::Capability::BusinessStorage::Inbound`, and `V2::Core::AccountUpdateParams::Configuration::MoneyManager::Capability::BusinessStorage::Outbound`
* Add support for `origin` on `V2::Core::Vault::NetworkToken`
* Add support for `bic` on `V2::MoneyManagement::FinancialAddress::BankAccount::Aba`, `V2::MoneyManagement::FinancialAddress::BankAccount::Cpa`, `V2::MoneyManagement::FinancialAddress::BankAccount::Iban`, and `V2::MoneyManagement::FinancialAddress::BankAccount::SortCode`
* Add support for `iban` on `V2::MoneyManagement::FinancialAddress::BankAccount::SortCode`
* Add support for `statement_descriptor` on `V2::MoneyManagement::InboundTransferCreateParams` and `V2::MoneyManagement::InboundTransfer`
* Add support for `network_fee_details` on `V2::MoneyManagement::PayoutIntent::EstimatedFee`
* ⚠️ Remove support for `archived` on `V2::MoneyManagement::PayoutMethod::CryptoWallet`
* Add support for `network_details` on `V2::MoneyManagement::ReceivedDebit::BankTransfer`
* Add support for `earned_credit` on `V2::MoneyManagement::Transaction::Flow` and `V2::MoneyManagement::TransactionEntry::TransactionDetail::Flow`
* Add support for `regulatory_receipt` on `V2::MoneyManagement::Transaction`
* ⚠️ Remove support for `retry_until` on `V2::Payments::OffSessionPayment::RetryDetail`
* ⚠️ Remove support for `cvc` on `V2::Payments::OffSessionPaymentCreateParams::PaymentMethodDatum::Card`
* Add support for `from_resource` on `V2::MoneyManagement::OutboundSetupIntentCreateParams`
* Change type of `V2::Core::Vault::NetworkTokenCreateFromCredentialParams::Card.origin` and `V2::Core::Vault::NetworkTokenCreateParams::Card.origin` from `literal('card_on_file')` to `enum('card_on_file'|'wallet')`
* Change type of `V2::Core::Vault::NetworkTokenCreateFromCredentialParams.type` and `V2::Core::Vault::NetworkTokenCreateParams.type` from `literal('card')` to `enum('card')`
* Change type of `V2::Core::Vault::NetworkTokenGenerateCryptogramParams.type` from `literal('token_cryptogram')` to `enum('token_cryptogram')`
* ⚠️ Change type of `V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetail::PricingOverride::OverwritePrice.unit_amount`, `V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetail::PricingOverride::OverwritePrice.unit_amount`, and `V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetail::PricingOverrideAction::Add::OverwritePrice.unit_amount` from `string` to `decimal_string`
* ⚠️ Change type of `V2::Billing::ContractCreateParams::PricingOverride::MultiplyPricing.factor` from `string` to `decimal_string`
* Add support for `billing_settings` on `V2::Billing::ContractUpdateParams`
* ⚠️ Remove support for `account`, `evaluated_at`, `fraudulent_merchant`, and `type` on `EventsV2SignalsAccountSignalFraudulentMerchantReadyEvent`
* Add support for event notifications `V2DataQueryRunCreatedEvent`, `V2DataQueryRunFailedEvent`, `V2DataQueryRunSucceededEvent`, and `V2DataQueryRunUpdatedEvent` with related object `V2::Data::QueryRun`
* Add support for event notifications `V2DataReportRunCreatedEvent`, `V2DataReportRunFailedEvent`, `V2DataReportRunSucceededEvent`, and `V2DataReportRunUpdatedEvent` with related object `V2::Data::ReportRun`
* Add support for event notification `V2MoneyManagementEarnedCreditSucceededEvent` with related object `V2::MoneyManagement::EarnedCredit`
