---
title: Update generated code
pr_url: https://github.com/stripe/stripe-ruby/pull/1970
semver_level: major
is_stripe_api_change: true
---

* Add support for new resources `V2::MoneyManagement::FinancialAccountWalletExportCredentials`, `V2::MoneyManagement::FinancialAccountWalletExport`, `V2::Provisioning::Eligibility`, `V2::Provisioning::PaymentMethodRequest`, `V2::Provisioning::PaymentProfile`, `V2::Provisioning::Project`, `V2::Provisioning::ProviderConnectionRequest`, `V2::Provisioning::ProviderConnection`, `V2::Provisioning::ProviderServiceDetail`, `V2::Provisioning::Provider`, and `V2::Provisioning::Resource`
* ⚠️ Remove support for resource `Radar::BillingEvaluation`
* ⚠️ Remove support for `create` method on resource `Radar::BillingEvaluation`
* Add support for `create`, `link`, `remove`, `retrieve`, `rotate_credentials`, `submit_information`, `unlink`, and `update` methods on resource `V2::Provisioning::Resource`
* Add support for `create`, `retrieve`, and `submit_information` methods on resource `V2::Provisioning::ProviderConnectionRequest`
* Add support for `list` and `unlink` methods on resource `V2::Provisioning::ProviderConnection`
* Add support for `create` method on resources `V2::Provisioning::PaymentMethodRequest` and `V2::Provisioning::Project`
* Add support for `retrieve` and `update` methods on resource `V2::Provisioning::PaymentProfile`
* Add support for `retrieve` method on resource `V2::Provisioning::Eligibility`
* Add support for `export_credentials` and `retrieve` methods on resource `V2::MoneyManagement::FinancialAccountWalletExport`
* Change type of `Apps::Install::ContentSecurityPolicyGranted.connect_src` and `Apps::Install::ContentSecurityPolicyPending.connect_src` from `nullable(array(string))` to `array(string)`
* Change type of `Apps::Install::ContentSecurityPolicyGranted.image_src` and `Apps::Install::ContentSecurityPolicyPending.image_src` from `nullable(array(string))` to `array(string)`
* Add support for `blik_recurring_payments` on `Account::Capability` and `AccountUpdateParams::Capability`
* Add support for `sequra_payments` on `AccountUpdateParams::Capability`
* Add support for `capital` on `Account::Setting`
* Change `Account::BusinessProfile.specified_commercial_transactions_act_url` to be required
* Add support for `payout_method` on `Balance::InstantAvailable::NetAvailable`
* Add support for `destination_currency` on `BalanceSettings::Payment::Payout::AutomaticTransferRulesByCurrency` and `BalanceSettingsUpdateParams::Payment::Payout::AutomaticTransferRulesByCurrency`
* Add support for `total_due_amount` on `Capital::FinancingOffer::AcceptedTerm` and `Capital::FinancingSummary::Detail`
* Add support for `incremental_interval_target_amount` and `starts_at` on `Capital::FinancingSummary::Detail::CurrentRepaymentInterval`
* Add support for `setup_credential_usage` on `Charge::PaymentMethodDetail::Card`, `PaymentIntent::PaymentMethodOption::Card`, `PaymentIntentConfirmParams::PaymentMethodOption::Card`, `PaymentIntentUpdateParams::PaymentMethodOption::Card`, `SetupIntent::PaymentMethodOption::Card`, `SetupIntentConfirmParams::PaymentMethodOption::Card`, and `SetupIntentUpdateParams::PaymentMethodOption::Card`
* Add support for `stored_credential_usage` on `Charge::PaymentMethodDetail::Card`, `PaymentAttemptRecord::PaymentMethodDetail::Card`, `PaymentIntent::PaymentMethodOption::Card`, `PaymentIntentConfirmParams::PaymentMethodOption::Card`, `PaymentIntentUpdateParams::PaymentMethodOption::Card`, and `PaymentRecord::PaymentMethodDetail::Card`
* Change `Charge::PaymentMethodDetail::Card.electronic_commerce_indicator` to be required
* Add support for `payment_method_options` on `Checkout::SessionApproveParams`
* Add support for `payment_reservation` on `Checkout::Session`
* Add support for `custom` on `Checkout::Session::CurrentAttempt::PaymentMethodDetail`
* Change type of `Checkout::Session::Item.subscription` from `nullable(PaymentPagesCheckoutSessionSubscription)` to `PaymentPagesCheckoutSessionSubscription`
* Add support for `payment_method_preselect` on `CustomerSession::Component::PaymentElement::Feature` and `CustomerSessionCreateParams::Component::PaymentElement::Feature`
* Add support for `bic`, `iban_last4`, and `network` on `CustomerCashBalanceTransaction::Funded::BankTransfer::GbBankTransfer`
* Add support for `appeal` on `DisputeUpdateParams::Evidence`
* Add support for `pre_collected_consent` on `FinancialConnections::Session`
* Add support for `financial_activity` on `FinancialConnections::Transaction::Classification`
* ⚠️ Remove support for `credit` on `FinancialConnections::Transaction::Classification`
* Add support for `invoicing_rules` on `InvoiceItemUpdateParams`
* ⚠️ Change type of `Mandate::PaymentMethodDetail::Blik.type` from `enum('off_session'|'on_session')` to `literal('off_session')`
* Add support for `sequra` on `PaymentIntentConfirmParams::PaymentMethodDatum`, `PaymentIntentConfirmParams::PaymentMethodOption`, `PaymentIntentUpdateParams::PaymentMethodDatum`, `PaymentIntentUpdateParams::PaymentMethodOption`, `PaymentMethodConfigurationUpdateParams`, `SetupIntentConfirmParams::PaymentMethodDatum`, and `SetupIntentUpdateParams::PaymentMethodDatum`
* Add support for `mandate_options` on `PaymentIntent::PaymentMethodOption::Blik`, `PaymentIntentConfirmParams::PaymentMethodOption::Blik`, and `PaymentIntentUpdateParams::PaymentMethodOption::Blik`
* Change type of `PaymentIntentConfirmParams::PaymentMethodOption::Blik.setup_future_usage` and `PaymentIntentUpdateParams::PaymentMethodOption::Blik.setup_future_usage` from `literal('none')` to `enum('none'|'off_session')`
* ⚠️ Remove support for `capture_method` on `PaymentIntentConfirmParams::PaymentMethodOption::Paypay` and `PaymentIntentUpdateParams::PaymentMethodOption::Paypay`
* ⚠️ Change type of `PaymentIntent::PaymentMethodOption::Blik.setup_future_usage` from `literal('none')` to `enum('none'|'off_session')`
* ⚠️ Remove support for `payto` on `PaymentMethodUpdateParams`
* Add support for `payout_method_options` on `Payout`
* Add support for `blik` on `SetupAttempt::PaymentMethodDetail`, `SetupIntent::PaymentMethodOption`, `SetupIntentConfirmParams::PaymentMethodOption`, and `SetupIntentUpdateParams::PaymentMethodOption`
* Add support for `expires_at` on `SubscriptionUpdateParams::PaymentSetting::PaymentMethodOption::Blik::MandateOption`
* ⚠️ Remove support for `expires_after` on `SubscriptionUpdateParams::PaymentSetting::PaymentMethodOption::Blik::MandateOption`
* Change `SubscriptionUpdateParams::TrialSetting::EndBehavior.missing_payment_method` to be optional
* Add support for `cancel_at_period_end` on `Subscription::PendingUpdate`
* Add support for `tamper_state` on `Terminal::ReaderListParams`
* Add support for `collection_status_transitions` and `collection_status` on `V2::Billing::Contract`
* ⚠️ Change `V2::Billing::Contract::PricingLine::Datum.ends_at`, `V2::Billing::Contract::PricingLine::Datum::Pricing::PriceDetail::PricingOverride::Datum.ends_at`, and `V2::Billing::Contract::PricingOverride::Datum.ends_at` to be optional
* Add support for `developer` on `V2::Core::Account::Configuration`, `V2::Core::AccountCreateParams::Configuration`, and `V2::Core::AccountUpdateParams::Configuration`
* Add support for `skip_exportable_balances` on `V2::MoneyManagement::FinancialAccount::StatusDetail::Closed::ForwardingSetting` and `V2::MoneyManagement::FinancialAccountCloseParams::ForwardingSetting`
* Add support for `crypto` on `V2::MoneyManagement::FinancialAccount::Storage`, `V2::MoneyManagement::FinancialAccountCreateParams::Storage`, and `V2::MoneyManagement::FinancialAccountUpdateParams::Storage`
* Add support for `apple_pay` on `V2::MoneyManagement::OutboundSetupIntentCreateParams::PayoutMethodDatum` and `V2::MoneyManagement::PayoutMethod`
* Change type of `V2::MoneyManagement::FinancialAccountListParams.include` and `V2::MoneyManagement::FinancialAccountRetrieveParams.include` from `literal('payments.balance_by_funds_type')` to `enum('payments.balance_by_funds_type'|'storage.crypto')`
* Add support for `forwarding_settings` on `V2::MoneyManagement::FinancialAccountUpdateParams`
* Change `V2::Billing::ContractCreateParams::PricingLine.ends_at`, `V2::Billing::ContractCreateParams::PricingOverride.ends_at`, `V2::Billing::ContractUpdateParams::PricingLineAction::Add.ends_at`, `V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetail::PricingOverrideAction::Add.ends_at`, and `V2::Billing::ContractUpdateParams::PricingOverrideAction::Add.ends_at` to be optional
* Add support for event notifications `V2BillingContractCollectionBlockedEvent`, `V2BillingContractCollectionCurrentEvent`, `V2BillingContractCollectionPastDueEvent`, and `V2BillingContractCollectionUnpaidEvent` with related object `V2::Billing::Contract`
* Add support for event notifications `V2CoreVaultNetworkTokenActivatedEvent`, `V2CoreVaultNetworkTokenAuthorizationRequirementsChangedEvent`, `V2CoreVaultNetworkTokenDeactivatedEvent`, `V2CoreVaultNetworkTokenDetailsUpdatedEvent`, and `V2CoreVaultNetworkTokenSuspendedEvent` with related object `V2::Core::Vault::NetworkToken`
* Add support for event notifications `V2MoneyManagementFinancialAccountWalletExportCompletedEvent`, `V2MoneyManagementFinancialAccountWalletExportPendingEvent`, and `V2MoneyManagementFinancialAccountWalletExportReadyEvent` with related object `V2::MoneyManagement::FinancialAccount`
* Add support for error type `ServiceUnavailableError`
