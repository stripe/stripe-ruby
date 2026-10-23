---
title: Update generated code
pr_url: https://github.com/stripe/stripe-ruby/pull/2004
semver_level: major
is_stripe_api_change: true
---

* Add support for new resources `V2::Core::AccountSessionResource`, `V2::MoneyManagement::FundingIntent`, `V2::MoneyManagement::RewardProgramEnrollment`, `V2::MoneyManagement::RewardProgramRule`, `V2::MoneyManagement::RewardProgram`, and `V2::Risk::Form`
* ⚠️ Remove support for resource `V2::Risk::Inquiry`
* Add support for `retrieve` and `update` methods on resource `V2::Risk::Form`
* Add support for `activate`, `create`, `deactivate`, `list`, and `retrieve` methods on resource `V2::MoneyManagement::RewardProgramEnrollment`
* Add support for `activate`, `create`, `deactivate`, `list`, `retrieve`, and `update` methods on resources `V2::MoneyManagement::RewardProgramRule` and `V2::MoneyManagement::RewardProgram`
* Add support for `cancel`, `confirm`, `create`, `list`, `retrieve`, and `update` methods on resource `V2::MoneyManagement::FundingIntent`
* Add support for `create` method on resource `V2::Core::AccountSessionResource`
* ⚠️ Remove support for `list`, `retrieve`, and `update` methods on resource `V2::Risk::Inquiry`
* Add support for `refresh_fx_quote` and `refresh_recipient_verification` methods on resource `V2::MoneyManagement::PayoutIntent`
* ⚠️ Remove support for `fx_quote` method on resource `V2::MoneyManagement::PayoutIntent`
* Add support for `unarchive` method on resources `V2::Core::Vault::GbBankAccount` and `V2::Core::Vault::UsBankAccount`
* Add support for `physical_address` on `Account::Company`
* Add support for `toss_pay` on `Charge::PaymentMethodDetail`, `ConfirmationToken::PaymentMethodPreview`, `ConfirmationTokenCreateParams::PaymentMethodDatum`, `PaymentAttemptRecord::PaymentMethodDetail`, `PaymentIntent::PaymentMethodOption`, `PaymentIntentConfirmParams::PaymentMethodDatum`, `PaymentIntentConfirmParams::PaymentMethodOption`, `PaymentIntentCreateParams::PaymentMethodDatum`, `PaymentIntentCreateParams::PaymentMethodOption`, `PaymentIntentUpdateParams::PaymentMethodDatum`, `PaymentIntentUpdateParams::PaymentMethodOption`, `PaymentMethodCreateParams`, `PaymentMethod`, `PaymentRecord::PaymentMethodDetail`, `SetupIntentConfirmParams::PaymentMethodDatum`, `SetupIntentCreateParams::PaymentMethodDatum`, and `SetupIntentUpdateParams::PaymentMethodDatum`
* Add support for `mandate` on `Charge::PaymentMethodDetail::Paypay`, `PaymentAttemptRecord::PaymentMethodDetail::Paypay`, and `PaymentRecord::PaymentMethodDetail::Paypay`
* Add support for `automatic_pass_through_fee` on `Checkout::SessionCreateParams` and `Checkout::Session`
* Add support for `paypay` on `Checkout::Session::PaymentMethodOption` and `Checkout::SessionCreateParams::PaymentMethodOption`
* Change `Checkout::SessionCreateParams::MarketingAttribution.ad_conversion` to be optional
* Add support for `adjustable_quantity` on `Checkout::Session::Item::Subscription::Item`
* ⚠️ Change `Checkout::Session::MarketingAttribution.ad_conversion` to be optional
* Add support for `marketing_attributions` on `CustomerCreateParams` and `Customer`
* Add support for `delivered_at` and `shipped_at` on `Issuing::Card::Shipping`
* Add support for `merchant_of_record` on `PaymentIntent::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentConfirmParams::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentCreateParams::PaymentDetail::MoneyService::AccountFunding`, and `PaymentIntentUpdateParams::PaymentDetail::MoneyService::AccountFunding`
* Add support for `payment_method_data` and `payment_method_options` on `RefundCreateParams`
* Add support for `debit_behavior` on `Subscription::PaymentSetting::PaymentMethodOption::SepaDebit`, `SubscriptionCreateParams::PaymentSetting::PaymentMethodOption::SepaDebit`, and `SubscriptionUpdateParams::PaymentSetting::PaymentMethodOption::SepaDebit`
* Add support for `alipay_payments`, `scalapay_payments`, and `upi_payments` on `V2::Core::Account::Configuration::Merchant::Capability`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability`, and `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability`
* ⚠️ Remove support for `default_outbound_destination` on `V2::Core::Account::Configuration::Recipient` and `V2::Core::AccountUpdateParams::Configuration::Recipient`
* Add support for `sepa` on `V2::Core::Account::Configuration::Recipient::Capability::BankAccount`, `V2::Core::AccountCreateParams::Configuration::Recipient::Capability::BankAccount`, and `V2::Core::AccountUpdateParams::Configuration::Recipient::Capability::BankAccount`
* ⚠️ Remove support for `instant`, `sepa_credit`, and `wire` on `V2::Core::Account::Configuration::Recipient::Capability::BankAccount`, `V2::Core::AccountCreateParams::Configuration::Recipient::Capability::BankAccount`, and `V2::Core::AccountUpdateParams::Configuration::Recipient::Capability::BankAccount`
* Add support for `alternatives` on `V2::Core::Account::FutureRequirement` and `V2::Core::Account::Requirement`
* Add support for `proof_of_business_presence` on `V2::Core::Account::Identity::BusinessDetail::Document`, `V2::Core::AccountCreateParams::Identity::BusinessDetail::Document`, `V2::Core::AccountTokenCreateParams::Identity::BusinessDetail::Document`, and `V2::Core::AccountUpdateParams::Identity::BusinessDetail::Document`
* Add support for `partial_output_file` on `V2::Core::BatchJob::StatusDetail::BatchFailed`
* Add support for `fingerprint` on `V2::Core::Vault::GbBankAccount`, `V2::Core::Vault::UsBankAccount`, and `V2::MoneyManagement::PayoutMethod::BankAccount`
* Add support for `fedwire_fingerprint` on `V2::Core::Vault::UsBankAccount`
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
* Add support for `address` on `V2::MoneyManagement::FinancialAddress::BankAccount::Aba`
* ⚠️ Remove support for `account_holder_address` on `V2::MoneyManagement::FinancialAddress::BankAccount::Aba`
* ⚠️ Remove support for `last4` on `V2::MoneyManagement::FinancialAddress::BankAccount::Aba`, `V2::MoneyManagement::FinancialAddress::BankAccount::Iban`, and `V2::MoneyManagement::FinancialAddress::BankAccount::SortCode`
* ⚠️ Remove support for `country` on `V2::MoneyManagement::FinancialAddress::BankAccount::Iban`
* Change `V2::MoneyManagement::FinancialAddress::BankAccount::Aba.account_number` and `V2::MoneyManagement::FinancialAddress::BankAccount::SortCode.account_number` to be required
* Change `V2::MoneyManagement::FinancialAddress::BankAccount::Iban.iban` to be required
* Change `V2::MoneyManagement::FinancialAddress.settlement_currency` to be required
* ⚠️ Change `V2::MoneyManagement::OutboundPayment::To::PayoutMethodOption::BankAccount.preferred_networks`, `V2::MoneyManagement::OutboundPaymentQuote::To::PayoutMethodOption::BankAccount.preferred_networks`, and `V2::MoneyManagement::PayoutIntent::To::PayoutMethodOption::BankAccount.preferred_networks` to be optional
* Add support for `bank_account`, `card`, `crypto_wallet`, `status`, and `type` on `V2::MoneyManagement::OutboundPayment::TrackingDetail`
* ⚠️ Change `V2::MoneyManagement::OutboundPayment::To.payout_method` and `V2::MoneyManagement::OutboundSetupIntent.payout_method` to be optional
* Add support for `recipient_verification` on `V2::MoneyManagement::PayoutIntent`
* Add support for `fields_to_review` on `V2::MoneyManagement::PayoutIntent::NextAction::Confirm`
* ⚠️ Change `V2::MoneyManagement::PayoutIntent.latest_payout` to be optional
* Add support for `network` on `V2::MoneyManagement::ReceivedCredit::BankTransfer`
* ⚠️ Remove support for `ca_bank_account`, `eu_bank_account`, `gb_bank_account`, `mx_bank_account`, `sepa_bank_account`, and `us_bank_account` on `V2::MoneyManagement::ReceivedCredit::BankTransfer`
* ⚠️ Remove support for `network` on `V2::MoneyManagement::ReceivedCredit::BankTransfer::OriginatingBankAccount::Aba`, `V2::MoneyManagement::ReceivedCredit::BankTransfer::OriginatingBankAccount::BreB`, `V2::MoneyManagement::ReceivedCredit::BankTransfer::OriginatingBankAccount::Clabe`, `V2::MoneyManagement::ReceivedCredit::BankTransfer::OriginatingBankAccount::Cpa`, `V2::MoneyManagement::ReceivedCredit::BankTransfer::OriginatingBankAccount::Iban`, `V2::MoneyManagement::ReceivedCredit::BankTransfer::OriginatingBankAccount::Nip`, `V2::MoneyManagement::ReceivedCredit::BankTransfer::OriginatingBankAccount::Pix`, and `V2::MoneyManagement::ReceivedCredit::BankTransfer::OriginatingBankAccount::SortCode`
* Add support for `payout_method`, `recipient`, and `verification_type` on `V2::MoneyManagement::RecipientVerification`
* ⚠️ Change type of `V2::MoneyManagement::RecipientVerification.consumed_by` from `string` to `an object`
* Add support for `matched_business_type` and `provided_business_type` on `V2::MoneyManagement::RecipientVerification::MatchResultDetail`
* ⚠️ Change `V2::MoneyManagement::RecipientVerification.expires_at` to be optional
* Add support for `fee_batch` on `V2::MoneyManagement::Transaction::Flow` and `V2::MoneyManagement::TransactionEntry::TransactionDetail::Flow`
* ⚠️ Remove support for `fee_transaction` on `V2::MoneyManagement::Transaction::Flow` and `V2::MoneyManagement::TransactionEntry::TransactionDetail::Flow`
* Add support for `configuration` on `V2::Provisioning::Resource`
* Add support for `custom_marketing_action` and `triggering_signal` on `V2::Signals::AccountActivityCreateParams` and `V2::Signals::AccountActivity`
* Add support for `mfa_challenges` on `V2::Signals::AccountActivity::LoginDecision` and `V2::Signals::AccountActivityCreateParams::LoginDecision`
* Add support for `user_affinity` on `V2::Signals::AccountEvaluation::EvaluatedSignal` and `V2::Signals::AccountSignal`
* ⚠️ Remove support for `user_merchant_fit` on `V2::Signals::AccountEvaluation::EvaluatedSignal` and `V2::Signals::AccountSignal`
* Add support for `subscriptions` on `V2::Tax::IntegrationConfigurationUpdateParams` and `V2::Tax::IntegrationConfiguration`
* Add support for `include` on `V2::Provisioning::ResourceRetrieveParams`
* Change `V2::MoneyManagement::OutboundPaymentCreateParams::To::PayoutMethodOption::BankAccount.preferred_networks`, `V2::MoneyManagement::OutboundPaymentQuoteCreateParams::To::PayoutMethodOption::BankAccount.preferred_networks`, `V2::MoneyManagement::PayoutIntentCreateParams::To::PayoutMethodOption::BankAccount.preferred_networks`, and `V2::MoneyManagement::PayoutIntentUpdateParams::To::PayoutMethodOption::BankAccount.preferred_networks` to be optional
* ⚠️ Remove support for `amount` and `from` on `V2::MoneyManagement::PayoutIntentUpdateParams`
* ⚠️ Remove support for `created_gt`, `created_gte`, `created_lt`, and `created_lte` on `V2::MoneyManagement::OutboundPaymentListParams`
* ⚠️ Change type of `V2::MoneyManagement::OutboundPaymentListParams.created` from `DateTime` to `an object`
* ⚠️ Remove support for `deposit_insurance_eligibility` on `V2::MoneyManagement::FinancialAccountCreateParams::Storage`
* Add support for `parameters` on `V2::Data::QueryRunCreateParams`
* Add support for event notifications `V1CustomerDiscountSourceChangedEvent`, `V1EntitlementsActiveEntitlementSummaryEntitlementAddedEvent`, and `V1EntitlementsActiveEntitlementSummaryEntitlementRemovedEvent`
* Add support for event notifications `V1CustomerSubscriptionActiveEvent`, `V1CustomerSubscriptionCancelAtChangedEvent`, `V1CustomerSubscriptionDefaultPaymentMethodChangedEvent`, `V1CustomerSubscriptionIncompleteEvent`, `V1CustomerSubscriptionIncompleteExpiredEvent`, `V1CustomerSubscriptionItemAddedEvent`, `V1CustomerSubscriptionItemPriceChangedEvent`, `V1CustomerSubscriptionItemQuantityChangedEvent`, `V1CustomerSubscriptionItemRemovedEvent`, `V1CustomerSubscriptionItemTaxRatesChangedEvent`, `V1CustomerSubscriptionPastDueEvent`, `V1CustomerSubscriptionTrialingEvent`, and `V1CustomerSubscriptionUnpaidEvent` with related object `Subscription`
* Add support for event notifications `V1FinancialConnectionsAccountBalanceRefreshFailedEvent`, `V1FinancialConnectionsAccountBalanceRefreshSucceededEvent`, `V1FinancialConnectionsAccountInferredBalancesRefreshFailedEvent`, `V1FinancialConnectionsAccountInferredBalancesRefreshSucceededEvent`, `V1FinancialConnectionsAccountOwnershipRefreshFailedEvent`, `V1FinancialConnectionsAccountOwnershipRefreshSucceededEvent`, `V1FinancialConnectionsAccountRiskIntelligenceRefreshFailedEvent`, `V1FinancialConnectionsAccountRiskIntelligenceRefreshSucceededEvent`, `V1FinancialConnectionsAccountTransactionsRefreshFailedEvent`, and `V1FinancialConnectionsAccountTransactionsRefreshSucceededEvent` with related object `FinancialConnections::Account`
* Add support for event notifications `V1InvoiceDiscountAddedEvent`, `V1InvoiceDiscountRemovedEvent`, `V1InvoiceLineItemAddedEvent`, `V1InvoiceLineItemPricingChangedEvent`, `V1InvoiceLineItemQuantityChangedEvent`, and `V1InvoiceLineItemRemovedEvent` with related object `Invoice`
* Add support for event notifications `V1InvoicePaymentCanceledEvent` and `V1InvoicePaymentOpenEvent` with related object `InvoicePayment`
* Add support for event notifications `V1InvoiceitemAmountChangedEvent`, `V1InvoiceitemDiscountAddedEvent`, and `V1InvoiceitemDiscountRemovedEvent` with related object `InvoiceItem`
* Add support for event notifications `V1PriceActivatedEvent`, `V1PriceDeactivatedEvent`, `V1PriceLookupKeyChangedEvent`, and `V1PriceTaxBehaviorChangedEvent` with related object `Price`
* Add support for event notifications `V1ProductActivatedEvent`, `V1ProductDeactivatedEvent`, `V1ProductDefaultPriceChangedEvent`, and `V1ProductTaxCodeChangedEvent` with related object `Product`
* Add support for event notification `V1PromotionCodeFullyRedeemedEvent` with related object `PromotionCode`
* Add support for event notifications `V1SubscriptionSchedulePhaseAddedEvent`, `V1SubscriptionSchedulePhaseDefaultTaxRatesChangedEvent`, `V1SubscriptionSchedulePhaseEndDateChangedEvent`, `V1SubscriptionSchedulePhaseRemovedEvent`, and `V1SubscriptionSchedulePhaseTrialEndChangedEvent` with related object `SubscriptionSchedule`
* Add support for event notifications `V2MoneyManagementFundingIntentCanceledEvent`, `V2MoneyManagementFundingIntentCreatedEvent`, `V2MoneyManagementFundingIntentProcessingEvent`, `V2MoneyManagementFundingIntentRequiresActionEvent`, `V2MoneyManagementFundingIntentRequiresConfirmationEvent`, `V2MoneyManagementFundingIntentSucceededEvent`, `V2MoneyManagementFundingIntentUpdatedEvent`, and `V2MoneyManagementFundingIntentValidatingEvent` with related object `V2::MoneyManagement::FundingIntent`
* Add support for event notifications `V2MoneyManagementPayoutIntentPendingEvent` and `V2MoneyManagementPayoutIntentUpdatedEvent` with related object `V2::MoneyManagement::PayoutIntent`
* Add support for event notifications `V2MoneyManagementRewardProgramRewardEarnedEvent` and `V2MoneyManagementRewardProgramRewardReversedEvent` with related object `V2::MoneyManagement::RewardProgram`
* ⚠️ Remove support for event notifications `V2PaymentsOffSessionPaymentAuthorizationAttemptFailedEvent` and `V2PaymentsOffSessionPaymentAuthorizationAttemptStartedEvent` with related object `V2::Payments::OffSessionPayment`
* Add support for error type `CapabilityNotEnabledError`
