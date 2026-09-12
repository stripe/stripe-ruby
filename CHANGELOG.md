<!--
THIS IS A GENERATED FILE. Any changes you make to it directly will be blown away.
Instead, edit a corresponding `.change.md` file and run `hark build`.
-->

# Changelog

> This changelog only covers the **private preview** releases. Each release builds on the most recent GA release; see those notes in [the GA changelog](https://github.com/stripe/stripe-ruby/blob/master/CHANGELOG.md).

## 19.7.0-alpha.3 - 2026-09-09
* [#1957](https://github.com/stripe/stripe-ruby/pull/1957) Update generated code for private-preview
  * Add support for `customer_tax_exemption` on `Tax::Calculation::ShippingCost::TaxBreakdown`, `Tax::CalculationLineItem::TaxBreakdown`, and `Tax::Transaction::ShippingCost::TaxBreakdown`
  * Add support for `backdate_start_date` on `Checkout::Session::Item::Subscription` and `Checkout::SessionCreateParams::Item::Subscription`
  * Add support for `signals` on `Identity::VerificationReport`
  * Add support for `network_response_code` on `Issuing::Authorization::RequestHistory`
  * Add support for `unit_cost_precision` on `PaymentIntentAmountDetailsLineItem`, `PaymentIntentCaptureParams::AmountDetail::LineItem`, `PaymentIntentConfirmParams::AmountDetail::LineItem`, `PaymentIntentCreateParams::AmountDetail::LineItem`, `PaymentIntentDecrementAuthorizationParams::AmountDetail::LineItem`, `PaymentIntentIncrementAuthorizationParams::AmountDetail::LineItem`, and `PaymentIntentUpdateParams::AmountDetail::LineItem`
  * Change `PaymentIntent.payment_record` to be required
  * Add support for `active` on `ProductCatalog::TrialOfferListParams`
  * Change `Subscription::TrialSetting::EndBehavior.billing_cycle_anchor` to be required

## 19.7.0-alpha.2 - 2026-09-02
* ⚠️ [#1946](https://github.com/stripe/stripe-ruby/pull/1946) Update generated code for private-preview
  * Add support for new resources `Radar::BillingEvaluation`, `V2::Signals::PaymentRetryEvaluation`, `V2::Signals::PaymentRetrySignal`, and `V2::Tax::IntegrationConfiguration`
  * Add support for `create` method on resource `Radar::BillingEvaluation`
  * Add support for `create`, `deactivate`, `list`, `retrieve`, and `update` methods on resource `Billing::FeedbackOption`
  * Add support for `retrieve` and `update` methods on resource `V2::Tax::IntegrationConfiguration`
  * Add support for `retrieve` method on resource `V2::Signals::PaymentRetrySignal`
  * Add support for `cancel`, `create`, `retrieve`, and `update` methods on resource `V2::Signals::PaymentRetryEvaluation`
  * Add support for `disable` method on resource `V2::MoneyManagement::PayoutMethod`
  * Add support for `update` method on resource `V2::Core::ApprovalRequest`
  * ⚠️ Remove support for `execute` and `submit` methods on resource `V2::Core::ApprovalRequest`
  * Add support for `disable_stripe_user_authentication` on `AccountSessionCreateParams::Component::PaymentMethodSetting::Feature`
  * Add support for `capital_financing_manual_payment` on `AccountSession::Component`
  * Add support for `sequra_payments` on `Account::Capability`
  * Add support for `feedback_options` on `BillingPortal::ConfigurationCreateParams::Feature::SubscriptionCancel::CancellationReason` and `BillingPortal::ConfigurationUpdateParams::Feature::SubscriptionCancel::CancellationReason`
  * Add support for `sequra` on `Charge::PaymentMethodDetail`, `Checkout::Session::PaymentMethodOption`, `ConfirmationToken::PaymentMethodPreview`, `PaymentAttemptRecord::PaymentMethodDetail`, `PaymentIntent::PaymentMethodOption`, and `PaymentRecord::PaymentMethodDetail`
  * Add support for `funding_types_blocked` on `Checkout::SessionCreateParams::PaymentMethodOption::Card::Restriction`
  * Add support for `payment_intent_data` on `Checkout::SessionUpdateParams`
  * ⚠️ Change type of `Checkout::Session::PaymentMethodOption::Bancontact.setup_future_usage` from `literal('none')` to `enum('none'|'off_session')`
  * Add support for `metadata` on `ConfirmationToken`, `V2::Signals::AccountActivityCreateParams`, and `V2::Signals::AccountActivity`
  * Add support for `active_entitlements` and `customer_portal` on `CustomerSessionCreateParams::Component`
  * Add support for `address_match_confidence` and `name_match_confidence` on `Identity::VerificationReport::Email` and `Identity::VerificationReport::Phone`
  * Add support for `domain_country`, `email_exists_confidence`, `observed_domain_tenure_days`, `observed_email_tenure_days`, and `phone_match_confidence` on `Identity::VerificationReport::Email`
  * Add support for `carrier`, `line_type`, and `observed_phone_tenure_days` on `Identity::VerificationReport::Phone`
  * ⚠️ Remove support for `payment_method_types` on `PaymentIntentConfirmParams`, `PaymentIntentCreateParams`, `PaymentIntentUpdateParams`, `SetupIntentCreateParams`, and `SetupIntentUpdateParams`
  * Add support for `verification_method` on `PaymentIntent::PaymentMethodOption::BacsDebit`, `PaymentIntentConfirmParams::PaymentMethodOption::BacsDebit`, `PaymentIntentCreateParams::PaymentMethodOption::BacsDebit`, `PaymentIntentUpdateParams::PaymentMethodOption::BacsDebit`, `SetupIntent::PaymentMethodOption::BacsDebit`, `SetupIntentConfirmParams::PaymentMethodOption::BacsDebit`, `SetupIntentCreateParams::PaymentMethodOption::BacsDebit`, and `SetupIntentUpdateParams::PaymentMethodOption::BacsDebit`
  * Change `PaymentIntent.allowed_payment_method_types` and `SetupIntent.allowed_payment_method_types` to be required
  * Add support for `application_fee_amount`, `application_fee_percent`, `on_behalf_of`, and `transfer_data` on `PaymentLinkUpdateParams`
  * Add support for `canceled` on `PaymentRecordReportPaymentAttemptParams` and `PaymentRecordReportPaymentParams`
  * ⚠️ Change type of `ProductCatalog::TrialOffer.price` from `$Price` to `deletable($Price)`
  * ⚠️ Change `ProductCatalog::TrialOffer.name` to be optional
  * Add support for `recurring` on `SharedPayment::GrantedToken::UsageLimit`, `SharedPayment::GrantedTokenCreateParams::UsageLimit`, `SharedPayment::IssuedToken::UsageLimit`, and `SharedPayment::IssuedTokenCreateParams::UsageLimit`
  * Add support for `feedback_option` on `SubscriptionCancelParams::CancellationDetail` and `SubscriptionUpdateParams::CancellationDetail`
  * Add support for `pricing_token` on `SubscriptionUpdateParams`
  * Add support for `igic` on `Tax::RegistrationCreateParams::CountryOption::At`, `Tax::RegistrationCreateParams::CountryOption::Be`, `Tax::RegistrationCreateParams::CountryOption::Bg`, `Tax::RegistrationCreateParams::CountryOption::Cy`, `Tax::RegistrationCreateParams::CountryOption::Cz`, `Tax::RegistrationCreateParams::CountryOption::De`, `Tax::RegistrationCreateParams::CountryOption::Dk`, `Tax::RegistrationCreateParams::CountryOption::E`, `Tax::RegistrationCreateParams::CountryOption::Ee`, `Tax::RegistrationCreateParams::CountryOption::Fi`, `Tax::RegistrationCreateParams::CountryOption::Fr`, `Tax::RegistrationCreateParams::CountryOption::Gr`, `Tax::RegistrationCreateParams::CountryOption::Hr`, `Tax::RegistrationCreateParams::CountryOption::Hu`, `Tax::RegistrationCreateParams::CountryOption::Ie`, `Tax::RegistrationCreateParams::CountryOption::It`, `Tax::RegistrationCreateParams::CountryOption::Lt`, `Tax::RegistrationCreateParams::CountryOption::Lu`, `Tax::RegistrationCreateParams::CountryOption::Lv`, `Tax::RegistrationCreateParams::CountryOption::Mt`, `Tax::RegistrationCreateParams::CountryOption::Nl`, `Tax::RegistrationCreateParams::CountryOption::Pl`, `Tax::RegistrationCreateParams::CountryOption::Pt`, `Tax::RegistrationCreateParams::CountryOption::Ro`, `Tax::RegistrationCreateParams::CountryOption::Se`, `Tax::RegistrationCreateParams::CountryOption::Si`, and `Tax::RegistrationCreateParams::CountryOption::Sk`
  * Add support for `one_time_fees` on `V2::Billing::ContractCreateParams` and `V2::Billing::Contract`
  * ⚠️ Remove support for `payment_method_collection` on `V2::Core::Account::Configuration::Merchant::GrossSettlement`, `V2::Core::AccountCreateParams::Configuration::Merchant::GrossSettlement`, and `V2::Core::AccountUpdateParams::Configuration::Merchant::GrossSettlement`
  * Add support for `payout_methods` on `V2::Core::Account::Default` and `V2::Core::AccountUpdateParams::Default`
  * Add support for `reason` on `V2::Core::ApprovalRequest`
  * ⚠️ Remove support for `description` on `V2::Core::ApprovalRequest`
  * Add support for `api_key`, `type`, and `user` on `V2::Core::ApprovalRequest::RequestedBy` and `V2::Core::ApprovalRequest::Review::ReviewedBy`
  * ⚠️ Remove support for `id` and `name` on `V2::Core::ApprovalRequest::RequestedBy` and `V2::Core::ApprovalRequest::Review::ReviewedBy`
  * Add support for `approved_at` on `V2::Core::ApprovalRequest::StatusTransition`
  * ⚠️ Remove support for `requires_execution_at` on `V2::Core::ApprovalRequest::StatusTransition`
  * Add support for `crypto_transaction` on `V2::Core::FeeBatch::CollectionRecord`
  * Add support for `restricted` on `V2::Core::Vault::GbBankAccount` and `V2::Core::Vault::UsBankAccount`
  * Add support for `savings` on `V2::MoneyManagement::FinancialAccountCreateParams` and `V2::MoneyManagement::FinancialAccount`
  * Add support for `enabled_delivery_schemes` on `V2::MoneyManagement::PayoutMethod::BankAccount`
  * ⚠️ Remove support for `enabled_delivery_options` on `V2::MoneyManagement::PayoutMethod::BankAccount`
  * Add support for `to_account` on `V2::MoneyManagement::ReceivedDebit::BalanceTransfer`
  * Add support for `account_restricted` and `account_suspended` on `V2::Signals::AccountActivityCreateParams` and `V2::Signals::AccountActivity`
  * Add support for `additional_details` on `V2::Signals::AccountSignal::FraudulentMerchant` and `V2::Signals::AccountSignal::MerchantDelinquency`
  * ⚠️ Remove support for `indicators` on `V2::Signals::AccountSignal::FraudulentMerchant` and `V2::Signals::AccountSignal::MerchantDelinquency`
  * Add support for `action`, `created`, and `status` on `V2::Core::ApprovalRequestListParams`
  * Add support for `one_time_fee_actions` on `V2::Billing::ContractUpdateParams`
  * Add support for event notifications `V2CoreHealthMetronomeNotificationLatencyFiringEvent`, `V2CoreHealthMetronomeNotificationLatencyResolvedEvent`, and `V2SignalsPaymentRetryEvaluationsRetryRecommendedEvent`
  * Add support for event notifications `V2MoneyManagementPayoutIntentCanceledEvent`, `V2MoneyManagementPayoutIntentCreatedEvent`, `V2MoneyManagementPayoutIntentPostedEvent`, `V2MoneyManagementPayoutIntentProcessingEvent`, and `V2MoneyManagementPayoutIntentRequiresActionEvent` with related object `V2::MoneyManagement::PayoutIntent`

## 19.7.0-alpha.1 - 2026-08-26
This release changes the pinned API version to `2026-08-26.preview`.

* [#1936](https://github.com/stripe/stripe-ruby/pull/1936) Add non-verified manged handlers
* ⚠️ [#1941](https://github.com/stripe/stripe-ruby/pull/1941) Update generated code for private-preview
  * Add support for new resource `CustomerTaxExemption`
  * Add support for `create`, `delete`, `list`, and `retrieve` methods on resource `CustomerTaxExemption`
  * Add support for `details` on `Account::FutureRequirement::Error`, `Account::Requirement::Error`, `BankAccount::FutureRequirement::Error`, `BankAccount::Requirement::Error`, `Capability::FutureRequirement::Error`, `Capability::Requirement::Error`, `Person::FutureRequirement::Error`, and `Person::Requirement::Error`
  * ⚠️ Remove support for `sequra_payments` on `Account::Capability`
  * Add support for `subscription_pause` on `BillingPortal::SessionCreateParams::FlowDatum`
  * ⚠️ Remove support for `sequra` on `Charge::PaymentMethodDetail`, `Checkout::Session::PaymentMethodOption`, `ConfirmationToken::PaymentMethodPreview`, `PaymentAttemptRecord::PaymentMethodDetail`, `PaymentIntent::PaymentMethodOption`, and `PaymentRecord::PaymentMethodDetail`
  * Add support for `enablement_details` on `Checkout::Session::AutomaticTax`
  * Add support for `credit` on `FinancialConnections::Transaction::Classification`
  * Change type of `FinancialConnections::Transaction::Classification.money_movement` from `nullable(BankConnectionsResourceTransactionResourceClassificationsLabels)` to `BankConnectionsResourceTransactionResourceClassificationsLabels`
  * Change type of `FinancialConnections::Transaction::Classification.personal_finance` from `nullable(BankConnectionsResourceTransactionResourceClassificationsLabels)` to `BankConnectionsResourceTransactionResourceClassificationsLabels`
  * ⚠️ Change `FinancialConnections::Transaction::Classification.money_movement` to be optional
  * ⚠️ Change `FinancialConnections::Transaction::Classification.personal_finance` to be optional
  * Add support for `user_consent` on `Identity::VerificationSessionCreateParams` and `Identity::VerificationSessionUpdateParams`
  * Add support for `company_details` on `Invoice::PaymentSetting::PaymentMethodOption::Billie`, `PaymentIntent::PaymentMethodOption::Billie`, `PaymentIntentConfirmParams::PaymentMethodOption::Billie`, `PaymentIntentCreateParams::PaymentMethodOption::Billie`, `PaymentIntentUpdateParams::PaymentMethodOption::Billie`, `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption::Billie`, and `Subscription::PaymentSetting::PaymentMethodOption::Billie`
  * Add support for `reference` on `Invoice::PaymentSetting::PaymentMethodOption::Billie`, `PaymentIntent::PaymentMethodOption::Billie`, `PaymentIntentConfirmParams::PaymentMethodOption::Billie`, `PaymentIntentCreateParams::PaymentMethodOption::Billie`, `PaymentIntentUpdateParams::PaymentMethodOption::Billie`, and `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption::Billie`
  * Add support for `pos_condition` on `Issuing::AuthorizationCreateParams` and `Issuing::Authorization`
  * Add support for `crypto_wallet` on `Issuing::CardCreateParams`, `Issuing::CardUpdateParams`, and `Issuing::Card`
  * Add support for `payment_evaluations` and `payment_method_details` on `PaymentAttemptRecordReportAuthorizedParams`
  * Add support for `aade_data` on `PaymentIntentConfirmParams::PaymentMethodOption::CardPresent`, `PaymentIntentCreateParams::PaymentMethodOption::CardPresent`, and `PaymentIntentUpdateParams::PaymentMethodOption::CardPresent`
  * ⚠️ Remove support for `cancel_at_period_end` on `Subscription::PendingUpdate`
  * Add support for `blik_recurring_payments` on `V2::Core::Account::Configuration::Merchant::Capability`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability`, and `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability`
  * Add support for `user_access` on `V2::Iam::ActivityLog::Detail`

## 19.6.0-alpha.2 - 2026-08-19
* ⚠️ [#1933](https://github.com/stripe/stripe-ruby/pull/1933) Update generated code for private-preview
  * Add support for new resources `Billing::FeedbackOption` and `PaymentPlan`
  * ⚠️ Remove support for resource `Billing::FeedbackOptions`
  * Add support for `create`, `list`, `retrieve`, and `update` methods on resource `PaymentPlan`
  * Add support for `update` method on resource `V2::MoneyManagement::Transaction`
  * Add support for `wechat_pay_payments` on `Account::Setting`, `AccountCreateParams::Setting`, and `AccountUpdateParams::Setting`
  * ⚠️ Change type of `BillingPortal::Configuration::Feature::SubscriptionCancel::CancellationReason.feedback_options` from `$Billing.FeedbackOptions` to `$Billing.FeedbackOption`
  * Change `BillingPortal::Configuration::Feature::SubscriptionCancel::CancellationReason.feedback_options` to be required
  * Add support for `subscription_pause` on `BillingPortal::Session::Flow`
  * Add support for `active_entitlements` on `CustomerSession::Component`
  * Add support for `shared_payment_issued_token` on `DelegatedCheckout::RequestedSessionConfirmParams`
  * Add support for `managed_payments` on `InvoiceCreateParams`, `InvoiceItemCreateParams`, `InvoiceItem`, `Invoice`, and `QuotePreviewInvoice`
  * Add support for `payment_plan` on `Invoice`
  * Add support for `estimated_fee_details` and `estimated_fee` on `Issuing::Authorization::PendingRequest::HoldAmountDetail` and `Issuing::Authorization::RequestHistory::HoldAmountDetail`
  * ⚠️ Remove support for `cryptogram` on `PaymentAttemptRecord::PaymentMethodDetail::Card::ThreeDSecure` and `PaymentRecord::PaymentMethodDetail::Card::ThreeDSecure`
  * ⚠️ Change type of `ProductCatalog::TrialOffer::EndBehavior::Transition.price` from `$Price` to `deletable($Price)`
  * ⚠️ Change type of `Subscription::CancellationDetail.feedback_option` from `$Billing.FeedbackOptions` to `$Billing.FeedbackOption`
  * Add support for `cancel_at_period_end` on `Subscription::PendingUpdate`
  * Change `Subscription::CancellationDetail.feedback_option` to be required
  * Add support for `igic` on `Tax::Registration::CountryOption::At`, `Tax::Registration::CountryOption::Be`, `Tax::Registration::CountryOption::Bg`, `Tax::Registration::CountryOption::Cy`, `Tax::Registration::CountryOption::Cz`, `Tax::Registration::CountryOption::De`, `Tax::Registration::CountryOption::Dk`, `Tax::Registration::CountryOption::E`, `Tax::Registration::CountryOption::Ee`, `Tax::Registration::CountryOption::Fi`, `Tax::Registration::CountryOption::Fr`, `Tax::Registration::CountryOption::Gr`, `Tax::Registration::CountryOption::Hr`, `Tax::Registration::CountryOption::Hu`, `Tax::Registration::CountryOption::Ie`, `Tax::Registration::CountryOption::It`, `Tax::Registration::CountryOption::Lt`, `Tax::Registration::CountryOption::Lu`, `Tax::Registration::CountryOption::Lv`, `Tax::Registration::CountryOption::Mt`, `Tax::Registration::CountryOption::Nl`, `Tax::Registration::CountryOption::Pl`, `Tax::Registration::CountryOption::Pt`, `Tax::Registration::CountryOption::Ro`, `Tax::Registration::CountryOption::Se`, `Tax::Registration::CountryOption::Si`, and `Tax::Registration::CountryOption::Sk`
  * Add support for `metadata` on `V2::Billing::Contract::PricingLine::Datum::Pricing::PriceDetail::PricingOverride::Datum`, `V2::Billing::Contract::PricingOverride::Datum`, `V2::Billing::ContractCreateParams::PricingOverride`, `V2::Billing::ContractUpdateParams::PricingLineAction::Update`, `V2::Billing::ContractUpdateParams::PricingOverrideAction::Add`, `V2::Billing::ContractUpdateParams::PricingOverrideAction::Update`, `V2::Billing::ContractUpdateParams`, and `V2::MoneyManagement::Transaction`
  * Add support for `tax_amount` on `V2::MoneyManagement::OutboundPaymentQuote::EstimatedFee`
  * Add support for `payout_method_options` on `V2::MoneyManagement::OutboundPaymentQuote::To` and `V2::MoneyManagement::OutboundPaymentQuoteCreateParams::To`
  * Change type of `V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetail::PricingOverrideAction::Update.metadata` from `string` to `emptyable(string)`

## 19.6.0-alpha.1 - 2026-08-12
This release changes the pinned API version to `2026-08-12.preview`.

* ⚠️ [#1925](https://github.com/stripe/stripe-ruby/pull/1925) Update generated code for private-preview
  * Add support for new resource `V2::Tax::OperationsResolveAddressResult`
  * Add support for `resolve_address` method on resource `V2::Tax::OperationsResolveAddressResult`
  * Add support for `confirm` and `fx_quote` methods on resource `V2::MoneyManagement::PayoutIntent`
  * Add support for `customer_update` on `BillingPortal::Session::Flow`
  * Add support for `funding_source_group` on `Charge::PaymentMethodDetail::Link`
  * ⚠️ Remove support for `pricing_group` on `Charge::PaymentMethodDetail::Link`
  * Add support for `celo` on `Crypto::OnrampSession::TransactionDetail::WalletAddress`
  * Add support for `customer_portal` on `CustomerSession::Component`
  * Add support for `applied_to_invoice` and `type` on `CustomerCustomerBalanceTransactionCreateParams`
  * Add support for `classification_state` and `enrichment_state` on `FinancialConnections::Account`
  * Add support for `country` on `FinancialConnections::Session::Filter`
  * Add support for `classifications` and `enrichments` on `FinancialConnections::Transaction`
  * Add support for `customer_balance` on `Invoice` and `QuotePreviewInvoice`
  * Add support for `billie` on `Invoice::PaymentSetting::PaymentMethodOption`, `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption`, and `Subscription::PaymentSetting::PaymentMethodOption`
  * Add support for `hold_amount_details` and `hold_amount` on `Issuing::Authorization::PendingRequest` and `Issuing::Authorization::RequestHistory`
  * Add support for `network_decline_code` on `PaymentAttemptRecordReportFailedParams::PaymentMethodDetail::Card` and `PaymentRecordReportPaymentAttemptFailedParams::PaymentMethodDetail::Card`
  * Add support for `setup_future_usage` on `PaymentIntent::PaymentMethodOption::Sequra`
  * Add support for `status` on `QuotePreviewSubscriptionSchedule::PauseSchedule::Pause`, `QuotePreviewSubscriptionSchedule::PauseSchedule::Resume`, `SubscriptionSchedule::PauseSchedule::Pause`, and `SubscriptionSchedule::PauseSchedule::Resume`
  * Change `SubscriptionScheduleCreateParams::PauseSchedule.pause` to be optional
  * Change type of `SubscriptionScheduleUpdateParams::PauseSchedule.resume` from `pause_schedule_update_resume_params` to `emptyable(pause_schedule_update_resume_params)`
  * Add support for `acquirer` on `EventsV2CoreHealthAuthorizationRateDropFiringEvent`, `EventsV2CoreHealthAuthorizationRateDropResolvedEvent`, `V2::Core::Health::Alert::AuthorizationRateDrop::Dimension`, and `V2::Core::Health::AlertHistoryEntry::AuthorizationRateDrop::Dimension`
  * ⚠️ Change type of `EventsV2CoreHealthAuthorizationRateDropFiringEvent.type`, `EventsV2CoreHealthAuthorizationRateDropResolvedEvent.type`, `V2::Core::Health::Alert::AuthorizationRateDrop::Dimension.type`, and `V2::Core::Health::AlertHistoryEntry::AuthorizationRateDrop::Dimension.type` from `literal('issuer')` to `enum('acquirer'|'issuer')`
  * Add support for `confirmation_method` on `V2::MoneyManagement::PayoutIntentCreateParams` and `V2::MoneyManagement::PayoutIntent`
  * Add support for `estimated_fees` and `fx_quote` on `V2::MoneyManagement::PayoutIntent`
  * Add support for `debited` on `V2::MoneyManagement::PayoutIntent::From`
  * Add support for `confirm` on `V2::MoneyManagement::PayoutIntent::NextAction`
  * ⚠️ Change type of `V2::MoneyManagement::PayoutIntent::NextAction.type` from `literal('handle_failure')` to `enum('confirm'|'handle_failure')`
  * Add support for `credited` on `V2::MoneyManagement::PayoutIntent::To`
  * Add support for event notification `V1BalanceSettingsUpdatedEvent` with related object `BalanceSettings`
  * Add support for event notification `V1BillingCreditBalanceTransactionCreatedEvent` with related object `Billing::CreditBalanceTransaction`
  * Add support for event notifications `V1BillingCreditGrantCreatedEvent` and `V1BillingCreditGrantUpdatedEvent` with related object `Billing::CreditGrant`
  * Add support for event notifications `V1BillingMeterCreatedEvent`, `V1BillingMeterDeactivatedEvent`, `V1BillingMeterReactivatedEvent`, and `V1BillingMeterUpdatedEvent` with related object `Billing::Meter`
  * Add support for event notifications `V1FinancialConnectionsAccountAccountNumbersUpdatedEvent`, `V1FinancialConnectionsAccountExpectedDeactivationDateUpdatedEvent`, `V1FinancialConnectionsAccountSupportedPaymentMethodTypesUpdatedEvent`, `V1FinancialConnectionsAccountUpcomingAccountNumberExpiryEvent`, and `V1FinancialConnectionsAccountUpcomingDeactivationEvent` with related object `FinancialConnections::Account`
  * Add support for event notification `V1InvoicePaymentAttemptRequiredEvent` with related object `Invoice`
  * Add support for error type `FxQuoteNeedsRefreshError`

## 19.5.0-alpha.2 - 2026-08-05
* [#1920](https://github.com/stripe/stripe-ruby/pull/1920) Update generated code for private-preview
  * Add support for new resource `Billing::FeedbackOptions`
  * Add support for `sequra_payments` on `Account::Capability`
  * Add support for `feedback_options` on `BillingPortal::Configuration::Feature::SubscriptionCancel::CancellationReason`
  * Add support for `sequra` on `Charge::PaymentMethodDetail`, `Checkout::Session::PaymentMethodOption`, `ConfirmationToken::PaymentMethodPreview`, `PaymentAttemptRecord::PaymentMethodDetail`, `PaymentIntent::PaymentMethodOption`, and `PaymentRecord::PaymentMethodDetail`
  * Add support for `retrieval_reference_number` on `Charge::PaymentMethodDetail::CardPresent`, `ConfirmationToken::PaymentMethodPreview::Card::GeneratedFrom::PaymentMethodDetail::CardPresent`, `PaymentAttemptRecord::PaymentMethodDetail::CardPresent`, `PaymentMethod::Card::GeneratedFrom::PaymentMethodDetail::CardPresent`, and `PaymentRecord::PaymentMethodDetail::CardPresent`
  * Add support for `pricing_group` on `Charge::PaymentMethodDetail::Link`
  * Add support for `tax_rates` on `Checkout::Session::ShippingOption`, `Checkout::SessionCreateParams::ShippingOption`, and `Checkout::SessionUpdateParams::ShippingOption`
  * Add support for `funding_types_blocked` on `Checkout::Session::PaymentMethodOption::Card::Restriction`
  * Add support for `healthcare` on `Issuing::AuthorizationCaptureParams::PurchaseDetail`, `Issuing::AuthorizationCreateParams`, `Issuing::TransactionCreateForceCaptureParams::PurchaseDetail`, and `Issuing::TransactionCreateUnlinkedRefundParams::PurchaseDetail`
  * Change type of `Issuing::Authorization::Healthcare.verification_status` from `nullable(enum('iias_merchant_exempt'|'iias_merchant_not_certified'|'iias_verified'|'not_verified'))` to `enum('iias_merchant_exempt'|'iias_merchant_not_certified'|'iias_verified'|'not_verified')`
  * Add support for `is_anomalous` on `PaymentAttemptRecordReportGuaranteedParams`
  * Add support for `aade_data` on `PaymentIntent::PaymentMethodOption::CardPresent`
  * Change `Radar::PaymentEvaluation::PaymentDetail::PaymentMethodDetail::Card.first6` to be required
  * Change `Radar::PaymentEvaluation::PaymentDetail::PaymentMethodDetail::Card.last4` to be required
  * Add support for `feedback_option` on `Subscription::CancellationDetail`
  * Add support for `application` on `V2::Payments::OffSessionPayment`
  * Add support for `status` on `V2::MoneyManagement::FinancialAccountStatementListParams`
  * Change `V2::Billing::ContractCreateParams.pricing_lines` to be optional

## 19.5.0-alpha.1 - 2026-07-29
This release changes the pinned API version to `2026-07-29.preview`.

* ⚠️ [#1916](https://github.com/stripe/stripe-ruby/pull/1916) Update generated code for private-preview
  * Add support for new resources `V2::MoneyManagement::ReceivedDebitMandate`, `V2::Risk::Inquiry`, `V2::Signals::AccountActivity`, and `V2::Signals::AccountEvaluation`
  * Add support for `create` and `retrieve` methods on resource `V2::Signals::AccountEvaluation`
  * Add support for `create`, `delete`, and `retrieve` methods on resource `V2::Signals::AccountActivity`
  * Add support for `list`, `retrieve`, and `update` methods on resource `V2::Risk::Inquiry`
  * Add support for `cancel`, `list`, and `retrieve` methods on resource `V2::MoneyManagement::ReceivedDebitMandate`
  * Add support for `rate_cards` on `Billing::CreditBalanceSummaryRetrieveParams::Filter::ApplicabilityScope`, `Billing::CreditGrant::ApplicabilityConfig::Scope`, and `Billing::CreditGrantCreateParams::ApplicabilityConfig::Scope`
  * ⚠️ Change type of `ConfirmationToken::PaymentMethodPreview::GiftCard.brand`, `GiftCard.brand`, `GiftCardCreateParams.brand`, `PaymentMethod::GiftCard.brand`, `Terminal::ReaderActivateGiftCardParams.brand`, `Terminal::ReaderCashoutGiftCardParams.brand`, `Terminal::ReaderCheckGiftCardBalanceParams.brand`, and `Terminal::ReaderReloadGiftCardParams.brand` from `enum('fiserv_valuelink'|'givex'|'svs')` to `literal('svs')`
  * Add support for `tempo` on `Crypto::OnrampSession::TransactionDetail::WalletAddress`
  * Add support for `healthcare` on `Issuing::Authorization`
  * Add support for `product_code` on `Issuing::CardCreateParams`, `Issuing::CardUpdateParams`, and `Issuing::Card`
  * Add support for `product_graduation_state` on `Issuing::Card`
  * Add support for `cvc` and `number` on `Radar::PaymentEvaluationCreateParams::PaymentDetail::PaymentMethodDetail::Card`
  * Change `Radar::PaymentEvaluationCreateParams::PaymentDetail::PaymentMethodDetail::Card.first6` to be optional
  * Change `Radar::PaymentEvaluationCreateParams::PaymentDetail::PaymentMethodDetail::Card.last4` to be optional
  * Add support for `card` on `Radar::PaymentEvaluation::PaymentDetail::PaymentMethodDetail`
  * ⚠️ Change type of `Terminal::ReaderCollectPaymentMethodParams::CollectConfig.gift_card_brand` and `Terminal::ReaderProcessPaymentIntentParams::ProcessConfig.gift_card_brand` from `enum('fiserv_valuelink'|'givex'|'svs')` to `literal('svs')`
  * Add support for `gift_card` on `Terminal::ReaderPresentPaymentMethodParams`
  * Add support for `amount_due` and `customer_balance_applied` on `V2::Billing::Intent::AmountDetail`
  * ⚠️ Change type of `V2::Core::AccountEvaluation.evaluations_triggered` from `literal('fraudulent_website')` to `enum('fraudulent_website'|'user_account_sharing'|'user_multi_accounting')`
  * Add support for `gross_settlement` on `V2::Core::Account::Configuration::Merchant`, `V2::Core::AccountCreateParams::Configuration::Merchant`, and `V2::Core::AccountUpdateParams::Configuration::Merchant`
  * ⚠️ Change type of `V2::MoneyManagement::DebitDispute::BankTransfer.network` from `literal('ach')` to `enum('ach'|'bacs')`
  * ⚠️ Remove support for `managed_by` on `V2::MoneyManagement::FinancialAccount`
  * Add support for `payout_intent` on `V2::MoneyManagement::OutboundPayment`
  * Add support for `settles_at` on `V2::MoneyManagement::ReceivedDebit`
  * Add support for `gb_bank_account` on `V2::MoneyManagement::ReceivedDebit::BankTransfer`
  * ⚠️ Change type of `V2::MoneyManagement::ReceivedDebit::BankTransfer.origin_type` from `literal('us_bank_account')` to `enum('gb_bank_account'|'us_bank_account')`
  * ⚠️ Change type of `V2::MoneyManagement::ReceivedDebit::BankTransfer.payment_method_type` from `literal('us_bank_account')` to `enum('gb_bank_account'|'us_bank_account')`
  * Add support for `target_date` on `V2::Payments::OffSessionPaymentCreateParams` and `V2::Payments::OffSessionPayment`
  * Add support for `account_evaluation`, `fraudulent_website`, `payment_delinquency_exposure`, `user_account_sharing`, and `user_multi_accounting` on `V2::Signals::AccountSignal`
  * Change type of `V2::MoneyManagement::FinancialAddressDebitSimulationDebitParams.network` from `literal('ach')` to `enum('ach'|'bacs')`
  * Add support for `received_debit_mandate` on `V2::MoneyManagement::ReceivedDebitListParams`
  * ⚠️ Remove support for `payout_intent` on `V2::MoneyManagement::OutboundPaymentCreateParams`
  * Change type of `V2::Core::AccountEvaluationCreateParams.signals` from `literal('fraudulent_website')` to `enum('fraudulent_website'|'user_account_sharing'|'user_multi_accounting')`
  * ⚠️ Remove support for `id` on `EventsV2SignalsAccountSignalFraudulentMerchantReadyEvent`
  * Add support for event notifications `V2MoneyManagementReceivedDebitCreatedEvent` and `V2MoneyManagementReceivedDebitScheduledEvent` with related object `V2::MoneyManagement::ReceivedDebit`
  * Add support for event notifications `V2MoneyManagementReceivedDebitMandateCanceledEvent`, `V2MoneyManagementReceivedDebitMandateCreatedEvent`, `V2MoneyManagementReceivedDebitMandateExpiredEvent`, `V2MoneyManagementReceivedDebitMandatePendingCancellationEvent`, and `V2MoneyManagementReceivedDebitMandateUpdatedEvent` with related object `V2::MoneyManagement::ReceivedDebitMandate`
  * Add support for event notification `V2SignalsAccountEvaluationCompleteEvent` with related object `V2::Signals::AccountEvaluation`
  * Add support for event notifications `V2SignalsAccountSignalFraudulentWebsiteReadyEvent` and `V2SignalsAccountSignalPaymentDelinquencyExposureReadyEvent` with related object `V2::Signals::AccountSignal`

## 19.4.0-alpha.5 - 2026-07-22
* ⚠️ [#1910](https://github.com/stripe/stripe-ruby/pull/1910) Update generated code for private-preview
  * Add support for new resources `Billing::AlertNotification` and `Crypto::DepositAddress`
  * Add support for `create`, `list`, and `retrieve` methods on resource `Crypto::DepositAddress`
  * Add support for `list` method on resource `Billing::AlertNotification`
  * Add support for `vipps` on `ConfirmationToken::PaymentMethodPreview`, `ConfirmationTokenCreateParams::PaymentMethodDatum`, `PaymentIntent::PaymentMethodOption`, `PaymentIntentConfirmParams::PaymentMethodDatum`, `PaymentIntentConfirmParams::PaymentMethodOption`, `PaymentIntentCreateParams::PaymentMethodDatum`, `PaymentIntentCreateParams::PaymentMethodOption`, `PaymentIntentUpdateParams::PaymentMethodDatum`, `PaymentIntentUpdateParams::PaymentMethodOption`, `PaymentMethodConfigurationCreateParams`, `PaymentMethodConfigurationUpdateParams`, `PaymentMethodConfiguration`, `PaymentMethodCreateParams`, `PaymentMethod`, `SetupIntentConfirmParams::PaymentMethodDatum`, `SetupIntentCreateParams::PaymentMethodDatum`, and `SetupIntentUpdateParams::PaymentMethodDatum`
  * Add support for `sui` on `Crypto::OnrampSession::TransactionDetail::WalletAddress`
  * Add support for `use_stripe_sdk` on `DelegatedCheckout::RequestedSessionConfirmParams`
  * Add support for `ev_charging` on `PaymentIntentAmountDetailsLineItem::PaymentMethodOption::Card`, `PaymentIntentCaptureParams::AmountDetail::LineItem::PaymentMethodOption::Card`, `PaymentIntentConfirmParams::AmountDetail::LineItem::PaymentMethodOption::Card`, `PaymentIntentCreateParams::AmountDetail::LineItem::PaymentMethodOption::Card`, `PaymentIntentDecrementAuthorizationParams::AmountDetail::LineItem::PaymentMethodOption::Card`, `PaymentIntentIncrementAuthorizationParams::AmountDetail::LineItem::PaymentMethodOption::Card`, and `PaymentIntentUpdateParams::AmountDetail::LineItem::PaymentMethodOption::Card`
  * Add support for `tax_items` on `PaymentIntent::PaymentDetail::CarRentalDatum::Total::Tax`, `PaymentIntent::PaymentDetail::FlightDatum::Total::Tax`, and `PaymentIntent::PaymentDetail::LodgingDatum::Total::Tax`
  * ⚠️ Remove support for `taxes` on `PaymentIntent::PaymentDetail::CarRentalDatum::Total::Tax`, `PaymentIntent::PaymentDetail::FlightDatum::Total::Tax`, and `PaymentIntent::PaymentDetail::LodgingDatum::Total::Tax`
  * Change `PaymentRecordCreateParams.closed` to be optional
  * Change `PaymentRecordCreateParams.funded` to be optional
  * Add support for `card` on `Radar::PaymentEvaluationCreateParams::PaymentDetail::PaymentMethodDetail`
  * ⚠️ Remove support for `acss_debit`, `afterpay_clearpay`, `alipay`, `alma`, `amazon_pay`, `au_becs_debit`, `bacs_debit`, `bancontact`, `billie`, `bizum`, `blik`, `boleto`, `card_present`, `cashapp`, `crypto`, `customer_balance`, `eps`, `fpx`, `gift_card`, `giropay`, `gopay`, `grabpay`, `id_bank_transfer`, `ideal`, `interac_present`, `kakao_pay`, `konbini`, `kr_card`, `mb_way`, `mobilepay`, `multibanco`, `naver_pay`, `nz_bank_account`, `oxxo`, `p24`, `pay_by_bank`, `payco`, `paynow`, `paypal`, `paypay`, `payto`, `pix`, `promptpay`, `qris`, `rechnung`, `revolut_pay`, `samsung_pay`, `satispay`, `scalapay`, `sepa_debit`, `shopeepay`, `sofort`, `stripe_balance`, `sunbit`, `swish`, `tamara`, `twint`, `upi`, `us_bank_account`, `wechat_pay`, and `zip` on `SharedPayment::GrantedToken::PaymentMethodDetail`
  * Add support for `spend_card` on `V2::Core::Account::Configuration::CardCreator::Capability::Commercial::Stripe`, `V2::Core::AccountCreateParams::Configuration::CardCreator::Capability::Commercial::Stripe`, and `V2::Core::AccountUpdateParams::Configuration::CardCreator::Capability::Commercial::Stripe`

## 19.4.0-alpha.4 - 2026-07-16
* ⚠️ [#1905](https://github.com/stripe/stripe-ruby/pull/1905) Update generated code for private-preview
  * ⚠️ Remove support for resource `FrMealVouchersOnboarding`
  * ⚠️ Remove support for `create`, `list`, `retrieve`, and `update` methods on resource `FrMealVouchersOnboarding`
  * Add support for `create` method on resource `PaymentRecord`
  * ⚠️ Remove support for `financial_accounts_transactions`, `financial_accounts`, and `recipients_list` on `AccountSessionCreateParams::Component`
  * Add support for `smart_disputes_management` on `AccountSession::Component::DisputesList::Feature`, `AccountSession::Component::Payment::Feature`, `AccountSession::Component::PaymentDetail::Feature`, and `AccountSession::Component::PaymentDispute::Feature`
  * Add support for `mode` on `FinancialConnections::Session::ManualEntry`
  * Add support for `business_name` on `Issuing::Card::Shipping`
  * ⚠️ Change type of `Issuing::Transaction::NetworkDatum.trace_id` from `IssuingTransactionTraceId` to `nullable(IssuingTransactionTraceId)`
  * Add support for `pause_schedules` on `QuotePreviewSubscriptionSchedule`, `SubscriptionScheduleCreateParams`, `SubscriptionScheduleUpdateParams`, and `SubscriptionSchedule`
  * Add support for `trial` on `QuotePreviewSubscriptionSchedule::Phase` and `SubscriptionSchedule::Phase`
  * Add support for `payment_record` on `RefundCreateParams`
  * Add support for `redirect_to_url` on `SharedPayment::IssuedToken::NextAction`
  * ⚠️ Change type of `SharedPayment::IssuedToken::NextAction.type` from `literal('use_stripe_sdk')` to `enum('redirect_to_url'|'use_stripe_sdk')`

## 19.4.0-alpha.3 - 2026-07-08
This release changes the pinned API version to `2026-07-08.preview`.

* ⚠️ [#1900](https://github.com/stripe/stripe-ruby/pull/1900) Update generated code for private-preview
  * Add support for `activate_gift_card`, `cashout_gift_card`, `check_gift_card_balance`, and `reload_gift_card` methods on resource `Terminal::Reader`
  * Add support for `aggregation_period` on `Billing::AlertRecovered`
  * Add support for `administrative_address` and `principal_place_of_business` on `Account::Company`
  * Add support for `address_collection_precision` on `Checkout::Session::AutomaticTax`
  * Add support for `tax_id` on `Checkout::Session::CollectedInformation`
  * ⚠️ Remove support for `tax_ids` on `Checkout::Session::CollectedInformation`
  * Add support for `setup_future_usage` on `Checkout::Session::PaymentMethodOption::Payco`, `Checkout::Session::PaymentMethodOption::SamsungPay`, `PaymentIntent::PaymentMethodOption::Payco`, `PaymentIntent::PaymentMethodOption::Paypay`, `PaymentIntent::PaymentMethodOption::SamsungPay`, `PaymentIntentConfirmParams::PaymentMethodOption::Paypay`, `PaymentIntentCreateParams::PaymentMethodOption::Paypay`, and `PaymentIntentUpdateParams::PaymentMethodOption::Paypay`
  * Add support for `network` on `Dispute::PaymentMethodDetail::Card`
  * Add support for `require_payment_method_support` on `FinancialConnections::Session::Filter`
  * Add support for `network_data` on `Issuing::Authorization::RequestHistory`
  * Add support for `acquiring_institution_country`, `acquiring_institution_id`, `retrieval_reference_number`, `routed_network`, and `trace_id` on `Issuing::Transaction::NetworkDatum`
  * Add support for `custom_fields`, `description`, and `footer` on `Quote::InvoiceSetting`, `QuotePreviewSubscriptionSchedule::DefaultSetting::InvoiceSetting`, `QuotePreviewSubscriptionSchedule::Phase::InvoiceSetting`, `SubscriptionSchedule::DefaultSetting::InvoiceSetting`, and `SubscriptionSchedule::Phase::InvoiceSetting`
  * Add support for `paypay` on `SetupAttempt::PaymentMethodDetail`
  * Add support for `mass_transit_parking_tax` and `parking_tax` on `Tax::Registration::CountryOption::Me`
  * Add support for `gift_card_brand` on `Terminal::ReaderCollectPaymentMethodParams::CollectConfig` and `Terminal::ReaderProcessPaymentIntentParams::ProcessConfig`
  * Add support for `activate_gift_card`, `cashout_gift_card`, `check_gift_card_balance`, `deactivate_gift_card`, and `reload_gift_card` on `Terminal::Reader::Action`
  * Add support for `status_transitions` on `V2::Billing::Contract`
  * ⚠️ Remove support for `one_time_fees` on `V2::Billing::ContractCreateParams` and `V2::Billing::Contract`
  * ⚠️ Remove support for `status_details` on `V2::Billing::Contract`
  * Add support for `id` and `priority` on `V2::Billing::Contract::PricingLine::Datum::Pricing::PriceDetail::PricingOverride::Datum`
  * ⚠️ Remove support for `pricing_override` on `V2::Billing::Contract::PricingLine::Datum::Pricing::PriceDetail::PricingOverride::Datum`
  * ⚠️ Remove support for `tiering_mode` and `tiers` on `V2::Billing::Contract::PricingLine::Datum::Pricing::PriceDetail::PricingOverride::Datum::OverwritePrice`, `V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetail::PricingOverride::OverwritePrice`, `V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetail::PricingOverride::OverwritePrice`, `V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetail::PricingOverrideAction::Add::OverwritePrice`, and `V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::OverwritePrice`
  * Add support for `multiply_pricing` on `V2::Billing::Contract::PricingOverride::Datum`, `V2::Billing::ContractCreateParams::PricingOverride`, and `V2::Billing::ContractUpdateParams::PricingOverrideAction::Add`
  * ⚠️ Remove support for `multiplier` on `V2::Billing::Contract::PricingOverride::Datum`, `V2::Billing::ContractCreateParams::PricingOverride`, and `V2::Billing::ContractUpdateParams::PricingOverrideAction::Add`
  * ⚠️ Change type of `V2::Billing::Contract::PricingOverride::Datum.type`, `V2::Billing::ContractCreateParams::PricingOverride.type`, and `V2::Billing::ContractUpdateParams::PricingOverrideAction::Add.type` from `literal('multiplier')` to `literal('multiply_pricing')`
  * Add support for `related_network_object` on `V2::Core::AccountListParams` and `V2::Core::Account`
  * Add support for `network_business_profile_wallet` on `V2::MoneyManagement::PayoutMethod`
  * Add support for `stripe_network_transfer` on `V2::MoneyManagement::ReceivedCredit`
  * ⚠️ Change type of `V2::Billing::ContractCreateParams::PricingLine::EndsAt.type`, `V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetail::PricingOverride::EndsAt.type`, `V2::Billing::ContractCreateParams::PricingOverride::EndsAt.type`, and `V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetail::PricingOverride::EndsAt.type` from `enum('contract_end'|'timestamp')` to `literal('timestamp')`
  * ⚠️ Change type of `V2::Billing::ContractCreateParams::PricingLine::Pricing::PriceDetail::PricingOverride::StartsAt.type`, `V2::Billing::ContractCreateParams::PricingLine::StartsAt.type`, `V2::Billing::ContractCreateParams::PricingOverride::StartsAt.type`, and `V2::Billing::ContractUpdateParams::PricingLineAction::Add::Pricing::PriceDetail::PricingOverride::StartsAt.type` from `enum('contract_start'|'timestamp')` to `literal('timestamp')`
  * Change `V2::Billing::ContractCreateParams::PricingOverride.priority` and `V2::Billing::ContractUpdateParams::PricingOverrideAction::Add.priority` to be optional
  * ⚠️ Change type of `V2::Billing::ContractUpdateParams::PricingLineAction::Add::EndsAt.type`, `V2::Billing::ContractUpdateParams::PricingLineAction::Update::EndsAt.type`, `V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetail::PricingOverrideAction::Add::EndsAt.type`, `V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetail::PricingOverrideAction::Update::EndsAt.type`, `V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::EndsAt.type`, and `V2::Billing::ContractUpdateParams::PricingOverrideAction::Update::EndsAt.type` from `enum('billing_period_end'|'timestamp')` to `literal('timestamp')`
  * ⚠️ Change type of `V2::Billing::ContractUpdateParams::PricingLineAction::Add::StartsAt.type`, `V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetail::PricingOverrideAction::Add::StartsAt.type`, `V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetail::PricingOverrideAction::Update::StartsAt.type`, `V2::Billing::ContractUpdateParams::PricingLineAction::Update::StartsAt.type`, `V2::Billing::ContractUpdateParams::PricingOverrideAction::Add::StartsAt.type`, and `V2::Billing::ContractUpdateParams::PricingOverrideAction::Update::StartsAt.type` from `enum('billing_period_start'|'timestamp')` to `literal('timestamp')`
  * Add support for event notifications `V2BillingContractActivatedEvent`, `V2BillingContractCanceledEvent`, `V2BillingContractCreatedEvent`, `V2BillingContractEndedEvent`, and `V2BillingContractUpdatedEvent` with related object `V2::Billing::Contract`

## 19.4.0-alpha.2 - 2026-07-01
This release changes the pinned API version to `2026-07-01.preview`.

* ⚠️ [#1898](https://github.com/stripe/stripe-ruby/pull/1898) Update generated code for private-preview
  * Add support for new resources `Crypto::CustomerConsumerWallet`, `Crypto::CustomerPaymentToken`, `Crypto::Customer`, `Crypto::OnrampSession`, and `Crypto::OnrampTransactionLimits`
  * Add support for `list` and `retrieve` methods on resource `Crypto::Customer`
  * Add support for `checkout`, `create`, `list`, `quote`, and `retrieve` methods on resource `Crypto::OnrampSession`
  * Add support for `retrieve` method on resource `Crypto::OnrampTransactionLimits`
  * Add support for `redaction` on `Card`, `Charge`, `Checkout::Session`, `Customer`, `Issuing::Authorization`, `Issuing::Card`, `Issuing::Cardholder`, `Issuing::Dispute`, `Issuing::Transaction`, `PaymentIntent`, `PaymentMethod`, `SetupIntent`, `Source`, and `Token`
  * Change `Billing::CreditGrant.priority` to be required
  * Add support for `disclaimer_variant` on `Capital::FinancingOffer` and `Capital::FinancingSummary::Detail`
  * Add support for `buyer_id` on `Charge::PaymentMethodDetail::Bizum`, `ConfirmationToken::PaymentMethodPreview::Bizum`, `ConfirmationToken::PaymentMethodPreview::Blik`, `PaymentAttemptRecord::PaymentMethodDetail::Bizum`, `PaymentMethod::Bizum`, `PaymentMethod::Blik`, `PaymentRecord::PaymentMethodDetail::Bizum`, `SharedPayment::GrantedToken::PaymentMethodDetail::Bizum`, and `SharedPayment::GrantedToken::PaymentMethodDetail::Blik`
  * Add support for `electronic_commerce_indicator` and `transaction_link_id` on `Charge::PaymentMethodDetail::Card`
  * Add support for `amount_received` and `amount_requested` on `Charge::PaymentMethodDetail::Crypto`, `PaymentAttemptRecord::PaymentMethodDetail::Crypto`, and `PaymentRecord::PaymentMethodDetail::Crypto`
  * Add support for `fingerprint` on `Charge::PaymentMethodDetail::GiftCard`, `Charge::PaymentMethodDetail::Pix`, `ConfirmationToken::PaymentMethodPreview::Pix`, `PaymentAttemptRecord::PaymentMethodDetail::GiftCard`, `PaymentMethod::Pix`, `PaymentRecord::PaymentMethodDetail::GiftCard`, `SetupAttempt::PaymentMethodDetail::Pix`, and `SharedPayment::GrantedToken::PaymentMethodDetail::Pix`
  * Add support for `address_collection_precision` on `Checkout::SessionCreateParams::AutomaticTax`
  * Add support for `sunbit` on `Checkout::Session::PaymentMethodOption`, `Checkout::SessionCreateParams::PaymentMethodOption`, `PaymentIntent::PaymentMethodOption`, `PaymentIntentConfirmParams::PaymentMethodOption`, `PaymentIntentCreateParams::PaymentMethodOption`, and `PaymentIntentUpdateParams::PaymentMethodOption`
  * Add support for `billing_cycle_anchor_config` on `Checkout::SessionCreateParams::SubscriptionDatum`
  * Add support for `subscription` on `Checkout::Session::Item`
  * Add support for `wechat_pay` on `Checkout::Session::PaymentMethodOption`
  * Add support for `mastercard_compliance` on `Dispute::Evidence::EnhancedEvidence`, `Dispute::EvidenceDetail::EnhancedEligibility`, and `DisputeUpdateParams::Evidence::EnhancedEvidence`
  * Add support for `active` on `FinancialConnections::Account::StatusDetail` and `FinancialConnections::Authorization::StatusDetail`
  * Change type of `FinancialConnections::SessionCreateParams::Limit.accounts` from `longInteger` to `emptyable(longInteger)`
  * ⚠️  Remove support for `deactivation` on `GiftCardOperation`
  * Add support for `pause` on `InvoiceCreatePreviewParams::SubscriptionDetail`
  * Add support for `merchant_amount_exchange_rate` on `Issuing::Authorization` and `Issuing::Transaction`
  * Add support for `device_id` on `Issuing::Authorization::TokenDetail::NetworkDatum::Device` and `Issuing::Token::NetworkDatum::Device`
  * Add support for `program` on `Issuing::Card`
  * Add support for `payment_method_details` on `PaymentAttemptRecordReportFailedParams` and `PaymentRecordReportPaymentAttemptFailedParams`
  * Add support for `reason` on `PaymentAttemptRecordReportRefundParams` and `PaymentRecordReportRefundParams`
  * ⚠️  Remove support for `stored_credential_usage` on `PaymentAttemptRecord::PaymentMethodDetail::Card` and `PaymentRecord::PaymentMethodDetail::Card`
  * ⚠️  Change `PaymentAttemptRecord::PaymentMethodDetail::Card.description` and `PaymentRecord::PaymentMethodDetail::Card.description` to be optional
  * ⚠️  Change `PaymentAttemptRecord::PaymentMethodDetail::Card.iin` and `PaymentRecord::PaymentMethodDetail::Card.iin` to be optional
  * ⚠️  Change `PaymentAttemptRecord::PaymentMethodDetail::Card.issuer` and `PaymentRecord::PaymentMethodDetail::Card.issuer` to be optional
  * Add support for `amount_reconciliation` on `PaymentIntent::PaymentMethodOption::Crypto`, `PaymentIntentConfirmParams::PaymentMethodOption::Crypto`, `PaymentIntentCreateParams::PaymentMethodOption::Crypto`, and `PaymentIntentUpdateParams::PaymentMethodOption::Crypto`
  * Add support for `setup_future_usage` on `PaymentIntent::PaymentMethodOption::Satispay`, `PaymentIntentConfirmParams::PaymentMethodOption::Satispay`, `PaymentIntentCreateParams::PaymentMethodOption::Satispay`, and `PaymentIntentUpdateParams::PaymentMethodOption::Satispay`
  * Add support for `release_details` on `Reserve::Hold`
  * Add support for `satispay` on `SetupAttempt::PaymentMethodDetail`
  * Add support for `custom_fields`, `description`, and `footer` on `Subscription::InvoiceSetting`, `SubscriptionCreateParams::InvoiceSetting`, and `SubscriptionUpdateParams::InvoiceSetting`
  * Add support for `payment_method_options` and `payment_method` on `TopupCreateParams`
  * Add support for `connect_permissions` and `permissions` on `V2::Iam::ApiKeyCreateParams`, `V2::Iam::ApiKeyUpdateParams`, and `V2::Iam::ApiKey`
  * Add support for `credit` on `V2::MoneyManagement::FinancialAccount`
  * Add support for `account`, `issuing_authorization`, `issuing_dispute`, and `issuing_transaction` on `V2::MoneyManagement::Transaction::Flow` and `V2::MoneyManagement::TransactionEntry::TransactionDetail::Flow`
  * Change type of `V2::MoneyManagement::FinancialAccountCreateParams.type` from `literal('storage')` to `enum('credit'|'storage')`
  * Add support for `expires_at` on `V2::Iam::ApiKeyCreateParams`

## 19.4.0-alpha.1 - 2026-06-24
This release changes the pinned API version to `2026-06-24.preview`.

* ⚠️ [#1894](https://github.com/stripe/stripe-ruby/pull/1894) Update generated code for private-preview
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

## 19.3.0-alpha.4 - 2026-06-17
* ⚠️ [#1878](https://github.com/stripe/stripe-ruby/pull/1878) Update generated code for private-preview
  * Add support for `retrieve` method on resource `Radar::CustomerEvaluation`
  * Add support for `disable_stripe_user_authentication` on `AccountSession::Component::Bill::Feature`
  * Add support for `tamara` on `Charge::PaymentMethodDetail`, `ConfirmationToken::PaymentMethodPreview`, `ConfirmationTokenCreateParams::PaymentMethodDatum`, `PaymentAttemptRecord::PaymentMethodDetail`, `PaymentIntentConfirmParams::PaymentMethodDatum`, `PaymentIntentCreateParams::PaymentMethodDatum`, `PaymentIntentUpdateParams::PaymentMethodDatum`, `PaymentMethodCreateParams`, `PaymentMethod`, `PaymentRecord::PaymentMethodDetail`, `SetupIntentConfirmParams::PaymentMethodDatum`, `SetupIntentCreateParams::PaymentMethodDatum`, `SetupIntentUpdateParams::PaymentMethodDatum`, and `SharedPayment::GrantedToken::PaymentMethodDetail`
  * Add support for `status` on `Charge::PaymentMethodDetail::Card::AccountFunding`
  * ⚠️ Remove support for `processed_transaction_type` on `Charge::PaymentMethodDetail::Card::AccountFunding`
  * Add support for `items` on `Checkout::SessionCreateParams`
  * ⚠️ Remove support for `brand` on `Checkout::Session::CurrentAttempt::PaymentMethodDetail::Card`
  * ⚠️ Remove support for `first6` on `ConfirmationToken::PaymentMethodPreview::GiftCard`, `PaymentMethod::GiftCard`, and `SharedPayment::GrantedToken::PaymentMethodDetail::GiftCard`
  * Add support for `fingerprint` on `GiftCard`
  * Add support for `blik` on `Mandate::PaymentMethodDetail`
  * Add support for `buyer_id` on `Order::Payment::Setting::PaymentMethodOption::WechatPay`, `OrderCreateParams::Payment::Setting::PaymentMethodOption::WechatPay`, `OrderUpdateParams::Payment::Setting::PaymentMethodOption::WechatPay`, `PaymentIntent::PaymentMethodOption::WechatPay`, `PaymentIntentConfirmParams::PaymentMethodOption::WechatPay`, `PaymentIntentCreateParams::PaymentMethodOption::WechatPay`, and `PaymentIntentUpdateParams::PaymentMethodOption::WechatPay`
  * Add support for `payment_method_details` on `PaymentAttemptRecordReportGuaranteedParams` and `PaymentRecordReportPaymentAttemptGuaranteedParams`
  * Add support for `failed` and `refund_group` on `PaymentAttemptRecordReportRefundParams` and `PaymentRecordReportRefundParams`
  * Change type of `PaymentAttemptRecordReportRefundParams.outcome` and `PaymentRecordReportRefundParams.outcome` from `literal('refunded')` to `enum('failed'|'refunded')`
  * Add support for `beneficiary_details` on `PaymentIntent::PaymentDetail::MoneyService`, `PaymentIntentConfirmParams::PaymentDetail::MoneyService`, `PaymentIntentCreateParams::PaymentDetail::MoneyService`, and `PaymentIntentUpdateParams::PaymentDetail::MoneyService`
  * ⚠️ Remove support for `beneficiary_account` and `beneficiary_details` on `PaymentIntent::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentConfirmParams::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentCreateParams::PaymentDetail::MoneyService::AccountFunding`, and `PaymentIntentUpdateParams::PaymentDetail::MoneyService::AccountFunding`
  * ⚠️ Remove support for `sender_account` on `PaymentIntentConfirmParams::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentCreateParams::PaymentDetail::MoneyService::AccountFunding`, and `PaymentIntentUpdateParams::PaymentDetail::MoneyService::AccountFunding`
  * Add support for `given_name` and `surname` on `PaymentIntent::PaymentDetail::MoneyService::AccountFunding::SenderDetail`, `PaymentIntentConfirmParams::PaymentDetail::MoneyService::AccountFunding::SenderDetail`, `PaymentIntentCreateParams::PaymentDetail::MoneyService::AccountFunding::SenderDetail`, and `PaymentIntentUpdateParams::PaymentDetail::MoneyService::AccountFunding::SenderDetail`
  * ⚠️ Remove support for `name` on `PaymentIntent::PaymentDetail::MoneyService::AccountFunding::SenderDetail`, `PaymentIntentConfirmParams::PaymentDetail::MoneyService::AccountFunding::SenderDetail`, `PaymentIntentCreateParams::PaymentDetail::MoneyService::AccountFunding::SenderDetail`, and `PaymentIntentUpdateParams::PaymentDetail::MoneyService::AccountFunding::SenderDetail`
  * Change type of `PaymentIntentConfirmParams::PaymentMethodOption::Card.capture_method`, `PaymentIntentCreateParams::PaymentMethodOption::Card.capture_method`, and `PaymentIntentUpdateParams::PaymentMethodOption::Card.capture_method` from `literal('manual')` to `enum('automatic_delayed'|'manual')`
  * ⚠️ Remove support for `wallet` on `PaymentIntentConfirmParams::PaymentMethodOption::Card::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentConfirmParams::PaymentMethodOption::CardPresent::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentCreateParams::PaymentMethodOption::Card::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentCreateParams::PaymentMethodOption::CardPresent::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentUpdateParams::PaymentMethodOption::Card::PaymentDetail::MoneyService::AccountFunding`, and `PaymentIntentUpdateParams::PaymentMethodOption::CardPresent::PaymentDetail::MoneyService::AccountFunding`
  * Add support for `transaction_verification_options` on `PaymentIntent::PaymentMethodOption::Crypto`, `PaymentIntentConfirmParams::PaymentMethodOption::Crypto`, `PaymentIntentCreateParams::PaymentMethodOption::Crypto`, and `PaymentIntentUpdateParams::PaymentMethodOption::Crypto`
  * Change type of `PaymentIntentSimulateCryptoDepositParams.token_currency` from `literal('usdc')` to `enum('usdc'|'usdg'|'usdp')`
  * Add support for `forced_capture` on `PaymentIntent::AdvancedFeatureDetail`
  * Add support for `wechat_pay_handle_app_redirect` on `PaymentIntent::NextAction` and `SetupIntent::NextAction`
  * Add support for `ethereum` and `polygon` on `PaymentIntent::NextAction::CryptoDisplayDetail::DepositAddress`
  * ⚠️ Change type of `PaymentIntent::NextAction::CryptoDisplayDetail::DepositAddress::Base::SupportedToken.token_currency`, `PaymentIntent::NextAction::CryptoDisplayDetail::DepositAddress::Solana::SupportedToken.token_currency`, and `PaymentIntent::NextAction::CryptoDisplayDetail::DepositAddress::Tempo::SupportedToken.token_currency` from `literal('usdc')` to `enum('usdc'|'usdg'|'usdp')`
  * Add support for `beneficiary_account` on `PaymentIntent::PaymentDetail::MoneyService`
  * ⚠️ Change type of `PaymentIntent::PaymentMethodOption::Card.capture_method` from `literal('manual')` to `enum('automatic_delayed'|'manual')`
  * Change type of `PaymentLocationUpdateParams::BusinessRegistration.siret` from `string` to `emptyable(string)`
  * Add support for `card` on `PaymentRecordReportPaymentAttemptParams::PaymentMethodDetail` and `PaymentRecordReportPaymentParams::PaymentMethodDetail`
  * Change type of `PaymentRecordReportPaymentAttemptParams::PaymentMethodDetail.type` and `PaymentRecordReportPaymentParams::PaymentMethodDetail.type` from `literal('custom')` to `enum('card'|'custom')`
  * Add support for `managed_payments` on `Product`
  * Add support for `payment_attempt_record` on `RefundCreateParams` and `RefundListParams`
  * Add support for `payment_record` on `RefundListParams`
  * Add support for `protections` on `V2::Core::Account::Configuration::CardCreator::Capability::Commercial::Celtic::ChargeCard`, `V2::Core::Account::Configuration::CardCreator::Capability::Commercial::Celtic::SpendCard`, `V2::Core::Account::Configuration::CardCreator::Capability::Commercial::CrossRiverBank::ChargeCard`, `V2::Core::Account::Configuration::CardCreator::Capability::Commercial::CrossRiverBank::PrepaidCard`, `V2::Core::Account::Configuration::CardCreator::Capability::Commercial::CrossRiverBank::SpendCard`, `V2::Core::Account::Configuration::CardCreator::Capability::Commercial::FifthThird::ChargeCard`, `V2::Core::Account::Configuration::CardCreator::Capability::Commercial::Lead::PrepaidCard`, `V2::Core::Account::Configuration::CardCreator::Capability::Commercial::Stripe::ChargeCard`, `V2::Core::Account::Configuration::CardCreator::Capability::Commercial::Stripe::PrepaidCard`, `V2::Core::Account::Configuration::CardCreator::Capability::Consumer::Celtic::RevolvingCreditCard`, `V2::Core::Account::Configuration::CardCreator::Capability::Consumer::CrossRiverBank::PrepaidCard`, `V2::Core::Account::Configuration::CardCreator::Capability::Consumer::Lead::DebitCard`, `V2::Core::Account::Configuration::CardCreator::Capability::Consumer::Lead::PrepaidCard`, `V2::Core::Account::Configuration::Customer::Capability::AutomaticIndirectTax`, `V2::Core::Account::Configuration::Merchant::Capability::AchDebitPayment`, `V2::Core::Account::Configuration::Merchant::Capability::AcssDebitPayment`, `V2::Core::Account::Configuration::Merchant::Capability::AffirmPayment`, `V2::Core::Account::Configuration::Merchant::Capability::AfterpayClearpayPayment`, `V2::Core::Account::Configuration::Merchant::Capability::AlmaPayment`, `V2::Core::Account::Configuration::Merchant::Capability::AmazonPayPayment`, `V2::Core::Account::Configuration::Merchant::Capability::AuBecsDebitPayment`, `V2::Core::Account::Configuration::Merchant::Capability::BacsDebitPayment`, `V2::Core::Account::Configuration::Merchant::Capability::BancontactPayment`, `V2::Core::Account::Configuration::Merchant::Capability::BlikPayment`, `V2::Core::Account::Configuration::Merchant::Capability::BoletoPayment`, `V2::Core::Account::Configuration::Merchant::Capability::CardPayment`, `V2::Core::Account::Configuration::Merchant::Capability::CartesBancairesPayment`, `V2::Core::Account::Configuration::Merchant::Capability::CashappPayment`, `V2::Core::Account::Configuration::Merchant::Capability::EpsPayment`, `V2::Core::Account::Configuration::Merchant::Capability::FpxPayment`, `V2::Core::Account::Configuration::Merchant::Capability::GbBankTransferPayment`, `V2::Core::Account::Configuration::Merchant::Capability::GrabpayPayment`, `V2::Core::Account::Configuration::Merchant::Capability::IdealPayment`, `V2::Core::Account::Configuration::Merchant::Capability::JcbPayment`, `V2::Core::Account::Configuration::Merchant::Capability::JpBankTransferPayment`, `V2::Core::Account::Configuration::Merchant::Capability::KakaoPayPayment`, `V2::Core::Account::Configuration::Merchant::Capability::KlarnaPayment`, `V2::Core::Account::Configuration::Merchant::Capability::KonbiniPayment`, `V2::Core::Account::Configuration::Merchant::Capability::KrCardPayment`, `V2::Core::Account::Configuration::Merchant::Capability::LinkPayment`, `V2::Core::Account::Configuration::Merchant::Capability::MobilepayPayment`, `V2::Core::Account::Configuration::Merchant::Capability::MultibancoPayment`, `V2::Core::Account::Configuration::Merchant::Capability::MxBankTransferPayment`, `V2::Core::Account::Configuration::Merchant::Capability::NaverPayPayment`, `V2::Core::Account::Configuration::Merchant::Capability::OxxoPayment`, `V2::Core::Account::Configuration::Merchant::Capability::P24Payment`, `V2::Core::Account::Configuration::Merchant::Capability::PayByBankPayment`, `V2::Core::Account::Configuration::Merchant::Capability::PaycoPayment`, `V2::Core::Account::Configuration::Merchant::Capability::PaynowPayment`, `V2::Core::Account::Configuration::Merchant::Capability::PromptpayPayment`, `V2::Core::Account::Configuration::Merchant::Capability::RevolutPayPayment`, `V2::Core::Account::Configuration::Merchant::Capability::SamsungPayPayment`, `V2::Core::Account::Configuration::Merchant::Capability::SepaBankTransferPayment`, `V2::Core::Account::Configuration::Merchant::Capability::SepaDebitPayment`, `V2::Core::Account::Configuration::Merchant::Capability::StripeBalance::Payout`, `V2::Core::Account::Configuration::Merchant::Capability::SwishPayment`, `V2::Core::Account::Configuration::Merchant::Capability::TwintPayment`, `V2::Core::Account::Configuration::Merchant::Capability::UsBankTransferPayment`, `V2::Core::Account::Configuration::Merchant::Capability::ZipPayment`, `V2::Core::Account::Configuration::Recipient::Capability::BankAccount::Instant`, `V2::Core::Account::Configuration::Recipient::Capability::BankAccount::Local`, `V2::Core::Account::Configuration::Recipient::Capability::BankAccount::Wire`, `V2::Core::Account::Configuration::Recipient::Capability::Card`, `V2::Core::Account::Configuration::Recipient::Capability::CryptoWallet`, `V2::Core::Account::Configuration::Recipient::Capability::PaperCheck`, `V2::Core::Account::Configuration::Recipient::Capability::StripeBalance::Payout`, `V2::Core::Account::Configuration::Recipient::Capability::StripeBalance::StripeTransfer`, `V2::Core::Account::Configuration::Storer::Capability::Consumer::HoldsCurrency::Usd`, `V2::Core::Account::Configuration::Storer::Capability::FinancialAddress::BankAccount`, `V2::Core::Account::Configuration::Storer::Capability::FinancialAddress::CryptoWallet`, `V2::Core::Account::Configuration::Storer::Capability::HoldsCurrency::Eur`, `V2::Core::Account::Configuration::Storer::Capability::HoldsCurrency::Gbp`, `V2::Core::Account::Configuration::Storer::Capability::HoldsCurrency::Usd`, `V2::Core::Account::Configuration::Storer::Capability::HoldsCurrency::Usdc`, `V2::Core::Account::Configuration::Storer::Capability::InboundTransfer::BankAccount`, `V2::Core::Account::Configuration::Storer::Capability::OutboundPayment::BankAccount`, `V2::Core::Account::Configuration::Storer::Capability::OutboundPayment::Card`, `V2::Core::Account::Configuration::Storer::Capability::OutboundPayment::CryptoWallet`, `V2::Core::Account::Configuration::Storer::Capability::OutboundPayment::FinancialAccount`, `V2::Core::Account::Configuration::Storer::Capability::OutboundPayment::PaperCheck`, `V2::Core::Account::Configuration::Storer::Capability::OutboundTransfer::BankAccount`, `V2::Core::Account::Configuration::Storer::Capability::OutboundTransfer::CryptoWallet`, `V2::Core::Account::Configuration::Storer::Capability::OutboundTransfer::FinancialAccount`, `V2::Core::AccountCreateParams::Configuration::CardCreator::Capability::Commercial::Celtic::ChargeCard`, `V2::Core::AccountCreateParams::Configuration::CardCreator::Capability::Commercial::Celtic::SpendCard`, `V2::Core::AccountCreateParams::Configuration::CardCreator::Capability::Commercial::CrossRiverBank::ChargeCard`, `V2::Core::AccountCreateParams::Configuration::CardCreator::Capability::Commercial::CrossRiverBank::PrepaidCard`, `V2::Core::AccountCreateParams::Configuration::CardCreator::Capability::Commercial::CrossRiverBank::SpendCard`, `V2::Core::AccountCreateParams::Configuration::CardCreator::Capability::Commercial::FifthThird::ChargeCard`, `V2::Core::AccountCreateParams::Configuration::CardCreator::Capability::Commercial::Lead::PrepaidCard`, `V2::Core::AccountCreateParams::Configuration::CardCreator::Capability::Commercial::Stripe::ChargeCard`, `V2::Core::AccountCreateParams::Configuration::CardCreator::Capability::Commercial::Stripe::PrepaidCard`, `V2::Core::AccountCreateParams::Configuration::CardCreator::Capability::Consumer::Celtic::RevolvingCreditCard`, `V2::Core::AccountCreateParams::Configuration::CardCreator::Capability::Consumer::CrossRiverBank::PrepaidCard`, `V2::Core::AccountCreateParams::Configuration::CardCreator::Capability::Consumer::Lead::DebitCard`, `V2::Core::AccountCreateParams::Configuration::CardCreator::Capability::Consumer::Lead::PrepaidCard`, `V2::Core::AccountCreateParams::Configuration::Customer::Capability::AutomaticIndirectTax`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::AchDebitPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::AcssDebitPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::AffirmPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::AfterpayClearpayPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::AlmaPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::AmazonPayPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::AuBecsDebitPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::BacsDebitPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::BancontactPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::BlikPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::BoletoPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::CardPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::CartesBancairesPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::CashappPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::EpsPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::FpxPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::GbBankTransferPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::GrabpayPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::IdealPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::JcbPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::JpBankTransferPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::KakaoPayPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::KlarnaPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::KonbiniPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::KrCardPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::LinkPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::MobilepayPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::MultibancoPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::MxBankTransferPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::NaverPayPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::OxxoPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::P24Payment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::PayByBankPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::PaycoPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::PaynowPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::PromptpayPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::RevolutPayPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::SamsungPayPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::SepaBankTransferPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::SepaDebitPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::SwishPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::TwintPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::UsBankTransferPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability::ZipPayment`, `V2::Core::AccountCreateParams::Configuration::Recipient::Capability::BankAccount::Instant`, `V2::Core::AccountCreateParams::Configuration::Recipient::Capability::BankAccount::Local`, `V2::Core::AccountCreateParams::Configuration::Recipient::Capability::BankAccount::Wire`, `V2::Core::AccountCreateParams::Configuration::Recipient::Capability::Card`, `V2::Core::AccountCreateParams::Configuration::Recipient::Capability::CryptoWallet`, `V2::Core::AccountCreateParams::Configuration::Recipient::Capability::PaperCheck`, `V2::Core::AccountCreateParams::Configuration::Recipient::Capability::StripeBalance::StripeTransfer`, `V2::Core::AccountCreateParams::Configuration::Storer::Capability::Consumer::HoldsCurrency::Usd`, `V2::Core::AccountCreateParams::Configuration::Storer::Capability::FinancialAddress::BankAccount`, `V2::Core::AccountCreateParams::Configuration::Storer::Capability::FinancialAddress::CryptoWallet`, `V2::Core::AccountCreateParams::Configuration::Storer::Capability::HoldsCurrency::Eur`, `V2::Core::AccountCreateParams::Configuration::Storer::Capability::HoldsCurrency::Gbp`, `V2::Core::AccountCreateParams::Configuration::Storer::Capability::HoldsCurrency::Usd`, `V2::Core::AccountCreateParams::Configuration::Storer::Capability::HoldsCurrency::Usdc`, `V2::Core::AccountCreateParams::Configuration::Storer::Capability::InboundTransfer::BankAccount`, `V2::Core::AccountCreateParams::Configuration::Storer::Capability::OutboundPayment::BankAccount`, `V2::Core::AccountCreateParams::Configuration::Storer::Capability::OutboundPayment::Card`, `V2::Core::AccountCreateParams::Configuration::Storer::Capability::OutboundPayment::CryptoWallet`, `V2::Core::AccountCreateParams::Configuration::Storer::Capability::OutboundPayment::FinancialAccount`, `V2::Core::AccountCreateParams::Configuration::Storer::Capability::OutboundPayment::PaperCheck`, `V2::Core::AccountCreateParams::Configuration::Storer::Capability::OutboundTransfer::BankAccount`, `V2::Core::AccountCreateParams::Configuration::Storer::Capability::OutboundTransfer::CryptoWallet`, `V2::Core::AccountCreateParams::Configuration::Storer::Capability::OutboundTransfer::FinancialAccount`, `V2::Core::AccountUpdateParams::Configuration::CardCreator::Capability::Commercial::Celtic::ChargeCard`, `V2::Core::AccountUpdateParams::Configuration::CardCreator::Capability::Commercial::Celtic::SpendCard`, `V2::Core::AccountUpdateParams::Configuration::CardCreator::Capability::Commercial::CrossRiverBank::ChargeCard`, `V2::Core::AccountUpdateParams::Configuration::CardCreator::Capability::Commercial::CrossRiverBank::PrepaidCard`, `V2::Core::AccountUpdateParams::Configuration::CardCreator::Capability::Commercial::CrossRiverBank::SpendCard`, `V2::Core::AccountUpdateParams::Configuration::CardCreator::Capability::Commercial::FifthThird::ChargeCard`, `V2::Core::AccountUpdateParams::Configuration::CardCreator::Capability::Commercial::Lead::PrepaidCard`, `V2::Core::AccountUpdateParams::Configuration::CardCreator::Capability::Commercial::Stripe::ChargeCard`, `V2::Core::AccountUpdateParams::Configuration::CardCreator::Capability::Commercial::Stripe::PrepaidCard`, `V2::Core::AccountUpdateParams::Configuration::CardCreator::Capability::Consumer::Celtic::RevolvingCreditCard`, `V2::Core::AccountUpdateParams::Configuration::CardCreator::Capability::Consumer::CrossRiverBank::PrepaidCard`, `V2::Core::AccountUpdateParams::Configuration::CardCreator::Capability::Consumer::Lead::DebitCard`, `V2::Core::AccountUpdateParams::Configuration::CardCreator::Capability::Consumer::Lead::PrepaidCard`, `V2::Core::AccountUpdateParams::Configuration::Customer::Capability::AutomaticIndirectTax`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::AchDebitPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::AcssDebitPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::AffirmPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::AfterpayClearpayPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::AlmaPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::AmazonPayPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::AuBecsDebitPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::BacsDebitPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::BancontactPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::BlikPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::BoletoPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::CardPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::CartesBancairesPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::CashappPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::EpsPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::FpxPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::GbBankTransferPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::GrabpayPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::IdealPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::JcbPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::JpBankTransferPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::KakaoPayPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::KlarnaPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::KonbiniPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::KrCardPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::LinkPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::MobilepayPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::MultibancoPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::MxBankTransferPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::NaverPayPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::OxxoPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::P24Payment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::PayByBankPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::PaycoPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::PaynowPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::PromptpayPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::RevolutPayPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::SamsungPayPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::SepaBankTransferPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::SepaDebitPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::SwishPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::TwintPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::UsBankTransferPayment`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability::ZipPayment`, `V2::Core::AccountUpdateParams::Configuration::Recipient::Capability::BankAccount::Instant`, `V2::Core::AccountUpdateParams::Configuration::Recipient::Capability::BankAccount::Local`, `V2::Core::AccountUpdateParams::Configuration::Recipient::Capability::BankAccount::Wire`, `V2::Core::AccountUpdateParams::Configuration::Recipient::Capability::Card`, `V2::Core::AccountUpdateParams::Configuration::Recipient::Capability::CryptoWallet`, `V2::Core::AccountUpdateParams::Configuration::Recipient::Capability::PaperCheck`, `V2::Core::AccountUpdateParams::Configuration::Recipient::Capability::StripeBalance::StripeTransfer`, `V2::Core::AccountUpdateParams::Configuration::Storer::Capability::Consumer::HoldsCurrency::Usd`, `V2::Core::AccountUpdateParams::Configuration::Storer::Capability::FinancialAddress::BankAccount`, `V2::Core::AccountUpdateParams::Configuration::Storer::Capability::FinancialAddress::CryptoWallet`, `V2::Core::AccountUpdateParams::Configuration::Storer::Capability::HoldsCurrency::Eur`, `V2::Core::AccountUpdateParams::Configuration::Storer::Capability::HoldsCurrency::Gbp`, `V2::Core::AccountUpdateParams::Configuration::Storer::Capability::HoldsCurrency::Usd`, `V2::Core::AccountUpdateParams::Configuration::Storer::Capability::HoldsCurrency::Usdc`, `V2::Core::AccountUpdateParams::Configuration::Storer::Capability::InboundTransfer::BankAccount`, `V2::Core::AccountUpdateParams::Configuration::Storer::Capability::OutboundPayment::BankAccount`, `V2::Core::AccountUpdateParams::Configuration::Storer::Capability::OutboundPayment::Card`, `V2::Core::AccountUpdateParams::Configuration::Storer::Capability::OutboundPayment::CryptoWallet`, `V2::Core::AccountUpdateParams::Configuration::Storer::Capability::OutboundPayment::FinancialAccount`, `V2::Core::AccountUpdateParams::Configuration::Storer::Capability::OutboundPayment::PaperCheck`, `V2::Core::AccountUpdateParams::Configuration::Storer::Capability::OutboundTransfer::BankAccount`, `V2::Core::AccountUpdateParams::Configuration::Storer::Capability::OutboundTransfer::CryptoWallet`, and `V2::Core::AccountUpdateParams::Configuration::Storer::Capability::OutboundTransfer::FinancialAccount`

## 19.3.0-alpha.3 - 2026-06-10
This release changes the pinned API version to `2026-06-10.preview`.

* ⚠️ [#1876](https://github.com/stripe/stripe-ruby/pull/1876) Update generated code for private-preview
  * Add support for new resources `GiftCardOperation`, `GiftCard`, and `TaxFund`
  * Add support for `retrieve` method on resource `GiftCardOperation`
  * Add support for `activate`, `cashout`, `check_balance`, `create`, `reload`, `retrieve`, and `void_operation` methods on resource `GiftCard`
  * Add support for `list` and `retrieve` methods on resource `TaxFund`
  * Add support for `update_crypto_refund_address` method on resource `PaymentIntent`
  * Add support for `performance_location_details` on `Tax::CalculationCreateParams::LineItem`, `Tax::CalculationLineItem`, and `Tax::TransactionLineItem`
  * ⚠️ Remove support for `money_services` on `ChargeCaptureParams::PaymentDetail`, `ChargeUpdateParams::PaymentDetail`, and `PaymentIntentCaptureParams::PaymentDetail`
  * Add support for `fr_meal_voucher` on `Charge::PaymentMethodDetail::Card::Benefit`
  * Add support for `multicapture` on `Charge::PaymentMethodDetail::CardPresent`, `ConfirmationToken::PaymentMethodPreview::Card::GeneratedFrom::PaymentMethodDetail::CardPresent`, `PaymentAttemptRecord::PaymentMethodDetail::CardPresent`, `PaymentMethod::Card::GeneratedFrom::PaymentMethodDetail::CardPresent`, and `PaymentRecord::PaymentMethodDetail::CardPresent`
  * Add support for `pix` on `Checkout::Session::CurrentAttempt::PaymentMethodDetail`
  * Add support for `provisional_credit` on `Issuing::DisputeUpdateParams` and `Issuing::Dispute`
  * Add support for `reason` on `PaymentAttemptRecordReportCanceledParams` and `PaymentRecordReportPaymentAttemptCanceledParams`
  * Add support for `fiserv_valuelink`, `givex`, and `svs` on `PaymentAttemptRecord::ProcessorDetail` and `PaymentRecord::ProcessorDetail`
  * ⚠️ Change type of `PaymentAttemptRecord::ProcessorDetail.type` and `PaymentRecord::ProcessorDetail.type` from `literal('custom')` to `enum('custom'|'fiserv_valuelink'|'givex'|'svs')`
  * Add support for `capture_by` and `capture_delay` on `PaymentIntent::PaymentMethodOption::CardPresent`, `PaymentIntent::PaymentMethodOption::Card`, `PaymentIntentConfirmParams::PaymentMethodOption::CardPresent`, `PaymentIntentConfirmParams::PaymentMethodOption::Card`, `PaymentIntentCreateParams::PaymentMethodOption::CardPresent`, `PaymentIntentCreateParams::PaymentMethodOption::Card`, `PaymentIntentUpdateParams::PaymentMethodOption::CardPresent`, and `PaymentIntentUpdateParams::PaymentMethodOption::Card`
  * ⚠️ Remove support for `liquid_asset` on `PaymentIntentConfirmParams::PaymentMethodOption::Card::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentConfirmParams::PaymentMethodOption::CardPresent::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentCreateParams::PaymentMethodOption::Card::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentCreateParams::PaymentMethodOption::CardPresent::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentUpdateParams::PaymentMethodOption::Card::PaymentDetail::MoneyService::AccountFunding`, and `PaymentIntentUpdateParams::PaymentMethodOption::CardPresent::PaymentDetail::MoneyService::AccountFunding`
  * Add support for `request_multicapture` on `PaymentIntent::PaymentMethodOption::CardPresent`, `PaymentIntentConfirmParams::PaymentMethodOption::CardPresent`, `PaymentIntentCreateParams::PaymentMethodOption::CardPresent`, and `PaymentIntentUpdateParams::PaymentMethodOption::CardPresent`
  * Add support for `ignore_application_fee`, `ignore_transfer_data`, and `request_partial_authorization` on `PaymentIntentConfirmParams::PaymentMethodOption::GiftCard`, `PaymentIntentCreateParams::PaymentMethodOption::GiftCard`, and `PaymentIntentUpdateParams::PaymentMethodOption::GiftCard`
  * Change `PaymentIntentConfirmParams::PaymentDetail::Benefit::FrMealVoucher.siret`, `PaymentIntentCreateParams::PaymentDetail::Benefit::FrMealVoucher.siret`, `PaymentIntentUpdateParams::PaymentDetail::Benefit::FrMealVoucher.siret`, `SetupIntentConfirmParams::SetupDetail::Benefit::FrMealVoucher.siret`, `SetupIntentCreateParams::SetupDetail::Benefit::FrMealVoucher.siret`, and `SetupIntentUpdateParams::SetupDetail::Benefit::FrMealVoucher.siret` to be optional
  * Add support for `latest_payment_attempt_record` and `payment_record` on `PaymentIntent`
  * ⚠️ Remove support for `reauthorization` and `reauthorize_before` on `PaymentIntent::AdvancedFeatureDetail`
  * Add support for `refund_address` on `PaymentIntent::NextAction::CryptoDisplayDetail::DepositAddress::Base`, `PaymentIntent::NextAction::CryptoDisplayDetail::DepositAddress::Solana`, and `PaymentIntent::NextAction::CryptoDisplayDetail::DepositAddress::Tempo`
  * Add support for `location` on `PaymentIntent::PaymentDetail` and `SetupIntent::SetupDetail`
  * Add support for `data` on `Radar::AccountEvaluationCreateParams::LoginInitiated::ClientDeviceMetadataDetail`, `Radar::AccountEvaluationCreateParams::RegistrationInitiated::ClientDeviceMetadataDetail`, and `Radar::CustomerEvaluationCreateParams::EvaluationContext::ClientDetail`
  * Change `Radar::AccountEvaluationCreateParams::LoginInitiated::ClientDeviceMetadataDetail.radar_session`, `Radar::AccountEvaluationCreateParams::RegistrationInitiated::ClientDeviceMetadataDetail.radar_session`, and `Radar::CustomerEvaluationCreateParams::EvaluationContext::ClientDetail.radar_session` to be optional
  * ⚠️ Change type of `V2::Core::FeeBatch::Adjustment.tax_adjustment` from `amount` to `an object`
  * ⚠️ Change type of `V2::Core::FeeBatch.amount`, `V2::Core::FeeBatch::CollectionRecord.amount`, `V2::Core::FeeBatch::CollectionRecord::Tax.amount`, `V2::Core::FeeBatch::Tax.amount`, `V2::Core::FeeEntry.amount`, and `V2::Core::FeeEntry::Tax.amount` from `amount` to `an object`
  * Add support for `tax_fund` on `V2::MoneyManagement::Transaction::Flow` and `V2::MoneyManagement::TransactionEntry::TransactionDetail::Flow`

## 19.3.0-alpha.2 - 2026-06-03
This release changes the pinned API version to `2026-06-03.preview`.

* ⚠️ [#1870](https://github.com/stripe/stripe-ruby/pull/1870) Update generated code for private-preview
  * Add support for new resources `DelegatedCheckout::OrderEvent`, `DelegatedCheckout::Order`, `V2::Billing::ContractLicensePricingQuantityChange`, `V2::Billing::Contract`, and `V2::Signals::AccountSignal`
  * Add support for `retrieve` method on resource `DelegatedCheckout::Order`
  * Add support for `list_orders` method on resource `DelegatedCheckout::RequestedSession`
  * Add support for `list` and `retrieve` methods on resource `V2::Signals::AccountSignal`
  * Add support for `activate`, `cancel`, `create`, `list`, `retrieve`, and `update` methods on resource `V2::Billing::Contract`
  * Add support for `birth_address` on `AccountCreateParams::Individual`, `AccountPersonCreateParams`, `AccountPersonUpdateParams`, `AccountUpdateParams::Individual`, `Person`, `TokenCreateParams::Account::Individual`, and `TokenCreateParams::Person`
  * Change type of `ChargeCaptureParams::PaymentDetail::MoneyService.transaction_type`, `ChargeUpdateParams::PaymentDetail::MoneyService.transaction_type`, `PaymentIntentCaptureParams::PaymentDetail::MoneyService.transaction_type`, `PaymentIntentConfirmParams::PaymentDetail::MoneyService.transaction_type`, `PaymentIntentCreateParams::PaymentDetail::MoneyService.transaction_type`, and `PaymentIntentUpdateParams::PaymentDetail::MoneyService.transaction_type` from `literal('account_funding')` to `enum('account_funding'|'debt_repayment')`
  * Add support for `provisioning_decision` and `token_type` on `Issuing::Authorization::TokenDetail` and `Issuing::Token`
  * Add support for `token_decision_recommendation` on `Issuing::Authorization::TokenDetail::NetworkDatum::Visa` and `Issuing::Token::NetworkDatum::Visa`
  * Add support for `language` on `Issuing::Token::NetworkDatum::Device`
  * Add support for `digital_asset_category` on `PaymentIntentConfirmParams::PaymentMethodOption::Card::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentConfirmParams::PaymentMethodOption::CardPresent::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentCreateParams::PaymentMethodOption::Card::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentCreateParams::PaymentMethodOption::CardPresent::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentUpdateParams::PaymentMethodOption::Card::PaymentDetail::MoneyService::AccountFunding`, and `PaymentIntentUpdateParams::PaymentMethodOption::CardPresent::PaymentDetail::MoneyService::AccountFunding`
  * Add support for `static_address` on `PaymentIntent::PaymentMethodOption::Crypto::DepositOption`, `PaymentIntentConfirmParams::PaymentMethodOption::Crypto::DepositOption`, `PaymentIntentCreateParams::PaymentMethodOption::Crypto::DepositOption`, and `PaymentIntentUpdateParams::PaymentMethodOption::Crypto::DepositOption`
  * Add support for `payment_reference` on `PaymentIntentCreateParams::PaymentsOrchestration`
  * ⚠️ Remove support for `payment_details` on `PaymentIntentCreateParams::PaymentsOrchestration`
  * ⚠️ Change type of `PaymentIntent::PaymentDetail::MoneyService.transaction_type` from `literal('account_funding')` to `enum('account_funding'|'debt_repayment')`
  * Add support for `ending_before`, `limit`, and `starting_after` on `PaymentLocationListParams`
  * ⚠️ Change `Radar::IssuingAuthorizationEvaluationCreateParams::CardDetail.last4` to be required
  * Add support for `schema` on `V2::Data::Reporting::QueryRun::Result::File` and `V2::Reporting::ReportRun::Result::File`
  * Add support for `include` on `V2::Data::Reporting::QueryRunRetrieveParams` and `V2::Reporting::ReportRunRetrieveParams`
  * Add support for `requirements_collector` on `V2::Core::AccountCreateParams::Default::Responsibility` and `V2::Core::AccountUpdateParams::Default::Responsibility`
  * Add support for event notification `V2SignalsAccountSignalMerchantDelinquencyReadyEvent` with related object `V2::Signals::AccountSignal`

## 19.3.0-alpha.1 - 2026-05-27
This release changes the pinned API version to `2026-05-27.preview`.

* ⚠️ [#1868](https://github.com/stripe/stripe-ruby/pull/1868) Update generated code for private-preview
  * Change type of `Billing::AlertCreateParams::SpendThreshold.group_by` from `literal('pricing_plan_subscription')` to `enum('billing_cadence'|'pricing_plan_subscription')`
  * ⚠️ Change type of `Billing::Alert::SpendThreshold.group_by` from `literal('pricing_plan_subscription')` to `enum('billing_cadence'|'pricing_plan_subscription')`
  * Change `DelegatedCheckout::RequestedSession.affiliate_attributions` to be required
  * Add support for `wechat_pay` on `Invoice::PaymentSetting::PaymentMethodOption`, `InvoiceCreateParams::PaymentSetting::PaymentMethodOption`, `InvoiceUpdateParams::PaymentSetting::PaymentMethodOption`, `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption`, `Subscription::PaymentSetting::PaymentMethodOption`, `SubscriptionCreateParams::PaymentSetting::PaymentMethodOption`, and `SubscriptionUpdateParams::PaymentSetting::PaymentMethodOption`
  * Add support for `gift_card` on `PaymentIntent::PaymentMethodOption`, `PaymentIntentConfirmParams::PaymentMethodOption`, `PaymentIntentCreateParams::PaymentMethodOption`, and `PaymentIntentUpdateParams::PaymentMethodOption`
  * Add support for `payment_details` on `PaymentIntentCreateParams::PaymentsOrchestration`
  * Add support for `enabled` on `PaymentIntent::PaymentDetail::Benefit::FrMealVoucher` and `SetupIntent::SetupDetail::Benefit::FrMealVoucher`
  * ⚠️ Remove support for `login_failed`, `registration_failed`, `registration_success`, and `type` on `Radar::CustomerEvaluationUpdateParams`
  * ⚠️ Remove support for `latest_version` on `V2::Billing::LicenseFee`, `V2::Billing::PricingPlan`, and `V2::Billing::RateCard`
  * ⚠️ Remove support for `service_interval_count` and `service_interval` on `V2::Billing::LicenseFee` and `V2::Billing::RateCard`
  * Add support for `debit_agreement` on `V2::MoneyManagement::ReceivedCredit::StripeBalancePayment`
  * Add support for `canonical_path` on `EventsV2CoreHealthTrafficVolumeDropFiringEvent` and `EventsV2CoreHealthTrafficVolumeDropResolvedEvent`
  * Add support for event notifications `V2CoreHealthElementsErrorFiringEvent`, `V2CoreHealthElementsErrorResolvedEvent`, `V2CoreHealthInvoiceCountDroppedFiringEvent`, and `V2CoreHealthInvoiceCountDroppedResolvedEvent`

## 19.2.0-alpha.6 - 2026-05-20
* ⚠️ [#1865](https://github.com/stripe/stripe-ruby/pull/1865) Update generated code for private-preview
  * Add support for new resource `PaymentLocationCapability`
  * Add support for `list`, `retrieve`, and `update` methods on resource `PaymentLocationCapability`
  * Add support for `close` and `simulate_network_lifecycle_dispute_response` test helper methods on resource `Issuing::Dispute`
  * Change type of `DelegatedCheckout::RequestedSessionUpdateParams::Discount.codes` from `array(string)` to `emptyable(array(string))`
  * ⚠️ Remove support for `credited_items` on `InvoiceItem::ProrationDetail`
  * Add support for `balance_response` on `Issuing::Authorization`
  * Add support for `payment_evaluations` on `PaymentAttemptRecordReportCanceledParams`, `PaymentAttemptRecordReportFailedParams`, `PaymentRecordReportPaymentAttemptCanceledParams`, `PaymentRecordReportPaymentAttemptFailedParams`, `PaymentRecordReportPaymentAttemptParams::Failed`, and `PaymentRecordReportPaymentParams::Failed`
  * Add support for `enabled` on `PaymentIntentConfirmParams::PaymentDetail::Benefit::FrMealVoucher`, `PaymentIntentCreateParams::PaymentDetail::Benefit::FrMealVoucher`, `PaymentIntentUpdateParams::PaymentDetail::Benefit::FrMealVoucher`, `SetupIntentConfirmParams::SetupDetail::Benefit::FrMealVoucher`, `SetupIntentCreateParams::SetupDetail::Benefit::FrMealVoucher`, and `SetupIntentUpdateParams::SetupDetail::Benefit::FrMealVoucher`
  * Add support for `advanced_feature_details` and `allowed_payment_method_types` on `PaymentIntent`
  * Change type of `PaymentLocationUpdateParams::Address.city` from `string` to `emptyable(string)`
  * Change type of `PaymentLocationUpdateParams::Address.line1` from `string` to `emptyable(string)`
  * Change type of `PaymentLocationUpdateParams::Address.line2` from `string` to `emptyable(string)`
  * Change type of `PaymentLocationUpdateParams::Address.postal_code` from `string` to `emptyable(string)`
  * Change type of `PaymentLocationUpdateParams::Address.state` from `string` to `emptyable(string)`
  * Change `SubscriptionPauseParams.type` to be optional
  * ⚠️ Remove support for `payment_behavior` on `SubscriptionResumeParams`
  * ⚠️ Remove support for `status_details` on `Subscription`

## 19.2.0-alpha.5 - 2026-05-13
* ⚠️ [#1863](https://github.com/stripe/stripe-ruby/pull/1863) Update generated code for private-preview
  * Add support for new resources `V2::Core::FeeBatch`, `V2::Core::FeeEntry`, `V2::MoneyManagement::DebitDispute`, and `V2::MoneyManagement::FinancialAccountStatement`
  * Add support for `simulate_network_lifecycle_pre_arbitration_response` and `simulate_network_lifecycle_pre_arbitration_submission` test helper methods on resource `Issuing::Dispute`
  * Add support for `list` method on resource `PaymentLocation`
  * Add support for `list` and `retrieve` methods on resources `V2::Core::FeeBatch`, `V2::Core::FeeEntry`, and `V2::MoneyManagement::FinancialAccountStatement`
  * Add support for `create`, `list`, and `retrieve` methods on resource `V2::MoneyManagement::DebitDispute`
  * Add support for `discounts` on `DelegatedCheckout::RequestedSessionCreateParams`, `DelegatedCheckout::RequestedSessionUpdateParams`, and `DelegatedCheckout::RequestedSession`
  * Add support for `amount_sale` on `DelegatedCheckout::RequestedSession::LineItemDetail` and `DelegatedCheckout::RequestedSession::TotalDetail`
  * Add support for `amount_discount` and `breakdown` on `DelegatedCheckout::RequestedSession::TotalDetail`
  * ⚠️ Remove support for `check_deposit_address` on `Invoice::PaymentSetting::PaymentMethodOption::CheckScan`, `InvoiceCreateParams::PaymentSetting::PaymentMethodOption::CheckScan`, `InvoiceUpdateParams::PaymentSetting::PaymentMethodOption::CheckScan`, `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption::CheckScan`, `Subscription::PaymentSetting::PaymentMethodOption::CheckScan`, `SubscriptionCreateParams::PaymentSetting::PaymentMethodOption::CheckScan`, and `SubscriptionUpdateParams::PaymentSetting::PaymentMethodOption::CheckScan`
  * Add support for `payment_evaluations` on `PaymentAttemptRecordReportGuaranteedParams`, `PaymentRecordReportPaymentAttemptGuaranteedParams`, `PaymentRecordReportPaymentAttemptParams::Guaranteed`, and `PaymentRecordReportPaymentParams::Guaranteed`
  * Add support for `location` on `PaymentIntentConfirmParams::PaymentDetail`, `PaymentIntentCreateParams::PaymentDetail`, `PaymentIntentUpdateParams::PaymentDetail`, `SetupIntentConfirmParams::SetupDetail`, `SetupIntentCreateParams::SetupDetail`, and `SetupIntentUpdateParams::SetupDetail`
  * Add support for `onboarding_data_update_acknowledged` on `PaymentLocationUpdateParams`
  * Change `PaymentLocationCreateParams::Address.country` and `PaymentLocationUpdateParams::Address.country` to be optional
  * Add support for `customer` on `Radar::CustomerEvaluationUpdateParams`
  * Add support for `status` on `Radar::CustomerEvaluationUpdateParams` and `Radar::CustomerEvaluation`
  * Change `Radar::CustomerEvaluationUpdateParams.type` to be optional
  * Add support for `payment_behavior` on `SubscriptionResumeParams`
  * Add support for `dispute_details` on `V2::MoneyManagement::ReceivedDebit`
  * Add support for `debit_dispute` on `V2::MoneyManagement::Transaction::Flow` and `V2::MoneyManagement::TransactionEntry::TransactionDetail::Flow`
  * Add support for `payment_attempt_record` on `EventsV2PaymentsOffSessionPaymentAttemptFailedEvent` and `EventsV2PaymentsOffSessionPaymentFailedEvent`
  * Add support for event notifications `V2MoneyManagementFinancialAccountStatementCreatedEvent` and `V2MoneyManagementFinancialAccountStatementRestatedEvent` with related object `V2::MoneyManagement::FinancialAccountStatement`

## 19.2.0-alpha.4 - 2026-05-06
* [#1862](https://github.com/stripe/stripe-ruby/pull/1862) Add EventNotificationHandler (private preview)
* [#1861](https://github.com/stripe/stripe-ruby/pull/1861) Update generated code for private-preview
  * Add support for new resource `PaymentLocation`
  * Add support for `create`, `delete`, `retrieve`, and `update` methods on resource `PaymentLocation`
  * Add support for `protections` on `AccountCreateParams::Capability::CardPayment`, `AccountUpdateParams::Capability::CardPayment`, and `Capability`
  * Add support for `gift_card` on `ConfirmationToken::PaymentMethodPreview`, `ConfirmationTokenCreateParams::PaymentMethodDatum`, `PaymentIntentConfirmParams::PaymentMethodDatum`, `PaymentIntentCreateParams::PaymentMethodDatum`, `PaymentIntentUpdateParams::PaymentMethodDatum`, `PaymentMethodCreateParams`, `PaymentMethod`, `SetupIntentConfirmParams::PaymentMethodDatum`, `SetupIntentCreateParams::PaymentMethodDatum`, `SetupIntentUpdateParams::PaymentMethodDatum`, and `SharedPayment::GrantedToken::PaymentMethodDetail`
  * Add support for `metadata` on `DelegatedCheckout::RequestedSessionConfirmParams`
  * Add support for `credited_items` on `InvoiceItem::ProrationDetail`
  * Add support for `network_lifecycle` on `Issuing::Dispute`
  * Add support for `status_details` on `Subscription`

## 19.2.0-alpha.3 - 2026-04-28
* [#1858](https://github.com/stripe/stripe-ruby/pull/1858) Update generated code for private-preview
  * Add support for `debit_card` on `V2::Core::Account::Configuration::CardCreator::Capability::Consumer::Lead`, `V2::Core::Account::Identity::Attestation::TermsOfService::CardCreator::Consumer::Lead`, `V2::Core::AccountCreateParams::Configuration::CardCreator::Capability::Consumer::Lead`, `V2::Core::AccountCreateParams::Identity::Attestation::TermsOfService::CardCreator::Consumer::Lead`, `V2::Core::AccountUpdateParams::Configuration::CardCreator::Capability::Consumer::Lead`, and `V2::Core::AccountUpdateParams::Identity::Attestation::TermsOfService::CardCreator::Consumer::Lead`

## 19.2.0-alpha.2 - 2026-04-28
* ⚠️ [#1856](https://github.com/stripe/stripe-ruby/pull/1856) Update generated code for private-preview
  * Add support for new resource `V2::Data::Analytics::MetricQueryResult`
  * Add support for `create`, `retrieve`, and `revoke` methods on resource `SharedPayment::IssuedToken`
  * Add support for `create` method on resource `V2::Data::Analytics::MetricQueryResult`
  * Add support for `balance_report` and `payout_reconciliation_report` on `AccountSession::Component` and `AccountSessionCreateParams::Component`
  * Add support for `app_distribution` and `sunbit_payments` on `Account::Capability`, `AccountCreateParams::Capability`, and `AccountUpdateParams::Capability`
  * Add support for `sunbit` on `Charge::PaymentMethodDetail`, `ConfirmationToken::PaymentMethodPreview`, `ConfirmationTokenCreateParams::PaymentMethodDatum`, `PaymentAttemptRecord::PaymentMethodDetail`, `PaymentIntentConfirmParams::PaymentMethodDatum`, `PaymentIntentCreateParams::PaymentMethodDatum`, `PaymentIntentUpdateParams::PaymentMethodDatum`, `PaymentMethodConfigurationCreateParams`, `PaymentMethodConfigurationUpdateParams`, `PaymentMethodConfiguration`, `PaymentMethodCreateParams`, `PaymentMethod`, `PaymentRecord::PaymentMethodDetail`, `SetupIntentConfirmParams::PaymentMethodDatum`, `SetupIntentCreateParams::PaymentMethodDatum`, and `SetupIntentUpdateParams::PaymentMethodDatum`
  * Add support for `last4` on `Charge::PaymentMethodDetail::GiftCard`, `PaymentAttemptRecord::PaymentMethodDetail::GiftCard`, and `PaymentRecord::PaymentMethodDetail::GiftCard`
  * Add support for `location` and `reader` on `Charge::PaymentMethodDetail::Klarna`, `PaymentAttemptRecord::PaymentMethodDetail::Klarna`, and `PaymentRecord::PaymentMethodDetail::Klarna`
  * Add support for `blik` on `Checkout::SessionCreateParams::PaymentMethodOption`, `Invoice::PaymentSetting::PaymentMethodOption`, `InvoiceCreateParams::PaymentSetting::PaymentMethodOption`, `InvoiceUpdateParams::PaymentSetting::PaymentMethodOption`, `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption`, `Subscription::PaymentSetting::PaymentMethodOption`, `SubscriptionCreateParams::PaymentSetting::PaymentMethodOption`, and `SubscriptionUpdateParams::PaymentSetting::PaymentMethodOption`
  * Change `Checkout::Session.managed_payments`, `PaymentIntent.managed_payments`, `PaymentLink.managed_payments`, and `Subscription.managed_payments` to be required
  * Add support for `shared_payment_granted_token` on `ConfirmationTokenCreateParams::PaymentMethodDatum`, `PaymentIntentConfirmParams::PaymentMethodDatum`, `PaymentIntentCreateParams::PaymentMethodDatum`, `PaymentIntentUpdateParams::PaymentMethodDatum`, `PaymentMethod`, `SetupIntentConfirmParams::PaymentMethodDatum`, `SetupIntentCreateParams::PaymentMethodDatum`, and `SetupIntentUpdateParams::PaymentMethodDatum`
  * Change type of `CreditNote::TotalTax::TaxRateDetail.tax_rate`, `CreditNoteLineItem::Tax::TaxRateDetail.tax_rate`, `Invoice::TotalTax::TaxRateDetail.tax_rate`, `InvoiceLineItem::Tax::TaxRateDetail.tax_rate`, and `QuotePreviewInvoice::TotalTax::TaxRateDetail.tax_rate` from `string` to `expandable($TaxRate)`
  * Add support for `buyer_consents` on `DelegatedCheckout::RequestedSessionConfirmParams`
  * Add support for `consents` on `DelegatedCheckout::RequestedSession::BuyerConsent::Marketing`
  * Change `Invoice::PaymentSetting::PaymentMethodOption.pix`, `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption.pix`, and `Subscription::PaymentSetting::PaymentMethodOption.pix` to be required
  * Change `Invoice::PaymentSetting::PaymentMethodOption.upi`, `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption.upi`, and `Subscription::PaymentSetting::PaymentMethodOption.upi` to be required
  * Add support for `payment_facilitator_id` and `sub_merchant_id` on `Issuing::AuthorizationCreateParams::MerchantDatum`, `Issuing::TransactionCreateForceCaptureParams::MerchantDatum`, and `Issuing::TransactionCreateUnlinkedRefundParams::MerchantDatum`
  * Add support for `card_presence` on `Issuing::Authorization`
  * Add support for `allowed_card_presences` and `blocked_card_presences` on `Issuing::Card::SpendingControl`, `Issuing::CardCreateParams::SpendingControl`, `Issuing::CardUpdateParams::SpendingControl`, `Issuing::Cardholder::SpendingControl`, `Issuing::CardholderCreateParams::SpendingControl`, and `Issuing::CardholderUpdateParams::SpendingControl`
  * ⚠️ Change type of `PaymentAttemptRecord::PaymentMethodDetail::GiftCard.balance` and `PaymentRecord::PaymentMethodDetail::GiftCard.balance` from `PaymentFlowsPrivatePaymentMethodsGiftCardDeprecatedDetailsResourceBalanceAmount` to `nullable(PaymentsPrimitivesPaymentRecordsResourcePaymentMethodGiftCardDetailsResourceBalance)`
  * ⚠️ Change type of `PaymentAttemptRecord::PaymentMethodDetail::GiftCard.brand` and `PaymentRecord::PaymentMethodDetail::GiftCard.brand` from `enum('fiserv_valuelink'|'givex'|'svs')` to `nullable(enum('fiserv_valuelink'|'givex'|'svs'))`
  * ⚠️ Change type of `PaymentAttemptRecord::PaymentMethodDetail::GiftCard.first6` and `PaymentRecord::PaymentMethodDetail::GiftCard.first6` from `string` to `nullable(string)`
  * ⚠️ Change type of `PaymentAttemptRecord::PaymentMethodDetail::GiftCard.transaction_id` and `PaymentRecord::PaymentMethodDetail::GiftCard.transaction_id` from `string` to `nullable(string)`
  * Add support for `amount_to_confirm` on `PaymentIntentConfirmParams`
  * Add support for `klarna_display_qr_code` on `PaymentIntent::NextAction`
  * Add support for `validation_errors` on `Privacy::RedactionJob`
  * Add support for `tax_details` on `Product`
  * ⚠️ Change type of `Radar::PaymentEvaluation::ClientDeviceMetadataDetail.radar_session` from `string` to `nullable(string)`
  * Add support for `moto` on `SetupAttempt::PaymentMethodDetail::Card`
  * Change `SetupIntent::NextAction::PixDisplayQrCode.data` to be required
  * Change `SetupIntent::NextAction::PixDisplayQrCode.expires_at` to be required
  * Change `SetupIntent::NextAction::PixDisplayQrCode.hosted_instructions_url` to be required
  * Change `SetupIntent::NextAction::PixDisplayQrCode.image_url_png` to be required
  * Change `SetupIntent::NextAction::PixDisplayQrCode.image_url_svg` to be required
  * Add support for `admissions_tax`, `attendance_tax`, `entertainment_tax`, `gross_receipts_tax`, `hospitality_tax`, `luxury_tax`, `resort_tax`, and `tourism_tax` on `Tax::RegistrationCreateParams::CountryOption::Me`
  * Add support for `purpose` on `Treasury::OutboundPaymentCreateParams` and `Treasury::OutboundPayment`
  * Add support for `crypto_wallet` on `V2::MoneyManagement::FinancialAddress::Credential`
  * Add support for `mx_bank_account` on `V2::MoneyManagement::FinancialAddress::Credential` and `V2::MoneyManagement::ReceivedCredit::BankTransfer`
  * Add support for `crypto_wallet_transfer` on `V2::MoneyManagement::ReceivedCredit`
  * Add support for `eu_bank_account` on `V2::MoneyManagement::ReceivedCredit::BankTransfer`
  * Change `V2::Payments::OffSessionPaymentCaptureParams.metadata` and `V2::Payments::OffSessionPaymentCreateParams.metadata` to be optional
  * Add support for `crypto_properties` and `settlement_currency` on `V2::MoneyManagement::FinancialAddressCreateParams`
  * Add support for event notifications `V2CoreApprovalRequestCreatedEvent` and `V2CoreApprovalRequestExpiredEvent` with related object `V2::Core::ApprovalRequest`
  * Add support for event notification `V2ExtendExtensionRunFailedEvent`

## 19.2.0-alpha.1 - 2026-04-24
This release changes the pinned API version to `2026-04-22.preview`.

* ⚠️ [#1852](https://github.com/stripe/stripe-ruby/pull/1852) Update generated code for private-preview
  * Add support for new resources `V2::Commerce::ProductCatalogImport`, `V2::Core::ApprovalRequest`, `V2::Extend::WorkflowRun`, `V2::Extend::Workflow`, `V2::Iam::ActivityLog`, `V2::Network::BusinessProfile`, and `V2::OrchestratedCommerce::Agreement`
  * ⚠️ Remove support for resources `V2::Core::WorkflowRun` and `V2::Core::Workflow`
  * Add support for `confirm`, `create`, `list`, `retrieve`, and `terminate` methods on resource `V2::OrchestratedCommerce::Agreement`
  * Add support for `me` and `retrieve` methods on resource `V2::Network::BusinessProfile`
  * Add support for `list` method on resource `V2::Iam::ActivityLog`
  * Add support for `list` and `retrieve` methods on resource `V2::Extend::WorkflowRun`
  * Add support for `invoke`, `list`, and `retrieve` methods on resource `V2::Extend::Workflow`
  * Add support for `cancel`, `execute`, `list`, `retrieve`, and `submit` methods on resource `V2::Core::ApprovalRequest`
  * Add support for `create` and `retrieve` methods on resource `V2::Commerce::ProductCatalogImport`
  * ⚠️ Remove support for `list` and `retrieve` methods on resource `V2::Core::WorkflowRun`
  * ⚠️ Remove support for `invoke`, `list`, and `retrieve` methods on resource `V2::Core::Workflow`
  * Add support for `renew_onboarding_link` method on resource `V2::Core::ClaimableSandbox`
  * ⚠️ Remove support for `customer` on `SharedPayment::IssuedToken`
  * Change type of `SharedPayment::IssuedToken.payment_method` from `nullable(string)` to `string`
  * Add support for `bill_management` and `send_money` on `AccountSession::Component::Bill::Feature`
  * Add support for `gift_card` on `Charge::PaymentMethodDetail`, `PaymentAttemptRecord::PaymentMethodDetail`, and `PaymentRecord::PaymentMethodDetail`
  * Add support for `custom_payment_method_types` on `Checkout::SessionCreateParams` and `Checkout::Session`
  * Add support for `payment_record` on `Checkout::Session`
  * ⚠️ Remove support for `shared_payment_granted_token` on `ConfirmationTokenCreateParams::PaymentMethodDatum`, `PaymentIntentConfirmParams::PaymentMethodDatum`, `PaymentIntentCreateParams::PaymentMethodDatum`, `PaymentIntentUpdateParams::PaymentMethodDatum`, `PaymentIntent`, `PaymentMethod`, `SetupIntentConfirmParams::PaymentMethodDatum`, `SetupIntentCreateParams::PaymentMethodDatum`, and `SetupIntentUpdateParams::PaymentMethodDatum`
  * Add support for `payment_method` on `ConfirmationToken::PaymentMethodPreview::SepaDebit::GeneratedFrom`, `PaymentMethod::SepaDebit::GeneratedFrom`, and `SharedPayment::GrantedToken::PaymentMethodDetail::SepaDebit::GeneratedFrom`
  * Add support for `return_url` on `DelegatedCheckout::RequestedSessionConfirmParams`
  * Add support for `buyer_consents` on `DelegatedCheckout::RequestedSession`
  * Add support for `crypto_transactions` on `Issuing::Authorization`, `Issuing::Dispute`, and `Issuing::Transaction`
  * Add support for `payment_facilitator_id` and `sub_merchant_id` on `Issuing::Authorization::MerchantDatum` and `Issuing::Transaction::MerchantDatum`
  * Add support for `identifiers` on `OrderCreateParams::LineItem::ProductDatum`, `OrderUpdateParams::LineItem::ProductDatum`, `ProductCreateParams`, `ProductUpdateParams`, and `Product`
  * Add support for `agent_details` on `PaymentIntent`
  * Add support for `external_reference` on `PriceCreateParams` and `PriceUpdateParams`
  * Add support for `login_succeeded` and `registration_succeeded` on `Radar::AccountEvaluation::Event` and `Radar::AccountEvaluationUpdateParams`
  * Add support for `print_content` on `Terminal::Reader::Action`
  * Add support for `app_channel` on `V2::Core::ClaimableSandboxCreateParams` and `V2::Core::ClaimableSandbox`
  * Add support for `onboarding_link_details` and `owner_details` on `V2::Core::ClaimableSandbox`
  * ⚠️ Remove support for `claim_url` on `V2::Core::ClaimableSandbox`
  * ⚠️ Remove support for `owner_account` on `V2::Core::ClaimableSandbox::SandboxDetail`
  * Add support for `snapshot_event` on `V2::Core::Event`
  * ⚠️ Change `V2::MoneyManagement::CurrencyConversion.financial_account` to be optional
  * Add support for `multiprocessor_settlement` on `V2::MoneyManagement::FinancialAccount`
  * Add support for `ca_bank_account` on `V2::MoneyManagement::FinancialAddress::Credential` and `V2::MoneyManagement::ReceivedCredit::BankTransfer`
  * Add support for `amount_details` and `payment_details` on `V2::Payments::OffSessionPaymentCaptureParams`, `V2::Payments::OffSessionPaymentCreateParams`, and `V2::Payments::OffSessionPayment`
  * Add support for `description` on `V2::Payments::OffSessionPaymentCreateParams` and `V2::Payments::OffSessionPayment`
  * Add support for `mcc` on `V2::Payments::OffSessionPaymentCreateParams::PaymentMethodOption::Card`
  * Change `V2::Payments::OffSessionPaymentCreateParams::PaymentMethodOption::Card.network_transaction_id` to be optional
  * Add support for `storage` on `V2::MoneyManagement::FinancialAccountUpdateParams`
  * Add support for `fx_quote` on `V2::MoneyManagement::CurrencyConversionCreateParams`
  * Change `V2::MoneyManagement::CurrencyConversionCreateParams.financial_account` to be optional
  * ⚠️ Add support for `onboarding_link_details` on `V2::Core::ClaimableSandboxCreateParams`
  * Change type of `V2::Core::BatchJobCreateParams::Endpoint.http_method` from `literal('post')` to `enum('delete'|'post')`
  * Add support for `treasury_transaction` on `EventsV2MoneyManagementTransactionCreatedEvent`
  * Add support for event notifications `V1AccountApplicationAuthorizedEvent`, `V1AccountApplicationDeauthorizedEvent`, `V1AccountExternalAccountCreatedEvent`, `V1AccountExternalAccountDeletedEvent`, `V1AccountExternalAccountUpdatedEvent`, `V1BillingPortalSessionCreatedEvent`, `V1EntitlementsActiveEntitlementSummaryUpdatedEvent`, `V2CoreHealthMeterEventSummariesDelayedFiringEvent`, and `V2CoreHealthMeterEventSummariesDelayedResolvedEvent`
  * Add support for event notification `V1AccountUpdatedEvent` with related object `Account`
  * Add support for event notifications `V1ApplicationFeeCreatedEvent` and `V1ApplicationFeeRefundedEvent` with related object `ApplicationFee`
  * Add support for event notification `V1ApplicationFeeRefundUpdatedEvent` with related object `ApplicationFeeRefund`
  * Add support for event notification `V1BalanceAvailableEvent` with related object `Balance`
  * Add support for event notification `V1BillingAlertTriggeredEvent` with related object `Billing::Alert`
  * Add support for event notifications `V1BillingPortalConfigurationCreatedEvent` and `V1BillingPortalConfigurationUpdatedEvent` with related object `BillingPortal::Configuration`
  * Add support for event notification `V1CapabilityUpdatedEvent` with related object `Capability`
  * Add support for event notification `V1CashBalanceFundsAvailableEvent` with related object `CashBalance`
  * Add support for event notifications `V1ChargeCapturedEvent`, `V1ChargeExpiredEvent`, `V1ChargeFailedEvent`, `V1ChargePendingEvent`, `V1ChargeRefundedEvent`, `V1ChargeSucceededEvent`, and `V1ChargeUpdatedEvent` with related object `Charge`
  * Add support for event notifications `V1ChargeDisputeClosedEvent`, `V1ChargeDisputeCreatedEvent`, `V1ChargeDisputeFundsReinstatedEvent`, `V1ChargeDisputeFundsWithdrawnEvent`, and `V1ChargeDisputeUpdatedEvent` with related object `Dispute`
  * Add support for event notifications `V1ChargeRefundUpdatedEvent`, `V1RefundCreatedEvent`, `V1RefundFailedEvent`, and `V1RefundUpdatedEvent` with related object `Refund`
  * Add support for event notifications `V1CheckoutSessionAsyncPaymentFailedEvent`, `V1CheckoutSessionAsyncPaymentSucceededEvent`, `V1CheckoutSessionCompletedEvent`, and `V1CheckoutSessionExpiredEvent` with related object `Checkout::Session`
  * Add support for event notifications `V1ClimateOrderCanceledEvent`, `V1ClimateOrderCreatedEvent`, `V1ClimateOrderDelayedEvent`, `V1ClimateOrderDeliveredEvent`, and `V1ClimateOrderProductSubstitutedEvent` with related object `Climate::Order`
  * Add support for event notifications `V1ClimateProductCreatedEvent` and `V1ClimateProductPricingUpdatedEvent` with related object `Climate::Product`
  * Add support for event notifications `V1CouponCreatedEvent`, `V1CouponDeletedEvent`, and `V1CouponUpdatedEvent` with related object `Coupon`
  * Add support for event notifications `V1CreditNoteCreatedEvent`, `V1CreditNoteUpdatedEvent`, and `V1CreditNoteVoidedEvent` with related object `CreditNote`
  * Add support for event notifications `V1CustomerCreatedEvent`, `V1CustomerDeletedEvent`, and `V1CustomerUpdatedEvent` with related object `Customer`
  * Add support for event notifications `V1CustomerSubscriptionCreatedEvent`, `V1CustomerSubscriptionDeletedEvent`, `V1CustomerSubscriptionPausedEvent`, `V1CustomerSubscriptionPendingUpdateAppliedEvent`, `V1CustomerSubscriptionPendingUpdateExpiredEvent`, `V1CustomerSubscriptionResumedEvent`, `V1CustomerSubscriptionTrialWillEndEvent`, and `V1CustomerSubscriptionUpdatedEvent` with related object `Subscription`
  * Add support for event notifications `V1CustomerTaxIdCreatedEvent`, `V1CustomerTaxIdDeletedEvent`, and `V1CustomerTaxIdUpdatedEvent` with related object `TaxId`
  * Add support for event notification `V1CustomerCashBalanceTransactionCreatedEvent` with related object `CustomerCashBalanceTransaction`
  * Add support for event notification `V1FileCreatedEvent` with related object `File`
  * Add support for event notifications `V1FinancialConnectionsAccountCreatedEvent`, `V1FinancialConnectionsAccountDeactivatedEvent`, `V1FinancialConnectionsAccountDisconnectedEvent`, `V1FinancialConnectionsAccountReactivatedEvent`, `V1FinancialConnectionsAccountRefreshedBalanceEvent`, `V1FinancialConnectionsAccountRefreshedOwnershipEvent`, and `V1FinancialConnectionsAccountRefreshedTransactionsEvent` with related object `FinancialConnections::Account`
  * Add support for event notifications `V1IdentityVerificationSessionCanceledEvent`, `V1IdentityVerificationSessionCreatedEvent`, `V1IdentityVerificationSessionProcessingEvent`, `V1IdentityVerificationSessionRedactedEvent`, `V1IdentityVerificationSessionRequiresInputEvent`, and `V1IdentityVerificationSessionVerifiedEvent` with related object `Identity::VerificationSession`
  * Add support for event notifications `V1InvoiceCreatedEvent`, `V1InvoiceDeletedEvent`, `V1InvoiceFinalizationFailedEvent`, `V1InvoiceFinalizedEvent`, `V1InvoiceMarkedUncollectibleEvent`, `V1InvoiceOverdueEvent`, `V1InvoiceOverpaidEvent`, `V1InvoicePaidEvent`, `V1InvoicePaymentActionRequiredEvent`, `V1InvoicePaymentFailedEvent`, `V1InvoicePaymentSucceededEvent`, `V1InvoiceSentEvent`, `V1InvoiceUpcomingEvent`, `V1InvoiceUpdatedEvent`, `V1InvoiceVoidedEvent`, and `V1InvoiceWillBeDueEvent` with related object `Invoice`
  * Add support for event notification `V1InvoicePaymentPaidEvent` with related object `InvoicePayment`
  * Add support for event notifications `V1InvoiceitemCreatedEvent` and `V1InvoiceitemDeletedEvent` with related object `InvoiceItem`
  * Add support for event notifications `V1IssuingAuthorizationCreatedEvent`, `V1IssuingAuthorizationRequestEvent`, and `V1IssuingAuthorizationUpdatedEvent` with related object `Issuing::Authorization`
  * Add support for event notifications `V1IssuingCardCreatedEvent` and `V1IssuingCardUpdatedEvent` with related object `Issuing::Card`
  * Add support for event notifications `V1IssuingCardholderCreatedEvent` and `V1IssuingCardholderUpdatedEvent` with related object `Issuing::Cardholder`
  * Add support for event notifications `V1IssuingDisputeClosedEvent`, `V1IssuingDisputeCreatedEvent`, `V1IssuingDisputeFundsReinstatedEvent`, `V1IssuingDisputeFundsRescindedEvent`, `V1IssuingDisputeSubmittedEvent`, and `V1IssuingDisputeUpdatedEvent` with related object `Issuing::Dispute`
  * Add support for event notifications `V1IssuingPersonalizationDesignActivatedEvent`, `V1IssuingPersonalizationDesignDeactivatedEvent`, `V1IssuingPersonalizationDesignRejectedEvent`, and `V1IssuingPersonalizationDesignUpdatedEvent` with related object `Issuing::PersonalizationDesign`
  * Add support for event notifications `V1IssuingTokenCreatedEvent` and `V1IssuingTokenUpdatedEvent` with related object `Issuing::Token`
  * Add support for event notifications `V1IssuingTransactionCreatedEvent`, `V1IssuingTransactionPurchaseDetailsReceiptUpdatedEvent`, and `V1IssuingTransactionUpdatedEvent` with related object `Issuing::Transaction`
  * Add support for event notification `V1MandateUpdatedEvent` with related object `Mandate`
  * Add support for event notifications `V1PaymentIntentAmountCapturableUpdatedEvent`, `V1PaymentIntentCanceledEvent`, `V1PaymentIntentCreatedEvent`, `V1PaymentIntentPartiallyFundedEvent`, `V1PaymentIntentPaymentFailedEvent`, `V1PaymentIntentProcessingEvent`, `V1PaymentIntentRequiresActionEvent`, and `V1PaymentIntentSucceededEvent` with related object `PaymentIntent`
  * Add support for event notifications `V1PaymentLinkCreatedEvent` and `V1PaymentLinkUpdatedEvent` with related object `PaymentLink`
  * Add support for event notifications `V1PaymentMethodAttachedEvent`, `V1PaymentMethodAutomaticallyUpdatedEvent`, `V1PaymentMethodDetachedEvent`, and `V1PaymentMethodUpdatedEvent` with related object `PaymentMethod`
  * Add support for event notifications `V1PayoutCanceledEvent`, `V1PayoutCreatedEvent`, `V1PayoutFailedEvent`, `V1PayoutPaidEvent`, `V1PayoutReconciliationCompletedEvent`, and `V1PayoutUpdatedEvent` with related object `Payout`
  * Add support for event notifications `V1PersonCreatedEvent`, `V1PersonDeletedEvent`, and `V1PersonUpdatedEvent` with related object `Person`
  * Add support for event notifications `V1PlanCreatedEvent`, `V1PlanDeletedEvent`, and `V1PlanUpdatedEvent` with related object `Plan`
  * Add support for event notifications `V1PriceCreatedEvent`, `V1PriceDeletedEvent`, and `V1PriceUpdatedEvent` with related object `Price`
  * Add support for event notifications `V1ProductCreatedEvent`, `V1ProductDeletedEvent`, and `V1ProductUpdatedEvent` with related object `Product`
  * Add support for event notifications `V1PromotionCodeCreatedEvent` and `V1PromotionCodeUpdatedEvent` with related object `PromotionCode`
  * Add support for event notifications `V1QuoteAcceptedEvent`, `V1QuoteCanceledEvent`, `V1QuoteCreatedEvent`, and `V1QuoteFinalizedEvent` with related object `Quote`
  * Add support for event notifications `V1RadarEarlyFraudWarningCreatedEvent` and `V1RadarEarlyFraudWarningUpdatedEvent` with related object `Radar::EarlyFraudWarning`
  * Add support for event notifications `V1ReviewClosedEvent` and `V1ReviewOpenedEvent` with related object `Review`
  * Add support for event notifications `V1SetupIntentCanceledEvent`, `V1SetupIntentCreatedEvent`, `V1SetupIntentRequiresActionEvent`, `V1SetupIntentSetupFailedEvent`, and `V1SetupIntentSucceededEvent` with related object `SetupIntent`
  * Add support for event notification `V1SigmaScheduledQueryRunCreatedEvent` with related object `Sigma::ScheduledQueryRun`
  * Add support for event notifications `V1SourceCanceledEvent`, `V1SourceChargeableEvent`, `V1SourceFailedEvent`, and `V1SourceRefundAttributesRequiredEvent` with related object `Source`
  * Add support for event notifications `V1SubscriptionScheduleAbortedEvent`, `V1SubscriptionScheduleCanceledEvent`, `V1SubscriptionScheduleCompletedEvent`, `V1SubscriptionScheduleCreatedEvent`, `V1SubscriptionScheduleExpiringEvent`, `V1SubscriptionScheduleReleasedEvent`, and `V1SubscriptionScheduleUpdatedEvent` with related object `SubscriptionSchedule`
  * Add support for event notification `V1TaxSettingsUpdatedEvent` with related object `Tax::Settings`
  * Add support for event notifications `V1TaxRateCreatedEvent` and `V1TaxRateUpdatedEvent` with related object `TaxRate`
  * Add support for event notifications `V1TerminalReaderActionFailedEvent`, `V1TerminalReaderActionSucceededEvent`, and `V1TerminalReaderActionUpdatedEvent` with related object `Terminal::Reader`
  * Add support for event notifications `V1TestHelpersTestClockAdvancingEvent`, `V1TestHelpersTestClockCreatedEvent`, `V1TestHelpersTestClockDeletedEvent`, `V1TestHelpersTestClockInternalFailureEvent`, and `V1TestHelpersTestClockReadyEvent` with related object `TestHelpers::TestClock`
  * Add support for event notifications `V1TopupCanceledEvent`, `V1TopupCreatedEvent`, `V1TopupFailedEvent`, `V1TopupReversedEvent`, and `V1TopupSucceededEvent` with related object `Topup`
  * Add support for event notifications `V1TransferCreatedEvent`, `V1TransferReversedEvent`, and `V1TransferUpdatedEvent` with related object `Transfer`
  * Add support for event notifications `V2CommerceProductCatalogImportsFailedEvent`, `V2CommerceProductCatalogImportsProcessingEvent`, `V2CommerceProductCatalogImportsSucceededEvent`, and `V2CommerceProductCatalogImportsSucceededWithErrorsEvent` with related object `V2::Commerce::ProductCatalogImport`
  * Add support for event notifications `V2CoreApprovalRequestApprovedEvent`, `V2CoreApprovalRequestCanceledEvent`, `V2CoreApprovalRequestFailedEvent`, `V2CoreApprovalRequestRejectedEvent`, and `V2CoreApprovalRequestSucceededEvent` with related object `V2::Core::ApprovalRequest`
  * Add support for event notification `V2CoreClaimableSandboxUpdatedEvent` with related object `V2::Core::ClaimableSandbox`
  * Add support for event notifications `V2ExtendWorkflowRunFailedEvent`, `V2ExtendWorkflowRunStartedEvent`, and `V2ExtendWorkflowRunSucceededEvent` with related object `V2::Extend::WorkflowRun`
  * Add support for event notifications `V2OrchestratedCommerceAgreementConfirmedEvent`, `V2OrchestratedCommerceAgreementCreatedEvent`, `V2OrchestratedCommerceAgreementPartiallyConfirmedEvent`, and `V2OrchestratedCommerceAgreementTerminatedEvent` with related object `V2::OrchestratedCommerce::Agreement`
  * ⚠️ Remove support for event notification `V2CoreClaimableSandboxSandboxDetailsOwnerAccountUpdatedEvent` with related object `V2::Core::ClaimableSandbox`
  * Add support for error type `FxQuoteExpiredError`

## 19.1.0-alpha.5 - 2026-04-15
* [#1851](https://github.com/stripe/stripe-ruby/pull/1851) Update generated code for private-preview
  * Add support for `latest_version` on `V2::Billing::LicenseFee`, `V2::Billing::PricingPlan`, and `V2::Billing::RateCard`
  * Add support for `service_interval_count` and `service_interval` on `V2::Billing::LicenseFee` and `V2::Billing::RateCard`
* ⚠️ [#1850](https://github.com/stripe/stripe-ruby/pull/1850) Update generated code for private-preview
  * Add support for new resources `V2::Core::WorkflowRun` and `V2::Core::Workflow`
  * Add support for `report_authorized` method on resource `PaymentAttemptRecord`
  * Add support for `list` and `retrieve` methods on resource `V2::Core::WorkflowRun`
  * Add support for `invoke`, `list`, and `retrieve` methods on resource `V2::Core::Workflow`
  * Add support for `next_action` and `status` on `SharedPayment::IssuedToken`
  * ⚠️ Remove support for `network_id` on `SharedPayment::IssuedToken::SellerDetail`
  * Add support for `bills` on `AccountSession::Component`
  * Add support for `settlement_currencies` on `BalanceSettings::Payment` and `BalanceSettingsUpdateParams::Payment`
  * Add support for `default_settlement_currency` on `BalanceSettings::Payment`
  * Add support for `account_funding` on `Charge::PaymentMethodDetail::Card`
  * Add support for `automatic_surcharge` on `Checkout::SessionCreateParams`, `Checkout::Session`, `PaymentLinkCreateParams`, and `PaymentLink`
  * Add support for `bizum` on `Checkout::Session::PaymentMethodOption` and `Checkout::SessionCreateParams::PaymentMethodOption`
  * Add support for `surcharge_cost` on `Checkout::Session`
  * Add support for `amount_surcharge` on `Checkout::Session::TotalDetail`
  * Add support for `shared_payment_granted_token` on `ConfirmationTokenCreateParams::PaymentMethodDatum`, `PaymentIntentConfirmParams::PaymentMethodDatum`, `PaymentIntentCreateParams::PaymentMethodDatum`, `PaymentIntentUpdateParams::PaymentMethodDatum`, `SetupIntentConfirmParams::PaymentMethodDatum`, `SetupIntentCreateParams::PaymentMethodDatum`, and `SetupIntentUpdateParams::PaymentMethodDatum`
  * Add support for `details` on `Identity::VerificationReport::Email`
  * Add support for `confirm` on `Identity::VerificationSessionCreateParams` and `Identity::VerificationSessionUpdateParams`
  * Add support for `subscription` on `InvoiceItem::Parent::ScheduleDetail`
  * ⚠️ Remove support for `shared_payment_granted_token` on `PaymentIntentConfirmParams` and `PaymentIntentCreateParams`
  * Add support for `money_services` on `PaymentIntent::PaymentDetail`
  * ⚠️ Remove support for `external_reference` on `Plan`
  * Change `SharedPayment::GrantedToken::PaymentMethodDetail.billing_details` to be required

## 19.1.0-alpha.4 - 2026-04-08
This release changes the pinned API version to `2026-04-08.preview`.

* [#1848](https://github.com/stripe/stripe-ruby/pull/1848) Update generated code for private-preview
  * Add support for `payment_record` on `ApplicationFee::FeeSource`
  * Add support for `fleet_data` on `ChargeCaptureParams::PaymentDetail`, `ChargeUpdateParams::PaymentDetail`, `PaymentIntent::PaymentDetail`, `PaymentIntentAmountDetailsLineItem::PaymentMethodOption::Card`, `PaymentIntentCaptureParams::AmountDetail::LineItem::PaymentMethodOption::Card`, `PaymentIntentCaptureParams::PaymentDetail`, `PaymentIntentConfirmParams::AmountDetail::LineItem::PaymentMethodOption::Card`, `PaymentIntentConfirmParams::PaymentDetail`, `PaymentIntentCreateParams::AmountDetail::LineItem::PaymentMethodOption::Card`, `PaymentIntentCreateParams::PaymentDetail`, `PaymentIntentDecrementAuthorizationParams::AmountDetail::LineItem::PaymentMethodOption::Card`, `PaymentIntentIncrementAuthorizationParams::AmountDetail::LineItem::PaymentMethodOption::Card`, `PaymentIntentUpdateParams::AmountDetail::LineItem::PaymentMethodOption::Card`, and `PaymentIntentUpdateParams::PaymentDetail`
  * Add support for `beneficiary_account`, `beneficiary_details`, `sender_account`, and `sender_details` on `ChargeCaptureParams::PaymentDetail::MoneyService::AccountFunding`, `ChargeUpdateParams::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentCaptureParams::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentConfirmParams::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentCreateParams::PaymentDetail::MoneyService::AccountFunding`, and `PaymentIntentUpdateParams::PaymentDetail::MoneyService::AccountFunding`
  * Change type of `ChargeCaptureParams::PaymentDetail::MoneyService.transaction_type`, `ChargeUpdateParams::PaymentDetail::MoneyService.transaction_type`, `PaymentIntentCaptureParams::PaymentDetail::MoneyService.transaction_type`, `PaymentIntentConfirmParams::PaymentDetail::MoneyService.transaction_type`, `PaymentIntentCreateParams::PaymentDetail::MoneyService.transaction_type`, and `PaymentIntentUpdateParams::PaymentDetail::MoneyService.transaction_type` from `literal('account_funding')` to `emptyable(literal('account_funding'))`
  * Add support for `bizum` on `Invoice::PaymentSetting::PaymentMethodOption`, `InvoiceCreateParams::PaymentSetting::PaymentMethodOption`, `InvoiceUpdateParams::PaymentSetting::PaymentMethodOption`, `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption`, `Subscription::PaymentSetting::PaymentMethodOption`, `SubscriptionCreateParams::PaymentSetting::PaymentMethodOption`, and `SubscriptionUpdateParams::PaymentSetting::PaymentMethodOption`
  * Add support for `quantity_precision` on `PaymentIntentAmountDetailsLineItem`, `PaymentIntentCaptureParams::AmountDetail::LineItem`, `PaymentIntentConfirmParams::AmountDetail::LineItem`, `PaymentIntentCreateParams::AmountDetail::LineItem`, `PaymentIntentDecrementAuthorizationParams::AmountDetail::LineItem`, `PaymentIntentIncrementAuthorizationParams::AmountDetail::LineItem`, and `PaymentIntentUpdateParams::AmountDetail::LineItem`
  * Add support for `liquid_asset` and `wallet` on `PaymentIntentConfirmParams::PaymentMethodOption::Card::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentConfirmParams::PaymentMethodOption::CardPresent::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentCreateParams::PaymentMethodOption::Card::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentCreateParams::PaymentMethodOption::CardPresent::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentUpdateParams::PaymentMethodOption::Card::PaymentDetail::MoneyService::AccountFunding`, and `PaymentIntentUpdateParams::PaymentMethodOption::CardPresent::PaymentDetail::MoneyService::AccountFunding`
  * Add support for `shared_payment_granted_token` on `PaymentMethod`
  * Add support for `data` on `Radar::PaymentEvaluation::ClientDeviceMetadataDetail` and `Radar::PaymentEvaluationCreateParams::ClientDeviceMetadataDetail`
  * Add support for `sunbit` on `SharedPayment::GrantedToken::PaymentMethodDetail`
  * Add support for error type `CannotProceedError`

## 19.1.0-alpha.3 - 2026-04-01
This release changes the pinned API version to `2026-04-01.preview`.

* [#1846](https://github.com/stripe/stripe-ruby/pull/1846) Fixes an issue encoding two-dimensional array request params where the SDK incorrectly flattens the array.
* ⚠️ [#1843](https://github.com/stripe/stripe-ruby/pull/1843) Update generated code for private-preview
  * Add support for new resources `SharedPayment::IssuedToken` and `V2::Data::Reporting::QueryRun`
  * Add support for `create` and `retrieve` methods on resource `V2::Data::Reporting::QueryRun`
  * Add support for `pause` and `resume` methods on resource `V2::Payments::OffSessionPayment`
  * Add support for `tenant_keys`, `tenant_operator`, and `tenant_values` on `Billing::BillingMeterMeterEventSummaryListParams`
  * Add support for `money_services` on `ChargeCaptureParams::PaymentDetail`, `ChargeUpdateParams::PaymentDetail`, `PaymentIntentCaptureParams::PaymentDetail`, `PaymentIntentConfirmParams::PaymentDetail`, `PaymentIntentCreateParams::PaymentDetail`, and `PaymentIntentUpdateParams::PaymentDetail`
  * Add support for `payment_method_options` on `DelegatedCheckout::RequestedSessionCreateParams`, `DelegatedCheckout::RequestedSessionUpdateParams`, and `DelegatedCheckout::RequestedSession`
  * ⚠️ Remove support for `payment_method_data` on `DelegatedCheckout::RequestedSessionConfirmParams`, `DelegatedCheckout::RequestedSessionCreateParams`, and `DelegatedCheckout::RequestedSessionUpdateParams`
  * Add support for `card_brands` and `payment_method_types` on `DelegatedCheckout::RequestedSession::SellerDetail`
  * Change type of `DelegatedCheckout::RequestedSession.shared_payment_issued_token` from `string` to `expandable($SharedPayment.IssuedToken)`
  * Add support for `check_scan` on `Invoice::PaymentSetting::PaymentMethodOption`, `InvoiceCreateParams::PaymentSetting::PaymentMethodOption`, `InvoiceUpdateParams::PaymentSetting::PaymentMethodOption`, `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption`, `Subscription::PaymentSetting::PaymentMethodOption`, `SubscriptionCreateParams::PaymentSetting::PaymentMethodOption`, and `SubscriptionUpdateParams::PaymentSetting::PaymentMethodOption`
  * Add support for `processor_details` on `PaymentAttemptRecordReportFailedParams`, `PaymentAttemptRecordReportGuaranteedParams`, `PaymentRecordReportPaymentAttemptFailedParams`, `PaymentRecordReportPaymentAttemptGuaranteedParams`, `PaymentRecordReportPaymentAttemptParams::Failed`, `PaymentRecordReportPaymentAttemptParams::Guaranteed`, `PaymentRecordReportPaymentParams::Failed`, and `PaymentRecordReportPaymentParams::Guaranteed`
  * Add support for `payment_details` on `PaymentIntentConfirmParams::PaymentMethodOption::CardPresent`, `PaymentIntentConfirmParams::PaymentMethodOption::Card`, `PaymentIntentCreateParams::PaymentMethodOption::CardPresent`, `PaymentIntentCreateParams::PaymentMethodOption::Card`, `PaymentIntentUpdateParams::PaymentMethodOption::CardPresent`, and `PaymentIntentUpdateParams::PaymentMethodOption::Card`
  * ⚠️ Remove support for `bill_from` on `QuotePreviewSubscriptionSchedule::BillingSchedule`, `Subscription::BillingSchedule`, and `SubscriptionSchedule::BillingSchedule`
  * Add support for `agent_details`, `payment_method_details`, and `risk_details` on `SharedPayment::GrantedToken`
  * Add support for `paper_checks` on `V2::Account::Configuration::RecipientDatum::Feature`, `V2::AccountCreateParams::Configuration::RecipientDatum::Feature`, `V2::AccountUpdateParams::Configuration::RecipientDatum::Feature`, `V2::Core::Account::Configuration::Recipient::Capability`, `V2::Core::Account::Configuration::Storer::Capability::OutboundPayment`, `V2::Core::AccountCreateParams::Configuration::Recipient::Capability`, `V2::Core::AccountCreateParams::Configuration::Storer::Capability::OutboundPayment`, `V2::Core::AccountUpdateParams::Configuration::Recipient::Capability`, and `V2::Core::AccountUpdateParams::Configuration::Storer::Capability::OutboundPayment`
  * ⚠️ Change type of `V2::Billing::Cadence::SettingsDatum::Collection::PaymentMethodOption.konbini`, `V2::Billing::CollectionSetting::PaymentMethodOption.konbini`, `V2::Billing::CollectionSettingCreateParams::PaymentMethodOption.konbini`, `V2::Billing::CollectionSettingUpdateParams::PaymentMethodOption.konbini`, and `V2::Billing::CollectionSettingVersion::PaymentMethodOption.konbini` from `map(string: dynamic)` to `an object`
  * ⚠️ Change type of `V2::Billing::Cadence::SettingsDatum::Collection::PaymentMethodOption.sepa_debit`, `V2::Billing::CollectionSetting::PaymentMethodOption.sepa_debit`, `V2::Billing::CollectionSettingCreateParams::PaymentMethodOption.sepa_debit`, `V2::Billing::CollectionSettingUpdateParams::PaymentMethodOption.sepa_debit`, and `V2::Billing::CollectionSettingVersion::PaymentMethodOption.sepa_debit` from `map(string: dynamic)` to `an object`
  * Add support for `id` on `V2::Billing::CadenceSpendModifier::MaxBillingPeriodSpend::Amount::CustomPricingUnit`, `V2::Billing::IntentAction::Apply::SpendModifierRule::MaxBillingPeriodSpend::Amount::CustomPricingUnit`, and `V2::Billing::IntentCreateParams::Action::Apply::SpendModifierRule::MaxBillingPeriodSpend::Amount::CustomPricingUnit`
  * ⚠️ Change type of `V2::Core::Event::Reason::Request::Client.stripe_action` from `map(string: dynamic)` to `an object`
  * ⚠️ Change type of `V2::MoneyManagement::InboundTransfer::TransferHistory.bank_debit_processing` from `map(string: dynamic)` to `an object`
  * ⚠️ Change type of `V2::MoneyManagement::InboundTransfer::TransferHistory.bank_debit_queued` from `map(string: dynamic)` to `an object`
  * ⚠️ Change type of `V2::MoneyManagement::InboundTransfer::TransferHistory.bank_debit_succeeded` from `map(string: dynamic)` to `an object`
  * ⚠️ Remove support for `town` on `V2::MoneyManagement::OutboundPayment::TrackingDetail::PaperCheck::MailingAddress`
  * Change `V2::MoneyManagement::OutboundPayment::DeliveryOption::PaperCheck.memo` to be required
  * Add support for `application_fee_amount_requested` on `V2::Payments::OffSessionPayment`
  * ⚠️ Remove support for `compartment_id` on `V2::Payments::OffSessionPayment`
  * Add support for `retry_until` on `V2::Payments::OffSessionPayment::RetryDetail`
  * ⚠️ Change `V2::Reporting::ReportRun::Result.file` to be optional
  * Add support for `application_fee_amount` on `V2::Payments::OffSessionPaymentCaptureParams` and `V2::Payments::OffSessionPaymentCreateParams`
  * Add support for `alert_id` on `EventsV2CoreHealthApiErrorResolvedEvent`, `EventsV2CoreHealthApiLatencyResolvedEvent`, `EventsV2CoreHealthAuthorizationRateDropResolvedEvent`, `EventsV2CoreHealthIssuingAuthorizationRequestErrorsFiringEvent`, `EventsV2CoreHealthIssuingAuthorizationRequestErrorsResolvedEvent`, `EventsV2CoreHealthIssuingAuthorizationRequestTimeoutResolvedEvent`, `EventsV2CoreHealthPaymentMethodErrorResolvedEvent`, `EventsV2CoreHealthSepaDebitDelayedFiringEvent`, `EventsV2CoreHealthSepaDebitDelayedResolvedEvent`, `EventsV2CoreHealthTrafficVolumeDropResolvedEvent`, and `EventsV2CoreHealthWebhookLatencyResolvedEvent`
  * Add support for `api_key` on `EventsV2IamApiKeyCreatedEvent`, `EventsV2IamApiKeyDefaultSecretRevealedEvent`, `EventsV2IamApiKeyExpiredEvent`, `EventsV2IamApiKeyPermissionsUpdatedEvent`, `EventsV2IamApiKeyRotatedEvent`, and `EventsV2IamApiKeyUpdatedEvent`
  * Add support for `stripe_access_grant` on `EventsV2IamStripeAccessGrantApprovedEvent`, `EventsV2IamStripeAccessGrantCanceledEvent`, `EventsV2IamStripeAccessGrantDeniedEvent`, `EventsV2IamStripeAccessGrantRemovedEvent`, `EventsV2IamStripeAccessGrantRequestedEvent`, and `EventsV2IamStripeAccessGrantUpdatedEvent`
  * Add support for event notifications `V2DataReportingQueryRunCreatedEvent`, `V2DataReportingQueryRunFailedEvent`, `V2DataReportingQueryRunSucceededEvent`, and `V2DataReportingQueryRunUpdatedEvent` with related object `V2::Data::Reporting::QueryRun`
  * Add support for event notifications `V2PaymentsOffSessionPaymentPausedEvent` and `V2PaymentsOffSessionPaymentResumedEvent` with related object `V2::Payments::OffSessionPayment`

## 19.1.0-alpha.2 - 2026-03-27
* [#1839](https://github.com/stripe/stripe-ruby/pull/1839) Update generated code for private-preview
  * Fix "Unable to resolve constant" sorbet errors for Params classes

## 19.1.0-alpha.1 - 2026-03-25
This release changes the pinned API version to `2026-03-25.preview`.

This release contains additional breaking changes. See the [GA changelog](https://github.com/stripe/stripe-ruby/blob/master/CHANGELOG.md#1900---2026-03-25) for more information.

* ⚠️ [#1822](https://github.com/stripe/stripe-ruby/pull/1822) Update generated code for private-preview
  * Add support for new resource `V2::Core::AccountEvaluation`
  * ⚠️ Remove support for resources `V2::Billing::LicenseFeeSubscription` and `V2::Billing::PricingPlanSubscriptionComponents`
  * Add support for `create` method on resource `V2::Core::AccountEvaluation`
  * ⚠️ Remove support for `retrieve` method on resources `V2::Billing::LicenseFeeSubscription` and `V2::Billing::PricingPlanSubscriptionComponents`
  * Add support for `modify_rates` method on resource `V2::Billing::RateCard`
  * Add support for `remove_discounts` method on resource `V2::Billing::PricingPlanSubscription`
  * Add support for `invoice_resources` on `V2::Billing::Intent`
  * Add support for `amount_due` and `customer_balance_applied` on `V2::Billing::Intent::AmountDetail`
  * Add support for `expires_at` on `V2::Billing::Intent::StatusTransition`
  * Add support for `discount` on `V2::Billing::IntentAction::Apply` and `V2::Billing::IntentCreateParams::Action::Apply`
  * Add support for `timestamp` on `V2::Billing::IntentAction::Apply::EffectiveAt` and `V2::Billing::IntentCreateParams::Action::Apply::EffectiveAt`
  * ⚠️ Change type of `V2::Billing::IntentAction::Deactivate::PricingPlanSubscriptionDetail::Override::PartialPeriodBehavior.type`, `V2::Billing::IntentAction::Modify::PricingPlanSubscriptionDetail::Override::PartialPeriodBehavior.type`, `V2::Billing::IntentAction::Subscribe::PricingPlanSubscriptionDetail::Override::PartialPeriodBehavior.type`, `V2::Billing::IntentCreateParams::Action::Deactivate::PricingPlanSubscriptionDetail::Override::PartialPeriodBehavior.type`, `V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetail::Override::PartialPeriodBehavior.type`, and `V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetail::Override::PartialPeriodBehavior.type` from `literal('license_fee')` to `enum('license_fee'|'recurring_credit_grant')`
  * Add support for `service_cycle` on `V2::Billing::LicenseFee` and `V2::Billing::RateCard`
  * ⚠️ Remove support for `latest_version` on `V2::Billing::LicenseFee`, `V2::Billing::PricingPlan`, and `V2::Billing::RateCard`
  * ⚠️ Remove support for `service_interval_count` and `service_interval` on `V2::Billing::LicenseFee` and `V2::Billing::RateCard`
  * ⚠️ Change type of `V2::Billing::LicenseFee::TransformQuantity.divide_by`, `V2::Billing::LicenseFeeCreateParams::TransformQuantity.divide_by`, `V2::Billing::LicenseFeeUpdateParams::TransformQuantity.divide_by`, `V2::Billing::LicenseFeeVersion::TransformQuantity.divide_by`, `V2::Billing::RateCardRate::TransformQuantity.divide_by`, and `V2::Billing::RateCardRateCreateParams::TransformQuantity.divide_by` from `longInteger` to `int64_string`
  * Add support for `discount_details` and `pricing_plan_component_details` on `V2::Billing::PricingPlanSubscription`
  * Add support for `balance_by_funds_type` on `V2::MoneyManagement::FinancialAccount::Payment`
  * Add support for `treasury_transaction_entry` on `V2::MoneyManagement::TransactionEntry`
  * Add support for `treasury_credit_reversal`, `treasury_debit_reversal`, `treasury_inbound_transfer`, `treasury_issuing_authorization`, `treasury_outbound_payment`, `treasury_outbound_transfer`, `treasury_received_credit`, and `treasury_received_debit` on `V2::MoneyManagement::Transaction::Flow` and `V2::MoneyManagement::TransactionEntry::TransactionDetail::Flow`
  * Add support for `treasury_transaction` on `V2::MoneyManagement::Transaction`
  * Add support for `metadata` on `V2::Payments::SettlementAllocationIntentSplit`
  * ⚠️ Change type of `V2::Reporting::ReportRun::Result::File.size` from `longInteger` to `int64_string`
  * Add support for `statement_descriptor` on `V2::MoneyManagement::OutboundPaymentCreateParams` and `V2::MoneyManagement::OutboundTransferCreateParams`
  * Add support for `include` on `V2::Billing::IntentCreateParams`, `V2::Billing::IntentReserveParams`, `V2::Billing::PricingPlanSubscriptionListParams`, `V2::Billing::PricingPlanSubscriptionRetrieveParams`, `V2::MoneyManagement::FinancialAccountListParams`, and `V2::MoneyManagement::FinancialAccountRetrieveParams`
  * Add support for event notifications `V1AccountSignalsIncludingDelinquencyCreatedEvent`, `V2CoreAccountSignalsFraudulentWebsiteReadyEvent`, and `V2SignalsAccountSignalFraudulentMerchantReadyEvent`
* ⚠️ [#1836](https://github.com/stripe/stripe-ruby/pull/1836) Update generated code for private-preview
  * Add support for new resource `RiskSignals`
  * Add support for `financial_account_rewards` and `nesting_demo` on `AccountSession::Component`
  * Add support for `upi_payments` on `Account::Capability`, `AccountCreateParams::Capability`, and `AccountUpdateParams::Capability`
  * Add support for `risk_signals` on `Account`
  * Add support for `fraud_intent` on `AccountSignals`
  * Add support for `risk_reserved` on `Balance`
  * ⚠️ Remove support for `billable_items` on `Billing::Alert::SpendThreshold::Filter`
  * Add support for `upi` on `Charge::PaymentMethodDetail`, `Checkout::Session::PaymentMethodOption`, `Checkout::SessionCreateParams::PaymentMethodOption`, `ConfirmationToken::PaymentMethodPreview`, `ConfirmationTokenCreateParams::PaymentMethodDatum`, `Mandate::PaymentMethodDetail`, `PaymentAttemptRecord::PaymentMethodDetail`, `PaymentIntent::PaymentMethodOption`, `PaymentIntentConfirmParams::PaymentMethodDatum`, `PaymentIntentConfirmParams::PaymentMethodOption`, `PaymentIntentCreateParams::PaymentMethodDatum`, `PaymentIntentCreateParams::PaymentMethodOption`, `PaymentIntentUpdateParams::PaymentMethodDatum`, `PaymentIntentUpdateParams::PaymentMethodOption`, `PaymentMethodConfigurationCreateParams`, `PaymentMethodConfigurationUpdateParams`, `PaymentMethodConfiguration`, `PaymentMethodCreateParams`, `PaymentMethod`, `PaymentRecord::PaymentMethodDetail`, `SetupAttempt::PaymentMethodDetail`, `SetupIntent::PaymentMethodOption`, `SetupIntentConfirmParams::PaymentMethodDatum`, `SetupIntentConfirmParams::PaymentMethodOption`, `SetupIntentCreateParams::PaymentMethodDatum`, `SetupIntentCreateParams::PaymentMethodOption`, `SetupIntentUpdateParams::PaymentMethodDatum`, and `SetupIntentUpdateParams::PaymentMethodOption`
  * ⚠️ Remove support for `source_type` on `Charge::PaymentMethodDetail::StripeBalance`, `ConfirmationToken::PaymentMethodPreview::StripeBalance`, `ConfirmationTokenCreateParams::PaymentMethodDatum::StripeBalance`, `PaymentAttemptRecord::PaymentMethodDetail::StripeBalance`, `PaymentIntentConfirmParams::PaymentMethodDatum::StripeBalance`, `PaymentIntentCreateParams::PaymentMethodDatum::StripeBalance`, `PaymentIntentUpdateParams::PaymentMethodDatum::StripeBalance`, `PaymentMethod::StripeBalance`, `PaymentMethodCreateParams::StripeBalance`, `PaymentRecord::PaymentMethodDetail::StripeBalance`, `SetupIntentConfirmParams::PaymentMethodDatum::StripeBalance`, `SetupIntentCreateParams::PaymentMethodDatum::StripeBalance`, and `SetupIntentUpdateParams::PaymentMethodDatum::StripeBalance`
  * Add support for `integration_identifier` on `Checkout::SessionCreateParams` and `Checkout::Session`
  * Change type of `Checkout::SessionCreateParams::LineItem::PriceDatum::ProductDatum::TaxDetail.tax_code`, `Checkout::SessionUpdateParams::LineItem::PriceDatum::ProductDatum::TaxDetail.tax_code`, `InvoiceAddLinesParams::Line::PriceDatum::ProductDatum::TaxDetail.tax_code`, `InvoiceLineItemUpdateParams::PriceDatum::ProductDatum::TaxDetail.tax_code`, `InvoiceUpdateLinesParams::Line::PriceDatum::ProductDatum::TaxDetail.tax_code`, `PaymentLinkCreateParams::LineItem::PriceDatum::ProductDatum::TaxDetail.tax_code`, `PlanCreateParams::Product::TaxDetail.tax_code`, `PriceCreateParams::ProductDatum::TaxDetail.tax_code`, `ProductCreateParams::TaxDetail.tax_code`, and `ProductUpdateParams::TaxDetail.tax_code` from `string` to `emptyable(string)`
  * Add support for `crypto` on `Checkout::SessionCreateParams::PaymentMethodOption`
  * Add support for `pending_invoice_item_interval` on `Checkout::SessionCreateParams::SubscriptionDatum` and `Checkout::SessionUpdateParams::SubscriptionDatum`
  * Change `Checkout::SessionCreateParams::LineItem::PriceDatum::ProductDatum::TaxDetail.tax_code`, `Checkout::SessionUpdateParams::LineItem::PriceDatum::ProductDatum::TaxDetail.tax_code`, `InvoiceAddLinesParams::Line::PriceDatum::ProductDatum::TaxDetail.tax_code`, `InvoiceLineItemUpdateParams::PriceDatum::ProductDatum::TaxDetail.tax_code`, `InvoiceUpdateLinesParams::Line::PriceDatum::ProductDatum::TaxDetail.tax_code`, `PaymentLinkCreateParams::LineItem::PriceDatum::ProductDatum::TaxDetail.tax_code`, `PlanCreateParams::Product::TaxDetail.tax_code`, `PriceCreateParams::ProductDatum::TaxDetail.tax_code`, `ProductCreateParams::TaxDetail.tax_code`, and `ProductUpdateParams::TaxDetail.tax_code` to be optional
  * Add support for `au_becs_debit`, `bacs_debit`, `boleto`, `link`, `sepa_debit`, and `us_bank_account` on `Checkout::Session::CurrentAttempt::PaymentMethodDetail`
  * Add support for `metadata` on `CreditNoteCreateParams::Line`, `CreditNoteLineItem`, `CreditNoteListPreviewLineItemsParams::Line`, and `CreditNotePreviewParams::Line`
  * Add support for `selected_fulfillment_option_overrides` on `DelegatedCheckout::RequestedSession::FulfillmentDetail`
  * Add support for `line_item_keys` on `DelegatedCheckout::RequestedSession::FulfillmentDetail::FulfillmentOption::Digital::DigitalOption` and `DelegatedCheckout::RequestedSession::FulfillmentDetail::FulfillmentOption::Shipping::ShippingOption`
  * Add support for `quantity_decimal` on `InvoiceAddLinesParams::Line`, `InvoiceCreatePreviewParams::InvoiceItem`, `InvoiceItemCreateParams`, `InvoiceItemUpdateParams`, `InvoiceItem`, `InvoiceLineItemUpdateParams`, `InvoiceLineItem`, and `InvoiceUpdateLinesParams::Line`
  * Add support for `expires_after_seconds` on `Invoice::PaymentSetting::PaymentMethodOption::Pix`, `InvoiceCreateParams::PaymentSetting::PaymentMethodOption::Pix`, `InvoiceUpdateParams::PaymentSetting::PaymentMethodOption::Pix`, `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption::Pix`, `Subscription::PaymentSetting::PaymentMethodOption::Pix`, `SubscriptionCreateParams::PaymentSetting::PaymentMethodOption::Pix`, and `SubscriptionUpdateParams::PaymentSetting::PaymentMethodOption::Pix`
  * ⚠️ Add support for `level` on `Issuing::AuthorizationCreateParams::RiskAssessment::CardTestingRisk` and `Issuing::AuthorizationCreateParams::RiskAssessment::MerchantDisputeRisk`
  * ⚠️ Remove support for `risk_level` on `Issuing::AuthorizationCreateParams::RiskAssessment::CardTestingRisk` and `Issuing::AuthorizationCreateParams::RiskAssessment::MerchantDisputeRisk`
  * Add support for `lifecycle_controls` on `Issuing::CardCreateParams` and `Issuing::Card`
  * ⚠️ Change type of `Issuing::Token::NetworkDatum::Visa.card_reference_id` from `string` to `nullable(string)`
  * ⚠️ Change type of `PaymentAttemptRecord::PaymentMethodDetail::Card.brand` and `PaymentRecord::PaymentMethodDetail::Card.brand` from `enum` to `nullable(enum)`
  * ⚠️ Change type of `PaymentAttemptRecord::PaymentMethodDetail::Card.exp_month` and `PaymentRecord::PaymentMethodDetail::Card.exp_month` from `longInteger` to `nullable(longInteger)`
  * ⚠️ Change type of `PaymentAttemptRecord::PaymentMethodDetail::Card.exp_year` and `PaymentRecord::PaymentMethodDetail::Card.exp_year` from `longInteger` to `nullable(longInteger)`
  * ⚠️ Change type of `PaymentAttemptRecord::PaymentMethodDetail::Card.funding` and `PaymentRecord::PaymentMethodDetail::Card.funding` from `enum('credit'|'debit'|'prepaid'|'unknown')` to `nullable(enum('credit'|'debit'|'prepaid'|'unknown'))`
  * ⚠️ Change type of `PaymentAttemptRecord::PaymentMethodDetail::Card.last4` and `PaymentRecord::PaymentMethodDetail::Card.last4` from `string` to `nullable(string)`
  * ⚠️ Change type of `PaymentAttemptRecord::PaymentMethodDetail::Card.moto` and `PaymentRecord::PaymentMethodDetail::Card.moto` from `boolean` to `nullable(boolean)`
  * Add support for `cryptogram`, `electronic_commerce_indicator`, `exemption_indicator_applied`, and `exemption_indicator` on `PaymentAttemptRecord::PaymentMethodDetail::Card::ThreeDSecure` and `PaymentRecord::PaymentMethodDetail::Card::ThreeDSecure`
  * Add support for `surcharge` on `PaymentIntent::AmountDetail`, `PaymentIntentCaptureParams::AmountDetail`, `PaymentIntentConfirmParams::AmountDetail`, `PaymentIntentCreateParams::AmountDetail`, `PaymentIntentIncrementAuthorizationParams::AmountDetail`, and `PaymentIntentUpdateParams::AmountDetail`
  * Add support for `mandate_options` on `PaymentIntent::PaymentMethodOption::StripeBalance`, `PaymentIntentConfirmParams::PaymentMethodOption::StripeBalance`, `PaymentIntentCreateParams::PaymentMethodOption::StripeBalance`, and `PaymentIntentUpdateParams::PaymentMethodOption::StripeBalance`
  * Add support for `amount_details` and `payment_details` on `PaymentIntentDecrementAuthorizationParams`
  * Add support for `upi_handle_redirect_or_display_qr_code` on `PaymentIntent::NextAction` and `SetupIntent::NextAction`
  * Add support for `managed_payments` on `PaymentLinkCreateParams` and `PaymentLink`
  * Add support for `recommended_action` and `signals` on `Radar::PaymentEvaluation`
  * ⚠️ Remove support for `insights` on `Radar::PaymentEvaluation`
  * Add support for `stripe_balance` on `SetupIntent::PaymentMethodOption`, `SetupIntentConfirmParams::PaymentMethodOption`, `SetupIntentCreateParams::PaymentMethodOption`, and `SetupIntentUpdateParams::PaymentMethodOption`
  * Add support for `recurring_interval` on `SharedPayment::GrantedToken::UsageLimit`
  * ⚠️ Change type of `SharedPayment::GrantedToken::UsageLimit.expires_at` from `DateTime` to `nullable(DateTime)`
  * Add support for `presentment_details` on `Subscription`
  * ⚠️ Remove support for `invoice_resources` on `V2::Billing::Intent`
  * ⚠️ Remove support for `amount_due` and `customer_balance_applied` on `V2::Billing::Intent::AmountDetail`
  * Add support for `recurring_credit_grant` on `V2::Billing::IntentAction::Modify::PricingPlanSubscriptionDetail::Override::PartialPeriodBehavior`, `V2::Billing::IntentAction::Subscribe::PricingPlanSubscriptionDetail::Override::PartialPeriodBehavior`, `V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetail::Override::PartialPeriodBehavior`, and `V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetail::Override::PartialPeriodBehavior`
  * Add support for `consumer_privacy_disclosures` and `consumer_storer` on `V2::Core::Account::Identity::Attestation::TermsOfService`, `V2::Core::AccountCreateParams::Identity::Attestation::TermsOfService`, and `V2::Core::AccountUpdateParams::Identity::Attestation::TermsOfService`
  * ⚠️ Remove support for `include` on `V2::Billing::IntentCreateParams` and `V2::Billing::IntentReserveParams`
* [#1835](https://github.com/stripe/stripe-ruby/pull/1835) Update generated code for private-preview
  * Release specs are identical.

## 18.5.0-alpha.4 - 2026-03-18
* ⚠️ [#1812](https://github.com/stripe/stripe-ruby/pull/1812) Update generated code for private-preview
  * Add support for new resources `Orchestration::PaymentAttempt` and `Radar::CustomerEvaluation`
  * Add support for `retrieve` method on resource `Orchestration::PaymentAttempt`
  * Add support for `create` and `update` methods on resource `Radar::CustomerEvaluation`
  * Add support for `approve` method on resource `Checkout::Session`
  * Add support for `report_authenticated`, `report_canceled`, `report_failed`, `report_guaranteed`, `report_informational`, and `report_refund` methods on resource `PaymentAttemptRecord`
  * Add support for `create_us_paper_check_on_application` on `AccountSessionCreateParams::Component::CheckScanning::Feature`
  * ⚠️ Change `AccountSignals.delinquency` to be optional
  * Add support for `approval_method` on `Checkout::SessionCreateParams` and `Checkout::Session`
  * Add support for `current_attempt` on `Checkout::Session`
  * Add support for `selected_fulfillment_option_overrides` on `DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetail`
  * Add support for `pricing_plan_subscription_details` on `InvoiceItem::Parent` and `InvoiceLineItem::Parent`
  * ⚠️ Remove support for `license_fee_subscription_details` on `InvoiceItem::Parent` and `InvoiceLineItem::Parent`
  * ⚠️ Remove support for `pricing_plan_subscription` and `pricing_plan_version` on `InvoiceItem::Parent::RateCardSubscriptionDetail` and `InvoiceLineItem::Parent::RateCardSubscriptionDetail`
  * Add support for `token_details` on `Issuing::Authorization`
  * Add support for `failure_code` on `PaymentRecordReportPaymentAttemptFailedParams`, `PaymentRecordReportPaymentAttemptParams::Failed`, and `PaymentRecordReportPaymentParams::Failed`
  * Change `PaymentRecordReportPaymentAttemptCanceledParams.canceled_at` to be optional
  * Change `PaymentRecordReportPaymentAttemptFailedParams.failed_at` to be optional
  * Change `PaymentRecordReportPaymentAttemptGuaranteedParams.guaranteed_at` to be optional
  * Change `PaymentRecordReportRefundParams.refunded` to be optional
  * ⚠️ Change `Radar::IssuingAuthorizationEvaluationCreateParams::CardDetail.bin_country` to be required
  * Add support for `recurring_interval` on `SharedPayment::GrantedTokenCreateParams::UsageLimit`
  * Change `SharedPayment::GrantedTokenCreateParams::UsageLimit.expires_at` to be optional
  * Add support for `home_rule_tax` on `Tax::Registration::CountryOption::Me` and `Tax::RegistrationCreateParams::CountryOption::Me`
* [#1818](https://github.com/stripe/stripe-ruby/pull/1818) Update generated code for private-preview
  * Add support for `simulate_crypto_deposit` test helper method on resource `PaymentIntent`
  * Add support for `deposit_options` and `mode` on `PaymentIntent::PaymentMethodOption::Crypto`, `PaymentIntentConfirmParams::PaymentMethodOption::Crypto`, `PaymentIntentCreateParams::PaymentMethodOption::Crypto`, and `PaymentIntentUpdateParams::PaymentMethodOption::Crypto`
  * Add support for `crypto_display_details` on `PaymentIntent::NextAction`

## 18.5.0-alpha.3 - 2026-03-11
* ⚠️ [#1806](https://github.com/stripe/stripe-ruby/pull/1806) Update generated code for private-preview
  * Add support for new resource `Radar::IssuingAuthorizationEvaluation`
  * Add support for `create` method on resource `Radar::IssuingAuthorizationEvaluation`
  * ⚠️ Rename `affiliate_attributions` to `affiliate_attribution` on `DelegatedCheckout::RequestedSessionConfirmParams` and `DelegatedCheckout::RequestedSessionCreateParams`
  * Add support for `amount_to_counter` on `Dispute`
  * Add support for `frozen_fields` on `InvoiceItem`
  * Add support for `consumer` on `V2::Core::Account::Configuration::CardCreator::Capability`, `V2::Core::Account::Identity::Attestation::TermsOfService::CardCreator`, `V2::Core::AccountCreateParams::Configuration::CardCreator::Capability`, `V2::Core::AccountCreateParams::Identity::Attestation::TermsOfService::CardCreator`, `V2::Core::AccountUpdateParams::Configuration::CardCreator::Capability`, and `V2::Core::AccountUpdateParams::Identity::Attestation::TermsOfService::CardCreator`
  * Add support for `fifth_third` on `V2::Core::Account::Configuration::CardCreator::Capability::Commercial`, `V2::Core::Account::Identity::Attestation::TermsOfService::CardCreator::Commercial`, `V2::Core::AccountCreateParams::Configuration::CardCreator::Capability::Commercial`, `V2::Core::AccountCreateParams::Identity::Attestation::TermsOfService::CardCreator::Commercial`, `V2::Core::AccountUpdateParams::Configuration::CardCreator::Capability::Commercial`, and `V2::Core::AccountUpdateParams::Identity::Attestation::TermsOfService::CardCreator::Commercial`
  * Add support for `prepaid_card` on `V2::Core::Account::Configuration::CardCreator::Capability::Commercial::CrossRiverBank`, `V2::Core::Account::Identity::Attestation::TermsOfService::CardCreator::Commercial::CrossRiverBank`, `V2::Core::AccountCreateParams::Configuration::CardCreator::Capability::Commercial::CrossRiverBank`, `V2::Core::AccountCreateParams::Identity::Attestation::TermsOfService::CardCreator::Commercial::CrossRiverBank`, `V2::Core::AccountUpdateParams::Configuration::CardCreator::Capability::Commercial::CrossRiverBank`, and `V2::Core::AccountUpdateParams::Identity::Attestation::TermsOfService::CardCreator::Commercial::CrossRiverBank`
  * Add support for `payment_method_data` on `V2::Payments::OffSessionPaymentCreateParams`
  * Change `V2::Payments::OffSessionPaymentCreateParams.payment_method` to be optional

## 18.5.0-alpha.2 - 2026-03-04
This release changes the pinned API version to `2026-03-04.preview`.

* ⚠️ [#1802](https://github.com/stripe/stripe-ruby/pull/1802) Update generated code for private-preview
  * Add support for new resources `Billing::AlertRecovered` and `Profile`
  * Add support for `reauthorize` method on resource `PaymentIntent`
  * Add support for `settings` on `QuoteLine::Action::AddDiscount`, `QuoteLine::Action::AddItem::Discount`, `QuoteLine::Action::SetDiscount`, `QuoteLine::Action::SetItem::Discount`, `QuotePreviewSubscriptionSchedule::Phase::Discount`, `QuotePreviewSubscriptionSchedule::Phase::Item::Discount`, `SubscriptionSchedule::Phase::Discount`, and `SubscriptionSchedule::Phase::Item::Discount`
  * Add support for `smart_disputes` on `Account::Setting`, `AccountCreateParams::Setting`, `AccountUpdateParams::Setting`, `V2::Core::Account::Configuration::Merchant`, `V2::Core::AccountCreateParams::Configuration::Merchant`, and `V2::Core::AccountUpdateParams::Configuration::Merchant`
  * Add support for `email_customers_on_successful_payment` on `Account::Setting::Payment`, `AccountCreateParams::Setting::Payment`, and `AccountUpdateParams::Setting::Payment`
  * Add support for `balance_update_details` on `Billing::CreditBalanceSummary::Balance`
  * Add support for `reauthorization` and `reauthorize_before` on `Charge::PaymentMethodDetail::CardPresent`, `Charge::PaymentMethodDetail::Card`, `ConfirmationToken::PaymentMethodPreview::Card::GeneratedFrom::PaymentMethodDetail::CardPresent`, `PaymentAttemptRecord::PaymentMethodDetail::CardPresent`, `PaymentMethod::Card::GeneratedFrom::PaymentMethodDetail::CardPresent`, and `PaymentRecord::PaymentMethodDetail::CardPresent`
  * Add support for `location` and `reader` on `Charge::PaymentMethodDetail::CardPresent`, `Charge::PaymentMethodDetail::InteracPresent`, `ConfirmationToken::PaymentMethodPreview::Card::GeneratedFrom::PaymentMethodDetail::CardPresent`, `PaymentAttemptRecord::PaymentMethodDetail::CardPresent`, `PaymentAttemptRecord::PaymentMethodDetail::InteracPresent`, `PaymentMethod::Card::GeneratedFrom::PaymentMethodDetail::CardPresent`, `PaymentRecord::PaymentMethodDetail::CardPresent`, and `PaymentRecord::PaymentMethodDetail::InteracPresent`
  * Add support for `managed_payments` on `Checkout::SessionCreateParams`, `Checkout::Session`, `PaymentIntent`, `SetupIntent`, and `Subscription`
  * Add support for `digital` on `DelegatedCheckout::RequestedSession::FulfillmentDetail::FulfillmentOption`, `DelegatedCheckout::RequestedSession::FulfillmentDetail::SelectedFulfillmentOption`, and `DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetail::SelectedFulfillmentOption`
  * Change `DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetail::SelectedFulfillmentOption.shipping` to be optional
  * Add support for `affiliate_attributions` on `DelegatedCheckout::RequestedSessionConfirmParams`, `DelegatedCheckout::RequestedSessionCreateParams`, and `DelegatedCheckout::RequestedSession`
  * Add support for `fulfillment_type` on `DelegatedCheckout::RequestedSession::LineItemDetail`
  * Add support for `marketplace_seller_details`, `network_profile`, `privacy_notice_url`, `return_policy_url`, `store_policy_url`, and `terms_of_service_url` on `DelegatedCheckout::RequestedSession::SellerDetail`
  * Add support for `amount_to_counter` on `DisputeUpdateParams`
  * Add support for `display_name` and `service_user_number` on `Mandate::PaymentMethodDetail::BacsDebit`
  * ⚠️ Change type of `PaymentAttemptRecord::PaymentMethodDetail::Boleto.tax_id` and `PaymentRecord::PaymentMethodDetail::Boleto.tax_id` from `string` to `nullable(string)`
  * Change type of `PaymentAttemptRecord::PaymentMethodDetail::UsBankAccount.expected_debit_date` and `PaymentRecord::PaymentMethodDetail::UsBankAccount.expected_debit_date` from `nullable(string)` to `string`
  * Add support for `request_reauthorization` on `PaymentIntent::PaymentMethodOption::CardPresent`, `PaymentIntent::PaymentMethodOption::Card`, `PaymentIntentConfirmParams::PaymentMethodOption::CardPresent`, `PaymentIntentConfirmParams::PaymentMethodOption::Card`, `PaymentIntentCreateParams::PaymentMethodOption::CardPresent`, `PaymentIntentCreateParams::PaymentMethodOption::Card`, `PaymentIntentUpdateParams::PaymentMethodOption::CardPresent`, and `PaymentIntentUpdateParams::PaymentMethodOption::Card`
  * Add support for `transaction_purpose` on `PaymentIntent::PaymentMethodOption::UsBankAccount`, `PaymentIntentConfirmParams::PaymentMethodOption::UsBankAccount`, `PaymentIntentCreateParams::PaymentMethodOption::UsBankAccount`, and `PaymentIntentUpdateParams::PaymentMethodOption::UsBankAccount`
  * Add support for `optional_items` on `PaymentLinkUpdateParams`
  * ⚠️ Remove support for `card_issuer_decline` on `Radar::PaymentEvaluation::Insight`
  * Add support for `payment_behavior` on `SubscriptionItemDeleteParams`
  * Add support for `billing_cycle_anchor` on `Subscription::TrialSetting::EndBehavior`
  * Add support for `lk` on `Tax::Registration::CountryOption` and `Tax::RegistrationCreateParams::CountryOption`
  * Add support for `cellular` and `stripe_s710` on `Terminal::ConfigurationCreateParams`, `Terminal::ConfigurationUpdateParams`, and `Terminal::Configuration`
  * Add support for `recipient_onboarding` and `recipient_update` on `V2::Core::AccountLink::UseCase` and `V2::Core::AccountLinkCreateParams::UseCase`
  * Add support for `consumer` on `V2::Core::Account::Configuration::Storer::Capability`, `V2::Core::AccountCreateParams::Configuration::Storer::Capability`, and `V2::Core::AccountUpdateParams::Configuration::Storer::Capability`
  * Add support for `funds_usage_type` on `V2::MoneyManagement::FinancialAccount::Storage` and `V2::MoneyManagement::FinancialAccountCreateParams::Storage`
  * Add support for `purpose` on `V2::MoneyManagement::OutboundPaymentCreateParams` and `V2::MoneyManagement::OutboundPayment`
  * Add support for `branch_number` and `swift_code` on `V2::MoneyManagement::PayoutMethod::BankAccount`
  * ⚠️ Change `V2::MoneyManagement::Transaction.flow` and `V2::MoneyManagement::TransactionEntry::TransactionDetail.flow` to be optional
  * Add support for event notification `V2BillingRateCardCustomPricingUnitOverageRateCreatedEvent` with related object `V2::Billing::RateCardCustomPricingUnitOverageRate`
  * Add support for event notifications `V2IamStripeAccessGrantApprovedEvent`, `V2IamStripeAccessGrantCanceledEvent`, `V2IamStripeAccessGrantDeniedEvent`, `V2IamStripeAccessGrantRemovedEvent`, `V2IamStripeAccessGrantRequestedEvent`, and `V2IamStripeAccessGrantUpdatedEvent`

## 18.5.0-alpha.1 - 2026-02-25
This release uses the API version `2026-01-28.preview`.

* [#1793](https://github.com/stripe/stripe-ruby/pull/1793) Update generated code for private-preview
  * Add support for new resource `AccountSignals`
  * Add support for `retrieve` method on resource `AccountSignals`
  * Add support for `aggregation_period`, `group_by`, and `triggered_at` on `Billing::AlertTriggered`
  * Add support for `external_account_collection` on `AccountLinkCreateParams::CollectionOption`
  * Add support for `funding_source` on `ApplicationFee`
  * Change `DelegatedCheckout::RequestedSessionConfirmParams::PaymentMethodDatum::BillingDetail::Address.line1`, `DelegatedCheckout::RequestedSessionCreateParams::FulfillmentDetail::Address.line1`, `DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodDatum::BillingDetail::Address.line1`, `DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetail::Address.line1`, and `DelegatedCheckout::RequestedSessionUpdateParams::PaymentMethodDatum::BillingDetail::Address.line1` to be optional
  * Add support for `hosted` and `ui_mode` on `FinancialConnections::SessionCreateParams` and `FinancialConnections::Session`
  * Add support for `url` on `FinancialConnections::Session`
  * Add support for `billing_cycle_anchor` on `SubscriptionCreateParams::TrialSetting::EndBehavior` and `SubscriptionUpdateParams::TrialSetting::EndBehavior`

## 18.4.0-alpha.6 - 2026-02-23
* [#1796](https://github.com/stripe/stripe-ruby/pull/1796) Ignore unset properties of V2 Request param classes when making requests

## 18.4.0-alpha.5 - 2026-02-19
* [#1792](https://github.com/stripe/stripe-ruby/pull/1792) Update generated code for private-preview
  * Add support for `spend_threshold` on `Billing::AlertCreateParams` and `Billing::Alert`
  * Add support for `invoice_item`, `proration_details`, `proration`, and `subscription` on `InvoiceLineItem::Parent::ScheduleDetail`
  * Add support for `custom` on `PaymentMethodUpdateParams`
  * Add support for `payment_method_reference` and `usage` on `PaymentMethod::Custom`
  * Add support for `outstanding_usage_through` and `unused_time_from` on `SubscriptionPauseParams::BillFor`
  * Remove support for `outstanding_usage` and `unused_time` on `SubscriptionPauseParams::BillFor`
  * Remove support for `payment_behavior` on `SubscriptionResumeParams`

## 18.4.0-alpha.4 - 2026-02-17
* [#1788](https://github.com/stripe/stripe-ruby/pull/1788) Fix v2 typed params sending nil values on GET requests
  - Fixes a bug on V2 GET where we were serializing `nil` query parameters as empty strings. The server would return an error in such cases like `'limit: Expected an Integer value got: .'`

## 18.4.0-alpha.3 - 2026-02-11
* [#1780](https://github.com/stripe/stripe-ruby/pull/1780) Update generated code for private-preview
  * Add support for new resources `V2::Billing::CadenceSpendModifier`, `V2::Billing::OneTimeItem`, and `V2::Billing::RateCardCustomPricingUnitOverageRate`
  * Add support for `create`, `delete`, `list`, and `retrieve` methods on resource `V2::Billing::RateCardCustomPricingUnitOverageRate`
  * Add support for `create`, `list`, `retrieve`, and `update` methods on resource `V2::Billing::OneTimeItem`
  * Add support for `retrieve` method on resource `V2::Billing::CadenceSpendModifier`
  * Change `EventsV2CoreHealthFraudRateIncreasedEvent.value`, `EventsV2CoreHealthIssuingAuthorizationRequestErrorsFiringEvent.value`, `EventsV2CoreHealthIssuingAuthorizationRequestErrorsResolvedEvent.value`, `EventsV2CoreHealthIssuingAuthorizationRequestTimeoutFiringEvent.value`, `EventsV2CoreHealthIssuingAuthorizationRequestTimeoutResolvedEvent.value`, `V2::Billing::ServiceAction::CreditGrant::Amount::Monetary.value`, `V2::Billing::ServiceAction::CreditGrantPerTenant::Amount::Monetary.value`, `V2::Billing::ServiceActionCreateParams::CreditGrant::Amount::Monetary.value`, `V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::Amount::Monetary.value`, `V2::Core::Account::Identity::BusinessDetail::AnnualRevenue::Amount.value`, `V2::Core::Account::Identity::BusinessDetail::MonthlyEstimatedRevenue::Amount.value`, `V2::Core::AccountCreateParams::Identity::BusinessDetail::AnnualRevenue::Amount.value`, `V2::Core::AccountCreateParams::Identity::BusinessDetail::MonthlyEstimatedRevenue::Amount.value`, `V2::Core::AccountTokenCreateParams::Identity::BusinessDetail::AnnualRevenue::Amount.value`, `V2::Core::AccountTokenCreateParams::Identity::BusinessDetail::MonthlyEstimatedRevenue::Amount.value`, `V2::Core::AccountUpdateParams::Identity::BusinessDetail::AnnualRevenue::Amount.value`, `V2::Core::AccountUpdateParams::Identity::BusinessDetail::MonthlyEstimatedRevenue::Amount.value`, `V2::FinancialAddressCreditSimulationCreditParams::Amount.value`, `V2::FinancialAddressGeneratedMicrodeposits::Amount.value`, `V2::MoneyManagement::Adjustment::Amount.value`, `V2::MoneyManagement::CurrencyConversion::From::Amount.value`, `V2::MoneyManagement::CurrencyConversion::To::Amount.value`, `V2::MoneyManagement::CurrencyConversionCreateParams::From::Amount.value`, `V2::MoneyManagement::CurrencyConversionCreateParams::To::Amount.value`, `V2::MoneyManagement::FinancialAccount::Balance::Available.value`, `V2::MoneyManagement::FinancialAccount::Balance::InboundPending.value`, `V2::MoneyManagement::FinancialAccount::Balance::OutboundPending.value`, `V2::MoneyManagement::FinancialAccount::Payment::StartingBalance::Available.value`, `V2::MoneyManagement::InboundTransfer::Amount.value`, `V2::MoneyManagement::InboundTransfer::From::Debited.value`, `V2::MoneyManagement::InboundTransfer::To::Credited.value`, `V2::MoneyManagement::InboundTransferCreateParams::Amount.value`, `V2::MoneyManagement::OutboundPayment::Amount.value`, `V2::MoneyManagement::OutboundPayment::From::Debited.value`, `V2::MoneyManagement::OutboundPayment::To::Credited.value`, `V2::MoneyManagement::OutboundPaymentCreateParams::Amount.value`, `V2::MoneyManagement::OutboundPaymentQuote::Amount.value`, `V2::MoneyManagement::OutboundPaymentQuote::EstimatedFee::Amount.value`, `V2::MoneyManagement::OutboundPaymentQuote::From::Debited.value`, `V2::MoneyManagement::OutboundPaymentQuote::To::Credited.value`, `V2::MoneyManagement::OutboundPaymentQuoteCreateParams::Amount.value`, `V2::MoneyManagement::OutboundTransfer::Amount.value`, `V2::MoneyManagement::OutboundTransfer::From::Debited.value`, `V2::MoneyManagement::OutboundTransfer::To::Credited.value`, `V2::MoneyManagement::OutboundTransferCreateParams::Amount.value`, `V2::MoneyManagement::ReceivedCredit::Amount.value`, `V2::MoneyManagement::ReceivedCredit::ExternalAmount.value`, `V2::MoneyManagement::ReceivedDebit::Amount.value`, `V2::MoneyManagement::ReceivedDebit::CardSpend::Authorization::Amount.value`, `V2::MoneyManagement::ReceivedDebit::CardSpend::CardTransaction::Amount.value`, `V2::MoneyManagement::ReceivedDebit::ExternalAmount.value`, `V2::MoneyManagement::Transaction::Amount.value`, `V2::MoneyManagement::Transaction::BalanceImpact::Available.value`, `V2::MoneyManagement::Transaction::BalanceImpact::InboundPending.value`, `V2::MoneyManagement::Transaction::BalanceImpact::OutboundPending.value`, `V2::MoneyManagement::TransactionEntry::BalanceImpact::Available.value`, `V2::MoneyManagement::TransactionEntry::BalanceImpact::InboundPending.value`, `V2::MoneyManagement::TransactionEntry::BalanceImpact::OutboundPending.value`, `V2::Payments::OffSessionPayment::AmountCapturable.value`, `V2::Payments::OffSessionPayment::AmountRequested.value`, `V2::Payments::OffSessionPaymentCreateParams::Amount.value`, `V2::Payments::SettlementAllocationIntent::Amount.value`, `V2::Payments::SettlementAllocationIntentCreateParams::Amount.value`, `V2::Payments::SettlementAllocationIntentSplit::Amount.value`, `V2::Payments::SettlementAllocationIntentSplitCreateParams::Amount.value`, and `V2::Payments::SettlementAllocationIntentUpdateParams::Amount.value` to be required
  * Change `EventsV2CoreHealthFraudRateIncreasedEvent.currency`, `EventsV2CoreHealthIssuingAuthorizationRequestErrorsFiringEvent.currency`, `EventsV2CoreHealthIssuingAuthorizationRequestErrorsResolvedEvent.currency`, `EventsV2CoreHealthIssuingAuthorizationRequestTimeoutFiringEvent.currency`, `EventsV2CoreHealthIssuingAuthorizationRequestTimeoutResolvedEvent.currency`, `V2::Billing::ServiceAction::CreditGrant::Amount::Monetary.currency`, `V2::Billing::ServiceAction::CreditGrantPerTenant::Amount::Monetary.currency`, `V2::Billing::ServiceActionCreateParams::CreditGrant::Amount::Monetary.currency`, `V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::Amount::Monetary.currency`, `V2::Core::Account::Identity::BusinessDetail::AnnualRevenue::Amount.currency`, `V2::Core::Account::Identity::BusinessDetail::MonthlyEstimatedRevenue::Amount.currency`, `V2::Core::AccountCreateParams::Identity::BusinessDetail::AnnualRevenue::Amount.currency`, `V2::Core::AccountCreateParams::Identity::BusinessDetail::MonthlyEstimatedRevenue::Amount.currency`, `V2::Core::AccountTokenCreateParams::Identity::BusinessDetail::AnnualRevenue::Amount.currency`, `V2::Core::AccountTokenCreateParams::Identity::BusinessDetail::MonthlyEstimatedRevenue::Amount.currency`, `V2::Core::AccountUpdateParams::Identity::BusinessDetail::AnnualRevenue::Amount.currency`, `V2::Core::AccountUpdateParams::Identity::BusinessDetail::MonthlyEstimatedRevenue::Amount.currency`, `V2::FinancialAddressCreditSimulationCreditParams::Amount.currency`, `V2::FinancialAddressGeneratedMicrodeposits::Amount.currency`, `V2::MoneyManagement::Adjustment::Amount.currency`, `V2::MoneyManagement::CurrencyConversion::From::Amount.currency`, `V2::MoneyManagement::CurrencyConversion::To::Amount.currency`, `V2::MoneyManagement::CurrencyConversionCreateParams::From::Amount.currency`, `V2::MoneyManagement::CurrencyConversionCreateParams::To::Amount.currency`, `V2::MoneyManagement::FinancialAccount::Balance::Available.currency`, `V2::MoneyManagement::FinancialAccount::Balance::InboundPending.currency`, `V2::MoneyManagement::FinancialAccount::Balance::OutboundPending.currency`, `V2::MoneyManagement::FinancialAccount::Payment::StartingBalance::Available.currency`, `V2::MoneyManagement::InboundTransfer::Amount.currency`, `V2::MoneyManagement::InboundTransfer::From::Debited.currency`, `V2::MoneyManagement::InboundTransfer::To::Credited.currency`, `V2::MoneyManagement::InboundTransferCreateParams::Amount.currency`, `V2::MoneyManagement::OutboundPayment::Amount.currency`, `V2::MoneyManagement::OutboundPayment::From::Debited.currency`, `V2::MoneyManagement::OutboundPayment::To::Credited.currency`, `V2::MoneyManagement::OutboundPaymentCreateParams::Amount.currency`, `V2::MoneyManagement::OutboundPaymentQuote::Amount.currency`, `V2::MoneyManagement::OutboundPaymentQuote::EstimatedFee::Amount.currency`, `V2::MoneyManagement::OutboundPaymentQuote::From::Debited.currency`, `V2::MoneyManagement::OutboundPaymentQuote::To::Credited.currency`, `V2::MoneyManagement::OutboundPaymentQuoteCreateParams::Amount.currency`, `V2::MoneyManagement::OutboundTransfer::Amount.currency`, `V2::MoneyManagement::OutboundTransfer::From::Debited.currency`, `V2::MoneyManagement::OutboundTransfer::To::Credited.currency`, `V2::MoneyManagement::OutboundTransferCreateParams::Amount.currency`, `V2::MoneyManagement::ReceivedCredit::Amount.currency`, `V2::MoneyManagement::ReceivedCredit::ExternalAmount.currency`, `V2::MoneyManagement::ReceivedDebit::Amount.currency`, `V2::MoneyManagement::ReceivedDebit::CardSpend::Authorization::Amount.currency`, `V2::MoneyManagement::ReceivedDebit::CardSpend::CardTransaction::Amount.currency`, `V2::MoneyManagement::ReceivedDebit::ExternalAmount.currency`, `V2::MoneyManagement::Transaction::Amount.currency`, `V2::MoneyManagement::Transaction::BalanceImpact::Available.currency`, `V2::MoneyManagement::Transaction::BalanceImpact::InboundPending.currency`, `V2::MoneyManagement::Transaction::BalanceImpact::OutboundPending.currency`, `V2::MoneyManagement::TransactionEntry::BalanceImpact::Available.currency`, `V2::MoneyManagement::TransactionEntry::BalanceImpact::InboundPending.currency`, `V2::MoneyManagement::TransactionEntry::BalanceImpact::OutboundPending.currency`, `V2::Payments::OffSessionPayment::AmountCapturable.currency`, `V2::Payments::OffSessionPayment::AmountRequested.currency`, `V2::Payments::OffSessionPaymentCreateParams::Amount.currency`, `V2::Payments::SettlementAllocationIntent::Amount.currency`, `V2::Payments::SettlementAllocationIntentCreateParams::Amount.currency`, `V2::Payments::SettlementAllocationIntentSplit::Amount.currency`, `V2::Payments::SettlementAllocationIntentSplitCreateParams::Amount.currency`, and `V2::Payments::SettlementAllocationIntentUpdateParams::Amount.currency` to be required
  * Add support for `settlement_type` on `ApplicationFee`
  * Add support for `rate_card_custom_pricing_unit_overage_rate_details` on `InvoiceItem::Pricing` and `InvoiceLineItem::Pricing`
  * Add support for `default_settings` on `InvoiceCreatePreviewParams::ScheduleDetail`
  * Change type of `QuoteUpdateParams::SubscriptionDataOverride.billing_schedules` from `emptyable(array(billing_schedules_update_specs))` to `array(billing_schedules_update_specs)`
  * Add support for `payment_behavior` on `SubscriptionResumeParams`
  * Add support for `effective_at` and `spend_modifier_rule` on `V2::Billing::IntentAction::Apply`, `V2::Billing::IntentAction::Remove`, `V2::Billing::IntentCreateParams::Action::Apply`, and `V2::Billing::IntentCreateParams::Action::Remove`
  * Change type of `V2::Billing::IntentAction::Apply.type`, `V2::Billing::IntentAction::Remove.type`, `V2::Billing::IntentCreateParams::Action::Apply.type`, and `V2::Billing::IntentCreateParams::Action::Remove.type` from `literal('invoice_discount_rule')` to `enum('invoice_discount_rule'|'spend_modifier_rule')`

## 18.4.0-alpha.2 - 2026-02-04
* [#1774](https://github.com/stripe/stripe-ruby/pull/1774) Update generated code for private-preview
  * Add support for new resource `V2::Core::ConnectionSession`
  * Add support for `create` and `retrieve` methods on resource `V2::Core::ConnectionSession`
  * Add support for `list` method on resources `V2::Payments::SettlementAllocationIntentSplit` and `V2::Payments::SettlementAllocationIntent`
  * Add support for `agentic_commerce_settings` on `AccountSessionCreateParams::Component`
  * Add support for `terminal_hardware_orders` and `terminal_hardware_shop` on `AccountSession::Component` and `AccountSessionCreateParams::Component`
  * Add support for `network_cost_passthrough_report` on `AccountSession::Component`
  * Add support for `cadence_data` on `V2::Billing::IntentCreateParams` and `V2::Billing::Intent`
  * Add support for `cancellation_details` on `V2::Billing::IntentAction::Deactivate`, `V2::Billing::IntentCreateParams::Action::Deactivate`, and `V2::Billing::PricingPlanSubscription`
  * Add support for `contact_phone` on `V2::Core::AccountCreateParams`, `V2::Core::AccountTokenCreateParams`, `V2::Core::AccountUpdateParams`, and `V2::Core::Account`
  * Add support for `registration_date` on `V2::Core::Account::Identity::BusinessDetail`, `V2::Core::AccountCreateParams::Identity::BusinessDetail`, `V2::Core::AccountTokenCreateParams::Identity::BusinessDetail`, and `V2::Core::AccountUpdateParams::Identity::BusinessDetail`
  * Add support for `reference` on `V2::MoneyManagement::Adjustment`
  * Add support for `accrued_fees` on `V2::MoneyManagement::FinancialAccount`
  * Add support for `starting_balance` on `V2::MoneyManagement::FinancialAccount::Payment`
  * Add support for `account_holder_address` and `account_holder_name` on `V2::MoneyManagement::FinancialAddress::Credential::UsBankAccount`
  * Add support for `fingerprint` on `V2::MoneyManagement::PayoutMethod::Card`
  * Add support for `card_spend` on `V2::MoneyManagement::ReceivedCredit` and `V2::MoneyManagement::ReceivedDebit`
  * Add support for `application_fee_refund`, `application_fee`, `charge`, `dispute`, `payout`, `refund`, `reserve_hold`, `reserve_release`, `topup`, `transfer_reversal`, and `transfer` on `V2::MoneyManagement::Transaction::Flow` and `V2::MoneyManagement::TransactionEntry::TransactionDetail::Flow`
  * Change `V2::Payments::SettlementAllocationIntentSplit.flow` to be optional
  * Change `V2::Billing::RateCardRateCreateParams.metered_item` to be required

## 18.4.0-alpha.1 - 2026-01-28
This release changes the pinned API version to `2026-01-28.preview`.

* [#1772](https://github.com/stripe/stripe-ruby/pull/1772) Update generated code for private-preview
  * Add support for new resources `FrMealVouchersOnboarding`, `Reserve::Hold`, `Reserve::Plan`, and `Reserve::Release`
  * Add support for `create`, `list`, `retrieve`, and `update` methods on resource `FrMealVouchersOnboarding`
  * Add support for `list` and `retrieve` methods on resources `Reserve::Hold` and `Reserve::Release`
  * Add support for `retrieve` method on resource `Reserve::Plan`
  * Add support for `pause` method on resource `Subscription`
  * Add support for `service_period_details` on `Discount`
  * Add support for `agentic_commerce_settings` on `AccountSession::Component`
  * Add support for `service_period` on `CouponCreateParams` and `Coupon`
  * Change type of `InvoiceItem::Pricing::PriceDetail.price` and `InvoiceLineItem::Pricing::PriceDetail.price` from `string` to `expandable($Price)`
  * Add support for `settings` on `InvoiceCreatePreviewParams::Discount`, `InvoiceCreatePreviewParams::ScheduleDetail::Amendment::DiscountAction::Add`, `InvoiceCreatePreviewParams::ScheduleDetail::Amendment::DiscountAction::Set`, `InvoiceCreatePreviewParams::ScheduleDetail::Amendment::ItemAction::Add::Discount`, `InvoiceCreatePreviewParams::ScheduleDetail::Amendment::ItemAction::Set::Discount`, `InvoiceCreatePreviewParams::ScheduleDetail::Phase::Discount`, `InvoiceCreatePreviewParams::ScheduleDetail::Phase::Item::Discount`, `InvoiceCreatePreviewParams::SubscriptionDetail::Item::Discount`, `QuoteCreateParams::Line::Action::AddDiscount`, `QuoteCreateParams::Line::Action::AddItem::Discount`, `QuoteCreateParams::Line::Action::SetDiscount`, `QuoteCreateParams::Line::Action::SetItem::Discount`, `QuoteUpdateParams::Line::Action::AddDiscount`, `QuoteUpdateParams::Line::Action::AddItem::Discount`, `QuoteUpdateParams::Line::Action::SetDiscount`, `QuoteUpdateParams::Line::Action::SetItem::Discount`, `SubscriptionCreateParams::Discount`, `SubscriptionCreateParams::Item::Discount`, `SubscriptionItemCreateParams::Discount`, `SubscriptionItemUpdateParams::Discount`, `SubscriptionScheduleAmendParams::Amendment::DiscountAction::Add`, `SubscriptionScheduleAmendParams::Amendment::DiscountAction::Set`, `SubscriptionScheduleAmendParams::Amendment::ItemAction::Add::Discount`, `SubscriptionScheduleAmendParams::Amendment::ItemAction::Set::Discount`, `SubscriptionScheduleCreateParams::Phase::Discount`, `SubscriptionScheduleCreateParams::Phase::Item::Discount`, `SubscriptionScheduleUpdateParams::Phase::Discount`, `SubscriptionScheduleUpdateParams::Phase::Item::Discount`, `SubscriptionUpdateParams::Discount`, and `SubscriptionUpdateParams::Item::Discount`
  * Add support for `subtotal` on `InvoiceLineItem`
  * Add support for `billing_cadence` on `SubscriptionListParams`

## 18.3.0-alpha.1 - 2026-01-21
* [#1770](https://github.com/stripe/stripe-ruby/pull/1770) Update generated code for private-preview
  * Remove support for `pause` method on resource `Subscription`
  * Change type of `Quote::SubscriptionDataOverride.phase_effective_at` and `Quote::SubscriptionDatum.phase_effective_at` from `enum('billing_period_start'|'phase_start')` to `nullable(enum('billing_period_start'|'phase_start'))`

## 18.2.0-alpha.3 - 2026-01-14
* [#1763](https://github.com/stripe/stripe-ruby/pull/1763) Update generated code for private-preview
  * Add support for `risk_details` on `DelegatedCheckout::RequestedSession`
  * Remove support for `description`, `images`, and `name` on `DelegatedCheckout::RequestedSession::LineItemDetail`
  * Add support for `name` on `ProductCatalog::TrialOfferCreateParams` and `ProductCatalog::TrialOffer`
  * Add support for `login_failed` and `registration_failed` on `Radar::AccountEvaluation::Event` and `Radar::AccountEvaluationUpdateParams`
  * Change type of `Radar::AccountEvaluationUpdateParams.type` from `literal('registration_succeeded')` to `enum('login_failed'|'login_succeeded'|'registration_failed'|'registration_succeeded')`
  * Add support for `tracking_details` on `V2::MoneyManagement::OutboundPayment`
  * Add support for `paper_check` on `V2::MoneyManagement::OutboundPayment::DeliveryOption` and `V2::MoneyManagement::OutboundPaymentCreateParams::DeliveryOption`
  * Add support for event notification `V2CoreAccountIncludingFutureRequirementsUpdatedEvent` with related object `V2::Core::Account`

## 18.2.0-alpha.2 - 2026-01-07
* [#1745](https://github.com/stripe/stripe-ruby/pull/1745) Update generated code for private-preview
  * Nil input params are now preserved when calling V2 APIs.  Add additional tests for nil when calling V2 services you do not accidentally include an unintentional nil value.  V1 API calls are not affected (nil values are stripped from params hashes in V1).
  * Add support for new resource `Tax::Location`
  * Add support for `create`, `list`, and `retrieve` methods on resource `Tax::Location`
  * Add support for `pause` method on resource `Subscription`
  * Add support for `performance_location` on `Checkout::SessionCreateParams::LineItem::PriceDatum::ProductDatum::TaxDetail`, `Checkout::SessionUpdateParams::LineItem::PriceDatum::ProductDatum::TaxDetail`, `InvoiceAddLinesParams::Line::PriceDatum::ProductDatum::TaxDetail`, `InvoiceLineItemUpdateParams::PriceDatum::ProductDatum::TaxDetail`, `InvoiceUpdateLinesParams::Line::PriceDatum::ProductDatum::TaxDetail`, `PaymentLinkCreateParams::LineItem::PriceDatum::ProductDatum::TaxDetail`, `ProductCreateParams::TaxDetail`, `ProductUpdateParams::TaxDetail`, `Tax::CalculationCreateParams::LineItem`, and `Tax::CalculationLineItem`
  * Change type of `DelegatedCheckout::RequestedSessionUpdateParams.metadata` from `map(string: string)` to `emptyable(map(string: string))`
  * Change type of `DelegatedCheckout::RequestedSessionUpdateParams.payment_method_data` from `payment_method_data` to `emptyable(payment_method_data)`
  * Change type of `DelegatedCheckout::RequestedSessionUpdateParams.shared_metadata` from `map(string: string)` to `emptyable(map(string: string))`
  * Add support for `subscription` on `Invoice::Parent::ScheduleDetail` and `QuotePreviewInvoice::Parent::ScheduleDetail`
  * Change type of `PaymentIntentConfirmParams::PaymentDetail::Benefit.fr_meal_voucher`, `PaymentIntentCreateParams::PaymentDetail::Benefit.fr_meal_voucher`, `PaymentIntentUpdateParams::PaymentDetail::Benefit.fr_meal_voucher`, `SetupIntentConfirmParams::SetupDetail::Benefit.fr_meal_voucher`, `SetupIntentCreateParams::SetupDetail::Benefit.fr_meal_voucher`, and `SetupIntentUpdateParams::SetupDetail::Benefit.fr_meal_voucher` from `payment_details_benefit_fr_meal_voucher` to `emptyable(payment_details_benefit_fr_meal_voucher)`
  * Add support for `tax_details` on `PlanCreateParams::Product` and `PriceCreateParams::ProductDatum`
  * Add support for `external_reference` on `Plan` and `Price`
  * Add support for `admissions_tax`, `attendance_tax`, `entertainment_tax`, `gross_receipts_tax`, `hospitality_tax`, `luxury_tax`, `resort_tax`, and `tourism_tax` on `Tax::Registration::CountryOption::Me`
  * Add support for `requirements` on `TaxCode`

## 18.2.0-alpha.1 - 2025-12-14
This release changes the pinned API version to `2025-12-15.preview`.

* [#1743](https://github.com/stripe/stripe-ruby/pull/1743) Update generated code for private-preview
  * Add support for new resources `SharedPayment::GrantedToken`, `V2::Iam::ApiKey`, `V2::Payments::SettlementAllocationIntentSplit`, `V2::Payments::SettlementAllocationIntent`, and `V2::Tax::ManualRule`
  * Add support for `retrieve` method on resource `SharedPayment::GrantedToken`
  * Add support for `create` and `update` test helper methods on resource `SharedPayment::GrantedToken`
  * Add support for `create`, `deactivate`, `list`, `retrieve`, and `update` methods on resource `V2::Tax::ManualRule`
  * Add support for `cancel`, `create`, `retrieve`, `submit`, and `update` methods on resource `V2::Payments::SettlementAllocationIntent`
  * Add support for `cancel`, `create`, and `retrieve` methods on resource `V2::Payments::SettlementAllocationIntentSplit`
  * Add support for `create`, `expire`, `list`, `retrieve`, `rotate`, and `update` methods on resource `V2::Iam::ApiKey`
  * Add support for `check_scanning` on `AccountSessionCreateParams::Component`
  * Add support for `tax_details` on `Checkout::SessionCreateParams::LineItem::PriceDatum::ProductDatum`, `Checkout::SessionUpdateParams::LineItem::PriceDatum::ProductDatum`, `InvoiceAddLinesParams::Line::PriceDatum::ProductDatum`, `InvoiceLineItemUpdateParams::PriceDatum::ProductDatum`, `InvoiceUpdateLinesParams::Line::PriceDatum::ProductDatum`, `PaymentLinkCreateParams::LineItem::PriceDatum::ProductDatum`, `ProductCreateParams`, and `ProductUpdateParams`
  * Add support for `payment_method_data` on `DelegatedCheckout::RequestedSessionConfirmParams`
  * Add support for `product_details` on `DelegatedCheckout::RequestedSession::LineItemDetail`
  * Add support for `wallets` on `Issuing::CardListParams`
  * Add support for `primary_account_identifier` on `Issuing::Card::Wallet::ApplePay` and `Issuing::Card::Wallet::GooglePay`
  * Add support for `shared_payment_granted_token` on `PaymentIntentConfirmParams`, `PaymentIntentCreateParams`, and `PaymentIntent`
  * Change `ProductCatalog::TrialOffer::Duration.relative` to be optional
  * Add support for `instant` on `V2::Account::Configuration::RecipientDatum::Feature::BankAccount`, `V2::AccountCreateParams::Configuration::RecipientDatum::Feature::BankAccount`, `V2::AccountUpdateParams::Configuration::RecipientDatum::Feature::BankAccount`, `V2::Core::Account::Configuration::Recipient::Capability::BankAccount`, `V2::Core::AccountCreateParams::Configuration::Recipient::Capability::BankAccount`, and `V2::Core::AccountUpdateParams::Configuration::Recipient::Capability::BankAccount`
  * Add support for `collect_at` on `V2::Billing::IntentAction::Deactivate`, `V2::Billing::IntentAction::Modify`, `V2::Billing::IntentAction::Subscribe`, `V2::Billing::IntentCreateParams::Action::Deactivate`, `V2::Billing::IntentCreateParams::Action::Modify`, and `V2::Billing::IntentCreateParams::Action::Subscribe`
  * Remove support for `billing_details` on `V2::Billing::IntentAction::Deactivate`, `V2::Billing::IntentAction::Modify`, `V2::Billing::IntentAction::Subscribe`, `V2::Billing::IntentCreateParams::Action::Deactivate`, `V2::Billing::IntentCreateParams::Action::Modify`, and `V2::Billing::IntentCreateParams::Action::Subscribe`
  * Add support for `overrides` on `V2::Billing::IntentAction::Deactivate::PricingPlanSubscriptionDetail`, `V2::Billing::IntentAction::Modify::PricingPlanSubscriptionDetail`, `V2::Billing::IntentAction::Subscribe::PricingPlanSubscriptionDetail`, `V2::Billing::IntentCreateParams::Action::Deactivate::PricingPlanSubscriptionDetail`, `V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetail`, and `V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetail`
  * Remove support for `requested` on `V2::Core::Account::Configuration::CardCreator::Capability::Commercial::Celtic::ChargeCard`, `V2::Core::Account::Configuration::CardCreator::Capability::Commercial::Celtic::SpendCard`, `V2::Core::Account::Configuration::CardCreator::Capability::Commercial::CrossRiverBank::ChargeCard`, `V2::Core::Account::Configuration::CardCreator::Capability::Commercial::CrossRiverBank::SpendCard`, `V2::Core::Account::Configuration::CardCreator::Capability::Commercial::Lead::PrepaidCard`, `V2::Core::Account::Configuration::CardCreator::Capability::Commercial::Stripe::ChargeCard`, `V2::Core::Account::Configuration::CardCreator::Capability::Commercial::Stripe::PrepaidCard`, `V2::Core::Account::Configuration::Recipient::Capability::CryptoWallet`, `V2::Core::Account::Configuration::Storer::Capability::FinancialAddress::CryptoWallet`, `V2::Core::Account::Configuration::Storer::Capability::HoldsCurrency::Usdc`, `V2::Core::Account::Configuration::Storer::Capability::OutboundPayment::CryptoWallet`, and `V2::Core::Account::Configuration::Storer::Capability::OutboundTransfer::CryptoWallet`
  * Add support for `alternative_reference` on `V2::Core::Vault::GbBankAccount`, `V2::Core::Vault::UsBankAccount`, and `V2::MoneyManagement::PayoutMethod`
  * Add support for `managed_by` and `payments` on `V2::MoneyManagement::FinancialAccount`
  * Add support for `speed` on `V2::MoneyManagement::OutboundPayment::DeliveryOption`, `V2::MoneyManagement::OutboundPaymentCreateParams::DeliveryOption`, `V2::MoneyManagement::OutboundPaymentQuote::DeliveryOption`, and `V2::MoneyManagement::OutboundPaymentQuoteCreateParams::DeliveryOption`
  * Add support for `types` on `V2::MoneyManagement::FinancialAccountListParams`
  * Add support for `top_impacted_accounts` on `EventsV2CoreHealthApiErrorFiringEvent`, `EventsV2CoreHealthApiErrorResolvedEvent`, `EventsV2CoreHealthApiLatencyFiringEvent`, `EventsV2CoreHealthApiLatencyResolvedEvent`, `EventsV2CoreHealthPaymentMethodErrorFiringEvent`, and `EventsV2CoreHealthPaymentMethodErrorResolvedEvent`
  * Add support for event notifications `V2CoreHealthSepaDebitDelayedFiringEvent`, `V2CoreHealthSepaDebitDelayedResolvedEvent`, and `V2PaymentsSettlementAllocationIntentNotFoundEvent`
  * Add support for event notifications `V2PaymentsSettlementAllocationIntentCanceledEvent`, `V2PaymentsSettlementAllocationIntentCreatedEvent`, `V2PaymentsSettlementAllocationIntentErroredEvent`, `V2PaymentsSettlementAllocationIntentFundsNotReceivedEvent`, `V2PaymentsSettlementAllocationIntentMatchedEvent`, `V2PaymentsSettlementAllocationIntentSettledEvent`, and `V2PaymentsSettlementAllocationIntentSubmittedEvent` with related object `V2::Payments::SettlementAllocationIntent`
  * Add support for event notifications `V2PaymentsSettlementAllocationIntentSplitCanceledEvent`, `V2PaymentsSettlementAllocationIntentSplitCreatedEvent`, and `V2PaymentsSettlementAllocationIntentSplitSettledEvent` with related object `V2::Payments::SettlementAllocationIntentSplit`

## 18.1.0-alpha.4 - 2025-12-04
* [#1740](https://github.com/stripe/stripe-ruby/pull/1740) Update generated code for private-preview
  * Add support for event notifications `V2IamApiKeyCreatedEvent`, `V2IamApiKeyDefaultSecretRevealedEvent`, `V2IamApiKeyExpiredEvent`, `V2IamApiKeyPermissionsUpdatedEvent`, `V2IamApiKeyRotatedEvent`, and `V2IamApiKeyUpdatedEvent`
* [#1739](https://github.com/stripe/stripe-ruby/pull/1739) Update generated code for private-preview
  * Add support for `check_scanning` on `AccountSession::Component`
  * Add support for `client` on `V2::Core::Event::Reason::Request`
  * Add support for `stripe_balance_payment` on `V2::MoneyManagement::ReceivedCredit` and `V2::MoneyManagement::ReceivedDebit`
  * Add support for `balance_transfer` on `V2::MoneyManagement::ReceivedDebit`
  * Add support for `include` on `V2::Core::EventListParams` and `V2::Core::EventRetrieveParams`

## 18.1.0-alpha.3 - 2025-11-24
* [#1737](https://github.com/stripe/stripe-ruby/pull/1737) Update generated code for private-preview
  * Add support for new resource `ProductCatalog::TrialOffer`
  * Add support for `create` method on resource `ProductCatalog::TrialOffer`
  * Remove support for `amount_subtotal_after_discount` on `DelegatedCheckout::RequestedSession::LineItemDetail` and `DelegatedCheckout::RequestedSession::TotalDetail`
  * Remove support for `amount_total`, `unit_amount_after_discount`, and `unit_discount` on `DelegatedCheckout::RequestedSession::LineItemDetail`
  * Add support for `amount_cart_discount` and `amount_items_discount` on `DelegatedCheckout::RequestedSession::TotalDetail`
  * Remove support for `amount_discount` on `DelegatedCheckout::RequestedSession::TotalDetail`
  * Add support for `payments_orchestration` on `PaymentIntentCreateParams` and `PaymentIntent`

## 18.1.0-alpha.2 - 2025-11-20
This release changes the pinned API version to `2025-11-17.preview`.

* [#1734](https://github.com/stripe/stripe-ruby/pull/1734) Update generated code for private-preview
  * Add support for new resources `V2::Core::AccountPersonToken`, `V2::Core::AccountToken`, and `V2::MoneyManagement::CurrencyConversion`
  * Add support for `create`, `list`, and `retrieve` methods on resource `V2::MoneyManagement::CurrencyConversion`
  * Add support for `create` and `retrieve` methods on resources `V2::Core::AccountPersonToken` and `V2::Core::AccountToken`
  * Add support for `effective_at` on `InvoiceCreatePreviewParams::ScheduleDetail::Amendment`, `InvoiceCreatePreviewParams::ScheduleDetail::Phase`, `QuoteCreateParams::Line`, `QuoteLine`, `QuotePreviewSubscriptionSchedule::Phase`, `QuoteUpdateParams::Line`, `SubscriptionSchedule::Phase`, `SubscriptionScheduleAmendParams::Amendment`, `SubscriptionScheduleCreateParams::Phase`, and `SubscriptionScheduleUpdateParams::Phase`
  * Add support for `trial_offer` on `InvoiceCreatePreviewParams::ScheduleDetail::Amendment::ItemAction::Add`, `InvoiceCreatePreviewParams::ScheduleDetail::Amendment::ItemAction::Set`, `InvoiceCreatePreviewParams::ScheduleDetail::Phase::Item`, `QuoteCreateParams::Line::Action::AddItem`, `QuoteCreateParams::Line::Action::SetItem`, `QuoteLine::Action::AddItem`, `QuoteLine::Action::SetItem`, `QuotePreviewSubscriptionSchedule::Phase::Item`, `QuoteUpdateParams::Line::Action::AddItem`, `QuoteUpdateParams::Line::Action::SetItem`, `SubscriptionSchedule::Phase::Item`, `SubscriptionScheduleAmendParams::Amendment::ItemAction::Add`, `SubscriptionScheduleAmendParams::Amendment::ItemAction::Set`, `SubscriptionScheduleCreateParams::Phase::Item`, and `SubscriptionScheduleUpdateParams::Phase::Item`
  * Change type of `DelegatedCheckout::RequestedSession.amount_subtotal` from `longInteger` to `nullable(longInteger)`
  * Change type of `DelegatedCheckout::RequestedSession.amount_total` from `longInteger` to `nullable(longInteger)`
  * Add support for `amount_discount`, `amount_subtotal`, `amount_total`, `unit_amount_after_discount`, and `unit_discount` on `DelegatedCheckout::RequestedSession::LineItemDetail`
  * Add support for `amount_subtotal_after_discount` on `DelegatedCheckout::RequestedSession::LineItemDetail` and `DelegatedCheckout::RequestedSession::TotalDetail`
  * Change type of `InvoiceCreatePreviewParams::ScheduleDetail.billing_schedules` from `array(billing_schedules_update_params)` to `emptyable(array(billing_schedules_update_params))`
  * Add support for `current_trial` on `InvoiceCreatePreviewParams::SubscriptionDetail::Item`, `SubscriptionCreateParams::Item`, `SubscriptionItemCreateParams`, `SubscriptionItemUpdateParams`, `SubscriptionItem`, and `SubscriptionUpdateParams::Item`
  * Change type of `QuoteCreateParams::SubscriptionDataOverride.billing_schedules` and `QuoteCreateParams::SubscriptionDatum.billing_schedules` from `emptyable(array(billing_schedules_create_specs))` to `array(billing_schedules_create_specs)`
  * Change type of `Quote::SubscriptionDataOverride.billing_schedules` and `Quote::SubscriptionDatum.billing_schedules` from `nullable(array(SubscriptionsResourceBillingSchedules))` to `array(QuotesResourceSubscriptionDataBillingSchedules)`
  * Change type of `Quote::SubscriptionDataOverride.phase_effective_at` and `Quote::SubscriptionDatum.phase_effective_at` from `nullable(enum('billing_period_start'|'phase_start'))` to `enum('billing_period_start'|'line_start')`
  * Change type of `QuotePreviewSubscriptionSchedule::DefaultSetting.phase_effective_at` and `SubscriptionSchedule::DefaultSetting.phase_effective_at` from `nullable(enum('billing_period_start'|'phase_start'))` to `enum('billing_period_start'|'phase_start')`
  * Change type of `QuotePreviewSubscriptionSchedule.billing_schedules` and `SubscriptionSchedule.billing_schedules` from `nullable(array(SubscriptionsResourceBillingSchedules))` to `array(SubscriptionsResourceBillingSchedules)`
  * Remove support for `amendment_start`, `line_starts_at`, and `relative` on `Subscription::BillingSchedule::BillFrom`
  * Change type of `Subscription::BillingSchedule::BillFrom.computed_timestamp` from `nullable(DateTime)` to `DateTime`
  * Change type of `Subscription::BillingSchedule::BillFrom.type` from `enum` to `literal('timestamp')`
  * Remove support for `amendment_end` and `line_ends_at` on `Subscription::BillingSchedule::BillUntil`
  * Change type of `V2::Billing::ServiceAction::CreditGrant::Amount.monetary`, `V2::Billing::ServiceAction::CreditGrantPerTenant::Amount.monetary`, `V2::Billing::ServiceActionCreateParams::CreditGrant::Amount.monetary`, and `V2::Billing::ServiceActionCreateParams::CreditGrantPerTenant::Amount.monetary` from `amount` to `an object`
  * Add support for `future_requirements` on `V2::Core::Account`
  * Add support for `konbini_payments` and `script_statement_descriptor` on `V2::Core::Account::Configuration::Merchant`, `V2::Core::AccountCreateParams::Configuration::Merchant`, and `V2::Core::AccountUpdateParams::Configuration::Merchant`
  * Add support for `eur` on `V2::Core::Account::Configuration::Storer::Capability::HoldsCurrency`, `V2::Core::AccountCreateParams::Configuration::Storer::Capability::HoldsCurrency`, and `V2::Core::AccountUpdateParams::Configuration::Storer::Capability::HoldsCurrency`
  * Add support for `requirements_collector` on `V2::Core::Account::Default::Responsibility`
  * Remove support for `collector` on `V2::Core::Account::Requirement`
  * Remove support for `v1_event_id` on `V2::Core::Event`
  * Remove support for `amount_details` and `capture_method` on `V2::Payments::OffSessionPaymentCreateParams` and `V2::Payments::OffSessionPayment`
  * Change type of `V2::Payments::OffSessionPayment.amount_capturable` from `amount` to `an object`
  * Change type of `V2::Payments::OffSessionPayment.amount_requested` from `amount` to `an object`
  * Change type of `V2::Payments::OffSessionPaymentCreateParams.amount` from `amount` to `an object`
  * Change `V2::Payments::OffSessionPaymentCreateParams::RetryDetail.retry_strategy` to be optional
  * Remove support for `destination` on `V2::Payments::OffSessionPaymentCaptureParams::TransferDatum`
  * Change `V2::Payments::OffSessionPaymentCaptureParams.amount_to_capture` to be optional
  * Add support for `created` on `V2::Core::EventListParams`
  * Remove support for `gt`, `gte`, `lt`, and `lte` on `V2::Core::EventListParams`
  * Add support for `account_token` on `V2::Core::AccountCreateParams` and `V2::Core::AccountUpdateParams`
  * Add support for `person_token` on `V2::Core::AccountPersonCreateParams` and `V2::Core::AccountPersonUpdateParams`
  * Add support for `impacted_requests_percentage` on `EventsV2CoreHealthApiErrorFiringEvent`, `EventsV2CoreHealthApiErrorResolvedEvent`, `EventsV2CoreHealthApiLatencyFiringEvent`, `EventsV2CoreHealthApiLatencyResolvedEvent`, `EventsV2CoreHealthPaymentMethodErrorFiringEvent`, and `EventsV2CoreHealthPaymentMethodErrorResolvedEvent`
  * Add support for `context` and `related_object` on `EventsV2CoreHealthEventGenerationFailureResolvedEvent`
  * Remove support for `account`, `livemode`, `missing_delivery_attempts`, and `related_object_id` on `EventsV2CoreHealthEventGenerationFailureResolvedEvent`
  * Change type of `EventsV2CoreHealthFraudRateIncreasedEvent.realized_fraud_amount` from `amount` to `an object`
  * Change type of `EventsV2CoreHealthIssuingAuthorizationRequestErrorsFiringEvent.approved_amount`, `EventsV2CoreHealthIssuingAuthorizationRequestErrorsResolvedEvent.approved_amount`, `EventsV2CoreHealthIssuingAuthorizationRequestTimeoutFiringEvent.approved_amount`, and `EventsV2CoreHealthIssuingAuthorizationRequestTimeoutResolvedEvent.approved_amount` from `amount` to `an object`
  * Change type of `EventsV2CoreHealthIssuingAuthorizationRequestErrorsFiringEvent.declined_amount`, `EventsV2CoreHealthIssuingAuthorizationRequestErrorsResolvedEvent.declined_amount`, `EventsV2CoreHealthIssuingAuthorizationRequestTimeoutFiringEvent.declined_amount`, and `EventsV2CoreHealthIssuingAuthorizationRequestTimeoutResolvedEvent.declined_amount` from `amount` to `an object`
  * Add support for thin events `V2PaymentsOffSessionPaymentAttemptFailedEvent` and `V2PaymentsOffSessionPaymentAttemptStartedEvent` with related object `V2::Payments::OffSessionPayment`
  * Remove support for thin event `V1AccountUpdatedEvent` with related object `Account`
  * Remove support for thin events `V1ApplicationFeeCreatedEvent` and `V1ApplicationFeeRefundedEvent` with related object `ApplicationFee`
  * Remove support for thin events `V1BillingPortalConfigurationCreatedEvent` and `V1BillingPortalConfigurationUpdatedEvent` with related object `BillingPortal::Configuration`
  * Remove support for thin event `V1CapabilityUpdatedEvent` with related object `Capability`
  * Remove support for thin events `V1ChargeCapturedEvent`, `V1ChargeExpiredEvent`, `V1ChargeFailedEvent`, `V1ChargePendingEvent`, `V1ChargeRefundedEvent`, `V1ChargeSucceededEvent`, and `V1ChargeUpdatedEvent` with related object `Charge`
  * Remove support for thin events `V1ChargeDisputeClosedEvent`, `V1ChargeDisputeCreatedEvent`, `V1ChargeDisputeFundsReinstatedEvent`, `V1ChargeDisputeFundsWithdrawnEvent`, and `V1ChargeDisputeUpdatedEvent` with related object `Dispute`
  * Remove support for thin events `V1ChargeRefundUpdatedEvent`, `V1RefundCreatedEvent`, `V1RefundFailedEvent`, and `V1RefundUpdatedEvent` with related object `Refund`
  * Remove support for thin events `V1CheckoutSessionAsyncPaymentFailedEvent`, `V1CheckoutSessionAsyncPaymentSucceededEvent`, `V1CheckoutSessionCompletedEvent`, and `V1CheckoutSessionExpiredEvent` with related object `Checkout::Session`
  * Remove support for thin events `V1ClimateOrderCanceledEvent`, `V1ClimateOrderCreatedEvent`, `V1ClimateOrderDelayedEvent`, `V1ClimateOrderDeliveredEvent`, and `V1ClimateOrderProductSubstitutedEvent` with related object `Climate::Order`
  * Remove support for thin events `V1ClimateProductCreatedEvent` and `V1ClimateProductPricingUpdatedEvent` with related object `Climate::Product`
  * Remove support for thin events `V1CouponCreatedEvent`, `V1CouponDeletedEvent`, and `V1CouponUpdatedEvent` with related object `Coupon`
  * Remove support for thin events `V1CreditNoteCreatedEvent`, `V1CreditNoteUpdatedEvent`, and `V1CreditNoteVoidedEvent` with related object `CreditNote`
  * Remove support for thin events `V1CustomerCreatedEvent`, `V1CustomerDeletedEvent`, and `V1CustomerUpdatedEvent` with related object `Customer`
  * Remove support for thin events `V1CustomerSubscriptionCreatedEvent`, `V1CustomerSubscriptionDeletedEvent`, `V1CustomerSubscriptionPausedEvent`, `V1CustomerSubscriptionPendingUpdateAppliedEvent`, `V1CustomerSubscriptionPendingUpdateExpiredEvent`, `V1CustomerSubscriptionResumedEvent`, `V1CustomerSubscriptionTrialWillEndEvent`, and `V1CustomerSubscriptionUpdatedEvent` with related object `Subscription`
  * Remove support for thin events `V1CustomerTaxIdCreatedEvent`, `V1CustomerTaxIdDeletedEvent`, and `V1CustomerTaxIdUpdatedEvent` with related object `TaxId`
  * Remove support for thin event `V1FileCreatedEvent` with related object `File`
  * Remove support for thin events `V1FinancialConnectionsAccountCreatedEvent`, `V1FinancialConnectionsAccountDeactivatedEvent`, `V1FinancialConnectionsAccountDisconnectedEvent`, `V1FinancialConnectionsAccountReactivatedEvent`, `V1FinancialConnectionsAccountRefreshedBalanceEvent`, `V1FinancialConnectionsAccountRefreshedOwnershipEvent`, and `V1FinancialConnectionsAccountRefreshedTransactionsEvent` with related object `FinancialConnections::Account`
  * Remove support for thin events `V1IdentityVerificationSessionCanceledEvent`, `V1IdentityVerificationSessionCreatedEvent`, `V1IdentityVerificationSessionProcessingEvent`, `V1IdentityVerificationSessionRedactedEvent`, `V1IdentityVerificationSessionRequiresInputEvent`, and `V1IdentityVerificationSessionVerifiedEvent` with related object `Identity::VerificationSession`
  * Remove support for thin events `V1InvoiceCreatedEvent`, `V1InvoiceDeletedEvent`, `V1InvoiceFinalizationFailedEvent`, `V1InvoiceFinalizedEvent`, `V1InvoiceMarkedUncollectibleEvent`, `V1InvoiceOverdueEvent`, `V1InvoiceOverpaidEvent`, `V1InvoicePaidEvent`, `V1InvoicePaymentActionRequiredEvent`, `V1InvoicePaymentFailedEvent`, `V1InvoicePaymentSucceededEvent`, `V1InvoiceSentEvent`, `V1InvoiceUpcomingEvent`, `V1InvoiceUpdatedEvent`, `V1InvoiceVoidedEvent`, and `V1InvoiceWillBeDueEvent` with related object `Invoice`
  * Remove support for thin event `V1InvoicePaymentPaidEvent` with related object `InvoicePayment`
  * Remove support for thin events `V1InvoiceitemCreatedEvent` and `V1InvoiceitemDeletedEvent` with related object `InvoiceItem`
  * Remove support for thin events `V1IssuingAuthorizationCreatedEvent`, `V1IssuingAuthorizationRequestEvent`, and `V1IssuingAuthorizationUpdatedEvent` with related object `Issuing::Authorization`
  * Remove support for thin events `V1IssuingCardCreatedEvent` and `V1IssuingCardUpdatedEvent` with related object `Issuing::Card`
  * Remove support for thin events `V1IssuingCardholderCreatedEvent` and `V1IssuingCardholderUpdatedEvent` with related object `Issuing::Cardholder`
  * Remove support for thin events `V1IssuingDisputeClosedEvent`, `V1IssuingDisputeCreatedEvent`, `V1IssuingDisputeFundsReinstatedEvent`, `V1IssuingDisputeFundsRescindedEvent`, `V1IssuingDisputeSubmittedEvent`, and `V1IssuingDisputeUpdatedEvent` with related object `Issuing::Dispute`
  * Remove support for thin events `V1IssuingPersonalizationDesignActivatedEvent`, `V1IssuingPersonalizationDesignDeactivatedEvent`, `V1IssuingPersonalizationDesignRejectedEvent`, and `V1IssuingPersonalizationDesignUpdatedEvent` with related object `Issuing::PersonalizationDesign`
  * Remove support for thin events `V1IssuingTokenCreatedEvent` and `V1IssuingTokenUpdatedEvent` with related object `Issuing::Token`
  * Remove support for thin events `V1IssuingTransactionCreatedEvent`, `V1IssuingTransactionPurchaseDetailsReceiptUpdatedEvent`, and `V1IssuingTransactionUpdatedEvent` with related object `Issuing::Transaction`
  * Remove support for thin event `V1MandateUpdatedEvent` with related object `Mandate`
  * Remove support for thin events `V1PaymentIntentAmountCapturableUpdatedEvent`, `V1PaymentIntentCanceledEvent`, `V1PaymentIntentCreatedEvent`, `V1PaymentIntentPartiallyFundedEvent`, `V1PaymentIntentPaymentFailedEvent`, `V1PaymentIntentProcessingEvent`, `V1PaymentIntentRequiresActionEvent`, and `V1PaymentIntentSucceededEvent` with related object `PaymentIntent`
  * Remove support for thin events `V1PaymentLinkCreatedEvent` and `V1PaymentLinkUpdatedEvent` with related object `PaymentLink`
  * Remove support for thin events `V1PaymentMethodAttachedEvent`, `V1PaymentMethodAutomaticallyUpdatedEvent`, `V1PaymentMethodDetachedEvent`, and `V1PaymentMethodUpdatedEvent` with related object `PaymentMethod`
  * Remove support for thin events `V1PayoutCanceledEvent`, `V1PayoutCreatedEvent`, `V1PayoutFailedEvent`, `V1PayoutPaidEvent`, `V1PayoutReconciliationCompletedEvent`, and `V1PayoutUpdatedEvent` with related object `Payout`
  * Remove support for thin events `V1PersonCreatedEvent`, `V1PersonDeletedEvent`, and `V1PersonUpdatedEvent` with related object `Person`
  * Remove support for thin events `V1PlanCreatedEvent`, `V1PlanDeletedEvent`, and `V1PlanUpdatedEvent` with related object `Plan`
  * Remove support for thin events `V1PriceCreatedEvent`, `V1PriceDeletedEvent`, and `V1PriceUpdatedEvent` with related object `Price`
  * Remove support for thin events `V1ProductCreatedEvent`, `V1ProductDeletedEvent`, and `V1ProductUpdatedEvent` with related object `Product`
  * Remove support for thin events `V1PromotionCodeCreatedEvent` and `V1PromotionCodeUpdatedEvent` with related object `PromotionCode`
  * Remove support for thin events `V1QuoteAcceptedEvent`, `V1QuoteCanceledEvent`, `V1QuoteCreatedEvent`, and `V1QuoteFinalizedEvent` with related object `Quote`
  * Remove support for thin events `V1RadarEarlyFraudWarningCreatedEvent` and `V1RadarEarlyFraudWarningUpdatedEvent` with related object `Radar::EarlyFraudWarning`
  * Remove support for thin events `V1ReviewClosedEvent` and `V1ReviewOpenedEvent` with related object `Review`
  * Remove support for thin events `V1SetupIntentCanceledEvent`, `V1SetupIntentCreatedEvent`, `V1SetupIntentRequiresActionEvent`, `V1SetupIntentSetupFailedEvent`, and `V1SetupIntentSucceededEvent` with related object `SetupIntent`
  * Remove support for thin event `V1SigmaScheduledQueryRunCreatedEvent` with related object `Sigma::ScheduledQueryRun`
  * Remove support for thin events `V1SourceCanceledEvent`, `V1SourceChargeableEvent`, `V1SourceFailedEvent`, and `V1SourceRefundAttributesRequiredEvent` with related object `Source`
  * Remove support for thin events `V1SubscriptionScheduleAbortedEvent`, `V1SubscriptionScheduleCanceledEvent`, `V1SubscriptionScheduleCompletedEvent`, `V1SubscriptionScheduleCreatedEvent`, `V1SubscriptionScheduleExpiringEvent`, `V1SubscriptionScheduleReleasedEvent`, and `V1SubscriptionScheduleUpdatedEvent` with related object `SubscriptionSchedule`
  * Remove support for thin events `V1TaxRateCreatedEvent` and `V1TaxRateUpdatedEvent` with related object `TaxRate`
  * Remove support for thin events `V1TerminalReaderActionFailedEvent`, `V1TerminalReaderActionSucceededEvent`, and `V1TerminalReaderActionUpdatedEvent` with related object `Terminal::Reader`
  * Remove support for thin events `V1TestHelpersTestClockAdvancingEvent`, `V1TestHelpersTestClockCreatedEvent`, `V1TestHelpersTestClockDeletedEvent`, `V1TestHelpersTestClockInternalFailureEvent`, and `V1TestHelpersTestClockReadyEvent` with related object `TestHelpers::TestClock`
  * Remove support for thin events `V1TopupCanceledEvent`, `V1TopupCreatedEvent`, `V1TopupFailedEvent`, `V1TopupReversedEvent`, and `V1TopupSucceededEvent` with related object `Topup`
  * Remove support for thin events `V1TransferCreatedEvent`, `V1TransferReversedEvent`, and `V1TransferUpdatedEvent` with related object `Transfer`

## 18.1.0-alpha.1 - 2025-11-18
This release changes the pinned API version to `2025-11-17.preview`.

* [#1730](https://github.com/stripe/stripe-ruby/pull/1730) Update generated code for private-preview
  * Add support for new resources `BalanceTransfer` and `Radar::AccountEvaluation`
  * Add support for `create` method on resource `BalanceTransfer`
  * Add support for `create`, `retrieve`, and `update` methods on resource `Radar::AccountEvaluation`
  * Change `Tax::Association.tax_transaction_attempts` to be required
  * Add support for `specified_commercial_transactions_act_url` on `Account::BusinessProfile`, `AccountCreateParams::BusinessProfile`, and `AccountUpdateParams::BusinessProfile`
  * Add support for `paypay_payments` on `Account::Setting`, `AccountCreateParams::Setting`, and `AccountUpdateParams::Setting`
  * Change type of `Billing::Analytics::MeterUsageRetrieveParams::Meter.dimension_filters` from `string` to `array(string)`
  * Change type of `Billing::Analytics::MeterUsageRetrieveParams::Meter.tenant_filters` from `string` to `array(string)`
  * Add support for `payment_method_configuration` on `BillingPortal::Configuration::Feature::PaymentMethodUpdate`
  * Add support for `car_rental_data`, `flight_data`, and `lodging_data` on `ChargeCaptureParams::PaymentDetail`, `ChargeUpdateParams::PaymentDetail`, `PaymentIntentCaptureParams::PaymentDetail`, `PaymentIntentConfirmParams::PaymentDetail`, `PaymentIntentCreateParams::PaymentDetail`, and `PaymentIntentUpdateParams::PaymentDetail`
  * Add support for `transaction_id` on `Charge::PaymentMethodDetail::Ideal`, `PaymentAttemptRecord::PaymentMethodDetail::Ideal`, and `PaymentRecord::PaymentMethodDetail::Ideal`
  * Add support for `created` on `CustomerCustomerBalanceTransactionListParams` and `InvoicePaymentListParams`
  * Add support for `account_numbers` on `FinancialConnections::Account`
  * Change type of `FinancialConnections::Session.client_secret` from `string` to `nullable(string)`
  * Add support for `fraud_risk` on `Issuing::AuthorizationCreateParams::RiskAssessment`
  * Add support for `latest_fraud_warning` on `Issuing::Card`
  * Add support for `supplementary_purchase_data` on `OrderCreateParams::Payment::Setting::PaymentMethodOption::Klarna`, `OrderUpdateParams::Payment::Setting::PaymentMethodOption::Klarna`, `PaymentIntentConfirmParams::PaymentMethodOption::Klarna`, `PaymentIntentCreateParams::PaymentMethodOption::Klarna`, and `PaymentIntentUpdateParams::PaymentMethodOption::Klarna`
  * Add support for `capture_method` on `PaymentIntent::PaymentMethodOption::CardPresent`, `PaymentIntentConfirmParams::PaymentMethodOption::CardPresent`, `PaymentIntentCreateParams::PaymentMethodOption::CardPresent`, and `PaymentIntentUpdateParams::PaymentMethodOption::CardPresent`
  * Add support for `allow_redisplay` and `customer_account` on `PaymentMethodListParams`
  * Add support for `mb_way` and `twint` on `Refund::DestinationDetail`
  * Change type of `SubscriptionScheduleUpdateParams.billing_schedules` from `array(billing_schedules_update_params)` to `emptyable(array(billing_schedules_update_params))`
* [#1731](https://github.com/stripe/stripe-ruby/pull/1731) Update generated code for private-preview
  * Add support for `billing_schedules_actions` on `InvoiceCreatePreviewParams::ScheduleDetail::Amendment` and `SubscriptionScheduleAmendParams::Amendment`

## 17.3.0-alpha.2 - 2025-11-13
This release changes the pinned API version to `2025-10-29.preview`.

* [#1723](https://github.com/stripe/stripe-ruby/pull/1723) Update generated code for private-preview
  * Remove support for resource `V2::Tax::AutomaticRule`
  * Remove support for `create`, `deactivate`, `find`, `retrieve`, and `update` methods on resource `V2::Tax::AutomaticRule`
  * Add support for `self_reported_income` and `self_reported_monthly_housing_payment` on `AccountCreateParams::Individual`, `AccountPersonCreateParams`, `AccountPersonUpdateParams`, `AccountUpdateParams::Individual`, `Person`, `TokenCreateParams::Account::Individual`, and `TokenCreateParams::Person`
  * Add support for `billing_schedules` and `phase_effective_at` on `Quote::SubscriptionDataOverride`, `Quote::SubscriptionDatum`, `QuoteCreateParams::SubscriptionDataOverride`, `QuoteCreateParams::SubscriptionDatum`, `QuoteUpdateParams::SubscriptionDataOverride`, and `QuoteUpdateParams::SubscriptionDatum`
  * Add support for `bill_from` on `Subscription::BillingSchedule`
  * Add support for `amendment_end` and `line_ends_at` on `Subscription::BillingSchedule::BillUntil`
* [#1728](https://github.com/stripe/stripe-ruby/pull/1728) Update generated code for private-preview
  * Add support for new resource `Issuing::Program`
  * Add support for `create`, `list`, `retrieve`, and `update` methods on resource `Issuing::Program`
  * Add support for `schedule` on `Discount`
  * Add support for `applicable_fees` on `DelegatedCheckout::RequestedSession::TotalDetail`
  * Add support for `schedule_details` on `Invoice::Parent`, `InvoiceItem::Parent`, `InvoiceLineItem::Parent`, and `QuotePreviewInvoice::Parent`
  * Add support for `billing_schedules` on `InvoiceCreatePreviewParams::ScheduleDetail`, `QuotePreviewSubscriptionSchedule`, `SubscriptionScheduleCreateParams`, `SubscriptionScheduleUpdateParams`, and `SubscriptionSchedule`
  * Add support for `latest_invoice` on `QuotePreviewSubscriptionSchedule` and `SubscriptionSchedule`
  * Add support for `phase_effective_at` on `QuotePreviewSubscriptionSchedule::DefaultSetting`, `SubscriptionSchedule::DefaultSetting`, `SubscriptionScheduleCreateParams::DefaultSetting`, and `SubscriptionScheduleUpdateParams::DefaultSetting`

## 17.3.0-alpha.1 - 2025-11-06
* [#1720](https://github.com/stripe/stripe-ruby/pull/1720) Update generated code for private-preview
  * Add support for new resources `TransitBalance`, `V2::Reporting::ReportRun`, `V2::Reporting::Report`
  * Add support for `create` and `retrieve` methods on resources `V2::Billing::ServiceAction` and `V2::Reporting::ReportRun`
    * Add support for `retrieve` method on resources `V2::Billing::LicenseFeeSubscription` and `V2::Reporting::Report`
  * Add support for `create` and `refill` test helper methods on resource `Capital::FinancingOffer`
  * Add support for `allocated_funds` on `Charge`, `PaymentIntentConfirmParams`, `PaymentIntentCreateParams`, and `PaymentIntentUpdateParams`
  * Add support for thin events `V2ReportingReportRunCreatedEvent`, `V2ReportingReportRunFailedEvent`, `V2ReportingReportRunSucceededEvent`, and `V2ReportingReportRunUpdatedEvent` with related object `V2::Reporting::ReportRun`

## 17.2.0-alpha.2 - 2025-10-30
* [#1719](https://github.com/stripe/stripe-ruby/pull/1719) Update generated code for private-preview
  * Change `DelegatedCheckout::RequestedSessionUpdateParams::LineItemDetail.quantity` to be required
  * Add support for `payment_method_preview` on `DelegatedCheckout::RequestedSession`
  * Add support for `order_id` on `DelegatedCheckout::RequestedSession::OrderDetail`
  * Add support for `lead` on `V2::Core::Account::Configuration::CardCreator::Capability::Commercial`, `V2::Core::Account::Identity::Attestation::TermsOfService::CardCreator::Commercial`, `V2::Core::AccountCreateParams::Configuration::CardCreator::Capability::Commercial`, `V2::Core::AccountCreateParams::Identity::Attestation::TermsOfService::CardCreator::Commercial`, `V2::Core::AccountUpdateParams::Configuration::CardCreator::Capability::Commercial`, and `V2::Core::AccountUpdateParams::Identity::Attestation::TermsOfService::CardCreator::Commercial`
  * Add support for `global_account_holder` on `V2::Core::Account::Identity::Attestation::TermsOfService::CardCreator::Commercial`, `V2::Core::AccountCreateParams::Identity::Attestation::TermsOfService::CardCreator::Commercial`, and `V2::Core::AccountUpdateParams::Identity::Attestation::TermsOfService::CardCreator::Commercial`

## 17.2.0-alpha.1 - 2025-10-29
* [#1713](https://github.com/stripe/stripe-ruby/pull/1713) Update generated code for private-preview
  * Add support for `report_refund` method on resource `PaymentRecord`
  * Add support for `tenants` on `Billing::Analytics::MeterUsageRow`
  * Add support for `representative_declaration` on `Account::Company`, `AccountCreateParams::Company`, `AccountUpdateParams::Company`, and `TokenCreateParams::Account::Company`
  * Add support for `transfer` on `ApplicationFee::FeeSource`
  * Add support for `transit_balances_total` on `Balance`
  * Add support for `tenant_group_by_keys` on `Billing::Analytics::MeterUsageRetrieveParams::Meter`
  * Change `Billing::CreditGrantCreateParams.category` to be optional
  * Add support for `payment_method_configuration` on `BillingPortal::ConfigurationCreateParams::Feature::PaymentMethodUpdate` and `BillingPortal::ConfigurationUpdateParams::Feature::PaymentMethodUpdate`
  * Add support for `payment_portal_url` on `Charge::PaymentMethodDetail::Rechnung`, `PaymentAttemptRecord::PaymentMethodDetail::Rechnung`, and `PaymentRecord::PaymentMethodDetail::Rechnung`
  * Add support for `twint` on `Checkout::Session::PaymentMethodOption` and `Checkout::SessionCreateParams::PaymentMethodOption`
  * Change `CreditNote::Refund.payment_record_refund` to be required
  * Change `CreditNote::Refund.type` to be required
  * Add support for `customer_sheet`, `mobile_payment_element`, and `tax_id_element` on `CustomerSession::Component` and `CustomerSessionCreateParams::Component`
  * Add support for `provider` on `Customer::Tax`
  * Remove support for `risk_details` on `DelegatedCheckout::RequestedSessionCreateParams`
  * Add support for `risk_details` on `DelegatedCheckout::RequestedSessionConfirmParams`
  * Add support for `starting_after` on `PaymentAttemptRecordListParams`
  * Add support for `reference` on `PaymentIntentAmountDetailsLineItem::PaymentMethodOption::Klarna`, `PaymentIntentCaptureParams::AmountDetail::LineItem::PaymentMethodOption::Klarna`, `PaymentIntentConfirmParams::AmountDetail::LineItem::PaymentMethodOption::Klarna`, `PaymentIntentCreateParams::AmountDetail::LineItem::PaymentMethodOption::Klarna`, `PaymentIntentIncrementAuthorizationParams::AmountDetail::LineItem::PaymentMethodOption::Klarna`, and `PaymentIntentUpdateParams::AmountDetail::LineItem::PaymentMethodOption::Klarna`
  * Add support for `allocated_funds` on `PaymentIntent`
  * Change `PaymentIntent::PaymentDetail.customer_reference` to be required
  * Change `PaymentIntent::PaymentDetail.order_reference` to be required
  * Add support for `subscription_reference` on `PaymentIntentAmountDetailsLineItem::PaymentMethodOption::Klarna`
  * Add support for `name_collection` on `PaymentLinkCreateParams`, `PaymentLinkUpdateParams`, and `PaymentLink`
  * Add support for `crypto` on `PaymentMethodConfigurationCreateParams`, `PaymentMethodConfigurationUpdateParams`, `PaymentMethodConfiguration`, and `Refund::DestinationDetail`
  * Add support for `mb_way` on `PaymentMethodConfigurationCreateParams`, `PaymentMethodConfigurationUpdateParams`, and `PaymentMethodConfiguration`
  * Add support for `custom` on `PaymentMethodCreateParams` and `PaymentMethod`
  * Add support for `excluded_payment_method_types` on `SetupIntentCreateParams`, `SetupIntentUpdateParams`, and `SetupIntent`
  * Change `SetupIntent.flow_directions` to be optional
  * Add support for `tw` on `Tax::Registration::CountryOption` and `Tax::RegistrationCreateParams::CountryOption`
  * Add support for `gip` on `Terminal::Configuration::Tipping`, `Terminal::ConfigurationCreateParams::Tipping`, and `Terminal::ConfigurationUpdateParams::Tipping`
  * Add support for `last_seen_at` on `Terminal::Reader`
  * Add support for `application_fee_amount` on `TransferCreateParams` and `Transfer`
  * Add support for `application_fee` on `Transfer`
  * Add support for `high_risk_activities_description`, `high_risk_activities`, `money_services_description`, `operates_in_prohibited_countries`, `participates_in_regulated_activity`, `purpose_of_funds_description`, `purpose_of_funds`, `regulated_activity`, `source_of_funds_description`, and `source_of_funds` on `V2::Core::Account::Configuration::Storer`, `V2::Core::AccountCreateParams::Configuration::Storer`, and `V2::Core::AccountUpdateParams::Configuration::Storer`
  * Add support for `crypto_wallets` on `V2::Core::Account::Configuration::Storer::Capability::FinancialAddress`, `V2::Core::Account::Configuration::Storer::Capability::OutboundPayment`, `V2::Core::Account::Configuration::Storer::Capability::OutboundTransfer`, `V2::Core::AccountCreateParams::Configuration::Storer::Capability::FinancialAddress`, `V2::Core::AccountCreateParams::Configuration::Storer::Capability::OutboundPayment`, `V2::Core::AccountCreateParams::Configuration::Storer::Capability::OutboundTransfer`, `V2::Core::AccountUpdateParams::Configuration::Storer::Capability::FinancialAddress`, `V2::Core::AccountUpdateParams::Configuration::Storer::Capability::OutboundPayment`, and `V2::Core::AccountUpdateParams::Configuration::Storer::Capability::OutboundTransfer`
  * Add support for `usdc` on `V2::Core::Account::Configuration::Storer::Capability::HoldsCurrency`, `V2::Core::AccountCreateParams::Configuration::Storer::Capability::HoldsCurrency`, and `V2::Core::AccountUpdateParams::Configuration::Storer::Capability::HoldsCurrency`
  * Add support for `crypto_storer` on `V2::Core::Account::Identity::Attestation::TermsOfService` and `V2::Core::AccountCreateParams::Identity::Attestation::TermsOfService`
  * Add support for `compliance_screening_description` on `V2::Core::Account::Identity::BusinessDetail`, `V2::Core::AccountCreateParams::Identity::BusinessDetail`, and `V2::Core::AccountUpdateParams::Identity::BusinessDetail`
  * Add support for `external_amount` on `V2::MoneyManagement::ReceivedCredit` and `V2::MoneyManagement::ReceivedDebit`

## 17.1.0-alpha.4 - 2025-10-23
* [#1710](https://github.com/stripe/stripe-ruby/pull/1710) Update generated code for private-preview
  * Add support for new resource `V2::Billing::PricingPlanSubscriptionComponents`
  * Add support for `retrieve` method on resource `V2::Billing::PricingPlanSubscriptionComponents`
  * Add support for `dimension_payload_keys` on `Billing::MeterCreateParams` and `Billing::Meter`
  * Add support for `dimension_filters` and `dimension_group_by_keys` on `Billing::BillingMeterMeterEventSummaryListParams`
  * Add support for `dimensions` on `Billing::MeterEventSummary`
  * Add support for `fulfillment_details` and `payment_method_data` on `DelegatedCheckout::RequestedSessionCreateParams` and `DelegatedCheckout::RequestedSessionUpdateParams`
  * Add support for `line_item_details`, `metadata`, `payment_method`, and `shared_metadata` on `DelegatedCheckout::RequestedSessionCreateParams`, `DelegatedCheckout::RequestedSessionUpdateParams`, and `DelegatedCheckout::RequestedSession`
  * Add support for `currency`, `customer`, and `risk_details` on `DelegatedCheckout::RequestedSessionCreateParams`
  * Add support for `seller_details` and `setup_future_usage` on `DelegatedCheckout::RequestedSessionCreateParams` and `DelegatedCheckout::RequestedSession`
  * Add support for `amount_subtotal`, `amount_total`, `created_at`, `expires_at`, `order_details`, `shared_payment_issued_token`, `status`, `total_details`, and `updated_at` on `DelegatedCheckout::RequestedSession`
  * Add support for `address`, `email`, `fulfillment_options`, `name`, `phone`, and `selected_fulfillment_option` on `DelegatedCheckout::RequestedSession::FulfillmentDetail`

## 17.1.0-alpha.3 - 2025-10-17
* [#1702](https://github.com/stripe/stripe-ruby/pull/1702) Update generated code for private-preview
  * Add support for new resources `DelegatedCheckout::RequestedSession` and `Identity::BlocklistEntry`
  * Add support for `confirm`, `create`, `expire`, `retrieve`, and `update` methods on resource `DelegatedCheckout::RequestedSession`
  * Add support for `create`, `disable`, `list`, and `retrieve` methods on resource `Identity::BlocklistEntry`
  * Add support for `blocked_by_entry` on `Identity::VerificationReport::Document`, `Identity::VerificationReport::Selfie`, and `Identity::VerificationReportListParams`

## 17.1.0-alpha.2 - 2025-10-16
* [#1705](https://github.com/stripe/stripe-ruby/pull/1705) Require `V2::Amount` and `V2::DeletedObject` in gem

## 17.1.0-alpha.1 - 2025-10-09
* [#1689](https://github.com/stripe/stripe-ruby/pull/1689) Update CHANGELOG.md to point to right API version
* [#1692](https://github.com/stripe/stripe-ruby/pull/1692) Update changelog for private preview
* Contains a breaking bug fix and other improvements from [v17.0.0](https://github.com/stripe/stripe-ruby/releases/tag/v17.0.0).
* [#1697](https://github.com/stripe/stripe-ruby/pull/1697) Update generated code for private-preview
  * Add support for new resource `PaymentMethodBalance`
  * Add support for `check_balance` method on resource `PaymentMethod`
  * Add support for `benefits` on `Card`, `Charge::PaymentMethodDetail::Card`, `ConfirmationToken::PaymentMethodPreview::Card`, and `PaymentMethod::Card`
  * Add support for `benefit` on `PaymentIntent::PaymentDetail`, `PaymentIntentConfirmParams::PaymentDetail`, `PaymentIntentCreateParams::PaymentDetail`, and `PaymentIntentUpdateParams::PaymentDetail`
  * Add support for `setup_details` on `SetupIntentConfirmParams`, `SetupIntentCreateParams`, `SetupIntentUpdateParams`, and `SetupIntent`
  * Add support for `card_creator` on `V2::Core::Account::Configuration`, `V2::Core::Account::Identity::Attestation::TermsOfService`, `V2::Core::AccountCreateParams::Configuration`, `V2::Core::AccountCreateParams::Identity::Attestation::TermsOfService`, `V2::Core::AccountUpdateParams::Configuration`, and `V2::Core::AccountUpdateParams::Identity::Attestation::TermsOfService`
  * Add support for thin events `V2CoreAccountIncludingConfigurationCardCreatorCapabilityStatusUpdatedEvent` and `V2CoreAccountIncludingConfigurationCardCreatorUpdatedEvent` with related object `V2::Core::Account`
  * Remove support for thin events `V1CustomerDiscountCreatedEvent`, `V1CustomerDiscountDeletedEvent`, and `V1CustomerDiscountUpdatedEvent` with related object `Discount`

## 16.1.0-alpha.1 - 2025-10-01
This release changes the pinned API version to `2025-09-30.preview`.

It is built on top of SDK version 16.0.0 and 16.1.0-beta.1 which contain breaking changes. Please review the changelog for these versions if upgrading from older SDK versions.

* [#1659](https://github.com/stripe/stripe-ruby/pull/1659) Update generated code for private-preview
  * Add support for `paypay_payments` on `Account::Capability`, `Account::CreateParams::Capability`, and `Account::UpdateParams::Capability`
  * Add support for `billing_cadence` on `Invoice::ListParams`
  * Add support for `credit_grants` on `Billing::Alert::CreateParams::CreditBalanceThreshold::Filter`
  * Add support for `payment_record_refund` and `type` on `CreditNote::CreateParams::Refund`, `CreditNote::ListPreviewLineItemsParams::Refund`, `CreditNote::PreviewParams::Refund`, and `CreditNote::Refund`
  * Add support for `paypay` on `Charge::PaymentMethodDetail`, `ConfirmationToken::CreateParams::PaymentMethodDatum`, `ConfirmationToken::PaymentMethodPreview`, `PaymentAttemptRecord::PaymentMethodDetail`, `PaymentIntent::ConfirmParams::PaymentMethodDatum`, `PaymentIntent::ConfirmParams::PaymentMethodOption`, `PaymentIntent::CreateParams::PaymentMethodDatum`, `PaymentIntent::CreateParams::PaymentMethodOption`, `PaymentIntent::PaymentMethodOption`, `PaymentIntent::UpdateParams::PaymentMethodDatum`, `PaymentIntent::UpdateParams::PaymentMethodOption`, `PaymentMethod::CreateParams`, `PaymentMethodConfiguration::CreateParams`, `PaymentMethodConfiguration::UpdateParams`, `PaymentMethodConfiguration`, `PaymentMethod`, `PaymentRecord::PaymentMethodDetail`, `SetupIntent::ConfirmParams::PaymentMethodDatum`, `SetupIntent::CreateParams::PaymentMethodDatum`, and `SetupIntent::UpdateParams::PaymentMethodDatum`
  * Add support for `location` and `reader` on `Charge::PaymentMethodDetail::Paynow`
  * Add support for new resource `V2::MoneyManagement::RecipientVerification`
  * Add support for `acknowledge`, `create`, `recipient_verifications`, and `retrieve` methods on resource `V2::MoneyManagement::RecipientVerification`
  * Add support for `update` method on resources `V2::Billing::PricingPlanSubscription` and `V2::Billing::ServiceAction`
  * Add support for `crypto_wallets` on `V2::Account::Configuration::RecipientDatum::Feature`, `V2::Account::CreateParams::Configuration::RecipientDatum::Feature`, `V2::Account::UpdateParams::Configuration::RecipientDatum::Feature`, `V2::Core::Account::Configuration::Recipient::Capability`, `V2::Core::Account::CreateParams::Configuration::Recipient::Capability`, and `V2::Core::Account::UpdateParams::Configuration::Recipient::Capability`
  * Add support for `lookup_key` on `V2::Billing::Cadence::CreateParams`, `V2::Billing::Cadence::UpdateParams`, and `V2::Billing::Cadence`
  * Add support for `settings_data` on `V2::Billing::Cadence`
  * Change type of `V2::Billing::Cadence::Payer.billing_profile` from `nullable(string)` to `string`
  * Add support for `v1_event_id` on `V2::Core::Event`
  * Add support for `recipient_verification` on `V2::MoneyManagement::OutboundPayment::CreateParams`, `V2::MoneyManagement::OutboundPayment`, `V2::MoneyManagement::OutboundTransfer::CreateParams`, and `V2::MoneyManagement::OutboundTransfer`
  * Add support for `crypto_wallet` on `V2::MoneyManagement::OutboundSetupIntent::CreateParams::PayoutMethodDatum` and `V2::MoneyManagement::PayoutMethod`
  * Add support for `custom_pricing_unit_details` on `V2::Billing::RateCardRate::CustomPricingUnitAmount`, `V2::Billing::ServiceAction::CreditGrant::Amount::CustomPricingUnit`, and `V2::Billing::ServiceAction::CreditGrantPerTenant::Amount::CustomPricingUnit`
  * Add support for `origin_type` on `V2::MoneyManagement::ReceivedDebit::BankTransfer`
  * Add support for `sepa_bank_account` on `V2::MoneyManagement::FinancialAddress::CreateParams`
  * Remove support for `price` on `V2::Billing::RateCardRate::CreateParams`
  * Add support for `lookup_keys` on `V2::Billing::Cadence::ListParams`
  * Change type of `V2::Billing::Cadence::CancelParams.include`, `V2::Billing::Cadence::CreateParams.include`, `V2::Billing::Cadence::ListParams.include`, `V2::Billing::Cadence::RetrieveParams.include`, and `V2::Billing::Cadence::UpdateParams.include` from `literal('invoice_discount_rules')` to `enum('invoice_discount_rules'|'settings_data')`
  * Remove support for `customer` and `type` on `V2::Billing::Cadence::CreateParams::Payer`
  * Change `V2::Billing::Cadence::CreateParams::Payer.billing_profile` to be required
  * Remove support for `alert_id` on `EventsV2CoreHealthApiErrorResolvedEvent`, `EventsV2CoreHealthApiLatencyResolvedEvent`, `EventsV2CoreHealthAuthorizationRateDropResolvedEvent`, `EventsV2CoreHealthIssuingAuthorizationRequestTimeoutResolvedEvent`, `EventsV2CoreHealthPaymentMethodErrorResolvedEvent`, `EventsV2CoreHealthTrafficVolumeDropResolvedEvent`, and `EventsV2CoreHealthWebhookLatencyResolvedEvent`
  * Add support for thin event `V1AccountUpdatedEvent` with related object `V2::Account`
  * Add support for thin events `V1ApplicationFeeCreatedEvent`, `V1ApplicationFeeRefundedEvent`, `V1BillingPortalConfigurationCreatedEvent`, `V1BillingPortalConfigurationUpdatedEvent`, `V1CapabilityUpdatedEvent`, `V1ChargeCapturedEvent`, `V1ChargeDisputeClosedEvent`, `V1ChargeDisputeCreatedEvent`, `V1ChargeDisputeFundsReinstatedEvent`, `V1ChargeDisputeFundsWithdrawnEvent`, `V1ChargeDisputeUpdatedEvent`, `V1ChargeExpiredEvent`, `V1ChargeFailedEvent`, `V1ChargePendingEvent`, `V1ChargeRefundUpdatedEvent`, `V1ChargeRefundedEvent`, `V1ChargeSucceededEvent`, `V1ChargeUpdatedEvent`, `V1CheckoutSessionAsyncPaymentFailedEvent`, `V1CheckoutSessionAsyncPaymentSucceededEvent`, `V1CheckoutSessionCompletedEvent`, `V1CheckoutSessionExpiredEvent`, `V1ClimateOrderCanceledEvent`, `V1ClimateOrderCreatedEvent`, `V1ClimateOrderDelayedEvent`, `V1ClimateOrderDeliveredEvent`, `V1ClimateOrderProductSubstitutedEvent`, `V1ClimateProductCreatedEvent`, `V1ClimateProductPricingUpdatedEvent`, `V1CouponCreatedEvent`, `V1CouponDeletedEvent`, `V1CouponUpdatedEvent`, `V1CreditNoteCreatedEvent`, `V1CreditNoteUpdatedEvent`, `V1CreditNoteVoidedEvent`, `V1CustomerCreatedEvent`, `V1CustomerDeletedEvent`, `V1CustomerSubscriptionCreatedEvent`, `V1CustomerSubscriptionDeletedEvent`, `V1CustomerSubscriptionPausedEvent`, `V1CustomerSubscriptionPendingUpdateAppliedEvent`, `V1CustomerSubscriptionPendingUpdateExpiredEvent`, `V1CustomerSubscriptionResumedEvent`, `V1CustomerSubscriptionTrialWillEndEvent`, `V1CustomerSubscriptionUpdatedEvent`, `V1CustomerTaxIdCreatedEvent`, `V1CustomerTaxIdDeletedEvent`, `V1CustomerTaxIdUpdatedEvent`, `V1CustomerUpdatedEvent`, `V1FileCreatedEvent`, `V1FinancialConnectionsAccountCreatedEvent`, `V1FinancialConnectionsAccountDeactivatedEvent`, `V1FinancialConnectionsAccountDisconnectedEvent`, `V1FinancialConnectionsAccountReactivatedEvent`, `V1FinancialConnectionsAccountRefreshedBalanceEvent`, `V1FinancialConnectionsAccountRefreshedOwnershipEvent`, `V1FinancialConnectionsAccountRefreshedTransactionsEvent`, `V1IdentityVerificationSessionCanceledEvent`, `V1IdentityVerificationSessionCreatedEvent`, `V1IdentityVerificationSessionProcessingEvent`, `V1IdentityVerificationSessionRedactedEvent`, `V1IdentityVerificationSessionRequiresInputEvent`, `V1IdentityVerificationSessionVerifiedEvent`, `V1InvoiceCreatedEvent`, `V1InvoiceDeletedEvent`, `V1InvoiceFinalizationFailedEvent`, `V1InvoiceFinalizedEvent`, `V1InvoiceMarkedUncollectibleEvent`, `V1InvoiceOverdueEvent`, `V1InvoiceOverpaidEvent`, `V1InvoicePaidEvent`, `V1InvoicePaymentActionRequiredEvent`, `V1InvoicePaymentFailedEvent`, `V1InvoicePaymentPaidEvent`, `V1InvoicePaymentSucceededEvent`, `V1InvoiceSentEvent`, `V1InvoiceUpcomingEvent`, `V1InvoiceUpdatedEvent`, `V1InvoiceVoidedEvent`, `V1InvoiceWillBeDueEvent`, `V1InvoiceitemCreatedEvent`, `V1InvoiceitemDeletedEvent`, `V1IssuingAuthorizationCreatedEvent`, `V1IssuingAuthorizationRequestEvent`, `V1IssuingAuthorizationUpdatedEvent`, `V1IssuingCardCreatedEvent`, `V1IssuingCardUpdatedEvent`, `V1IssuingCardholderCreatedEvent`, `V1IssuingCardholderUpdatedEvent`, `V1IssuingDisputeClosedEvent`, `V1IssuingDisputeCreatedEvent`, `V1IssuingDisputeFundsReinstatedEvent`, `V1IssuingDisputeFundsRescindedEvent`, `V1IssuingDisputeSubmittedEvent`, `V1IssuingDisputeUpdatedEvent`, `V1IssuingPersonalizationDesignActivatedEvent`, `V1IssuingPersonalizationDesignDeactivatedEvent`, `V1IssuingPersonalizationDesignRejectedEvent`, `V1IssuingPersonalizationDesignUpdatedEvent`, `V1IssuingTokenCreatedEvent`, `V1IssuingTokenUpdatedEvent`, `V1IssuingTransactionCreatedEvent`, `V1IssuingTransactionPurchaseDetailsReceiptUpdatedEvent`, `V1IssuingTransactionUpdatedEvent`, `V1MandateUpdatedEvent`, `V1PaymentIntentAmountCapturableUpdatedEvent`, `V1PaymentIntentCanceledEvent`, `V1PaymentIntentCreatedEvent`, `V1PaymentIntentPartiallyFundedEvent`, `V1PaymentIntentPaymentFailedEvent`, `V1PaymentIntentProcessingEvent`, `V1PaymentIntentRequiresActionEvent`, `V1PaymentIntentSucceededEvent`, `V1PaymentLinkCreatedEvent`, `V1PaymentLinkUpdatedEvent`, `V1PaymentMethodAttachedEvent`, `V1PaymentMethodAutomaticallyUpdatedEvent`, `V1PaymentMethodDetachedEvent`, `V1PaymentMethodUpdatedEvent`, `V1PayoutCanceledEvent`, `V1PayoutCreatedEvent`, `V1PayoutFailedEvent`, `V1PayoutPaidEvent`, `V1PayoutReconciliationCompletedEvent`, `V1PayoutUpdatedEvent`, `V1PersonCreatedEvent`, `V1PersonDeletedEvent`, `V1PersonUpdatedEvent`, `V1PlanCreatedEvent`, `V1PlanDeletedEvent`, `V1PlanUpdatedEvent`, `V1PriceCreatedEvent`, `V1PriceDeletedEvent`, `V1PriceUpdatedEvent`, `V1ProductCreatedEvent`, `V1ProductDeletedEvent`, `V1ProductUpdatedEvent`, `V1PromotionCodeCreatedEvent`, `V1PromotionCodeUpdatedEvent`, `V1QuoteAcceptedEvent`, `V1QuoteCanceledEvent`, `V1QuoteCreatedEvent`, `V1QuoteFinalizedEvent`, `V1RadarEarlyFraudWarningCreatedEvent`, `V1RadarEarlyFraudWarningUpdatedEvent`, `V1RefundCreatedEvent`, `V1RefundFailedEvent`, `V1RefundUpdatedEvent`, `V1ReviewClosedEvent`, `V1ReviewOpenedEvent`, `V1SetupIntentCanceledEvent`, `V1SetupIntentCreatedEvent`, `V1SetupIntentRequiresActionEvent`, `V1SetupIntentSetupFailedEvent`, `V1SetupIntentSucceededEvent`, `V1SigmaScheduledQueryRunCreatedEvent`, `V1SourceCanceledEvent`, `V1SourceChargeableEvent`, `V1SourceFailedEvent`, `V1SourceRefundAttributesRequiredEvent`, `V1SubscriptionScheduleAbortedEvent`, `V1SubscriptionScheduleCanceledEvent`, `V1SubscriptionScheduleCompletedEvent`, `V1SubscriptionScheduleCreatedEvent`, `V1SubscriptionScheduleExpiringEvent`, `V1SubscriptionScheduleReleasedEvent`, `V1SubscriptionScheduleUpdatedEvent`, `V1TaxRateCreatedEvent`, `V1TaxRateUpdatedEvent`, `V1TerminalReaderActionFailedEvent`, `V1TerminalReaderActionSucceededEvent`, `V1TerminalReaderActionUpdatedEvent`, `V1TestHelpersTestClockAdvancingEvent`, `V1TestHelpersTestClockCreatedEvent`, `V1TestHelpersTestClockDeletedEvent`, `V1TestHelpersTestClockInternalFailureEvent`, `V1TestHelpersTestClockReadyEvent`, `V1TopupCanceledEvent`, `V1TopupCreatedEvent`, `V1TopupFailedEvent`, `V1TopupReversedEvent`, `V1TopupSucceededEvent`, `V1TransferCreatedEvent`, `V1TransferReversedEvent`, `V1TransferUpdatedEvent`, `V2CoreHealthIssuingAuthorizationRequestErrorsFiringEvent`, and `V2CoreHealthIssuingAuthorizationRequestErrorsResolvedEvent`
  * Add support for thin event `V2CoreClaimableSandboxCreatedEvent` with related object `V2::Core::ClaimableSandbox`
  * Add support for thin events `V2MoneyManagementRecipientVerificationCreatedEvent` and `V2MoneyManagementRecipientVerificationUpdatedEvent` with related object `V2::MoneyManagement::RecipientVerification`
  * Remove support for resources `V2::Reporting::ReportRun`, `V2::Reporting::Report`
  * Remove support for thin events `V2ReportingReportRunCreatedEvent`, `V2ReportingReportRunFailedEvent`, `V2ReportingReportRunSucceededEvent`, and `V2ReportingReportRunUpdatedEvent` with related object `V2::Reporting::ReportRun`

## 15.6.0-alpha.3 - 2025-09-17
* [#1654](https://github.com/stripe/stripe-ruby/pull/1654) generate private-preview SDK w/ mid Sept changes
  * Add support for `retrieve` method on resource `V2::Core::ClaimableSandbox`
  * Add support for `month_of_year` on `V2::Billing::Cadence::BillingCycle::Month` and `V2::Billing::Cadence::CreateParams::BillingCycle::Month`
  * Add support for `claimed_at`, `expires_at`, `sandbox_details`, and `status` on `V2::Core::ClaimableSandbox`
  * Remove support for `api_keys` on `V2::Core::ClaimableSandbox`
  * Change type of `V2::Core::ClaimableSandbox.claim_url` from `string` to `nullable(string)`
  * Add support for `will_activate_at` and `will_cancel_at` on `V2::Billing::PricingPlanSubscription::ServicingStatusTransition` and `V2::Billing::RateCardSubscription::ServicingStatusTransition`
  * Add support for `category` and `priority` on `V2::Billing::ServiceAction::CreateParams::CreditGrantPerTenant`, `V2::Billing::ServiceAction::CreateParams::CreditGrant`, `V2::Billing::ServiceAction::CreditGrantPerTenant`, and `V2::Billing::ServiceAction::CreditGrant`
  * Change `V2::Billing::LicenseFee::UpdateParams.display_name`  to be optional
  * Add support for `invoices` on `EventsV2BillingCadenceBilledEvent`
  * Add support for thin events `V2CoreClaimableSandboxClaimedEvent`, `V2CoreClaimableSandboxExpiredEvent`, `V2CoreClaimableSandboxExpiringEvent`, and `V2CoreClaimableSandboxSandboxDetailsOwnerAccountUpdatedEvent` with related object `V2::Core::ClaimableSandbox`
  * Remove support for thin event `V2BillingCadenceErroredEvent` with related object `V2::Billing::Cadence`

## 15.6.0-alpha.2 - 2025-09-02
* ⚠️ [#1642](https://github.com/stripe/stripe-ruby/pull/1642) Deserialize inner types in resources for more detailed types
  * ⚠️ Deserialize inner classes, so inner class types will now reflect generated inner classes
* [#1647](https://github.com/stripe/stripe-ruby/pull/1647) Update generated code for private-preview
  * Explicitly define methods for RBIs to help Tapioca generation and ship combined RBI for Tapioca

## 15.6.0-alpha.1 - 2025-08-27
* [#1640](https://github.com/stripe/stripe-ruby/pull/1640) Use the right API version 2025-08-27.preview
* [#1636](https://github.com/stripe/stripe-ruby/pull/1636) Update generated code for private-preview
  * Add support for `attach_cadence` method on resource `Subscription`
    * Add support for `currency` and `external_customer_id` on `Billing::AlertTriggered`
    * Add support for `custom_pricing_unit` on `Billing::AlertTriggered`, `Billing::CreditBalanceSummary::Balance::AvailableBalance`, `Billing::CreditBalanceSummary::Balance::LedgerBalance`, `Billing::CreditBalanceTransaction::Credit::Amount`, `Billing::CreditBalanceTransaction::Debit::Amount`, `Billing::CreditGrant::Amount`, and `Billing::CreditGrant::CreateParams::Amount`
    * Add support for `customer` on `Billing::Alert::ListParams`
    * Change type of `Billing::Alert.alert_type`, `Billing::Alert::CreateParams.alert_type`, and `Billing::Alert::ListParams.alert_type` from `literal('usage_threshold')` to `enum('credit_balance_threshold'|'usage_threshold')`
    * Add support for `credit_balance_threshold` on `Billing::Alert::CreateParams` and `Billing::Alert`
    * Add support for `billable_items` on `Billing::CreditBalanceSummary::RetrieveParams::Filter::ApplicabilityScope`, `Billing::CreditGrant::ApplicabilityConfig::Scope`, and `Billing::CreditGrant::CreateParams::ApplicabilityConfig::Scope`
    * Change type of `Billing::CreditBalanceSummary::Balance::AvailableBalance.type`, `Billing::CreditBalanceSummary::Balance::LedgerBalance.type`, `Billing::CreditBalanceTransaction::Credit::Amount.type`, `Billing::CreditBalanceTransaction::Debit::Amount.type`, `Billing::CreditGrant::Amount.type`, and `Billing::CreditGrant::CreateParams::Amount.type` from `literal('monetary')` to `enum('custom_pricing_unit'|'monetary')`
    * Add support for `license_fee_subscription_details` and `rate_card_subscription_details` on `InvoiceItem::Parent` and `InvoiceLineItem::Parent`
    * Change type of `InvoiceItem::Parent.type` from `literal('subscription_details')` to `enum('license_fee_subscription_details'|'rate_card_subscription_details'|'subscription_details')`
    * Add support for `license_fee_details` and `rate_card_rate_details` on `InvoiceItem::Pricing` and `InvoiceLineItem::Pricing`
    * Change type of `InvoiceItem::Pricing.type` and `InvoiceLineItem::Pricing.type` from `literal('price_details')` to `enum('license_fee_details'|'price_details'|'rate_card_rate_details')`
    * Add support for `billing_cadence` on `Invoice::CreatePreviewParams`, `Subscription::CreateParams`, and `Subscription`
    * Add support for `billing_cadence_details` on `Invoice::Parent` and `QuotePreviewInvoice::Parent`
    * Add support for new resources `V2::Billing::BillSettingVersion`, `V2::Billing::BillSetting`, `V2::Billing::Cadence`, `V2::Billing::CollectionSettingVersion`, `V2::Billing::CollectionSetting`, `V2::Billing::CustomPricingUnit`, `V2::Billing::IntentAction`, `V2::Billing::Intent`, `V2::Billing::LicenseFeeSubscription`, `V2::Billing::LicenseFeeVersion`, `V2::Billing::LicenseFee`, `V2::Billing::LicensedItem`, `V2::Billing::MeteredItem`, `V2::Billing::PricingPlanComponent`, `V2::Billing::PricingPlanSubscription`, `V2::Billing::PricingPlanVersion`, `V2::Billing::PricingPlan`, `V2::Billing::Profile`, `V2::Billing::RateCardRate`, `V2::Billing::RateCardSubscription`, `V2::Billing::RateCardVersion`, `V2::Billing::RateCard`, `V2::Billing::ServiceAction`, `V2::Core::ClaimableSandbox`, `V2::Reporting::ReportRun`, `V2::Reporting::Report`, and `V2::Tax::AutomaticRule`
    * Add support for `create`, `deactivate`, `find`, `retrieve`, and `update` methods on resource `V2::Tax::AutomaticRule`
    * Add support for `create` and `retrieve` methods on resources `V2::Billing::ServiceAction` and `V2::Reporting::ReportRun`
    * Add support for `retrieve` method on resources `V2::Billing::LicenseFeeSubscription` and `V2::Reporting::Report`
    * Add support for `create` method on resource `V2::Core::ClaimableSandbox`
    * Add support for `cancel`, `create`, `list`, `retrieve`, and `update` methods on resources `V2::Billing::Cadence` and `V2::Billing::RateCardSubscription`
    * Add support for `create`, `list`, `retrieve`, and `update` methods on resources `V2::Billing::BillSetting`, `V2::Billing::CollectionSetting`, `V2::Billing::CustomPricingUnit`, `V2::Billing::LicenseFee`, `V2::Billing::LicensedItem`, `V2::Billing::MeteredItem`, `V2::Billing::PricingPlan`, `V2::Billing::Profile`, and `V2::Billing::RateCard`
    * Add support for `list` and `retrieve` methods on resources `V2::Billing::BillSettingVersion`, `V2::Billing::CollectionSettingVersion`, `V2::Billing::IntentAction`, `V2::Billing::LicenseFeeVersion`, `V2::Billing::PricingPlanSubscription`, `V2::Billing::PricingPlanVersion`, and `V2::Billing::RateCardVersion`
    * Add support for `create`, `delete`, `list`, and `retrieve` methods on resource `V2::Billing::RateCardRate`
    * Add support for `create`, `delete`, `list`, `retrieve`, and `update` methods on resource `V2::Billing::PricingPlanComponent`
    * Add support for `cancel`, `commit`, `create`, `list`, `release_reservation`, `reserve`, and `retrieve` methods on resource `V2::Billing::Intent`
    * Add support for `changes` on `V2::Event`
    * Add support for thin events `V2BillingCadenceBilledEvent`, `V2BillingCadenceCanceledEvent`, `V2BillingCadenceCreatedEvent`, and `V2BillingCadenceErroredEvent` with related object `V2::Billing::Cadence`
    * Add support for thin events `V2BillingLicenseFeeCreatedEvent` and `V2BillingLicenseFeeUpdatedEvent` with related object `V2::Billing::LicenseFee`
    * Add support for thin event `V2BillingLicenseFeeVersionCreatedEvent` with related object `V2::Billing::LicenseFeeVersion`
    * Add support for thin events `V2BillingLicensedItemCreatedEvent` and `V2BillingLicensedItemUpdatedEvent` with related object `V2::Billing::LicensedItem`
    * Add support for thin events `V2BillingMeteredItemCreatedEvent` and `V2BillingMeteredItemUpdatedEvent` with related object `V2::Billing::MeteredItem`
    * Add support for thin events `V2BillingPricingPlanCreatedEvent` and `V2BillingPricingPlanUpdatedEvent` with related object `V2::Billing::PricingPlan`
    * Add support for thin events `V2BillingPricingPlanComponentCreatedEvent` and `V2BillingPricingPlanComponentUpdatedEvent` with related object `V2::Billing::PricingPlanComponent`
    * Add support for thin events `V2BillingPricingPlanSubscriptionCollectionAwaitingCustomerActionEvent`, `V2BillingPricingPlanSubscriptionCollectionCurrentEvent`, `V2BillingPricingPlanSubscriptionCollectionPastDueEvent`, `V2BillingPricingPlanSubscriptionCollectionPausedEvent`, `V2BillingPricingPlanSubscriptionCollectionUnpaidEvent`, `V2BillingPricingPlanSubscriptionServicingActivatedEvent`, `V2BillingPricingPlanSubscriptionServicingCanceledEvent`, and `V2BillingPricingPlanSubscriptionServicingPausedEvent` with related object `V2::Billing::PricingPlanSubscription`
    * Add support for thin event `V2BillingPricingPlanVersionCreatedEvent` with related object `V2::Billing::PricingPlanVersion`
    * Add support for thin events `V2BillingRateCardCreatedEvent` and `V2BillingRateCardUpdatedEvent` with related object `V2::Billing::RateCard`
    * Add support for thin event `V2BillingRateCardRateCreatedEvent` with related object `V2::Billing::RateCardRate`
    * Add support for thin events `V2BillingRateCardSubscriptionActivatedEvent`, `V2BillingRateCardSubscriptionCanceledEvent`, `V2BillingRateCardSubscriptionCollectionAwaitingCustomerActionEvent`, `V2BillingRateCardSubscriptionCollectionCurrentEvent`, `V2BillingRateCardSubscriptionCollectionPastDueEvent`, `V2BillingRateCardSubscriptionCollectionPausedEvent`, `V2BillingRateCardSubscriptionCollectionUnpaidEvent`, `V2BillingRateCardSubscriptionServicingActivatedEvent`, `V2BillingRateCardSubscriptionServicingCanceledEvent`, and `V2BillingRateCardSubscriptionServicingPausedEvent` with related object `V2::Billing::RateCardSubscription`
    * Add support for thin event `V2BillingRateCardVersionCreatedEvent` with related object `V2::Billing::RateCardVersion`
    * Add support for thin events `V2CoreHealthApiErrorFiringEvent`, `V2CoreHealthApiErrorResolvedEvent`, `V2CoreHealthApiLatencyFiringEvent`, `V2CoreHealthApiLatencyResolvedEvent`, `V2CoreHealthAuthorizationRateDropFiringEvent`, `V2CoreHealthAuthorizationRateDropResolvedEvent`, `V2CoreHealthEventGenerationFailureResolvedEvent`, `V2CoreHealthFraudRateIncreasedEvent`, `V2CoreHealthIssuingAuthorizationRequestTimeoutFiringEvent`, `V2CoreHealthIssuingAuthorizationRequestTimeoutResolvedEvent`, `V2CoreHealthPaymentMethodErrorFiringEvent`, `V2CoreHealthPaymentMethodErrorResolvedEvent`, `V2CoreHealthTrafficVolumeDropFiringEvent`, `V2CoreHealthTrafficVolumeDropResolvedEvent`, `V2CoreHealthWebhookLatencyFiringEvent`, and `V2CoreHealthWebhookLatencyResolvedEvent`
    * Add support for thin events `V2ReportingReportRunCreatedEvent`, `V2ReportingReportRunFailedEvent`, `V2ReportingReportRunSucceededEvent`, and `V2ReportingReportRunUpdatedEvent` with related object `V2::Reporting::ReportRun`
    * Add support for error type `RateLimitError`

    ## 15.6.0-beta.1 - 2025-08-27
  This release changes the pinned API version to `2025-08-27.preview`.
* [#1629](https://github.com/stripe/stripe-ruby/pull/1629) Update generated code for beta
  * Add support for `list` and `retrieve` methods on resource `InvoicePayment`
  * Add support for `list` method on resource `Mandate`
  * Add support for `applied` on `V2::Core::Account::Configuration::Customer`, `V2::Core::Account::Configuration::Merchant`, `V2::Core::Account::Configuration::Recipient`, `V2::Core::Account::Configuration::Storer`, `V2::Core::Account::UpdateParams::Configuration::Customer`, `V2::Core::Account::UpdateParams::Configuration::Merchant`, `V2::Core::Account::UpdateParams::Configuration::Recipient`, and `V2::Core::Account::UpdateParams::Configuration::Storer`
  * Change type of `Billing::AlertTriggered.value` from `longInteger` to `decimal_string`
  * Add support for `display_name` on `V2::MoneyManagement::FinancialAccount::CreateParams` and `V2::MoneyManagement::FinancialAccount`
  * Add support for `currency_conversion` on `V2::MoneyManagement::Transaction::Flow` and `V2::MoneyManagement::TransactionEntry::TransactionDetail::Flow`
  * Add support for `payments` on `BalanceSettings::UpdateParams` and `BalanceSettings`
  * Remove support for `debit_negative_balances`, `payouts`, and `settlement_timing` on `BalanceSettings::UpdateParams` and `BalanceSettings`
  * Add support for `mandate` on `Charge::PaymentMethodDetail::Pix`, `PaymentAttemptRecord::PaymentMethodDetail::Pix`, and `PaymentRecord::PaymentMethodDetail::Pix`
  * Add support for `coupon_data` on `Checkout::Session::CreateParams::Discount`
  * Add support for `mandate_options` on `Checkout::Session::CreateParams::PaymentMethodOption::Pix`, `Checkout::Session::PaymentMethodOption::Pix`, `PaymentIntent::ConfirmParams::PaymentMethodOption::Pix`, `PaymentIntent::CreateParams::PaymentMethodOption::Pix`, `PaymentIntent::PaymentMethodOption::Pix`, and `PaymentIntent::UpdateParams::PaymentMethodOption::Pix`
  * Change type of `Checkout::Session::CreateParams::PaymentMethodOption::Pix.setup_future_usage`, `Checkout::Session::PaymentMethodOption::Pix.setup_future_usage`, `PaymentIntent::ConfirmParams::PaymentMethodOption::Pix.setup_future_usage`, `PaymentIntent::CreateParams::PaymentMethodOption::Pix.setup_future_usage`, `PaymentIntent::PaymentMethodOption::Pix.setup_future_usage`, and `PaymentIntent::UpdateParams::PaymentMethodOption::Pix.setup_future_usage` from `literal('none')` to `enum('none'|'off_session')`
  * Add support for `amount` on `Mandate::MultiUse`, `PaymentAttemptRecord`, and `PaymentRecord`
  * Add support for `currency` on `Mandate::MultiUse`
  * Add support for `pix` on `Mandate::PaymentMethodDetail`, `SetupAttempt::PaymentMethodDetail`, `SetupIntent::ConfirmParams::PaymentMethodOption`, `SetupIntent::CreateParams::PaymentMethodOption`, `SetupIntent::PaymentMethodOption`, and `SetupIntent::UpdateParams::PaymentMethodOption`
  * Add support for `limit` on `PaymentAttemptRecord::ListParams`
  * Add support for `amount_authorized`, `amount_refunded`, and `application` on `PaymentAttemptRecord` and `PaymentRecord`
  * Add support for `processor_details` on `PaymentAttemptRecord`, `PaymentRecord::ReportPaymentParams`, and `PaymentRecord`
  * Remove support for `payment_reference` on `PaymentAttemptRecord`, `PaymentRecord::ReportPaymentParams`, and `PaymentRecord`
  * Add support for `installments` on `PaymentAttemptRecord::PaymentMethodDetail::Alma` and `PaymentRecord::PaymentMethodDetail::Alma`
  * Add support for `transaction_id` on `PaymentAttemptRecord::PaymentMethodDetail::Alma`, `PaymentAttemptRecord::PaymentMethodDetail::AmazonPay`, `PaymentAttemptRecord::PaymentMethodDetail::Billie`, `PaymentAttemptRecord::PaymentMethodDetail::KakaoPay`, `PaymentAttemptRecord::PaymentMethodDetail::KrCard`, `PaymentAttemptRecord::PaymentMethodDetail::NaverPay`, `PaymentAttemptRecord::PaymentMethodDetail::Payco`, `PaymentAttemptRecord::PaymentMethodDetail::RevolutPay`, `PaymentAttemptRecord::PaymentMethodDetail::SamsungPay`, `PaymentAttemptRecord::PaymentMethodDetail::Satispay`, `PaymentRecord::PaymentMethodDetail::Alma`, `PaymentRecord::PaymentMethodDetail::AmazonPay`, `PaymentRecord::PaymentMethodDetail::Billie`, `PaymentRecord::PaymentMethodDetail::KakaoPay`, `PaymentRecord::PaymentMethodDetail::KrCard`, `PaymentRecord::PaymentMethodDetail::NaverPay`, `PaymentRecord::PaymentMethodDetail::Payco`, `PaymentRecord::PaymentMethodDetail::RevolutPay`, `PaymentRecord::PaymentMethodDetail::SamsungPay`, and `PaymentRecord::PaymentMethodDetail::Satispay`
  * Add support for `location` and `reader` on `PaymentAttemptRecord::PaymentMethodDetail::Paynow` and `PaymentRecord::PaymentMethodDetail::Paynow`
  * Add support for `latest_active_mandate` on `PaymentMethod`
  * Change `Payout.payout_method` to be required
  * Add support for `metadata` and `period` on `QuotePreviewSubscriptionSchedule::Phase::AddInvoiceItem`
  * Add support for `pix_display_qr_code` on `SetupIntent::NextAction`
  * Add support for `reader_security` on `Terminal::Configuration::CreateParams`, `Terminal::Configuration::UpdateParams`, and `Terminal::Configuration`
