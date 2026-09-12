---
title: Update generated code for private-preview
pr_url: https://github.com/stripe/stripe-ruby/pull/1894
is_breaking: true
is_stripe_api_change: true
released_in_version: 19.4.0-alpha.1
---

* Add support for new resources `V2::Billing::ContractPricingLineQuantityChange`, `V2::Core::Health::AlertHistoryEntry`, `V2::Core::Health::Alert`, `V2::MoneyManagement::FinancialAddressDebitSimulation`, and `V2::MoneyManagement::PayoutIntent`
* ⚠️ Remove support for resource `V2::Billing::ContractLicensePricingQuantityChange`
* Add support for `report_offer_acceptance` method on resource `Issuing::CreditUnderwritingRecord`
* Add support for `provisional_credit` test helper method on resource `Issuing::Dispute`
* Add support for `report_early_fraud_warning` method on resource `PaymentAttemptRecord`
* Add support for `search` method on resource `PaymentRecord`
* Add support for `debit` method on resource `V2::MoneyManagement::FinancialAddressDebitSimulation`
* Add support for `cancel`, `create`, `list`, `retrieve`, and `update` methods on resource `V2::MoneyManagement::PayoutIntent`
* Add support for `list` and `retrieve` methods on resource `V2::Core::Health::Alert`
* Add support for `delete` method on resource `V2::Billing::Contract`
* ⚠️ Remove support for `performance_location_details` on `Tax::TransactionLineItem`
* Add support for `financial_accounts_transactions`, `financial_accounts`, and `recipients_list` on `AccountSession::Component` and `AccountSessionCreateParams::Component`
* Add support for `location` and `reader` on `Charge::PaymentMethodDetail::GiftCard`, `GiftCardOperation`, `PaymentAttemptRecord::PaymentMethodDetail::GiftCard`, and `PaymentRecord::PaymentMethodDetail::GiftCard`
* Add support for `subscription` on `Checkout::SessionCreateParams::Item`
* Add support for `items` on `Checkout::Session`
* Add support for `brand` on `Checkout::Session::CurrentAttempt::PaymentMethodDetail::Card`
* Add support for `network_data` on `Issuing::AuthorizationCaptureParams` and `Issuing::TransactionCreateForceCaptureParams`
* Add support for `enriched_merchant_data` on `Issuing::Authorization`
* Add support for `available_balance` and `current_balance` on `Issuing::Authorization::BalanceResponse`
* ⚠️ Remove support for `amount` on `Issuing::Authorization::BalanceResponse`
* Add support for `decision_deadline_updated_at` on `Issuing::CreditUnderwritingRecord`
* Add support for `acquirer_reference_number` on `Issuing::Transaction::NetworkDatum`
* Change `PaymentAttemptRecordReportRefundParams.outcome` to be optional
* Add support for `tip` on `PaymentIntentCaptureParams::AmountDetail`, `PaymentIntentConfirmParams::AmountDetail`, `PaymentIntentCreateParams::AmountDetail`, `PaymentIntentDecrementAuthorizationParams::AmountDetail`, `PaymentIntentIncrementAuthorizationParams::AmountDetail`, and `PaymentIntentUpdateParams::AmountDetail`
* Add support for `billing_cycle_anchor` on `V2::Billing::ContractCreateParams` and `V2::Billing::Contract`
* ⚠️ Remove support for `contract_line_details`, `contract_value_details`, and `license_quantities` on `V2::Billing::Contract`
* Add support for `bill_settings_details` on `V2::Billing::Contract::BillingSetting` and `V2::Billing::ContractCreateParams::BillingSetting`
* Add support for `billing_profile_details` and `collection_settings_details` on `V2::Billing::Contract::BillingSetting`
* ⚠️ Remove support for `contract_billing_details` on `V2::Billing::Contract::BillingSetting` and `V2::Billing::ContractCreateParams::BillingSetting`
* ⚠️ Change type of `V2::Billing::Contract.one_time_fees` from `array(an object)` to `an object`
* ⚠️ Change type of `V2::Billing::Contract.pricing_lines` from `array(an object)` to `an object`
* ⚠️ Change type of `V2::Billing::Contract.pricing_overrides` from `array(an object)` to `an object`
* ⚠️ Change `V2::Billing::Contract.pricing_lines` to be optional
* ⚠️ Change `V2::Billing::Contract.pricing_overrides` to be optional
* Add support for `ach`, `becs`, `eft`, `fedwire`, `fps`, `npp`, `rtp`, `sepa_credit`, `sepa_instant`, and `swift` on `V2::Core::Account::Configuration::Recipient::Capability::BankAccount`, `V2::Core::AccountCreateParams::Configuration::Recipient::Capability::BankAccount`, and `V2::Core::AccountUpdateParams::Configuration::Recipient::Capability::BankAccount`
* Add support for `consumer_money_manager` on `V2::Core::Account::Identity::Attestation::TermsOfService`, `V2::Core::AccountCreateParams::Identity::Attestation::TermsOfService`, and `V2::Core::AccountUpdateParams::Identity::Attestation::TermsOfService`
* Add support for `crypto_money_manager` on `V2::Core::Account::Identity::Attestation::TermsOfService`, `V2::Core::AccountCreateParams::Identity::Attestation::TermsOfService`, and `V2::Core::AccountTokenCreateParams::Identity::Attestation::TermsOfService`
* ⚠️ Remove support for `consumer_storer` on `V2::Core::Account::Identity::Attestation::TermsOfService`, `V2::Core::AccountCreateParams::Identity::Attestation::TermsOfService`, and `V2::Core::AccountUpdateParams::Identity::Attestation::TermsOfService`
* ⚠️ Remove support for `crypto_storer` on `V2::Core::Account::Identity::Attestation::TermsOfService`, `V2::Core::AccountCreateParams::Identity::Attestation::TermsOfService`, and `V2::Core::AccountTokenCreateParams::Identity::Attestation::TermsOfService`
* Add support for `attachment` on `V2::MoneyManagement::OutboundPayment::DeliveryOption::PaperCheck` and `V2::MoneyManagement::OutboundPaymentCreateParams::DeliveryOption::PaperCheck`
* Add support for `payout_method_options` on `V2::MoneyManagement::OutboundPayment::To`, `V2::MoneyManagement::OutboundPaymentCreateParams::To`, `V2::MoneyManagement::OutboundTransfer::To`, and `V2::MoneyManagement::OutboundTransferCreateParams::To`
* Add support for `returned` on `V2::MoneyManagement::ReceivedDebit::StatusDetail`
* Add support for `returned_at` on `V2::MoneyManagement::ReceivedDebit::StatusTransition`
* Add support for `payout_intent` on `V2::MoneyManagement::OutboundPaymentCreateParams`
* Add support for `include` on `V2::Billing::ContractListParams`
* ⚠️ Remove support for `contract_lines` on `V2::Billing::ContractCreateParams`
* ⚠️ Remove support for `license_quantity_actions` on `V2::Billing::ContractCreateParams` and `V2::Billing::ContractUpdateParams`
* ⚠️ Add support for `billing_profile_details` and `collection_settings_details` on `V2::Billing::ContractCreateParams::BillingSetting`
* ⚠️ Add support for `amount`, `bill_at`, and `product` on `V2::Billing::ContractCreateParams::OneTimeFee`
* Add support for `lookup_key` on `V2::Billing::ContractCreateParams::OneTimeFee`
* ⚠️ Remove support for `bill_schedule`, `billable_item_type`, and `product_details` on `V2::Billing::ContractCreateParams::OneTimeFee`
* Add support for `pricing_overrides` and `quantity_changes` on `V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetail` and `V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetail`
* ⚠️ Remove support for `quantity` on `V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetail` and `V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetail`
* ⚠️ Remove support for `overwrite_price` on `V2::Billing::ContractCreateParams::PricingOverride`
* Add support for `pricing_line_ids` and `pricing_line_lookup_keys` on `V2::Billing::ContractCreateParams::PricingOverride::Multiplier::Criterion` and `V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::Multiplier::Criterion`
* ⚠️ Remove support for `billable_item_ids`, `billable_item_lookup_keys`, `billable_item_types`, `metadata_conditions`, and `rate_card_ids` on `V2::Billing::ContractCreateParams::PricingOverride::Multiplier::Criterion` and `V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::Multiplier::Criterion`
* ⚠️ Change type of `V2::Billing::ContractCreateParams::PricingOverride.type` and `V2::Billing::ContractUpdateParams::PricingOverrideAction::Add.type` from `enum('multiplier'|'overwrite_price')` to `literal('multiplier')`
* Change `V2::Billing::ContractCreateParams.pricing_overrides` to be optional
* Change `V2::Billing::ContractCreateParams::PricingOverride::Multiplier.criteria` to be optional
* Add support for `pricing` on `V2::Billing::ContractUpdateParams::PricingLineAction::Update`
* ⚠️ Remove support for `price` on `V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::OverwritePrice`
* Add support for `cancel_pricing_lines` and `proration_behavior` on `V2::Billing::ContractCancelParams`
* Add support for event notifications `V2MoneyManagementDebitDisputeFailedEvent`, `V2MoneyManagementDebitDisputeSubmittedEvent`, and `V2MoneyManagementDebitDisputeSucceededEvent` with related object `V2::MoneyManagement::DebitDispute`
