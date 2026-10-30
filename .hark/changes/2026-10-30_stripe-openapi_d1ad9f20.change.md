---
title: Update generated code
pr_url: https://github.com/stripe/stripe-ruby/pull/2004
semver_level: major
is_stripe_api_change: true
released_in_version: 20.2.0-alpha.1
---

* Add support for new resources `V2::Billing::ContractTermQuantityChange`, `V2::Billing::ContractTerm`, `V2::Core::AccountSession`, `V2::MoneyManagement::FundingIntent`, `V2::MoneyManagement::InboundFunding`, `V2::MoneyManagement::RewardProgramEnrollment`, `V2::MoneyManagement::RewardProgramRule`, `V2::MoneyManagement::RewardProgram`, and `V2::Risk::Form`
* ⚠️ Remove support for resource `V2::Risk::Inquiry`
* Add support for `retrieve` and `update` methods on resource `V2::Risk::Form`
* Add support for `activate`, `create`, `deactivate`, `list`, and `retrieve` methods on resource `V2::MoneyManagement::RewardProgramEnrollment`
* Add support for `activate`, `create`, `deactivate`, `list`, `retrieve`, and `update` methods on resources `V2::MoneyManagement::RewardProgramRule` and `V2::MoneyManagement::RewardProgram`
* Add support for `list` and `retrieve` methods on resource `V2::MoneyManagement::InboundFunding`
* Add support for `cancel`, `confirm`, `create`, `list`, `retrieve`, and `update` methods on resource `V2::MoneyManagement::FundingIntent`
* Add support for `create` method on resource `V2::Core::AccountSession`
* Add support for `list_contract_terms` and `retrieve_contract_term` methods on resource `V2::Billing::ContractTerm`
* ⚠️ Remove support for `list`, `retrieve`, and `update` methods on resource `V2::Risk::Inquiry`
* ⚠️ Remove support for `fx_quote` method on resource `V2::MoneyManagement::PayoutIntent`
* Add support for `reject` and `unreject` methods on resource `V2::Core::Account`
* Add support for `billing_group` on `Billing::Alert::SpendThreshold::Filter`, `Billing::AlertCreateParams::SpendThreshold::Filter`, `Billing::AlertNotification`, `Billing::AlertTriggered::GroupBy`, and `Billing::BillingAlertAlertNotificationListParams`
* Add support for `toss_pay` on `Charge::PaymentMethodDetail`, `ConfirmationToken::PaymentMethodPreview`, `ConfirmationTokenCreateParams::PaymentMethodDatum`, `PaymentAttemptRecord::PaymentMethodDetail`, `PaymentIntent::PaymentMethodOption`, `PaymentIntentConfirmParams::PaymentMethodDatum`, `PaymentIntentConfirmParams::PaymentMethodOption`, `PaymentIntentCreateParams::PaymentMethodDatum`, `PaymentIntentCreateParams::PaymentMethodOption`, `PaymentIntentUpdateParams::PaymentMethodDatum`, `PaymentIntentUpdateParams::PaymentMethodOption`, `PaymentMethodCreateParams`, `PaymentMethod`, `PaymentRecord::PaymentMethodDetail`, `SetupIntentConfirmParams::PaymentMethodDatum`, `SetupIntentCreateParams::PaymentMethodDatum`, and `SetupIntentUpdateParams::PaymentMethodDatum`
* Add support for `mandate` on `Charge::PaymentMethodDetail::Paypay`, `PaymentAttemptRecord::PaymentMethodDetail::Paypay`, `PaymentRecord::PaymentMethodDetail::Paypay`, `Subscription::PaymentSetting`, `SubscriptionCreateParams::PaymentSetting`, and `SubscriptionUpdateParams::PaymentSetting`
* Add support for `automatic_pass_through_fee` on `Checkout::SessionCreateParams` and `Checkout::Session`
* Add support for `paypay` on `Checkout::Session::PaymentMethodOption` and `Checkout::SessionCreateParams::PaymentMethodOption`
* Change `Checkout::SessionCreateParams::MarketingAttribution.ad_conversion` to be optional
* Add support for `adjustable_quantity` on `Checkout::Session::Item::Subscription::Item`
* ⚠️ Change `Checkout::Session::MarketingAttribution.ad_conversion` to be optional
* Add support for `marketing_attributions` on `CustomerCreateParams` and `Customer`
* Add support for `merchant_of_record` on `PaymentIntent::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentConfirmParams::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentCreateParams::PaymentDetail::MoneyService::AccountFunding`, and `PaymentIntentUpdateParams::PaymentDetail::MoneyService::AccountFunding`
* ⚠️ Change type of `Radar::PaymentEvaluation::Signal.early_fraud_warning` from `Payment Evaluation Signal` to `nullable(Payment Evaluation Signal)`
* Change `Radar::PaymentEvaluation::Signal.early_fraud_warning` to be required
* Add support for `payment_method_data` and `payment_method_options` on `RefundCreateParams`
* Add support for `debit_behavior` on `Subscription::PaymentSetting::PaymentMethodOption::SepaDebit`, `SubscriptionCreateParams::PaymentSetting::PaymentMethodOption::SepaDebit`, and `SubscriptionUpdateParams::PaymentSetting::PaymentMethodOption::SepaDebit`
* Add support for `terms` on `V2::Billing::ContractCancelParams`, `V2::Billing::ContractCreateParams`, and `V2::Billing::Contract`
* Add support for `rejection` on `V2::Core::Account`
* Add support for `alipay_payments`, `scalapay_payments`, and `upi_payments` on `V2::Core::Account::Configuration::Merchant::Capability`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability`, and `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability`
* Add support for `inbound_fundings` on `V2::Core::Account::Configuration::MoneyManager::Capability`, `V2::Core::AccountCreateParams::Configuration::MoneyManager::Capability`, and `V2::Core::AccountUpdateParams::Configuration::MoneyManager::Capability`
* ⚠️ Remove support for `instant` and `sepa_credit` on `V2::Core::Account::Configuration::Recipient::Capability::BankAccount`, `V2::Core::AccountCreateParams::Configuration::Recipient::Capability::BankAccount`, and `V2::Core::AccountUpdateParams::Configuration::Recipient::Capability::BankAccount`
* Add support for `compression` on `V2::Data::QueryRun::ResultOption`, `V2::Data::QueryRunCreateParams::ResultOption`, `V2::Data::ReportRun::ResultOption`, and `V2::Data::ReportRunCreateParams::ResultOption`
* ⚠️ Remove support for `compress_file` on `V2::Data::QueryRun::ResultOption`, `V2::Data::QueryRunCreateParams::ResultOption`, `V2::Data::ReportRun::ResultOption`, and `V2::Data::ReportRunCreateParams::ResultOption`
* Add support for `query_errors` on `V2::Data::QueryRun::StatusDetail` and `V2::Data::ReportRun::StatusDetail`
* Add support for `format` on `V2::Data::ReportRun`
* Add support for `refreshed_at` on `V2::Data::Report`
* Add support for `schema_name` on `V2::Data::Schema::Column::ForeignKeysFrom` and `V2::Data::Schema::Column::ForeignKeysTo`
* ⚠️ Remove support for `authentication` and `session_fingerprint` on `V2::Iam::ActivityLog::Detail::UserAccess`
* Add support for `user_agent` on `V2::Iam::ActivityLog::Detail::UserAccess::DashboardClient`
* ⚠️ Remove support for `browser_version`, `browser`, `device_type`, and `os` on `V2::Iam::ActivityLog::Detail::UserAccess::DashboardClient`
* ⚠️ Remove support for `level` on `V2::Iam::ActivityLog::Detail::UserAccess::Risk`
* Add support for `reference` on `V2::MoneyManagement::FinancialAddress::BankAccount::Iban`
* ⚠️ Change `V2::MoneyManagement::OutboundPayment::To::PayoutMethodOption::BankAccount.preferred_networks`, `V2::MoneyManagement::OutboundPaymentQuote::To::PayoutMethodOption::BankAccount.preferred_networks`, and `V2::MoneyManagement::PayoutIntent::To::PayoutMethodOption::BankAccount.preferred_networks` to be optional
* Add support for `bank_account`, `card`, `crypto_wallet`, `status`, and `type` on `V2::MoneyManagement::OutboundPayment::TrackingDetail`
* Add support for `recipient_verification` on `V2::MoneyManagement::PayoutIntent`
* Add support for `fields_to_review` on `V2::MoneyManagement::PayoutIntent::NextAction::Confirm`
* ⚠️ Change `V2::MoneyManagement::PayoutIntent.latest_payout` to be optional
* ⚠️ Remove support for `ca_bank_account`, `eu_bank_account`, and `mx_bank_account` on `V2::MoneyManagement::ReceivedCredit::BankTransfer`
* ⚠️ Remove support for `network` on `V2::MoneyManagement::ReceivedCredit::BankTransfer::OriginatingBankAccount::Aba`, `V2::MoneyManagement::ReceivedCredit::BankTransfer::OriginatingBankAccount::BreB`, `V2::MoneyManagement::ReceivedCredit::BankTransfer::OriginatingBankAccount::Clabe`, `V2::MoneyManagement::ReceivedCredit::BankTransfer::OriginatingBankAccount::Cpa`, `V2::MoneyManagement::ReceivedCredit::BankTransfer::OriginatingBankAccount::Iban`, `V2::MoneyManagement::ReceivedCredit::BankTransfer::OriginatingBankAccount::Nip`, `V2::MoneyManagement::ReceivedCredit::BankTransfer::OriginatingBankAccount::Pix`, and `V2::MoneyManagement::ReceivedCredit::BankTransfer::OriginatingBankAccount::SortCode`
* Add support for `payout_method`, `recipient`, and `verification_type` on `V2::MoneyManagement::RecipientVerification`
* ⚠️ Change type of `V2::MoneyManagement::RecipientVerification.consumed_by` from `string` to `an object`
* Add support for `matched_business_type` and `provided_business_type` on `V2::MoneyManagement::RecipientVerification::MatchResultDetail`
* ⚠️ Change `V2::MoneyManagement::RecipientVerification.expires_at` to be optional
* Add support for `configuration` on `V2::Provisioning::Resource`
* Add support for `custom_marketing_action` and `triggering_signal` on `V2::Signals::AccountActivityCreateParams` and `V2::Signals::AccountActivity`
* Add support for `mfa_challenges` on `V2::Signals::AccountActivity::LoginDecision` and `V2::Signals::AccountActivityCreateParams::LoginDecision`
* Add support for `user_affinity` on `V2::Signals::AccountEvaluation::EvaluatedSignal` and `V2::Signals::AccountSignal`
* ⚠️ Remove support for `user_merchant_fit` on `V2::Signals::AccountEvaluation::EvaluatedSignal` and `V2::Signals::AccountSignal`
* Add support for `additional_details` on `V2::Signals::AccountSignal::CustomerRisk`
* Add support for `subscriptions` on `V2::Tax::IntegrationConfigurationUpdateParams` and `V2::Tax::IntegrationConfiguration`
* Add support for `include` on `V2::Provisioning::ResourceRetrieveParams`
* Change `V2::MoneyManagement::OutboundPaymentCreateParams::To::PayoutMethodOption::BankAccount.preferred_networks`, `V2::MoneyManagement::OutboundPaymentQuoteCreateParams::To::PayoutMethodOption::BankAccount.preferred_networks`, `V2::MoneyManagement::PayoutIntentCreateParams::To::PayoutMethodOption::BankAccount.preferred_networks`, and `V2::MoneyManagement::PayoutIntentUpdateParams::To::PayoutMethodOption::BankAccount.preferred_networks` to be optional
* ⚠️ Remove support for `amount` and `from` on `V2::MoneyManagement::PayoutIntentUpdateParams`
* Add support for `parameters` on `V2::Data::QueryRunCreateParams`
* Add support for `actions` on `V2::Billing::ContractUpdateParams`
* Add support for `severity` on `EventsV2CoreHealthApiErrorFiringEvent`, `EventsV2CoreHealthApiErrorResolvedEvent`, `EventsV2CoreHealthApiLatencyFiringEvent`, `EventsV2CoreHealthApiLatencyResolvedEvent`, `EventsV2CoreHealthAuthorizationRateDropFiringEvent`, `EventsV2CoreHealthAuthorizationRateDropResolvedEvent`, `EventsV2CoreHealthElementsErrorFiringEvent`, `EventsV2CoreHealthElementsErrorResolvedEvent`, `EventsV2CoreHealthFraudRateIncreasedEvent`, `EventsV2CoreHealthInvoiceCountDroppedFiringEvent`, `EventsV2CoreHealthInvoiceCountDroppedResolvedEvent`, `EventsV2CoreHealthIssuingAuthorizationRequestErrorsFiringEvent`, `EventsV2CoreHealthIssuingAuthorizationRequestErrorsResolvedEvent`, `EventsV2CoreHealthIssuingAuthorizationRequestTimeoutFiringEvent`, `EventsV2CoreHealthIssuingAuthorizationRequestTimeoutResolvedEvent`, `EventsV2CoreHealthMeterEventSummariesDelayedFiringEvent`, `EventsV2CoreHealthMeterEventSummariesDelayedResolvedEvent`, `EventsV2CoreHealthMetronomeNotificationLatencyFiringEvent`, `EventsV2CoreHealthMetronomeNotificationLatencyResolvedEvent`, `EventsV2CoreHealthPaymentMethodErrorFiringEvent`, `EventsV2CoreHealthPaymentMethodErrorResolvedEvent`, `EventsV2CoreHealthSepaDebitDelayedFiringEvent`, `EventsV2CoreHealthSepaDebitDelayedResolvedEvent`, `EventsV2CoreHealthTrafficVolumeDropFiringEvent`, `EventsV2CoreHealthTrafficVolumeDropResolvedEvent`, `EventsV2CoreHealthWebhookLatencyFiringEvent`, and `EventsV2CoreHealthWebhookLatencyResolvedEvent`
* Add support for event notifications `V2BillingContractTermCreatedEvent`, `V2BillingContractTermDeletedEvent`, and `V2BillingContractTermUpdatedEvent` with related object `V2::Billing::ContractTerm`
* Add support for event notifications `V2MoneyManagementFundingIntentCanceledEvent`, `V2MoneyManagementFundingIntentCreatedEvent`, `V2MoneyManagementFundingIntentProcessingEvent`, `V2MoneyManagementFundingIntentRequiresActionEvent`, `V2MoneyManagementFundingIntentRequiresConfirmationEvent`, `V2MoneyManagementFundingIntentSucceededEvent`, `V2MoneyManagementFundingIntentUpdatedEvent`, and `V2MoneyManagementFundingIntentValidatingEvent` with related object `V2::MoneyManagement::FundingIntent`
* Add support for event notifications `V2MoneyManagementInboundFundingAvailableEvent`, `V2MoneyManagementInboundFundingCheckFailedEvent`, `V2MoneyManagementInboundFundingCheckProcessingEvent`, `V2MoneyManagementInboundFundingCheckQueuedEvent`, `V2MoneyManagementInboundFundingCheckReturnedEvent`, `V2MoneyManagementInboundFundingCheckSucceededEvent`, `V2MoneyManagementInboundFundingCreatedEvent`, and `V2MoneyManagementInboundFundingUpdatedEvent` with related object `V2::MoneyManagement::InboundFunding`
* Add support for event notifications `V2MoneyManagementRewardProgramRewardEarnedEvent` and `V2MoneyManagementRewardProgramRewardReversedEvent` with related object `V2::MoneyManagement::RewardProgram`
* ⚠️ Remove support for event notifications `V2PaymentsOffSessionPaymentAuthorizationAttemptFailedEvent` and `V2PaymentsOffSessionPaymentAuthorizationAttemptStartedEvent` with related object `V2::Payments::OffSessionPayment`
