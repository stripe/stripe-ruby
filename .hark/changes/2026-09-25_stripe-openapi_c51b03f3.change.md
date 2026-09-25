---
title: Update generated code
pr_url: https://github.com/stripe/stripe-ruby/pull/1975
semver_level: major
is_stripe_api_change: true
---

* Add support for new resources `V2::MoneyManagement::EarnedCreditSimulation`, `V2::MoneyManagement::EarnedCredit`, `V2::MoneyManagement::FinancialAddressCreditSimulation`, and `V2::MoneyManagement::FinancialAddressGeneratedMicrodeposits`
* ⚠️ Remove support for resources `V2::FinancialAddressCreditSimulation` and `V2::FinancialAddressGeneratedMicrodeposits`
* Add support for `earned_credits` method on resource `V2::MoneyManagement::EarnedCreditSimulation`
* Add support for `list` and `retrieve` methods on resource `V2::MoneyManagement::EarnedCredit`
* ⚠️ Remove support for `credit` method on resource `V2::FinancialAddressCreditSimulation`
* ⚠️ Remove support for `generate_microdeposits` method on resource `V2::FinancialAddressGeneratedMicrodeposits`
* Add support for `credit` method on resource `V2::MoneyManagement::FinancialAddressCreditSimulation`
* Add support for `generate_microdeposits` method on resource `V2::MoneyManagement::FinancialAddressGeneratedMicrodeposits`
* Add support for `capital_financing_manual_payment` on `AccountSessionCreateParams::Component`
* ⚠️ Remove support for `authorized_content_security_policy`, `authorized_endpoints`, `authorized_permissions`, and `state` on `Apps::Install`
* Change type of `Apps::Install.content_security_policy_granted` from `nullable(AppServiceResourceInstallContentSecurityPolicy)` to `AppServiceResourceInstallContentSecurityPolicy`
* Change type of `Apps::Install.endpoints_granted` from `nullable(array(string))` to `array(string)`
* Change type of `Apps::Install.permissions_granted` from `nullable(array(string))` to `array(string)`
* Change type of `Apps::Install.status` from `nullable(enum)` to `enum`
* Add support for `enabled_payment_types` on `Capital::FinancingSummary::Detail`
* Add support for `card_account_update` on `Charge::PaymentMethodDetail::Card`
* Add support for `billing_cycle_anchor` on `Checkout::Session::Item::Subscription::TrialSetting::EndBehavior`, `Checkout::SessionCreateParams::Item::Subscription::TrialSetting::EndBehavior`, `Checkout::SessionCreateParams::SubscriptionDatum::TrialSetting::EndBehavior`, `PaymentLink::SubscriptionDatum::TrialSetting::EndBehavior`, `PaymentLinkCreateParams::SubscriptionDatum::TrialSetting::EndBehavior`, and `PaymentLinkUpdateParams::SubscriptionDatum::TrialSetting::EndBehavior`
* Add support for `payment_method_preselect` on `Checkout::Session::SavedPaymentMethodOption` and `Checkout::SessionCreateParams::SavedPaymentMethodOption`
* Add support for `es` on `CustomerCustomerTaxExemptionCreateParams` and `CustomerTaxExemption`
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
* ⚠️ Remove support for `configurations` on `V2::Core::AccountLink::UseCase::AccountOnboarding`, `V2::Core::AccountLink::UseCase::AccountUpdate`, `V2::Core::AccountLink::UseCase::RecipientOnboarding`, `V2::Core::AccountLink::UseCase::RecipientUpdate`, `V2::Core::AccountLinkCreateParams::UseCase::AccountOnboarding`, `V2::Core::AccountLinkCreateParams::UseCase::AccountUpdate`, `V2::Core::AccountLinkCreateParams::UseCase::RecipientOnboarding`, and `V2::Core::AccountLinkCreateParams::UseCase::RecipientUpdate`
* Add support for `satispay_payments` and `sequra_payments` on `V2::Core::Account::Configuration::Merchant::Capability`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability`, and `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability`
* Add support for `ousd` on `V2::Core::Account::Configuration::MoneyManager::Capability::BusinessStorage::Inbound`, `V2::Core::Account::Configuration::MoneyManager::Capability::BusinessStorage::Outbound`, `V2::Core::AccountCreateParams::Configuration::MoneyManager::Capability::BusinessStorage::Inbound`, `V2::Core::AccountCreateParams::Configuration::MoneyManager::Capability::BusinessStorage::Outbound`, `V2::Core::AccountUpdateParams::Configuration::MoneyManager::Capability::BusinessStorage::Inbound`, and `V2::Core::AccountUpdateParams::Configuration::MoneyManager::Capability::BusinessStorage::Outbound`
* Add support for `related_object` and `request` on `V2::Iam::ActivityLog`
* Add support for `account_security`, `authentication`, `scim`, `sso`, and `user_profile` on `V2::Iam::ActivityLog::Detail`
* Add support for `deposit_insurance_eligibility` on `V2::MoneyManagement::FinancialAccount::Storage` and `V2::MoneyManagement::FinancialAccountCreateParams::Storage`
* ⚠️ Remove support for `level` on `V2::MoneyManagement::InboundTransfer::TransferHistory`
* Add support for `network_fee_details` on `V2::MoneyManagement::OutboundPaymentQuote::EstimatedFee` and `V2::MoneyManagement::PayoutIntent::EstimatedFee`
* Add support for `archived` on `V2::MoneyManagement::PayoutMethod`
* ⚠️ Remove support for `archived` on `V2::MoneyManagement::PayoutMethod::BankAccount`, `V2::MoneyManagement::PayoutMethod::Card`, and `V2::MoneyManagement::PayoutMethod::CryptoWallet`
* Add support for `network_details` on `V2::MoneyManagement::ReceivedDebit::BankTransfer`
* Add support for `earned_credit` on `V2::MoneyManagement::Transaction::Flow` and `V2::MoneyManagement::TransactionEntry::TransactionDetail::Flow`
* ⚠️ Remove support for `retry_until` on `V2::Payments::OffSessionPayment::RetryDetail`
* ⚠️ Remove support for `cvc` on `V2::Payments::OffSessionPaymentCreateParams::PaymentMethodDatum::Card`
* ⚠️ Remove support for `created_gt`, `created_gte`, `created_lt`, and `created_lte` on `V2::MoneyManagement::AdjustmentListParams`, `V2::MoneyManagement::InboundTransferListParams`, `V2::MoneyManagement::ReceivedCreditListParams`, `V2::MoneyManagement::TransactionEntryListParams`, and `V2::MoneyManagement::TransactionListParams`
* ⚠️ Change type of `V2::MoneyManagement::AdjustmentListParams.created`, `V2::MoneyManagement::InboundTransferListParams.created`, `V2::MoneyManagement::ReceivedCreditListParams.created`, `V2::MoneyManagement::TransactionEntryListParams.created`, and `V2::MoneyManagement::TransactionListParams.created` from `DateTime` to `an object`
* Add support for `from_resource` on `V2::MoneyManagement::OutboundSetupIntentCreateParams`
* Add support for `sepa_debit_payments` on `V2::Core::AccountCreateParams::Configuration::Merchant` and `V2::Core::AccountUpdateParams::Configuration::Merchant`
* ⚠️ Change type of `V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetail::PricingOverride::OverwritePrice.unit_amount`, `V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetail::PricingOverride::OverwritePrice.unit_amount`, and `V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetail::PricingOverrideAction::Add::OverwritePrice.unit_amount` from `string` to `decimal_string`
* ⚠️ Change type of `V2::Billing::ContractCreateParams::PricingOverride::MultiplyPricing.factor` from `string` to `decimal_string`
* Add support for `billing_settings` on `V2::Billing::ContractUpdateParams`
* Add support for `treasury_transaction` on `EventsV2MoneyManagementTransactionUpdatedEvent`
* ⚠️ Remove support for `account`, `evaluated_at`, `fraudulent_merchant`, and `type` on `EventsV2SignalsAccountSignalFraudulentMerchantReadyEvent`
* Add support for event notification `V2MoneyManagementEarnedCreditSucceededEvent` with related object `V2::MoneyManagement::EarnedCredit`
* Add support for error types `InvalidVaultedCredentialError`, `VerificationAttemptFailedError`, `VerificationExpiredError`, and `VerificationNotInitiatedError`
* ⚠️ Remove support for error type `ControlledByDashboardError`
