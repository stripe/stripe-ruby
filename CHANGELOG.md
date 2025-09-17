# Changelog

## 15.6.0-alpha.3 - 2025-09-17
* [#1654](https://github.com/stripe/stripe-ruby/pull/1654) generate private-preview SDK w/ mid Sept changes
  * Add support for `retrieve` method on resource `V2.Core.ClaimableSandbox`
  * Add support for `month_of_year` on `V2.Billing.Cadence#create.billing_cycle.month` and `V2.Billing.Cadence.billing_cycle.month`
  * Add support for `claimed_at`, `expires_at`, `sandbox_details`, and `status` on `V2.Core.ClaimableSandbox`
  * Remove support for `api_keys` on `V2.Core.ClaimableSandbox`
  * Change type of `V2.Core.ClaimableSandbox.claim_url` from `string` to `nullable(string)`
  * Add support for new value `current_billing_period_end` on enums `V2.Billing.Intent#create.actions[].deactivate.effective_at.type` and `V2.Billing.IntentAction.deactivate.effective_at.type`
  * Add support for `will_activate_at` and `will_cancel_at` on `V2.Billing.PricingPlanSubscription.servicing_status_transitions` and `V2.Billing.RateCardSubscription.servicing_status_transitions`
  * Add support for `category` and `priority` on `V2.Billing.ServiceAction#create.credit_grant_per_tenant`, `V2.Billing.ServiceAction#create.credit_grant`, `V2.Billing.ServiceAction.credit_grant_per_tenant`, and `V2.Billing.ServiceAction.credit_grant`
  * Change `V2.Billing.LicenseFee#update.display_name` to be optional
  * Add support for `invoices` on `EventsV2BillingCadenceBilledEvent`
  * Add support for thin events `V2CoreClaimableSandboxClaimedEvent`, `V2CoreClaimableSandboxExpiredEvent`, `V2CoreClaimableSandboxExpiringEvent`, and `V2CoreClaimableSandboxSandboxDetailsOwnerAccountUpdatedEvent` with related object `V2.Core.ClaimableSandbox`
  * Remove support for thin event `V2BillingCadenceErroredEvent` with related object `V2.Billing.Cadence`

## 15.6.0-alpha.2 - 2025-09-02
* [#1642](https://github.com/stripe/stripe-ruby/pull/1642) Deserialize inner types in resources for more detailed types
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

## 15.5.0 - 2025-08-27
* [#1638](https://github.com/stripe/stripe-ruby/pull/1638) Add section on private preview SDKs in readme
* [#1631](https://github.com/stripe/stripe-ruby/pull/1631) Update generated code. This release changes the pinned API version to `2025-08-27.basil`.
  * Add support for `balance_report`, `payout_details`, and `payout_reconciliation_report` on `AccountSession::Component` and `AccountSession::CreateParams::Component`
  * Add support for `name` on `BillingPortal::Configuration::CreateParams`, `BillingPortal::Configuration::UpdateParams`, and `BillingPortal::Configuration`
  * Add support for `installments` on `Charge::PaymentMethodDetail::Alma`
  * Add support for `transaction_id` on `Charge::PaymentMethodDetail::Alma`, `Charge::PaymentMethodDetail::AmazonPay`, `Charge::PaymentMethodDetail::Billie`, `Charge::PaymentMethodDetail::KakaoPay`, `Charge::PaymentMethodDetail::KrCard`, `Charge::PaymentMethodDetail::NaverPay`, `Charge::PaymentMethodDetail::Payco`, `Charge::PaymentMethodDetail::RevolutPay`, `Charge::PaymentMethodDetail::SamsungPay`, and `Charge::PaymentMethodDetail::Satispay`
  * Add support for `location` and `reader` on `Charge::PaymentMethodDetail::Paynow`
  * Add support for `amount_includes_iof` on `Checkout::Session::CreateParams::PaymentMethodOption::Pix`, `Checkout::Session::PaymentMethodOption::Pix`, `PaymentIntent::ConfirmParams::PaymentMethodOption::Pix`, `PaymentIntent::CreateParams::PaymentMethodOption::Pix`, `PaymentIntent::PaymentMethodOption::Pix`, and `PaymentIntent::UpdateParams::PaymentMethodOption::Pix`
  * Add support for `metadata` and `period` on `Invoice::CreatePreviewParams::ScheduleDetail::Phase::AddInvoiceItem`, `Subscription::CreateParams::AddInvoiceItem`, `Subscription::UpdateParams::AddInvoiceItem`, `SubscriptionSchedule::CreateParams::Phase::AddInvoiceItem`, `SubscriptionSchedule::Phase::AddInvoiceItem`, and `SubscriptionSchedule::UpdateParams::Phase::AddInvoiceItem`
  * Add support for `exp_month` and `exp_year` on `Issuing::Card::CreateParams`
  * Add support for `excluded_payment_method_types` on `PaymentIntent::CreateParams` and `PaymentIntent`
  * Add support for `payout_method` on `Payout::CreateParams` and `Payout`
  * Add support for `mxn` on `Terminal::Configuration::CreateParams::Tipping`, `Terminal::Configuration::Tipping`, and `Terminal::Configuration::UpdateParams::Tipping`
  * Add support for `card` on `Terminal::Reader::PresentPaymentMethodParams`
* [#1637](https://github.com/stripe/stripe-ruby/pull/1637) Add `stripe_client` usage tracking for StripeClient
* [#1633](https://github.com/stripe/stripe-ruby/pull/1633) Remove double `T.nilable` before every emptyable field in update methods

## 15.5.0-beta.2 - 2025-08-08
* [#1632](https://github.com/stripe/stripe-ruby/pull/1632) Bring back invoice payments APIs that were missing in the public preview SDKs
    * Add support for new resource `InvoicePayment`
    * Add support for `list` and `retrieve` methods on resource `InvoicePayment`

## 15.5.0-beta.1 - 2025-07-30
This release changes the pinned API version to `2025-07-30.preview`.

* [#1624](https://github.com/stripe/stripe-ruby/pull/1624) Update generated code for beta
  * Add support for new resources `Billing::MeterUsageRow`, `Billing::MeterUsage`, and `Terminal::OnboardingLink`
  * Add support for `retrieve` method on resource `Billing::MeterUsage`
  * Add support for `create` method on resource `Terminal::OnboardingLink`
  * Add support for `monthly_payout_days` and `weekly_payout_days` on `BalanceSettings::Payout::Schedule` and `BalanceSettings::UpdateParams::Payout::Schedule`
  * Remove support for `monthly_anchor` and `weekly_anchor` on `BalanceSettings::Payout::Schedule` and `BalanceSettings::UpdateParams::Payout::Schedule`
  * Add support for `delay_days_override` on `BalanceSettings::UpdateParams::SettlementTiming`
  * Remove support for `delay_days` on `BalanceSettings::UpdateParams::SettlementTiming`
  * Add support for `update_discounts` on `Checkout::Session::CreateParams::Permission`
  * Add support for `discounts` and `subscription_data` on `Checkout::Session::UpdateParams`
  * Add support for `smart_disputes` on `Dispute`
  * Add support for `upi` on `Invoice::CreateParams::PaymentSetting::PaymentMethodOption`, `Invoice::PaymentSetting::PaymentMethodOption`, `Invoice::UpdateParams::PaymentSetting::PaymentMethodOption`, `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption`, `Subscription::CreateParams::PaymentSetting::PaymentMethodOption`, `Subscription::PaymentSetting::PaymentMethodOption`, and `Subscription::UpdateParams::PaymentSetting::PaymentMethodOption`
  * Add support for `transaction_id` on `PaymentAttemptRecord::PaymentMethodDetail::Cashapp` and `PaymentRecord::PaymentMethodDetail::Cashapp`
  * Add support for `amount_details` on `PaymentIntent::CaptureParams`, `PaymentIntent::ConfirmParams`, `PaymentIntent::CreateParams`, `PaymentIntent::IncrementAuthorizationParams`, and `PaymentIntent::UpdateParams`
  * Add support for `payment_details` on `PaymentIntent::IncrementAuthorizationParams`
  * Add support for `storer` on `V2::Core::Account::CreateParams::Identity::Attestation::TermsOfService`, `V2::Core::Account::Identity::Attestation::TermsOfService`, and `V2::Core::Account::UpdateParams::Identity::Attestation::TermsOfService`
  * Add support for `collection_options` on `V2::Core::AccountLink::CreateParams::UseCase::AccountOnboarding`, `V2::Core::AccountLink::CreateParams::UseCase::AccountUpdate`, `V2::Core::AccountLink::UseCase::AccountOnboarding`, and `V2::Core::AccountLink::UseCase::AccountUpdate`
  * Change type of `V2::Core::AccountLink::CreateParams::UseCase::AccountOnboarding.configurations`, `V2::Core::AccountLink::CreateParams::UseCase::AccountUpdate.configurations`, `V2::Core::AccountLink::UseCase::AccountOnboarding.configurations`, and `V2::Core::AccountLink::UseCase::AccountUpdate.configurations` from `literal('recipient')` to `enum('customer'|'merchant'|'recipient'|'storer')`
  * Add support for `bank_account_type` on `V2::MoneyManagement::PayoutMethod::BankAccount`
  * Add support for thin event `V2CoreAccountLinkReturnedEvent`
  * Add support for thin event `V2MoneyManagementPayoutMethodUpdatedEvent` with related object `V2::MoneyManagement::PayoutMethod`
  * Remove support for thin event `V2CoreAccountLinkCompletedEvent`
  * Remove support for thin event `V2OffSessionPaymentRequiresCaptureEvent` with related object `V2::Payments::OffSessionPayment`

## 15.4.0 - 2025-07-30
This release changes the pinned API version to `2025-07-30.basil`.

* [#1627](https://github.com/stripe/stripe-ruby/pull/1627) Update generated code
  * Add support for `instant_payouts_promotion` on `AccountSession::Component` and `AccountSession::CreateParams::Component`
  * Add support for `adjustable_quantity` on `BillingPortal::Configuration::CreateParams::Feature::SubscriptionUpdate::Product`, `BillingPortal::Configuration::Feature::SubscriptionUpdate::Product`, and `BillingPortal::Configuration::UpdateParams::Feature::SubscriptionUpdate::Product`
  * Add support for `transaction_id` on `Charge::PaymentMethodDetail::Cashapp`
  * Add support for `origin_context` on `Checkout::Session::CreateParams` and `Checkout::Session`
  * Add support for `template` on `Checkout::Session::CreateParams::InvoiceCreation::InvoiceDatum::RenderingOption`, `Checkout::Session::InvoiceCreation::InvoiceDatum::RenderingOption`, `PaymentLink::CreateParams::InvoiceCreation::InvoiceDatum::RenderingOption`, `PaymentLink::InvoiceCreation::InvoiceDatum::RenderingOption`, and `PaymentLink::UpdateParams::InvoiceCreation::InvoiceDatum::RenderingOption`
  * Add support for `setup_future_usage` on `Checkout::Session::CreateParams::PaymentMethodOption::Pix` and `Checkout::Session::PaymentMethodOption::Pix`
  * Change `Identity::VerificationSession::RelatedPerson.account` to be required
  * Change `Identity::VerificationSession::RelatedPerson.person` to be required
  * Add support for `duration` on `Invoice::CreatePreviewParams::ScheduleDetail::Phase`, `SubscriptionSchedule::CreateParams::Phase`, and `SubscriptionSchedule::UpdateParams::Phase`
  * Change type of `Invoice::CreatePreviewParams::SubscriptionDetail.cancel_at`, `Subscription::CreateParams.cancel_at`, and `Subscription::UpdateParams.cancel_at` from `DateTime` to `DateTime | enum('max_period_end'|'min_period_end')`
  * Add support for `price_data` on `PaymentLink::CreateParams::LineItem`
  * Change `PaymentLink::CreateParams::LineItem.price` to be optional
  * Add support for `standard` on `Tax::Registration::CountryOption::Ae`, `Tax::Registration::CountryOption::Au`, `Tax::Registration::CountryOption::Ch`, `Tax::Registration::CountryOption::Gb`, `Tax::Registration::CountryOption::Jp`, `Tax::Registration::CountryOption::No`, `Tax::Registration::CountryOption::Nz`, `Tax::Registration::CountryOption::Sg`, `Tax::Registration::CreateParams::CountryOption::Ae`, `Tax::Registration::CreateParams::CountryOption::Al`, `Tax::Registration::CreateParams::CountryOption::Ao`, `Tax::Registration::CreateParams::CountryOption::Au`, `Tax::Registration::CreateParams::CountryOption::Aw`, `Tax::Registration::CreateParams::CountryOption::B`, `Tax::Registration::CreateParams::CountryOption::Ba`, `Tax::Registration::CreateParams::CountryOption::Bb`, `Tax::Registration::CreateParams::CountryOption::Bd`, `Tax::Registration::CreateParams::CountryOption::Bf`, `Tax::Registration::CreateParams::CountryOption::Bh`, `Tax::Registration::CreateParams::CountryOption::Cd`, `Tax::Registration::CreateParams::CountryOption::Ch`, `Tax::Registration::CreateParams::CountryOption::Et`, `Tax::Registration::CreateParams::CountryOption::Gb`, `Tax::Registration::CreateParams::CountryOption::Gn`, `Tax::Registration::CreateParams::CountryOption::Is`, `Tax::Registration::CreateParams::CountryOption::Jp`, `Tax::Registration::CreateParams::CountryOption::Me`, `Tax::Registration::CreateParams::CountryOption::Mk`, `Tax::Registration::CreateParams::CountryOption::Mr`, `Tax::Registration::CreateParams::CountryOption::No`, `Tax::Registration::CreateParams::CountryOption::Nz`, `Tax::Registration::CreateParams::CountryOption::Om`, `Tax::Registration::CreateParams::CountryOption::R`, `Tax::Registration::CreateParams::CountryOption::Sg`, `Tax::Registration::CreateParams::CountryOption::Sr`, `Tax::Registration::CreateParams::CountryOption::Uy`, `Tax::Registration::CreateParams::CountryOption::Za`, and `Tax::Registration::CreateParams::CountryOption::Zw`
  * Add support for `aed`, `bgn`, `huf`, and `ron` on `Terminal::Configuration::CreateParams::Tipping`, `Terminal::Configuration::Tipping`, and `Terminal::Configuration::UpdateParams::Tipping`

## 15.4.0-beta.2 - 2025-07-09
* [#1625](https://github.com/stripe/stripe-ruby/pull/1625) Pull in V2 FinancialAccount changes for June release
  * Add support for `close` and `create` methods on resource `V2::MoneyManagement::FinancialAccount`
  * Add support for `storer` on `V2::Core::Account::Configuration`, `V2::Core::Account::CreateParams::Configuration`, and `V2::Core::Account::UpdateParams::Configuration`
  * Add support for `status_details` on `V2::MoneyManagement::FinancialAccount`
  * Add support for `status` on `V2::MoneyManagement::FinancialAccount::ListParams`
  * Add support for thin events `V2CoreAccountIncludingConfigurationStorerCapabilityStatusUpdatedEvent` and `V2CoreAccountIncludingConfigurationStorerUpdatedEvent` with related object `V2::Core::Account`
  * Add support for error types `AlreadyExistsError` and `NonZeroBalanceError`

## 15.4.0-beta.1 - 2025-07-01
This release changes the pinned API version to `2025-06-30.preview`.

* [#1607](https://github.com/stripe/stripe-ruby/pull/1607) Update generated code for beta
  * Change type of `Checkout::Session::CreateParams::SubscriptionDatum.billing_mode`, `Invoice::CreatePreviewParams::ScheduleDetail.billing_mode`, `Invoice::CreatePreviewParams::SubscriptionDetail.billing_mode`, `Quote::CreateParams::SubscriptionDatum.billing_mode`, `Quote::SubscriptionDatum.billing_mode`, `Subscription::CreateParams.billing_mode`, and `SubscriptionSchedule::CreateParams.billing_mode` from `enum('classic'|'flexible')` to `billing_mode`
  * Add support for `submission_method` on `Dispute::EvidenceDetail`
  * Add support for `on_demand` and `subscriptions` on `Order::CreateParams::Payment::Setting::PaymentMethodOption::Klarna` and `Order::UpdateParams::Payment::Setting::PaymentMethodOption::Klarna`
  * Change type of `Order::CreateParams::Payment::Setting::PaymentMethodOption::Klarna.setup_future_usage`, `Order::Payment::Setting::PaymentMethodOption::Klarna.setup_future_usage`, and `Order::UpdateParams::Payment::Setting::PaymentMethodOption::Klarna.setup_future_usage` from `literal('none')` to `enum('none'|'off_session'|'on_session')`
  * Add support for `crypto` on `PaymentAttemptRecord::PaymentMethodDetail` and `PaymentRecord::PaymentMethodDetail`
  * Change type of `PaymentIntent::ConfirmParams::PaymentMethodOption::Gopay.setup_future_usage`, `PaymentIntent::CreateParams::PaymentMethodOption::Gopay.setup_future_usage`, `PaymentIntent::PaymentMethodOption::Gopay.setup_future_usage`, and `PaymentIntent::UpdateParams::PaymentMethodOption::Gopay.setup_future_usage` from `literal('none')` to `enum('none'|'off_session')`
  * Change `Quote::SubscriptionDatum.billing_mode`, `QuotePreviewSubscriptionSchedule.billing_mode`, `Subscription.billing_mode`, and `SubscriptionSchedule.billing_mode` to be required
  * Change type of `QuotePreviewSubscriptionSchedule.billing_mode`, `Subscription.billing_mode`, and `SubscriptionSchedule.billing_mode` from `enum('classic'|'flexible')` to `SubscriptionsResourceBillingMode`
  * Change type of `Subscription::MigrateParams.billing_mode` from `literal('flexible')` to `billing_mode_migrate`
  * Remove support for `billing_mode_details` on `Subscription`
  * Add support for `proof_of_address` on `V2::Core::Account::CreateParams::Identity::BusinessDetail::Document`, `V2::Core::Account::Identity::BusinessDetail::Document`, and `V2::Core::Account::UpdateParams::Identity::BusinessDetail::Document`
  * Add support for `metadata` on `V2::MoneyManagement::FinancialAccount`
  * Remove support for `description` on `V2::MoneyManagement::FinancialAccount`
  * Remove support for `attempts` on `V2::Payments::OffSessionPayment`
  * Change type of `V2::Payments::OffSessionPayment::TransferDatum.amount` from `integer` to `nullable(integer)`
  * Add support for `from_account`, `outbound_payment`, and `outbound_transfer` on `V2::MoneyManagement::ReceivedCredit::BalanceTransfer`
  * Change type of `V2::MoneyManagement::ReceivedCredit::BalanceTransfer.type` from `literal('payout_v1')` to `enum('outbound_payment'|'outbound_transfer'|'payout_v1')`
  * Change type of `V2::MoneyManagement::ReceivedCredit::BalanceTransfer.payout_v1` from `string` to `nullable(string)`
  * Change `V2::Payments::OffSessionPayment::CreateParams::TransferDatum.amount` to be optional

## 15.3.0 - 2025-07-01
This release changes the pinned API version to `2025-06-30.basil`.

* [#1618](https://github.com/stripe/stripe-ruby/pull/1618) Update generated code
  * Add support for `migrate` method on resource `Subscription`
  * Add support for `collect_payment_method` and `confirm_payment_intent` methods on resource `Terminal::Reader`
  * Add support for `crypto_payments` on `Account::Capability`, `Account::CreateParams::Capability`, and `Account::UpdateParams::Capability`
  * Add support for `proof_of_address` on `Account::CreateParams::Document` and `Account::UpdateParams::Document`
  * Add support for `monthly_payout_days` and `weekly_payout_days` on `Account::CreateParams::Setting::Payout::Schedule`, `Account::Setting::Payout::Schedule`, and `Account::UpdateParams::Setting::Payout::Schedule`
  * Change `Account::Setting::Invoice.hosted_payment_method_save` to be required
  * Add support for `crypto` on `Charge::PaymentMethodDetail`, `ConfirmationToken::CreateParams::PaymentMethodDatum`, `ConfirmationToken::PaymentMethodPreview`, `PaymentIntent::ConfirmParams::PaymentMethodDatum`, `PaymentIntent::ConfirmParams::PaymentMethodOption`, `PaymentIntent::CreateParams::PaymentMethodDatum`, `PaymentIntent::CreateParams::PaymentMethodOption`, `PaymentIntent::PaymentMethodOption`, `PaymentIntent::UpdateParams::PaymentMethodDatum`, `PaymentIntent::UpdateParams::PaymentMethodOption`, `PaymentMethod::CreateParams`, `PaymentMethod`, `SetupIntent::ConfirmParams::PaymentMethodDatum`, `SetupIntent::CreateParams::PaymentMethodDatum`, and `SetupIntent::UpdateParams::PaymentMethodDatum`
  * Change type of `Charge::PaymentMethodDetail::Card::Installment::Plan.type`, `ConfirmationToken::CreateParams::PaymentMethodOption::Card::Installment::Plan.type`, `ConfirmationToken::PaymentMethodOption::Card::Installment::Plan.type`, `Invoice::CreateParams::PaymentSetting::PaymentMethodOption::Card::Installment::Plan.type`, `Invoice::UpdateParams::PaymentSetting::PaymentMethodOption::Card::Installment::Plan.type`, `PaymentIntent::ConfirmParams::PaymentMethodOption::Card::Installment::Plan.type`, `PaymentIntent::CreateParams::PaymentMethodOption::Card::Installment::Plan.type`, `PaymentIntent::PaymentMethodOption::Card::Installment::AvailablePlan.type`, `PaymentIntent::PaymentMethodOption::Card::Installment::Plan.type`, and `PaymentIntent::UpdateParams::PaymentMethodOption::Card::Installment::Plan.type` from `literal('fixed_count')` to `enum('bonus'|'fixed_count'|'revolving')`
  * Add support for `subscriptions` on `Checkout::Session::CreateParams::PaymentMethodOption::Klarna`, `PaymentIntent::ConfirmParams::PaymentMethodOption::Klarna`, `PaymentIntent::CreateParams::PaymentMethodOption::Klarna`, and `PaymentIntent::UpdateParams::PaymentMethodOption::Klarna`
  * Add support for `billing_mode` on `Checkout::Session::CreateParams::SubscriptionDatum`, `Invoice::CreatePreviewParams::ScheduleDetail`, `Invoice::CreatePreviewParams::SubscriptionDetail`, `Quote::CreateParams::SubscriptionDatum`, `Quote::SubscriptionDatum`, `Subscription::CreateParams`, `SubscriptionSchedule::CreateParams`, `SubscriptionSchedule`, and `Subscription`
  * Change type of `Dispute.enhanced_eligibility_types` from `literal('visa_compelling_evidence_3')` to `enum('visa_compelling_evidence_3'|'visa_compliance')`
  * Add support for `related_person` on `Identity::VerificationSession::CreateParams` and `Identity::VerificationSession`
  * Add support for `matching` on `Identity::VerificationSession::Option`
  * Add support for `klarna` on `Mandate::PaymentMethodDetail`, `SetupIntent::ConfirmParams::PaymentMethodOption`, `SetupIntent::CreateParams::PaymentMethodOption`, `SetupIntent::PaymentMethodOption`, and `SetupIntent::UpdateParams::PaymentMethodOption`
  * Add support for `on_demand` on `PaymentIntent::ConfirmParams::PaymentMethodOption::Klarna`, `PaymentIntent::CreateParams::PaymentMethodOption::Klarna`, and `PaymentIntent::UpdateParams::PaymentMethodOption::Klarna`
  * Change type of `PaymentIntent::ConfirmParams::PaymentMethodOption::Klarna.setup_future_usage`, `PaymentIntent::CreateParams::PaymentMethodOption::Klarna.setup_future_usage`, `PaymentIntent::PaymentMethodOption::Klarna.setup_future_usage`, and `PaymentIntent::UpdateParams::PaymentMethodOption::Klarna.setup_future_usage` from `literal('none')` to `enum('none'|'off_session'|'on_session')`
  * Add support for `ua` on `Tax::Registration::CountryOption` and `Tax::Registration::CreateParams::CountryOption`
  * Change type of `Terminal::Location::UpdateParams.display_name` from `string` to `emptyable(string)`
  * Add support for `collect_payment_method` and `confirm_payment_intent` on `Terminal::Reader::Action`
  * Add support for `status` on `Treasury::FinancialAccount::ListParams`
* [#1615](https://github.com/stripe/stripe-ruby/pull/1615) Update README to mention that APIResource.request was removed
* [#1619](https://github.com/stripe/stripe-ruby/pull/1619) Updated StripeClient snippets in README
* [#1620](https://github.com/stripe/stripe-ruby/pull/1620) Fix `raw_request` example in README

## 15.3.0-beta.2 - 2025-06-26
* [#1623](https://github.com/stripe/stripe-ruby/pull/1623) Pull in OffSessionPayment changes for the May release

## 15.3.0-beta.1 - 2025-05-29
This release changes the pinned API version to `2025-05-28.preview`.

* [#1599](https://github.com/stripe/stripe-ruby/pull/1599) Update generated code for beta
  ### Breaking changes
  * Remove support for deprecated previews
    * Remove support for resources `Billing::MeterErrorReport`, `GiftCards::Card`, `GiftCards::Transaction`, and `Privacy::RedactionJobRootObjects`
    * Remove support for `create`, `list`, `retrieve`, `update`, and `validate` methods on resource `GiftCards::Card`
    * Remove support for `cancel`, `confirm`, `create`, `list`, `retrieve`, and `update` methods on resource `GiftCards::Transaction`
    * Remove support for `provisioning` on `Product::CreateParams` and `Product`
  * Change type of `Checkout::Session::UpdateParams::LineItem.quantity` from `emptyable(longInteger)` to `longInteger`
  * Change `CreditNote.post_payment_amount` to be required
  * Change `CreditNote.pre_payment_amount` to be required
  * Remove support for `credits` on `Order::CreateParams`, `Order::UpdateParams`, and `Order`
  * Remove support for `amount_remaining` on `Order`
  * Remove support for `amount_credit` on `Order::TotalDetail`
  * Change type of `Invoice::CreatePreviewParams::SubscriptionDetail.cancel_at`, `Subscription::CreateParams.cancel_at`, and `Subscription::UpdateParams.cancel_at` from `DateTime` to `DateTime | enum('max_period_end'|'min_period_end')`
  * Change type of `PaymentAttemptRecord.metadata` and `PaymentRecord.metadata` from `nullable(map(string: string))` to `map(string: string)`
  * Change type of `PaymentRecord::ReportPaymentAttemptCanceledParams.metadata`, `PaymentRecord::ReportPaymentAttemptFailedParams.metadata`, `PaymentRecord::ReportPaymentAttemptGuaranteedParams.metadata`, `PaymentRecord::ReportPaymentAttemptParams.metadata`, and `PaymentRecord::ReportPaymentParams.metadata` from `map(string: string)` to `emptyable(map(string: string))`
  * Change type of `Privacy::RedactionJob.objects` from `$Privacy.RedactionJobRootObjects` to `RedactionResourceRootObjects`
  * Change type of `Privacy::RedactionJobValidationError.erroring_object` from `map(string: string)` to `RedactionResourceErroringObject`
  * Remove support for `async_workflows` on `PaymentIntent::CaptureParams`, `PaymentIntent::ConfirmParams`, `PaymentIntent::CreateParams`, `PaymentIntent::DecrementAuthorizationParams`, `PaymentIntent::IncrementAuthorizationParams`, `PaymentIntent::UpdateParams`, and `PaymentIntent`
  * Remove support for `status_details` and `status` on `Tax::Association`

  ### Other changes
  * Add support for `migrate` method on resource `Subscription`
  * Add support for `distance`, `pickup_location_name`, `return_location_name`, and `vehicle_identification_number` on `Charge::CaptureParams::PaymentDetail::CarRental`, `Charge::UpdateParams::PaymentDetail::CarRental`, `PaymentIntent::CaptureParams::PaymentDetail::CarRental`, `PaymentIntent::ConfirmParams::PaymentDetail::CarRental`, `PaymentIntent::CreateParams::PaymentDetail::CarRental`, `PaymentIntent::PaymentDetail::CarRental`, and `PaymentIntent::UpdateParams::PaymentDetail::CarRental`
  * Add support for `driver_identification_number` and `driver_tax_number` on `Charge::CaptureParams::PaymentDetail::CarRental::Driver`, `Charge::UpdateParams::PaymentDetail::CarRental::Driver`, `PaymentIntent::CaptureParams::PaymentDetail::CarRental::Driver`, `PaymentIntent::ConfirmParams::PaymentDetail::CarRental::Driver`, `PaymentIntent::CreateParams::PaymentDetail::CarRental::Driver`, `PaymentIntent::PaymentDetail::CarRental::Driver`, and `PaymentIntent::UpdateParams::PaymentDetail::CarRental::Driver`
  * Add support for `institution` on `FinancialConnections::Account`
  * Add support for `countries` on `FinancialConnections::Institution`
  * Add support for `location` and `reader` on `PaymentAttemptRecord::PaymentMethodDetail::Affirm`, `PaymentAttemptRecord::PaymentMethodDetail::WechatPay`, `PaymentRecord::PaymentMethodDetail::Affirm`, and `PaymentRecord::PaymentMethodDetail::WechatPay`
  * Add support for `hooks` on `PaymentIntent::CaptureParams`, `PaymentIntent::ConfirmParams`, `PaymentIntent::CreateParams`, `PaymentIntent::DecrementAuthorizationParams`, `PaymentIntent::IncrementAuthorizationParams`, `PaymentIntent::UpdateParams`, and `PaymentIntent`
  * Add support for `card_present` on `PaymentIntentAmountDetailsLineItem::PaymentMethodOption`
  * Add support for `livemode` on `Privacy::RedactionJob`
  * Add support for `billing_thresholds` on `QuotePreviewSubscriptionSchedule::DefaultSetting`, `QuotePreviewSubscriptionSchedule::Phase::Item`, and `QuotePreviewSubscriptionSchedule::Phase`
  * Add support for `billing_mode_details` on `Subscription`
  * Add support for `tax_transaction_attempts` on `Tax::Association`
  * Add support for `confirm_config` on `Terminal::Reader::Action::ConfirmPaymentIntent` and `Terminal::Reader::ConfirmPaymentIntentParams`

## 15.2.1 - 2025-06-04
* [#1617](https://github.com/stripe/stripe-ruby/pull/1617) Fix `nil` requestor in `Webhook.construct_event` to allow for event data refresh
  * Fix bug where `Event` constructed from `Webhook.construct_event` could not be refreshed due to a `nil` APIRequestor
    * Raised in https://github.com/stripe/stripe-ruby/issues/1616

## 15.2.0 - 2025-05-29
 This release changes the pinned API version to `2025-05-28.basil`.

* [#1605](https://github.com/stripe/stripe-ruby/pull/1605) Update generated code
  * Add support for `attach_payment` method on resource `Invoice`
  * Add support for `collect_inputs` method on resource `Terminal::Reader`
  * Add support for `succeed_input_collection` and `timeout_input_collection` test helper methods on resource `Terminal::Reader`
  * Add support for `pix_payments` on `Account::Capability`, `Account::CreateParams::Capability`, and `Account::UpdateParams::Capability`
  * Add support for `disputes_list` and `payment_disputes` on `AccountSession::Component` and `AccountSession::CreateParams::Component`
  * Add support for `refund_and_dispute_prefunding` on `Balance`
  * Add support for `balance_type` on `BalanceTransaction`
  * Change `Billing::Alert::CreateParams::UsageThreshold.meter` to be required
  * Add support for `location` and `reader` on `Charge::PaymentMethodDetail::Affirm` and `Charge::PaymentMethodDetail::WechatPay`
  * Add support for `payment_method_remove` on `Checkout::Session::CreateParams::SavedPaymentMethodOption`
  * Add support for `setup_future_usage` on `Checkout::Session::PaymentMethodOption::NaverPay`
  * Change `ConfirmationToken::PaymentMethodPreview::NaverPay.buyer_id` and `PaymentMethod::NaverPay.buyer_id` to be required
  * Add support for `post_payment_amount` and `pre_payment_amount` on `CreditNote`
  * Add support for `sex`, `unparsed_place_of_birth`, and `unparsed_sex` on `Identity::VerificationReport::Document` and `Identity::VerificationSession::VerifiedOutput`
  * Add support for `billing_thresholds` on `Invoice::CreatePreviewParams::ScheduleDetail::Phase::Item`, `Invoice::CreatePreviewParams::ScheduleDetail::Phase`, `Invoice::CreatePreviewParams::SubscriptionDetail::Item`, `Subscription::CreateParams::Item`, `Subscription::CreateParams`, `Subscription::UpdateParams::Item`, `Subscription::UpdateParams`, `SubscriptionItem::CreateParams`, `SubscriptionItem::UpdateParams`, `SubscriptionItem`, `SubscriptionSchedule::CreateParams::DefaultSetting`, `SubscriptionSchedule::CreateParams::Phase::Item`, `SubscriptionSchedule::CreateParams::Phase`, `SubscriptionSchedule::DefaultSetting`, `SubscriptionSchedule::Phase::Item`, `SubscriptionSchedule::Phase`, `SubscriptionSchedule::UpdateParams::DefaultSetting`, `SubscriptionSchedule::UpdateParams::Phase::Item`, `SubscriptionSchedule::UpdateParams::Phase`, and `Subscription`
  * Add support for `satispay` on `PaymentIntent::ConfirmParams::PaymentMethodOption`, `PaymentIntent::CreateParams::PaymentMethodOption`, `PaymentIntent::PaymentMethodOption`, and `PaymentIntent::UpdateParams::PaymentMethodOption`
  * Add support for `capture_method` on `PaymentIntent::PaymentMethodOption::Billie`
  * Add support for `kakao_pay`, `kr_card`, `naver_pay`, `payco`, and `samsung_pay` on `PaymentMethodConfiguration::CreateParams`, `PaymentMethodConfiguration::UpdateParams`, and `PaymentMethodConfiguration`
  * Add support for `network_decline_code` on `Refund::DestinationDetail::Paypal`
  * Add support for `metadata` on `Tax::Calculation::CreateParams::LineItem` and `Tax::CalculationLineItem`
  * Add support for `return_url` on `Terminal::Reader::Action::ProcessPaymentIntent::ProcessConfig` and `Terminal::Reader::ProcessPaymentIntentParams::ProcessConfig`
  * Add support for `collect_inputs` on `Terminal::Reader::Action`
* [#1601](https://github.com/stripe/stripe-ruby/pull/1601) Adds CONTRIBUTING.md

## 15.2.0-beta.1 - 2025-04-30
* [#1589](https://github.com/stripe/stripe-ruby/pull/1589) Update generated code for beta
  This release changes the pinned API version to `2025-04-30.preview`.

  * Add support for `billing_mode` on `Checkout::Session::CreateParams::SubscriptionDatum`, `Invoice::CreatePreviewParams::ScheduleDetail`, `Invoice::CreatePreviewParams::SubscriptionDetail`, `Quote::CreateParams::SubscriptionDatum`, `Quote::SubscriptionDatum`, `QuotePreviewSubscriptionSchedule`, `Subscription::CreateParams`, `SubscriptionSchedule::CreateParams`, `SubscriptionSchedule`, and `Subscription`
  * Change `Checkout::Session::AutomaticTax.provider`, `Invoice::AutomaticTax.provider`, `Quote::AutomaticTax.provider`, and `QuotePreviewInvoice::AutomaticTax.provider` to be required
  * Add support for `account_number` on `ConfirmationToken::PaymentMethodPreview::AcssDebit` and `PaymentMethod::AcssDebit`

## 15.1.0 - 2025-04-30

  This release changes the pinned API version to `2025-04-30.basil`.

* [#1566](https://github.com/stripe/stripe-ruby/pull/1566) Update generated code
  * Add support for `minority_owned_business_designation` on `Account::BusinessProfile`, `Account::CreateParams::BusinessProfile`, and `Account::UpdateParams::BusinessProfile`
  * Add support for `registration_date` on `Account::Company`, `Account::CreateParams::Company`, `Account::UpdateParams::Company`, and `Token::CreateParams::Account::Company`
  * Add support for `us_cfpb_data` on `Account::CreateParams`, `Account::UpdateParams`, `AccountPerson::CreateParams`, `AccountPerson::UpdateParams`, `Person`, and `Token::CreateParams::Person`
  * Add support for `tax_id` on `Charge::BillingDetail`, `ConfirmationToken::CreateParams::PaymentMethodDatum::BillingDetail`, `ConfirmationToken::PaymentMethodPreview::BillingDetail`, `PaymentIntent::ConfirmParams::PaymentMethodDatum::BillingDetail`, `PaymentIntent::CreateParams::PaymentMethodDatum::BillingDetail`, `PaymentIntent::UpdateParams::PaymentMethodDatum::BillingDetail`, `PaymentMethod::BillingDetail`, `PaymentMethod::CreateParams::BillingDetail`, `PaymentMethod::UpdateParams::BillingDetail`, `SetupIntent::ConfirmParams::PaymentMethodDatum::BillingDetail`, `SetupIntent::CreateParams::PaymentMethodDatum::BillingDetail`, `SetupIntent::UpdateParams::PaymentMethodDatum::BillingDetail`, `TestHelpers::ConfirmationToken::CreateParams::PaymentMethodDatum::BillingDetail`, and `Treasury::OutboundPayment::CreateParams::DestinationPaymentMethodDatum::BillingDetail`
  * Add support for `wallet_options` on `Checkout::Session::CreateParams` and `Checkout::Session`
  * Add support for `provider` on `Checkout::Session::AutomaticTax`, `Invoice::AutomaticTax`, and `Quote::AutomaticTax`
  * Add support for `payment_method_options` on `ConfirmationToken::CreateParams` and `TestHelpers::ConfirmationToken::CreateParams`
  * Add support for `installments` on `ConfirmationToken::PaymentMethodOption::Card`
  * Add support for `context` on `Event`
  * Change type of `InvoiceLineItem::Parent::SubscriptionItemDetail.subscription` from `string` to `nullable(string)`
  * Add support for `billie` on `PaymentIntent::ConfirmParams::PaymentMethodOption`, `PaymentIntent::CreateParams::PaymentMethodOption`, `PaymentIntent::PaymentMethodOption`, and `PaymentIntent::UpdateParams::PaymentMethodOption`
  * Add support for `pix` on `PaymentMethodConfiguration::CreateParams`, `PaymentMethodConfiguration::UpdateParams`, and `PaymentMethodConfiguration`
  * Add support for `klarna` on `PaymentMethodDomain`
  * Add support for `pending_reason` on `Refund`
  * Change type of `Tax::CalculationLineItem.reference` from `nullable(string)` to `string`
  * Add support for `aw`, `az`, `bd`, `bf`, `bj`, `cm`, `cv`, `et`, `in`, `kg`, `la`, and `ph` on `Tax::Registration::CountryOption` and `Tax::Registration::CreateParams::CountryOption`
* [#1585](https://github.com/stripe/stripe-ruby/pull/1585) Updated rubocop from 1.57.2 to 1.75.2
* [#1583](https://github.com/stripe/stripe-ruby/pull/1583) Include new Ruby 3.4 in CI
* [#1581](https://github.com/stripe/stripe-ruby/pull/1581) Added rubocop exclusion for generated tests

## 15.1.0-beta.2 - 2025-04-17
* [#1578](https://github.com/stripe/stripe-ruby/pull/1578) Update generated code for beta
  * Add support for new resources `FxQuote` and `PaymentIntentAmountDetailsLineItem`
  * Add support for `create`, `list`, and `retrieve` methods on resource `FxQuote`
  * Remove support for `attach_payment_intent` method on resource `Invoice`
  * Add support for `registration_date` on `Account::Company`, `Account::CreateParams::Company`, `Account::UpdateParams::Company`, and `Token::CreateParams::Account::Company`
  * Add support for `customer_reference` and `order_reference` on `Charge::CaptureParams::PaymentDetail`, `Charge::UpdateParams::PaymentDetail`, `PaymentIntent::CaptureParams::PaymentDetail`, `PaymentIntent::ConfirmParams::PaymentDetail`, `PaymentIntent::CreateParams::PaymentDetail`, `PaymentIntent::PaymentDetail`, and `PaymentIntent::UpdateParams::PaymentDetail`
  * Add support for `tax_id` on `Charge::BillingDetail`, `ConfirmationToken::CreateParams::PaymentMethodDatum::BillingDetail`, `ConfirmationToken::PaymentMethodPreview::BillingDetail`, `PaymentIntent::ConfirmParams::PaymentMethodDatum::BillingDetail`, `PaymentIntent::CreateParams::PaymentMethodDatum::BillingDetail`, `PaymentIntent::UpdateParams::PaymentMethodDatum::BillingDetail`, `PaymentMethod::BillingDetail`, `PaymentMethod::CreateParams::BillingDetail`, `PaymentMethod::UpdateParams::BillingDetail`, `SetupIntent::ConfirmParams::PaymentMethodDatum::BillingDetail`, `SetupIntent::CreateParams::PaymentMethodDatum::BillingDetail`, `SetupIntent::UpdateParams::PaymentMethodDatum::BillingDetail`, and `TreasuryOutboundPayment::CreateParams::DestinationPaymentMethodDatum::BillingDetail`
  * Add support for `price_data` on `CheckoutSession::UpdateParams::LineItem`
  * Change type of `CheckoutSession::UpdateParams::LineItem.quantity` from `longInteger` to `emptyable(longInteger)`
  * Add support for `script` on `Coupon::CreateParams` and `Coupon`
  * Add support for `type` on `Coupon`
  * Add support for `fx_quote` on `PaymentIntent::ConfirmParams`, `PaymentIntent::CreateParams`, `PaymentIntent::UpdateParams`, `PaymentIntent`, `Transfer::CreateParams`, and `Transfer`
  * Add support for `discount_amount`, `line_items`, `shipping`, and `tax` on `PaymentIntent::AmountDetail`
  * Add support for `pix` on `PaymentMethodConfiguration::CreateParams`, `PaymentMethodConfiguration::UpdateParams`, and `PaymentMethodConfiguration`
  * Add support for `us_cfpb_data` on `Person` and `Token::CreateParams::Person`
  * Add support for `pending_reason` on `Refund`
  * Add support for `aw`, `az`, `bd`, `bj`, `et`, `kg`, `la`, and `ph` on `TaxRegistration::CountryOption` and `TaxRegistration::CreateParams::CountryOption`
* [#1588](https://github.com/stripe/stripe-ruby/pull/1588) Removed Request signing authenticator
  - Removed `RequestSigningAuthenticator` class as request signing is not supported by Stripe APIs yet. This allows us to remove the dependency on base64
* [#1582](https://github.com/stripe/stripe-ruby/pull/1582) Prathmesh/merge ruby beta

## 15.1.0-beta.1 - 2025-04-10
* [#1569](https://github.com/stripe/stripe-ruby/pull/1569) Update generated code for beta

  ### Breaking changes
  * Change type of `V2MoneyManagementReceivedDebit.status_transitions` from `an object` to `nullable(an object)`

  ### Additions
  * Add support for new resources `Privacy::RedactionJobRootObjects`, `Privacy::RedactionJobValidationError`, and `Privacy::RedactionJob`
  * Add support for `cancel`, `create`, `list`, `retrieve`, `run`, `update`, and `validate` methods on resource `RedactionJob`
  * Add support for `list` and `retrieve` methods on resource `RedactionJobValidationError`
  * Add support for `minority_owned_business_designation` on `Account::BusinessProfile`, `Account::CreateParams::BusinessProfile`, and `Account::UpdateParams::BusinessProfile`
  * Add support for `export_tax_transactions` and `payment_disputes` on `AccountSession::CreateParams::Component`
  * Add support for `wallet_options` on `CheckoutSession::CreateParams` and `CheckoutSession`
  * Add support for `klarna` on `PaymentMethodDomain`
  * Change type of `TaxCalculationLineItem.reference` from `nullable(string)` to `string`
  * Add support for `in` on `TaxRegistration::CountryOption` and `TaxRegistration::CreateParams::CountryOption`
* [#1572](https://github.com/stripe/stripe-ruby/pull/1572) Handle external_account field
  - Changes `external_account` field in `external_accounts.create` from a `string` to a union type.

## 15.0.0 - 2025-04-09

### Breaking change
* [#1574](https://github.com/stripe/stripe-ruby/pull/1574) Rename `object_id` in V2::Core::EventService::ListParams to `object_id_`
  * ⚠️ Change name of parameter from `object_id` to `object_id_` on `Stripe::V2::Core::EventService::ListParams` to avoid conflict with Ruby native attribute, as found in https://github.com/stripe/stripe-ruby/issues/1567
  * This is a no-op unless you are using this specific parameter that was introduced in `v14.0.0`

* [#1576](https://github.com/stripe/stripe-ruby/pull/1576) Explicitly pass through custom headers in retrieve
  * Fix custom options passing for resource-based retrieve
* [#1571](https://github.com/stripe/stripe-ruby/pull/1571) Validate all instance variable keys returned from the API
  * Validate all keys returned from the API, including custom response fields, to make sure they can be set in an instance variable, as brought up in https://github.com/stripe/stripe-ruby/issues/1564
    * We do not set instance variables for invalid field names (as defined by the [Ruby spec](https://ruby-doc.org/docs/ruby-doc-bundle/Manual/man-1.4/syntax.html#ident)). We recommend for custom hash map response fields, use the `[]` accessor.
       ```ruby
       c = client.v1.customers.retrieve("cus_123")
       c.metadata["invalid-variable-name!"]
       c.metadata["valid_key_name_works_too"]
      ```
* [#1575](https://github.com/stripe/stripe-ruby/pull/1575) Remove unused youtube playlist link
* [#1573](https://github.com/stripe/stripe-ruby/pull/1573) Remove link for stale youtube video playlist

## 14.1.0-beta.1 - 2025-04-02
* [#1563](https://github.com/stripe/stripe-ruby/pull/1563), [#1558](https://github.com/stripe/stripe-ruby/pull/1558), [#1547](https://github.com/stripe/stripe-ruby/pull/1547) Update generated code for beta

  This release changes the pinned API version to `2025-03-31.preview`

  ### Breaking changes
    * Change type of `QuotePreviewInvoice::Parent::SubscriptionDetail.subscription` from `string` to `expandable($Subscription)`
    * Remove support for `value` on `TerminalReader::Action::CollectInput::Input::Selection::Choice`, `TerminalReader::Action::CollectInput::Input::Selection`, and `TerminalReader::CollectInputsParams::Input::Selection::Choice`

  ### Additions
    * Add support for `payment_method_options` on `ConfirmationToken::CreateParams`
    * Add support for `installments` on `ConfirmationToken::PaymentMethodOption::Card`
    * Change `BillingCreditBalanceSummary::RetrieveParams.customer`, `BillingCreditBalanceTransaction::ListParams.customer`, `BillingCreditGrant::CreateParams.customer`, `BillingPortalSession::CreateParams.customer`, `CustomerSession::CreateParams.customer`, `InvoiceItem::CreateParams.customer`, `PaymentMethod::AttachParams.customer`, and `Subscription::CreateParams.customer` to be optional
    * Add support for `update_line_items` on `CheckoutSession::CreateParams::Permission` and `CheckoutSession::Permission`
    * Add support for `billie` on `PaymentIntent::ConfirmParams::PaymentMethodOption`, `PaymentIntent::CreateParams::PaymentMethodOption`, `PaymentIntent::PaymentMethodOption`, and `PaymentIntent::UpdateParams::PaymentMethodOption`
    * Add support for `id` and `text` on `TerminalReader::Action::CollectInput::Input::Selection::Choice`, `TerminalReader::Action::CollectInput::Input::Selection`, and `TerminalReader::CollectInputsParams::Input::Selection::Choice`
    * Add support for new resources `BalanceSettings`
    * Add support for `retrieve` and `update` methods on resource `BalanceSettings`
    * Add support for `create`, `delete`, `list`, `retrieve`, and `update` methods on a new `ExternalAccountService` class to access cards and bank accounts made available in the new path `v1/external_accounts`. Access this via `StripeClient.external_accounts`

  #### New APIs for Money CardManagement

  * Add support for new resources `V2::Core::Vault::UsBankAccount`, `V2::FinancialAddressCreditSimulation`, `V2::FinancialAddressGeneratedMicrodeposits`, `V2::MoneyManagement::Adjustment`, `V2::MoneyManagement::FinancialAccount`, `V2::MoneyManagement::FinancialAddress`, `V2::MoneyManagement::InboundTransfer`, `V2::MoneyManagement::OutboundPaymentQuote`, `V2::MoneyManagement::OutboundPayment`, `V2::MoneyManagement::OutboundSetupIntent`, `V2::MoneyManagement::OutboundTransfer`, `V2::MoneyManagement::PayoutMethod`, `V2::MoneyManagement::PayoutMethodsBankAccountSpec`, `V2::MoneyManagement::ReceivedCredit`, `V2::MoneyManagement::ReceivedDebit`, `V2::MoneyManagement::TransactionEntry`, and `V2::MoneyManagement::Transaction`
  * Add support for `create` method on resource `V2::MoneyManagement::OutboundPaymentQuote`
  * Add support for `list` and `retrieve` methods on resources `V2::MoneyManagement::Adjustment`, `V2::MoneyManagement::FinancialAccount`, `V2::MoneyManagement::ReceivedCredit`, `V2::MoneyManagement::ReceivedDebit`, `V2::MoneyManagement::TransactionEntry`, and `V2::MoneyManagement::Transaction`
  * Add support for `create`, `list`, and `retrieve` methods on resources `V2::MoneyManagement::FinancialAddress` and `V2::MoneyManagement::InboundTransfer`
  * Add support for `cancel`, `create`, `list`, and `retrieve` methods on resources `V2::MoneyManagement::OutboundPayment` and `V2::MoneyManagement::OutboundTransfer`
  * Add support for `archive`, `list`, `retrieve`, and `unarchive` methods on resource `V2::MoneyManagement::PayoutMethod`
  * Add support for `cancel`, `create`, `list`, `retrieve`, and `update` methods on resource `V2::MoneyManagement::OutboundSetupIntent`
  * Add support for `retrieve` method on resource `V2::MoneyManagement::PayoutMethodsBankAccountSpec`
  * Add support for new thin event `V2MoneyManagementFinancialAccountCreatedEvent` with related object `V2::MoneyManagement::FinancialAccount`
  * Add support for new thin events `V2MoneyManagementFinancialAddressActivatedEvent` and `V2MoneyManagementFinancialAddressFailedEvent` with related object `V2::MoneyManagement::FinancialAddress`
  * Add support for new thin events `V2MoneyManagementInboundTransferAvailableEvent`, `V2MoneyManagementInboundTransferBankDebitFailedEvent`, `V2MoneyManagementInboundTransferBankDebitProcessingEvent`, `V2MoneyManagementInboundTransferBankDebitQueuedEvent`, `V2MoneyManagementInboundTransferBankDebitReturnedEvent`, and `V2MoneyManagementInboundTransferBankDebitSucceededEvent` with related object `V2::MoneyManagement::InboundTransfer`
  * Add support for new thin events `V2MoneyManagementOutboundPaymentCanceledEvent`, `V2MoneyManagementOutboundPaymentCreatedEvent`, `V2MoneyManagementOutboundPaymentFailedEvent`, `V2MoneyManagementOutboundPaymentPostedEvent`, and `V2MoneyManagementOutboundPaymentReturnedEvent` with related object `V2::MoneyManagement::OutboundPayment`
  * Add support for new thin events `V2MoneyManagementOutboundTransferCanceledEvent`, `V2MoneyManagementOutboundTransferCreatedEvent`, `V2MoneyManagementOutboundTransferFailedEvent`, `V2MoneyManagementOutboundTransferPostedEvent`, and `V2MoneyManagementOutboundTransferReturnedEvent` with related object `V2::MoneyManagement::OutboundTransfer`
  * Add support for new thin events `V2MoneyManagementReceivedCreditAvailableEvent`, `V2MoneyManagementReceivedCreditFailedEvent`, `V2MoneyManagementReceivedCreditReturnedEvent`, and `V2MoneyManagementReceivedCreditSucceededEvent` with related object `V2::MoneyManagement::ReceivedCredit`
  * Add support for new thin events `V2MoneyManagementReceivedDebitCanceledEvent`, `V2MoneyManagementReceivedDebitFailedEvent`, `V2MoneyManagementReceivedDebitPendingEvent`, `V2MoneyManagementReceivedDebitSucceededEvent`, and `V2MoneyManagementReceivedDebitUpdatedEvent` with related object `V2::MoneyManagement::ReceivedDebit`
  * Add support for new error types `AlreadyCanceledError`, `BlockedByStripeError`, `ControlledByDashboardError`, `FeatureNotEnabledError`, `FinancialAccountNotOpenError`, `InsufficientFundsError`, `InvalidPayoutMethodError`, `NotCancelableError`, and `RecipientNotNotifiableError`


  #### New APIs for Accounts v2 in private preview
  See [SaaS platform payments with subscription billing using Accounts v2](https://docs.stripe.com/connect/accounts-v2/saas-platform-payments-billing)

  * Add support for new resources `V2::Core::AccountLink`, `V2::Core::Account`, `V2::Core::Person`, `V2::Core::Vault::GbBankAccount`, `V2::Core::Vault::UsBankAccount`
  * Add support for `close`, `create`, `list`, `retrieve`, and `update` methods on resource `V2::Core::Account`
  * Add support for `create` method on resources `V2::Core::AccountLink` and `V2::MoneyManagement::OutboundPaymentQuote`
  * Add support for `acknowledge_confirmation_of_payee`, `archive`, `create`, `initiate_confirmation_of_payee`, and `retrieve` methods on resource `V2::Core::Vault::GbBankAccount`
  * Add support for `archive`, `create`, `retrieve`, and `update` methods on resource `V2::Core::Vault::UsBankAccount`
  * Add support for new thin events `V2CoreAccountIncludingConfigurationCustomerCapabilityStatusUpdatedEvent`, `V2CoreAccountIncludingConfigurationCustomerUpdatedEvent`, `V2CoreAccountIncludingConfigurationMerchantCapabilityStatusUpdatedEvent`, `V2CoreAccountIncludingConfigurationMerchantUpdatedEvent`, `V2CoreAccountIncludingConfigurationRecipientCapabilityStatusUpdatedEvent`, `V2CoreAccountIncludingConfigurationRecipientUpdatedEvent`, `V2CoreAccountIncludingIdentityUpdatedEvent`, and `V2CoreAccountIncludingRequirementsUpdatedEvent`
  * Add support for new thin event `V2CoreAccountLinkCompletedEvent` with related object `V2::Core::AccountLink`
  * Add support for new thin events `V2CoreAccountPersonCreatedEvent`, `V2CoreAccountPersonDeletedEvent`, and `V2CoreAccountPersonUpdatedEvent` with related object `V2::Core::Person`

* [#1557](https://github.com/stripe/stripe-ruby/pull/1557) Update Stripe.add_beta_version
  * `stripe.add_beta_version` will use the highest version number used for a beta feature instead of raising an `Error` on a conflict as it had done previously.

## 14.0.0 - 2025-04-01
* [#1559](https://github.com/stripe/stripe-ruby/pull/1559) Add RBI annotations for fields and params
  * Adds explicit field types for resources and parameters for methods, and add RBI static annotations for all resources and services
  ![image](https://github.com/user-attachments/assets/1b6cd994-d3ea-4f47-8487-f5c7b9ebf885)
  * See [the wiki](https://github.com/stripe/stripe-ruby/wiki/Static-Type-Annotations) for more details

* [#1543](https://github.com/stripe/stripe-ruby/pull/1543) Support for APIs in the new API version 2025-03-31.basil

  This release changes the pinned API version to `2025-03-31.basil`.

  ### ⚠️ Breaking changes  due to changes in the Stripe API

  Please review details for the breaking changes and alternatives in the [Stripe API changelog](https://docs.stripe.com/changelog/basil) before upgrading.

  * Remove support for resources `SubscriptionItemUsageRecordSummary` and `SubscriptionItemUsageRecord`
  * Remove support for `create` method on resource `SubscriptionItemUsageRecord`
  * Remove support for `list` method on resource `SubscriptionItemUsageRecordSummary`
  * Remove support for `upcomingLines` and `upcoming` methods on resource `Invoice`

  ### ⚠️ Other breaking changes in the SDK
  * [#1553](https://github.com/stripe/stripe-ruby/pull/1553) Remove public idempotent_replayed? method
    * ⚠️ Remove the `idempotent_replayed?` method on `StripeError`
      * The information is accessible indirectly via the raw response headers, `StripeResponse.http_headers`. For example, use `resource.last_response.http_headers['Idempotent-Replayed']`

  ### Additions to the Stripe API

  * Add support for new resource `InvoicePayment`
  * Add support for `list` and `retrieve` methods on resource `InvoicePayment`

## 13.6.0-beta.1 - 2025-03-18
* [#1550](https://github.com/stripe/stripe-ruby/pull/1550) Merge from stripe-ruby master
* [#1546](https://github.com/stripe/stripe-ruby/pull/1546) Beta SDK updates between Open API versions 1473 and 1505

  * Add support for `succeed_input_collection` and `timeout_input_collection` test helper methods on resource `Terminal.Reader`
* [#1545](https://github.com/stripe/stripe-ruby/pull/1545) fix ruby merge conflict for beta

## 13.5.0 - 2025-02-24
* [#1534](https://github.com/stripe/stripe-ruby/pull/1534) Update generated code
  * Fixed `Stripe::InvoiceLineItem.update` method.
* [#1536](https://github.com/stripe/stripe-ruby/pull/1536) Fix InvoiceLineItem parent class
  * Fix bug where `Stripe::InvoiceLineItem` had the incorrect parent class, making it error when `update` was called
* [#1533](https://github.com/stripe/stripe-ruby/pull/1533) add codeowners file

## 13.5.0-beta.1 - 2025-02-07
* [#1527](https://github.com/stripe/stripe-ruby/pull/1527) Update generated code for beta

## 13.4.1 - 2025-01-28
* [#1528](https://github.com/stripe/stripe-ruby/pull/1528) Update generated code
  * ⚠️ Bugfix: `invoice` and `line_item_id` can be passed to `update` method in `InvoiceLineItem`.

## 13.4.0 - 2025-01-27
* [#1510](https://github.com/stripe/stripe-ruby/pull/1510) Update generated code
  * Add support for `close` method on resource `Treasury.FinancialAccount`
* [#1521](https://github.com/stripe/stripe-ruby/pull/1521) pipe rubocop output to devnull
* [#1519](https://github.com/stripe/stripe-ruby/pull/1519) Fixed typos in CONTRIBUTING.MD
* [#1513](https://github.com/stripe/stripe-ruby/pull/1513) add justfile
* [#1515](https://github.com/stripe/stripe-ruby/pull/1515) Added CONTRIBUTING.md file

## 13.4.0-beta.4 - 2025-01-23
* [#1523](https://github.com/stripe/stripe-ruby/pull/1523) Update generated code for beta
  * Removed support for `stripe_account` from `Stripe::Terminal::Reader`. Use `account` instead.

## 13.4.0-beta.3 - 2025-01-17
* [#1514](https://github.com/stripe/stripe-ruby/pull/1514) Update generated code for beta

## 13.4.0-beta.2 - 2025-01-09
* [#1504](https://github.com/stripe/stripe-ruby/pull/1504) Update generated code for beta
  * Add support for `close` method on resource `Treasury.FinancialAccount`

## 13.4.0-beta.1 - 2024-12-20
* Support parameter and resource fields with typed RBIs
    * [#1509](https://github.com/stripe/stripe-ruby/pull/1509) (beta) Publish RBIs with gem
    * [#1505](https://github.com/stripe/stripe-ruby/pull/1505) Add method parameter type classes to all resources and services

    * Add method parameter classes for all resources and service methods.
    * These changes are NOT breaking and are purely additive. The method parameter classes are not required, we still accept hashes as well as the new `RequestParams` classes. Any additional gated parameters are still available to pass via hash. Resource fields define publicly documented fields and other deserialized fields are still accessible.

## 13.3.1 - 2025-01-13
* [#1512](https://github.com/stripe/stripe-ruby/pull/1512) Import global configuration for options not available on StripeClient options
  * Fixes bug where `StripeClient` was not falling back to global options for options that are not available to be set per-client
* [#1516](https://github.com/stripe/stripe-ruby/pull/1516) ThinEvent reason and livemode
  - Add `livemode` and optional `reason` fields to ThinEvent
* [#1518](https://github.com/stripe/stripe-ruby/pull/1518) Pin ubuntu version in Test action
* [#1508](https://github.com/stripe/stripe-ruby/pull/1508) Added pull request template

## 13.3.0 - 2024-12-18
* [#1500](https://github.com/stripe/stripe-ruby/pull/1500) This release changes the pinned API version to `2024-12-18.acacia`.

* [#1507](https://github.com/stripe/stripe-ruby/pull/1507) Pass requestor to all deserialized objects including lists

  * Fixes bug where `StripeObject` retrieved from lists could not be used to make requests, such as `refresh`

## 13.3.0-beta.3 - 2024-12-12
* [#1499](https://github.com/stripe/stripe-ruby/pull/1499) Update generated code for beta
  * Add support for `AllowRedisplay` on `Card` and `Source`
  * Add support for new values `am_tin`, `ao_tin`, `ba_tin`, `bb_tin`, `bs_tin`, `cd_nif`, `gn_nif`, `kh_tin`, `me_pib`, `mk_vat`, `mr_nif`, `np_pan`, `sn_ninea`, `sr_fin`, `tj_tin`, `ug_tin`, `zm_tin`, and `zw_tin` on enums `CheckoutSessionCollectedInformationTaxIdsType` and `OrderTaxDetailsTaxIdsType`
  * Add support for new value `network_fallback` on enum `IssuingAuthorizationRequestHistoryReason`
  * Remove support for `AmountRefunded` on `PaymentRecord`
  * Add support for `Account` on `TerminalReaderActionCollectPaymentMethod`, `TerminalReaderActionConfirmPaymentIntent`, `TerminalReaderActionProcessPaymentIntent`, and `TerminalReaderActionRefundPayment`

## 13.3.0-beta.2 - 2024-12-05
* [#1492](https://github.com/stripe/stripe-ruby/pull/1492) Update generated code for beta

* [#1490](https://github.com/stripe/stripe-ruby/pull/1490) Add explicit attributes for fields in resources, and rbis for resources

## 13.3.0-beta.1 - 2024-11-21
* [#1489](https://github.com/stripe/stripe-ruby/pull/1489) Merging code from master to get the latest bug fixes.

## 13.2.0 - 2024-11-20
* [#1486](https://github.com/stripe/stripe-ruby/pull/1486) This release changes the pinned API version to `2024-11-20.acacia`.
  * Add support for `respond` test helper method on resource `Issuing.Authorization`

## 13.2.0-beta.3 - 2024-11-14
* [#1484](https://github.com/stripe/stripe-ruby/pull/1484) Update generated code for beta

## 13.2.0-beta.2 - 2024-11-07
* [#1480](https://github.com/stripe/stripe-ruby/pull/1480) Update generated code for beta
  * Add support for new resources `Issuing.FraudLiabilityDebit`, `PaymentAttemptRecord`, and `PaymentRecord`
  * Add support for `list` and `retrieve` methods on resources `FraudLiabilityDebit` and `PaymentAttemptRecord`
  * Add support for `report_payment_attempt_canceled`, `report_payment_attempt_failed`, `report_payment_attempt_guaranteed`, `report_payment_attempt`, `report_payment`, and `retrieve` methods on resource `PaymentRecord`

## 13.2.0-beta.1 - 2024-10-29
* [#1477](https://github.com/stripe/stripe-ruby/pull/1477) Update generated code for beta
  * Add support for `trigger_action` method on resource `PaymentIntent`

## 13.1.2 - 2024-11-15
* [#1488](https://github.com/stripe/stripe-ruby/pull/1488) Fix incorrect key in param encoding

## 13.1.1 - 2024-11-06
* [#1483](https://github.com/stripe/stripe-ruby/pull/1483) Fix APIResource#retrieve not sending `stripe_version`

## 13.1.0 - 2024-10-29
* [#1472](https://github.com/stripe/stripe-ruby/pull/1472) This release changes the pinned API version to `2024-10-28.acacia`.
  * Add support for `submit_card` test helper method on resource `Issuing.Card`
  * Add support for new resource `V2.EventDestinations`
  * Add support for `create`, `retrieve`, `update`, `list`, `delete`, `disable`, `enable` and `ping` methods on resource `V2.EventDestinations`
* [#1476](https://github.com/stripe/stripe-ruby/pull/1476) Fix APIResource#retrieve bug not returning instance of custom resources
  * Fix bug in APIResource#refresh and APIResource#retrieve where they returned an instance of `StripeObject` for custom resources. They should now return the instance of the custom resource.

## 13.1.0-beta.3 - 2024-10-18
* [#1469](https://github.com/stripe/stripe-ruby/pull/1469) Update generated code for beta

## 13.1.0-beta.2 - 2024-10-08
* [#1468](https://github.com/stripe/stripe-ruby/pull/1468) Update generated code for beta
  * Add support for `submit_card` test helper method on resource `Issuing.Card`

## 13.1.0-beta.1 - 2024-10-03
* [#1465](https://github.com/stripe/stripe-ruby/pull/1465) Updates to the `Preview` class
  * Remove `Stripe::Preview`. Use `StripeClient#raw_request` instead (see below).
  * Marked `Stripe.raw_request` and `Stripe.deserialize` as deprecated. Use `StripeClient#raw_request` and `StripeClient#deserialize` instead. In StripeClient, the params and opts parameters are passed as keyword arguments:
    ```ruby
    # Before
    resp = Stripe.raw_request(:post, "v1/charges", , {p1: "p1"}, {stripe_account: "acct_123"})
    charge = Stripe.deserialize(resp.data)

    # After
    client = StripeClient.new("sk_test_123")
    resp = client.raw_request(:post, "/v1/charges", params: {p1: "p1"}, opts: {stripe_account: "acct_123"})
    charge = client.deserialize(resp.data)
    ```

## 13.0.2 - 2024-10-23
* [#1473](https://github.com/stripe/stripe-ruby/pull/1473) Always return the result of APIResource#refresh in APIResource.retrieve

  * Fix bug where we would not return the mutated `self` object when calling `APIResource.retrieve`

## 13.0.1 - 2024-10-18
* [#1471](https://github.com/stripe/stripe-ruby/pull/1471) update object tags for meter-related classes

  - fixes a bug where the `object` property of the `MeterEvent`, `MeterEventAdjustment`, and `MeterEventSession` didn't match the server.
* [#1470](https://github.com/stripe/stripe-ruby/pull/1470) Cleaned up examples and added documentation

## 13.0.0 - 2024-10-01
* [#1458](https://github.com/stripe/stripe-ruby/pull/1458) Support for APIs in the new API version 2024-09-30.acacia

  This release changes the pinned API version to `2024-09-30.acacia`. Please read the [API Changelog](https://docs.stripe.com/changelog/acacia#2024-09-30.acacia) and carefully review the API changes before upgrading.

  ### ⚠️ Breaking changes

  Please refer to our [migration guide for v13](https://github.com/stripe/stripe-ruby/wiki/Migration-guide-for-v13) for more information about the backwards incompatible changes.

  #### ❗ `StripeClient` and related changes
  * Move `StripeClient` and requestor logic to `APIRequestor`.
    * `StripeClient#request` is still available, but is deprecated and will be removed. We encourage `StripeClient#raw_request` as a replacement (see other breaking changes for more detail).
  * Repurpose and introduce `StripeClient` as the the entry-point to the service-based pattern, a new interface for calling the Stripe API with many benefits over the existing resource-based paradigm. Services are available under the `v1` and `v2` accessors.
      * No global config: you can simultaneously use multiple clients with different configuration options (such as API keys)
      * No extra API calls. All API endpoints can be accessed with a single method call. You don't have to call `retrieve` before doing an `update`.
      * No static methods. Much easier mocking.

  #### Other breaking changes

  * Adjust default values around retries for HTTP requests. You can use the old defaults by setting them explicitly. New values are:
    - max retries: `0` -> `2`
    - max retry delay (seconds) `2` -> `5`
  * Remove `StripeClient#connection_manager`. This was a legacy method from years ago.
  * Singleton `retrieve` method now requires `params` to be passed as the first argument. Existing calls to singleton `retrieve` method with only `opts` argument will have to be updated to account for the addition of `params` argument.
      ```ruby
      params = { expand: ["available"] }
      opts = { stripe_account: "acct_123" }

      # ❌ No longer works
      Stripe::Balance.retrieve(opts)

      # ✅ Correct way to call retrieve method
      Stripe::Balance.retrieve(params, opts)
      ```
  * Moved the `Stripe.raw_request()` method that was recently added to `StripeClient`. This will use the configuration set on the StripeClient instead of the global configuration used before.
  * Remove `APIResource.request`. Instead, use `StripeClient#raw_request` now.
      ```ruby
      # Instead of
      Stripe::APIResource.request(:get, "/v1/endpoint", params, opts)

      # do
      client = Stripe::StripeClient.new(...)
      resp = client.raw_request(:get, "/v1/endpoint", params: params, opts: opts)
      ```
  * Add an additional parameter to `APIResource.execute_resource_request`. However, we discourage use of this in favor of `StripeClient#raw_request`.
      ```ruby
      APIResource.execute_resource_request(method, url, params = {}, opts = {}, usage = [])
      # is now, with base_address being one of [:api, :files, :connect, :meter_events]
      APIResource.execute_resource_request(method, url, base_address = :api, params = {}, opts = {}, usage = [])
      ```
  * Change parameters to `APIRequestor.execute_request` (previously `StripeClient.execute_request`). It now returns all request options from our internal request framework as the second value in the returned tuple, instead of only the API key used:
    ```ruby
    # Before
    obj, api_key = StripeClient.execute_request(method, path, api_base: nil,
                                                api_key: nil, headers: {}, params: {}, usage: [])

    # is now, with base_address being one of [:api, :files, :connect, :meter_events]

    obj, opts = APIRequestor.execute_request(method, path, base_address,
                                            params: {}, opts: {}, usage: [])
    puts(opts) # will output {api_key: "sk_test_123", stripe_account: "acct_123"}
    ```


  ### Additions
  * Add support for new Usage Billing APIs `Billing.MeterEvent`, `Billing.MeterEventAdjustments`, `Billing.MeterEventSession`, `Billing.MeterEventStream` and the new Events API `Core.Events` in the [v2 namespace ](https://docs.corp.stripe.com/api-v2-overview)
  * Add method `parse_thin_event()` on the `StripeClient` class to parse [thin events](https://docs.corp.stripe.com/event-destinations#events-overview).

## 12.7.0-beta.2 - 2024-09-18
* [#1449](https://github.com/stripe/stripe-ruby/pull/1449) Update generated code for beta
  * Remove support for resource `QuotePhase`
  * Remove support for `list_line_items` and `retrieve` methods on resource `QuotePhase`

## 12.7.0-beta.1 - 2024-09-13
* [#1446](https://github.com/stripe/stripe-ruby/pull/1446) Update generated code for beta
  * Add support for new resources `Issuing.DisputeSettlementDetail` and `Issuing.Settlement`
  * Add support for `list` and `retrieve` methods on resource `DisputeSettlementDetail`
  * Remove support for `list` method on resource `QuotePhase`

## 12.6.0 - 2024-09-12
* [#1442](https://github.com/stripe/stripe-ruby/pull/1442) Update generated code
  * Add support for new resource `InvoiceRenderingTemplate`
  * Add support for `archive`, `list`, `retrieve`, and `unarchive` methods on resource `InvoiceRenderingTemplate`
* [#1443](https://github.com/stripe/stripe-ruby/pull/1443) Removed v1/files override

## 12.6.0-beta.1 - 2024-09-05
* [#1441](https://github.com/stripe/stripe-ruby/pull/1441) Update generated code for beta
  * Add support for new resources `Billing.MeterErrorReport` and `Terminal.ReaderCollectedData`
  * Add support for `retrieve` method on resource `ReaderCollectedData`

## 12.5.0 - 2024-08-08
* [#1440](https://github.com/stripe/stripe-ruby/pull/1440) Update generated code
  * Add support for new resources `Billing.AlertTriggered` and `Billing.Alert`
  * Add support for `activate`, `archive`, `create`, `deactivate`, `list`, and `retrieve` methods on resource `Alert`
  * Add support for `retrieve` method on resource `Tax.Calculation`

## 12.5.0-beta.2 - 2024-08-01
* [#1439](https://github.com/stripe/stripe-ruby/pull/1439) Update generated code for beta
  * Add support for `attach_payment` method on resource `Invoice`

## 12.5.0-beta.1 - 2024-07-25
* [#1429](https://github.com/stripe/stripe-ruby/pull/1429) Update generated code for beta
  * Add support for new resources `Billing.AlertTriggered`, `Billing.Alert`, and `Tax.Association`
  * Add support for `activate`, `archive`, `create`, `deactivate`, `list`, and `retrieve` methods on resource `Alert`
  * Add support for `find` method on resource `Association`
* [#1434](https://github.com/stripe/stripe-ruby/pull/1434) Merge changes from stripe/stripe-ruby master

## 12.4.0 - 2024-07-25
* [#1437](https://github.com/stripe/stripe-ruby/pull/1437) Update generated code
  * Add support for `update` method on resource `Checkout.Session`

## 12.3.0 - 2024-07-18
* [#1436](https://github.com/stripe/stripe-ruby/pull/1436) Fixed changelog for major release 12.0.0
* [#1435](https://github.com/stripe/stripe-ruby/pull/1435) Add deprecation warning for `APIResource.request`

## 12.2.0 - 2024-07-12
* [#1430](https://github.com/stripe/stripe-ruby/pull/1430) Update generated code

* [#1433](https://github.com/stripe/stripe-ruby/pull/1433) Add usage to raw_request call
* [#1431](https://github.com/stripe/stripe-ruby/pull/1431) Add `raw_request`

  - Adds the ability to make raw requests to the Stripe API, by providing an HTTP method and url. This is an alternative to using `Stripe::APIResource.request(...)` to make custom requests, which is discouraged and will be broken in a future major version.

## 12.2.0-beta.1 - 2024-07-05
* [#1428](https://github.com/stripe/stripe-ruby/pull/1428) Update generated code for beta
  * Add support for new resource `FinancialConnections.Institution`
  * Add support for `list` and `retrieve` methods on resource `Institution`
* [#1409](https://github.com/stripe/stripe-ruby/pull/1409) Update generated code for beta

## 12.1.0 - 2024-07-05
* [#1425](https://github.com/stripe/stripe-ruby/pull/1425) Update generated code
  * Add support for `add_lines`, `remove_lines`, and `update_lines` methods on resource `Invoice`
* [#1420](https://github.com/stripe/stripe-ruby/pull/1420) Update static methods for delete/list on BankAccount/Card to throw NotImplementedError
  * The below methods have been throwing `InvalidRequestError` because the urls used to make the requests have been buggy. Updating them to throw `NotImplementedError` instead just like their counterparts for update & retrieve because they cannot be implemented without the parent id.

  Methods affected | Use these instead in the context of payment method | Use these in the context of external accounts
  ------ | ------ | ----
  Stripe:: BankAccount.delete | Stripe::Customer.delete_source | Stripe::Account.delete_external_account
  Stripe:: BankAccount.list | Stripe::Customer.list_sources | Stripe::Customer.list_external_accounts
  Stripe:: Card.delete | Stripe::Customer.delete_source | Stripe::Account.delete_external_account
  Stripe:: Card.list | Stripe::Customer.list_sources | Stripe::Customer.list_external_accounts
* [#1427](https://github.com/stripe/stripe-ruby/pull/1427) Regenerate rbis
* [#1426](https://github.com/stripe/stripe-ruby/pull/1426) Remove coveralls and re-added JRuby

## 12.0.0 - 2024-06-24
* [#1418](https://github.com/stripe/stripe-ruby/pull/1418) Add missing static method for verify on BankAccount
* [#1419](https://github.com/stripe/stripe-ruby/pull/1419)

  This release changes the pinned API version to 2024-06-20. Please read the [API Changelog](https://docs.stripe.com/changelog/2024-06-20) and carefully review the API changes before upgrading.

  ### Additions

  * Add support for `finalize_amount` test helper method on resource `Issuing.Authorization`

## 11.7.0 - 2024-06-13
* [#1415](https://github.com/stripe/stripe-ruby/pull/1415) Deprecate StripeClient#request
  * Add deprecation warning for `StripeClient#request`. This helper method will be removed in a future major version. To access response objects, use the `last_response` property on the returned resource instead. Refer to [Accessing a response object](https://github.com/stripe/stripe-ruby?tab=readme-ov-file#accessing-a-response-object) in the README for usage details.

## 11.7.0-beta.1 - 2024-05-30
* [#1400](https://github.com/stripe/stripe-ruby/pull/1400) Update generated code for beta
  * Keeping up with the changes from version 11.6.0

## 11.6.0 - 2024-05-30
* [#1404](https://github.com/stripe/stripe-ruby/pull/1404) Add method to list invoice line items
  * Add methods `list_lines()` on the class `Invoice` to list the invoice line items

## 11.5.0 - 2024-05-23
* This release has no changes.

## 11.5.0-beta.1 - 2024-05-09
* [#1395](https://github.com/stripe/stripe-ruby/pull/1395) Update generated code for beta
  * No new beta features. Merging changes from the main branch.

## 11.4.0 - 2024-05-09
* [#1397](https://github.com/stripe/stripe-ruby/pull/1397) Update generated code
  * Add support for `update` test helper method on resources `Treasury.OutboundPayment` and `Treasury.OutboundTransfer`
* [#1399](https://github.com/stripe/stripe-ruby/pull/1399) Pass params to transfer reversal
  * Allow `Stripe::Transfer.retrieve_reversal()` to accept a params hash as the third argument, followed by opts. No changes to existing calls are necessary, but in a future major version this method will be updated to only accept params as the first argument. Fixes [#1393](https://github.com/stripe/stripe-ruby/issues/1393)
* [#1389](https://github.com/stripe/stripe-ruby/pull/1389) Removed jaro_winkler as a dependency
* [#1396](https://github.com/stripe/stripe-ruby/pull/1396) Start tracking `StripeClient#request` usage

## 11.4.0-beta.1 - 2024-05-02
* [#1386](https://github.com/stripe/stripe-ruby/pull/1386) Update generated code for beta

## 11.3.0 - 2024-05-02
* [#1387](https://github.com/stripe/stripe-ruby/pull/1387) Update generated code

* [#1392](https://github.com/stripe/stripe-ruby/pull/1392) Deprecate Ruby methods based on OpenAPI spec
  - Mark as deprecated the `approve` and `decline` methods in `lib/stripe/resources/issuing/authorization.rb`. Instead, [respond directly to the webhook request to approve an authorization](https://stripe.com/docs/issuing/controls/real-time-authorizations#authorization-handling).
* [#1391](https://github.com/stripe/stripe-ruby/pull/1391) Add Ruby 3.3 to CI test matrix

## 11.3.0-beta.1 - 2024-04-18
* [#1383](https://github.com/stripe/stripe-ruby/pull/1383) Update generated code for beta

## 11.2.0 - 2024-04-18
* [#1385](https://github.com/stripe/stripe-ruby/pull/1385) Update generated code
  * Add support for `create_preview` method on resource `Invoice`

## 11.1.0 - 2024-04-16
* [#1379](https://github.com/stripe/stripe-ruby/pull/1379) Update generated code
  * Add support for new resource `Entitlements.ActiveEntitlementSummary`

## 11.1.0-beta.1 - 2024-04-11
* [#1376](https://github.com/stripe/stripe-ruby/pull/1376) Update generated code for beta
  * Add support for `retrieve` method on resources `Entitlements.ActiveEntitlement` and `Entitlements.Feature`

## 11.0.0 - 2024-04-10
* [#1374](https://github.com/stripe/stripe-ruby/pull/1374)

  * This release changes the pinned API version to `2024-04-10`. Please read the [API Changelog](https://docs.stripe.com/changelog/2024-04-10) and carefully review the API changes before upgrading.

  ### ⚠️ Breaking changes

  * When no `x-stripe-should-retry` header is set in the response, the library now retries all requests with `status >= 500`, not just non-POST methods.

## 10.15.0 - 2024-04-09

- [#1377](https://github.com/stripe/stripe-ruby/pull/1377) Add last_response to StripeObject
  - Users can now retrieve raw response from the returned resource, using the `last_response` property. See [README](https://github.com/stripe/stripe-ruby/blob/master/README.md) for an example.
- [#1372](https://github.com/stripe/stripe-ruby/pull/1372) Update generated code
  - Add support for new resources `Entitlements.ActiveEntitlement` and `Entitlements.Feature`
  - Add support for `list` and `retrieve` methods on resource `ActiveEntitlement`
  - Add support for `create`, `list`, `retrieve`, and `update` methods on resource `Feature`
- [#1366](https://github.com/stripe/stripe-ruby/pull/1366) Move executables to `exe` folder

## 10.15.0-beta.1 - 2024-04-04

- [#1373](https://github.com/stripe/stripe-ruby/pull/1373) Update generated code for beta
  - Add support for `update` method on resource `Entitlements.Feature`
- [#1370](https://github.com/stripe/stripe-ruby/pull/1370) Update generated code for beta

## 10.14.0 - 2024-03-28

- [#1369](https://github.com/stripe/stripe-ruby/pull/1369) Update generated code
  - Add support for new resources `Billing.MeterEventAdjustment`, `Billing.MeterEvent`, and `Billing.Meter`
  - Add support for `create`, `deactivate`, `list`, `reactivate`, `retrieve`, and `update` methods on resource `Meter`
  - Add support for `create` method on resources `MeterEventAdjustment` and `MeterEvent`

## 10.14.0-beta.1 - 2024-03-21

- [#1363](https://github.com/stripe/stripe-ruby/pull/1363) Update generated code for beta
  - Add support for new resources `Entitlements.ActiveEntitlementSummary` and `Entitlements.ActiveEntitlement`
  - Add support for `list` method on resource `ActiveEntitlement`

## 10.13.0 - 2024-03-21

- [#1367](https://github.com/stripe/stripe-ruby/pull/1367) Update generated code
  - Add support for new resources `ConfirmationToken` and `Forwarding.Request`
  - Add support for `retrieve` method on resource `ConfirmationToken`
  - Add support for `create`, `list`, and `retrieve` methods on resource `Request`
- [#1362](https://github.com/stripe/stripe-ruby/pull/1362) Exclude sorbet directory and tapioca script when packing gem

## 10.13.0-beta.1 - 2024-03-14

- [#1360](https://github.com/stripe/stripe-ruby/pull/1360) Update generated code for beta
  - Add support for new resources `Billing.MeterEventAdjustment`, `Billing.MeterEvent`, and `Billing.Meter`
  - Add support for `create`, `deactivate`, `list`, `reactivate`, `retrieve`, and `update` methods on resource `Meter`
  - Add support for `create` method on resources `MeterEventAdjustment` and `MeterEvent`
  - Add support for `create` test helper method on resource `ConfirmationToken`
  - Add support for `add_lines`, `remove_lines`, and `update_lines` methods on resource `Invoice`

## 10.12.0 - 2024-03-14

- [#1359](https://github.com/stripe/stripe-ruby/pull/1359) Update generated code
  - Add support for new resources `Issuing.PersonalizationDesign` and `Issuing.PhysicalBundle`
  - Add support for `create`, `list`, `retrieve`, and `update` methods on resource `PersonalizationDesign`
  - Add support for `list` and `retrieve` methods on resource `PhysicalBundle`
- [#1354](https://github.com/stripe/stripe-ruby/pull/1354) Refactor after SDK based generation pattern
- [#1347](https://github.com/stripe/stripe-ruby/pull/1347) Reorder methods with lexographical sort
- [#1355](https://github.com/stripe/stripe-ruby/pull/1355) Disable Metrics/ClassLength
- [#1351](https://github.com/stripe/stripe-ruby/pull/1351) Update CHANGELOG.md

## 10.12.0-beta.1 - 2024-02-29

- [#1352](https://github.com/stripe/stripe-ruby/pull/1352) Update generated code for beta
  Release specs are identical.
- [#1350](https://github.com/stripe/stripe-ruby/pull/1350) Update generated code for beta

- [#1341](https://github.com/stripe/stripe-ruby/pull/1341) Update generated code for beta
  - Remove support for resource `Entitlements.Event`
- [#1343](https://github.com/stripe/stripe-ruby/pull/1343) Add a helper to add a beta version

## 10.11.0 - 2024-02-29

- [#1348](https://github.com/stripe/stripe-ruby/pull/1348) Use sorbet gem instead of sorbet-static
- [#1342](https://github.com/stripe/stripe-ruby/pull/1342) Update generated code
  - Add `list_refunds` and `retrieve_refund` methods on resource `Charge`.
- [#1345](https://github.com/stripe/stripe-ruby/pull/1345) Update README to use add_beta_version

## 10.11.0-beta.1 - 2024-02-22

- [#1335](https://github.com/stripe/stripe-ruby/pull/1335) Update generated code for beta

## 10.10.0 - 2024-02-22

- [#1336](https://github.com/stripe/stripe-ruby/pull/1336) Update generated code
  - Add `InvoiceLineItem.update` method.
- [#1334](https://github.com/stripe/stripe-ruby/pull/1334) Add TaxIds API
  - Add support for `all`, `create`, and `retrieve` methods on resource `TaxId`
  - The `delete` method now sends a DELETE request to `/v1/tax_ids/{id}` instead of `/v1/customers/{customer}/tax_ids/{id}`. The endpoints are functionally the same when operating on a Customer Tax ID.
  - The `resource_url` method on `TaxId` now returns the top-level `/v1/tax_ids/{id}` path instead of the `/v1/customers/{customer}/tax_ids/{id}` path.

## 10.10.0-beta.1 - 2024-02-16

- [#1332](https://github.com/stripe/stripe-ruby/pull/1332) Update generated code for beta
  - Add support for `decrement_authorization` method on resource `PaymentIntent`
- [#1328](https://github.com/stripe/stripe-ruby/pull/1328) Update generated code for beta

## 10.9.0 - 2024-02-15

- [#1329](https://github.com/stripe/stripe-ruby/pull/1329) Update generated code
  - Fixed bug where `TaxId` resource `delete` method sent request to wrong URL (https://github.com/stripe/stripe-ruby/issues/1333)
- [#1324](https://github.com/stripe/stripe-ruby/pull/1324) Start running Sorbet in CI
- [#1327](https://github.com/stripe/stripe-ruby/pull/1327) Add methods for dynamically referenced constants

## 10.9.0-beta.1 - 2024-02-08

- [#1321](https://github.com/stripe/stripe-ruby/pull/1321) Update generated code for beta
  - Release specs are identical.

## 10.8.0 - 2024-02-08

- [#1322](https://github.com/stripe/stripe-ruby/pull/1322) Update generated code
- [#1323](https://github.com/stripe/stripe-ruby/pull/1323) Extract other CRUDL api operations from mixins
  - Extract more CRUDL operations, namely `create`, `delete`, `update`, and `list` into the resources. These methods will no longer rely on the APIOperation mixins.
- [#1314](https://github.com/stripe/stripe-ruby/pull/1314) Update mocha gem to 1.16

## 10.8.0-beta.1 - 2024-02-01

- [#1318](https://github.com/stripe/stripe-ruby/pull/1318) Update generated code for beta
  - Add support for new resources `Entitlements.Event` and `Entitlements.Feature`
  - Add support for `create` method on resource `Event`
  - Add support for `create` and `list` methods on resource `Feature`

## 10.7.1 - 2024-02-05

- [#1320](https://github.com/stripe/stripe-ruby/pull/1320) Remove spurious \_search deprecation messages (https://github.com/stripe/stripe-ruby/issues/1319)

## 10.7.0 - 2024-02-01

- [#1317](https://github.com/stripe/stripe-ruby/pull/1317) Remove list method in child resources
  - Removes list method mixin from child resources, as these methods always return `InvalidRequestError` and never succeed
- [#1311](https://github.com/stripe/stripe-ruby/pull/1311) Use the deprecation gem in search and clean up usage of the gem

## 10.7.0-beta.3 - 2024-01-25

- [#1313](https://github.com/stripe/stripe-ruby/pull/1313) Update generated code for beta
  - Add support for `create_preview` method on resource `Invoice`
- [#1307](https://github.com/stripe/stripe-ruby/pull/1307) Beta: report raw request usage

## 10.7.0-beta.2 - 2024-01-19

- [#1307](https://github.com/stripe/stripe-ruby/pull/1307) Beta: report raw request usage

## 10.7.0-beta.1 - 2024-01-12

- [#1309](https://github.com/stripe/stripe-ruby/pull/1309) Update generated code for beta
- [#1305](https://github.com/stripe/stripe-ruby/pull/1305) Update generated code for beta

## 10.6.0 - 2024-01-12

- [#1310](https://github.com/stripe/stripe-ruby/pull/1310) Update generated code
  - Add support for new resource `CustomerSession`
  - Add support for `create` method on resource `CustomerSession`

## 10.6.0-beta.1 - 2024-01-04

- [#1302](https://github.com/stripe/stripe-ruby/pull/1302) Update generated code for beta
  - Updated stable APIs to the latest version

## 10.5.0 - 2024-01-04

- [#1306](https://github.com/stripe/stripe-ruby/pull/1306) Update generated code
  - Add support for `retrieve` method on resource `Tax.Registration`

## 10.5.0-beta.1 - 2023-12-22

- [#1302](https://github.com/stripe/stripe-ruby/pull/1302) Update generated code for beta

## 10.4.0 - 2023-12-22

- [#1303](https://github.com/stripe/stripe-ruby/pull/1303) Update generated code
  - Add support for new resource `FinancialConnections.Transaction`
  - Add support for `list` and `retrieve` methods on resource `Transaction`
  - Add support for `subscribe` and `unsubscribe` methods on resource `FinancialConnections.Account`
- [#1304](https://github.com/stripe/stripe-ruby/pull/1304) Add support for updatable singleton resources

## 10.4.0-beta.1 - 2023-12-14

Updated stable APIs to the latest version

## 10.3.0 - 2023-12-14

- [#1294](https://github.com/stripe/stripe-ruby/pull/1294) Support sending parameters inside singleton retrieve

## 10.3.0-beta.1 - 2023-11-30

- [#1298](https://github.com/stripe/stripe-ruby/pull/1298) Update generated code for beta
- [#1296](https://github.com/stripe/stripe-ruby/pull/1296) Merge master into beta

## 10.2.0 - 2023-11-30

- [#1292](https://github.com/stripe/stripe-ruby/pull/1292) Update generated code
  - Add support for new resources `Climate.Order`, `Climate.Product`, and `Climate.Supplier`
  - Add support for `cancel`, `create`, `list`, `retrieve`, and `update` methods on resource `Order`
  - Add support for `list` and `retrieve` methods on resources `Product` and `Supplier`
- [#1295](https://github.com/stripe/stripe-ruby/pull/1295) Upgrade rubocop
- [#1291](https://github.com/stripe/stripe-ruby/pull/1291) Update generated code

- [#1290](https://github.com/stripe/stripe-ruby/pull/1290) Update generated code

- [#1288](https://github.com/stripe/stripe-ruby/pull/1288) Update generated code

## 10.2.0-beta.1 - 2023-11-02

- [#1287](https://github.com/stripe/stripe-ruby/pull/1287) Update generated code for beta
  - Add support for `attach_payment_intent` method on resource `Invoice`
- [#1285](https://github.com/stripe/stripe-ruby/pull/1285) Update generated code for beta

## 10.1.0 - 2023-11-02

- [#1286](https://github.com/stripe/stripe-ruby/pull/1286) Update generated code
  - Add support for new resource `Tax.Registration`
  - Add support for `create`, `list`, and `update` methods on resource `Registration`

## 10.1.0-beta.2 - 2023-10-26

- [#1285](https://github.com/stripe/stripe-ruby/pull/1285) Update generated code for beta
  - Add support for new resource `Margin`
  - Add support for `create`, `list`, `retrieve`, and `update` methods on resource `Margin`

## 10.1.0-beta.1 - 2023-10-17

- [#1284](https://github.com/stripe/stripe-ruby/pull/1284) Update generated code for beta
  - Update pinned API version to `2023-10-16`
- [#1282](https://github.com/stripe/stripe-ruby/pull/1282) Update generated code for beta

## 10.0.0 - 2023-10-16
* This release changes the pinned API version to `2023-10-16`. Please read the [API Changelog](https://docs.stripe.com/changelog/2023-10-16) and carefully review the API changes before upgrading `stripe-ruby`.
* [#1283](https://github.com/stripe/stripe-ruby/pull/1283) Update generated code
  - Updated pinned API version
- [#1281](https://github.com/stripe/stripe-ruby/pull/1281) Update generated code
  - Documentation only changes

## 9.5.0-beta.2 - 2023-10-12

- [#1280](https://github.com/stripe/stripe-ruby/pull/1280) Update generated code for beta
  - Add support for new resources `AccountNotice` and `Issuing.CreditUnderwritingRecord`
  - Add support for `list`, `retrieve`, and `update` methods on resource `AccountNotice`
  - Add support for `correct`, `create_from_application`, `create_from_proactive_review`, `list`, `report_decision`, and `retrieve` methods on resource `CreditUnderwritingRecord`

## 9.5.0-beta.1 - 2023-10-05

- [#1278](https://github.com/stripe/stripe-ruby/pull/1278) Update generated code for beta
  - Add support for `mark_draft` and `mark_stale` methods on resource `Quote`
  - Remove support for `draft_quote` and `mark_stale_quote` methods on resource `Quote`
  - Rename `preview_invoice_lines` to `list_preview_invoice_lines` on resource `Quote`

## 9.4.0 - 2023-10-05

- [#1277](https://github.com/stripe/stripe-ruby/pull/1277) Update generated code
  - Add support for new resources `Issuing.Token`
  - Add support for `list`, `retrieve`, and `update` methods on resource `Token`

## 9.4.0-beta.3 - 2023-09-28

- [#1276](https://github.com/stripe/stripe-ruby/pull/1276) Update generated code for beta
  - Rename resources `Issuing.CardDesign` and `Issuing.CardBundle` to `Issuing.PersonalizationDesign` and `Issuing.PhysicalBundle`

## 9.4.0-beta.2 - 2023-09-21

- [#1273](https://github.com/stripe/stripe-ruby/pull/1273) Update generated code for beta

## 9.4.0-beta.1 - 2023-09-14

- Updated stable APIs to the latest version

## 9.3.0 - 2023-09-14

- [#1272](https://github.com/stripe/stripe-ruby/pull/1272) Update generated code
  - Add support for new resource `PaymentMethodConfiguration`
  - Add support for `create`, `list`, `retrieve`, and `update` methods on resource `PaymentMethodConfiguration`
- [#1271](https://github.com/stripe/stripe-ruby/pull/1271) Update generated code
  - Add support for `capture`, `create`, `expire`, `increment`, and `reverse` test helper methods on resource `Issuing.Authorization`
  - Add support for `create_force_capture`, `create_unlinked_refund`, and `refund` test helper methods on resource `Issuing.Transaction`

## 9.3.0-beta.1 - 2023-09-07

- [#1269](https://github.com/stripe/stripe-ruby/pull/1269) Update generated code for beta
  - Release specs are identical.
- [#1268](https://github.com/stripe/stripe-ruby/pull/1268) Update generated code for beta
  - Remove support for `submit_card` test helper method on resource `Issuing.Card`
- [#1265](https://github.com/stripe/stripe-ruby/pull/1265) Update generated code for beta
  - Rename `Quote.preview_invoices` to `QuotePreviewInvoice.list` and `Quote.preview_schedules` to `QuotePreviewSchedules.list`
- [#1264](https://github.com/stripe/stripe-ruby/pull/1264) Update generated code for beta
  - Add support for new resources `QuotePreviewInvoice` and `QuotePreviewSchedule`
- [#1259](https://github.com/stripe/stripe-ruby/pull/1259) Update generated code for beta

- [#1257](https://github.com/stripe/stripe-ruby/pull/1257) Update generated code for beta

- [#1254](https://github.com/stripe/stripe-ruby/pull/1254) Update generated code for beta
  - Add support for `submit_card` test helper method on resource `Issuing.Card`
- [#1252](https://github.com/stripe/stripe-ruby/pull/1252) Remove developer_message support

## 9.2.0 - 2023-09-07

- [#1267](https://github.com/stripe/stripe-ruby/pull/1267) Update generated code
  - Add support for new resource `PaymentMethodDomain`
  - Add support for `create`, `list`, `retrieve`, `update`, and `validate` methods on resource `PaymentMethodDomain`

## 9.2.0-beta.1 - 2023-08-31

- [#1265](https://github.com/stripe/stripe-ruby/pull/1265) Update generated code for beta
  - Rename `Quote.preview_invoices` to `QuotePreviewInvoice.list` and `Quote.preview_schedules` to `QuotePreviewSchedules.list`

## 9.1.0 - 2023-08-31

- [#1266](https://github.com/stripe/stripe-ruby/pull/1266) Update generated code
  - Add support for new resource `AccountSession`
  - Add support for `create` method on resource `AccountSession`
- [#1262](https://github.com/stripe/stripe-ruby/pull/1262) Explicitly format timestamp in SignatureVerificationError message

## 9.0.0 - 2023-08-16

**⚠️ ACTION REQUIRED: the breaking change in this release likely affects you ⚠️**

- [#1253](https://github.com/stripe/stripe-ruby/pull/1253) [#1260](https://github.com/stripe/stripe-ruby/pull/1260) Pin latest API version as the default

  In this release, Stripe API Version `2023-08-16` (the latest at time of release) will be sent by default on all requests. This is a significant change with wide ramifications. The API version affects the properties you see on responses, the parameters you are allowed to send on requests, and so on. The previous default was to use your [Stripe account's default API version](https://stripe.com/docs/development/dashboard/request-logs#view-your-default-api-version).

  To successfully upgrade to stripe-ruby v9, you must either

  1. **(Recommended) Upgrade your integration to be compatible with API Version `2023-08-16`.**

     Please read the API Changelog carefully for each API Version from `2023-08-16` back to your [Stripe account's default API version](https://stripe.com/docs/development/dashboard/request-logs#view-your-default-api-version). Determine if you are using any of the APIs that have changed in a breaking way, and adjust your integration accordingly. Carefully test your changes with Stripe [Test Mode](https://stripe.com/docs/keys#test-live-modes) before deploying them to production.

     You can read the [v9 migration guide](https://github.com/stripe/stripe-ruby/wiki/Migration-guide-for-v9) for more detailed instructions.

  2. **(Alternative option) Specify a version other than `2023-08-16` when initializing `stripe-ruby`.**

     If you were previously initializing stripe-ruby without an explicit API Version, you can postpone modifying your integration by specifying a version equal to your [Stripe account's default API version](https://stripe.com/docs/development/dashboard/request-logs#view-your-default-api-version). For example:

     ```diff
       require 'stripe'
       Stripe.api_key = "sk_test_..."
     + Stripe.api_version = '2020-08-27'
     ```

     If you were already initializing stripe-ruby with an explicit API Version, upgrading to v9 will not affect your integration.

     Read the [v9 migration guide](https://github.com/stripe/stripe-ruby/wiki/Migration-guide-for-v9) for more details.

  Going forward, each major release of this library will be _pinned_ by default to the latest Stripe API Version at the time of release.

  That is, instead of upgrading stripe-ruby and separately upgrading your Stripe API Version through the Stripe Dashboard. whenever you upgrade major versions of stripe-ruby, you should also upgrade your integration to be compatible with the latest Stripe API version.

## 9.0.0-beta.1 - 2023-08-24

- [#1264](https://github.com/stripe/stripe-ruby/pull/1264) Update generated code for beta
  - Add support for new resources `QuotePreviewInvoice` and `QuotePreviewSchedule`
- [#1259](https://github.com/stripe/stripe-ruby/pull/1259) Update generated code for beta

## 8.8.0-beta.1 - 2023-08-10

- [#1257](https://github.com/stripe/stripe-ruby/pull/1257) Update generated code for beta
  - Updated stable APIs to the latest version

## 8.7.0 - 2023-08-10

- [#1256](https://github.com/stripe/stripe-ruby/pull/1256) Update generated code
  Add resources `Tax::CalculationLineItem`, `Tax::TransactionLineItem`, and `Treasury::FinancialAccountFeatures`. These resources have no methods on them, but do represent the return type of methods elsewhere.

## 8.7.0-beta.3 - 2023-08-03

- [#1254](https://github.com/stripe/stripe-ruby/pull/1254) Update generated code for beta
  - Add support for `submit_card` test helper method on resource `Issuing.Card`
- [#1252](https://github.com/stripe/stripe-ruby/pull/1252) Remove developer_message support

## 8.7.0-beta.2 - 2023-07-28

- [#1251](https://github.com/stripe/stripe-ruby/pull/1251) Update generated code for beta
  - Add support for new resource `Tax.Form`
  - Add support for `list`, `pdf`, and `retrieve` methods on resource `Form`
- [#1249](https://github.com/stripe/stripe-ruby/pull/1249) Update generated code for beta
- [#1246](https://github.com/stripe/stripe-ruby/pull/1246) Update generated code for beta

## 8.7.0-beta.1 - 2023-07-13

- [#1245](https://github.com/stripe/stripe-ruby/pull/1245) Update generated code for beta
  Release specs are identical.
- [#1243](https://github.com/stripe/stripe-ruby/pull/1243) Update generated code for beta
  - Add support for new resource `PaymentMethodConfiguration`
  - Add support for `create`, `list`, `retrieve`, and `update` methods on resource `PaymentMethodConfiguration`
- [#1239](https://github.com/stripe/stripe-ruby/pull/1239) Update generated code for beta

## 8.6.0 - 2023-07-13

- [#1244](https://github.com/stripe/stripe-ruby/pull/1244) Update generated code
  - Add support for new resource `Tax.Settings`
  - Add support for `retrieve` and `update` methods on resource `Settings`
- [#1241](https://github.com/stripe/stripe-ruby/pull/1241) Update generated code

- [#1209](https://github.com/stripe/stripe-ruby/pull/1209) Update shoulda-context version
- [#1235](https://github.com/stripe/stripe-ruby/pull/1235) Allow "error" string as log level
- [#1238](https://github.com/stripe/stripe-ruby/pull/1238) Update log level error message to include `error`
- [#1231](https://github.com/stripe/stripe-ruby/pull/1231) fix: variable typo in README for instrumentation
- [#1234](https://github.com/stripe/stripe-ruby/pull/1234) Update generated code

- [#1230](https://github.com/stripe/stripe-ruby/pull/1230) Update generated code
  - Release specs are identical.
- [#1226](https://github.com/stripe/stripe-ruby/pull/1226) Update generated code

- [#1223](https://github.com/stripe/stripe-ruby/pull/1223) Update generated code

- [#1225](https://github.com/stripe/stripe-ruby/pull/1225) Downgrade jaro_winkler
- [#1219](https://github.com/stripe/stripe-ruby/pull/1219) Update generated code

  Documentation updates.

- [#1215](https://github.com/stripe/stripe-ruby/pull/1215) Update generated code

- [#1208](https://github.com/stripe/stripe-ruby/pull/1208) Update generated code

- [#1204](https://github.com/stripe/stripe-ruby/pull/1204) Update generated code

## 8.6.0-beta.6 - 2023-06-22

- [#1237](https://github.com/stripe/stripe-ruby/pull/1237) Update generated code for beta
  - Add support for new resource `CustomerSession`
  - Add support for `create` method on resource `CustomerSession`
- [#1233](https://github.com/stripe/stripe-ruby/pull/1233) Update generated code for beta
- [#1229](https://github.com/stripe/stripe-ruby/pull/1229) Update generated code for beta

## 8.6.0-beta.5 - 2023-06-01

- [#1227](https://github.com/stripe/stripe-ruby/pull/1227) Update generated code for beta
- [#1228](https://github.com/stripe/stripe-ruby/pull/1228) Document raw_request
- [#1222](https://github.com/stripe/stripe-ruby/pull/1222) Update generated code for beta
- [#1224](https://github.com/stripe/stripe-ruby/pull/1224) Handle developer message in preview error responses

## 8.6.0-beta.4 - 2023-05-19

- [#1220](https://github.com/stripe/stripe-ruby/pull/1220) Update generated code for beta
  - Add support for `subscribe` and `unsubscribe` methods on resource `FinancialConnections.Account`
- [#1217](https://github.com/stripe/stripe-ruby/pull/1217) Add raw_request
- [#1216](https://github.com/stripe/stripe-ruby/pull/1216) Update generated code for beta
- [#1214](https://github.com/stripe/stripe-ruby/pull/1214) Update generated code for beta

## 8.6.0-beta.3 - 2023-04-17

- [#1211](https://github.com/stripe/stripe-ruby/pull/1211) Update generated code for beta
- [#1210](https://github.com/stripe/stripe-ruby/pull/1210), [#1212](https://github.com/stripe/stripe-ruby/pull/1212), [#1213](https://github.com/stripe/stripe-ruby/pull/1213) Add support for request signing

## 8.6.0-beta.2 - 2023-04-13

- [#1206](https://github.com/stripe/stripe-ruby/pull/1206) Update generated code for beta
  - Add support for `collect_payment_method` and `confirm_payment_intent` methods on resource `Terminal.Reader`
- [#1205](https://github.com/stripe/stripe-ruby/pull/1205) Update generated code for beta

## 8.6.0-beta.1 - 2023-03-30

- [#1202](https://github.com/stripe/stripe-ruby/pull/1202) Update generated code for beta

## 8.5.0 - 2023-03-30

- [#1203](https://github.com/stripe/stripe-ruby/pull/1203) Update generated code
  - Remove support for `create` method on resource `Tax.Transaction`
    - This is not a breaking change, as this method was deprecated before the Tax Transactions API was released in favor of the `create_from_calculation` method.
- [#1201](https://github.com/stripe/stripe-ruby/pull/1201) Update save deprecation message

## 8.5.0-beta.1 - 2023-03-23

- [#1194](https://github.com/stripe/stripe-ruby/pull/1194) Update generated code for beta (new)
  - Add support for new resources `Tax.CalculationLineItem` and `Tax.TransactionLineItem`
  - Add support for `collect_inputs` method on resource `Terminal.Reader`

## 8.4.0 - 2023-03-23

- [#1197](https://github.com/stripe/stripe-ruby/pull/1197) Update generated code (new)
  - Add support for new resources `Tax.CalculationLineItem`, `Tax.Calculation`, `Tax.TransactionLineItem`, and `Tax.Transaction`
  - Add support for `create` and `list_line_items` methods on resource `Calculation`
  - Add support for `create_from_calculation`, `create_reversal`, `create`, `list_line_items`, and `retrieve` methods on resource `Transaction`
- [#1152](https://github.com/stripe/stripe-ruby/pull/1152) Symbolize hash keys inside `convert_to_stripe_object_with_params`

## 8.4.0-beta.4 - 2023-03-16

- [#1189](https://github.com/stripe/stripe-ruby/pull/1189) Update generated code for beta (new)
  - Add support for `create_from_calculation` method on resource `Tax.Transaction`
- [#1188](https://github.com/stripe/stripe-ruby/pull/1188) Update generated code for beta (new)
  - Remove support for resources `Capital.FinancingOffer` and `Capital.FinancingSummary`
  - Remove support for `list`, `mark_delivered`, and `retrieve` methods on resource `FinancingOffer`
  - Remove support for `retrieve` method on resource `FinancingSummary`
- [#1187](https://github.com/stripe/stripe-ruby/pull/1187) Merge upstream master

## 8.4.0-beta.3 - 2023-03-09

- [#1184](https://github.com/stripe/stripe-ruby/pull/1184) API Updates for beta branch
  - Updated stable APIs to the latest version
  - Remove support for `list_transactions` method on resource `Tax.Transaction`

## 8.4.0-beta.2 - 2023-03-03

- [#1183](https://github.com/stripe/stripe-ruby/pull/1183) API Updates for beta branch
  - Updated stable APIs to the latest version
  - Add support for new resources `Issuing.CardBundle` and `Issuing.CardDesign`
  - Add support for `list` and `retrieve` methods on resource `CardBundle`
  - Add support for `list`, `retrieve`, and `update` methods on resource `CardDesign`

## 8.4.0-beta.1 - 2023-02-23

- [#1182](https://github.com/stripe/stripe-ruby/pull/1182) API Updates for beta branch
  - Updated stable APIs to the latest version

## 8.3.0 - 2023-02-16

- [#1175](https://github.com/stripe/stripe-ruby/pull/1175) API Updates
  - Add support for `refund_payment` method on resource `Terminal.Reader`

## 8.3.0-beta.1 - 2023-02-02

- [#1174](https://github.com/stripe/stripe-ruby/pull/1174) API Updates for beta branch
  - Updated stable APIs to the latest version
  - Add support for new resource `FinancialConnections.Transaction`
  - Add support for `list` method on resource `Transaction`

## 8.2.0 - 2023-02-02

- [#1173](https://github.com/stripe/stripe-ruby/pull/1173) API Updates
  - Add support for `resume` method on resource `Subscription`
- [#1171](https://github.com/stripe/stripe-ruby/pull/1171) Remove unused `partial` param from `initialize_from`

## 8.2.0-beta.3 - 2023-01-26

- [#1172](https://github.com/stripe/stripe-ruby/pull/1172) API Updates for beta branch
  - Updated stable APIs to the latest version
  - Add support for `list_transactions` method on resource `Tax.Transaction`

## 8.2.0-beta.2 - 2023-01-19

- [#1170](https://github.com/stripe/stripe-ruby/pull/1170) API Updates for beta branch
  - Updated stable APIs to the latest version
  - Add support for `Tax.Settings` resource.

## 8.2.0-beta.1 - 2023-01-12

- [#1167](https://github.com/stripe/stripe-ruby/pull/1167) API Updates for beta branch
  - Updated stable APIs to the latest version
  - Change `quote.draft_quote` implementation to from calling `POST /v1/quotes/{quote}/draft` to `POST /v1/quotes/{quote}/mark_draft`
  - Add support for `Tax::Register` resource

## 8.1.0 - 2023-01-12

- [#1162](https://github.com/stripe/stripe-ruby/pull/1162) Improve request events instrumentation

## 8.1.0-beta.4 - 2023-01-05

- [#1164](https://github.com/stripe/stripe-ruby/pull/1164) API Updates for beta branch
  - Updated stable APIs to the latest version
  - Add support for `mark_stale_quote` method on resource `Quote`

## 8.1.0-beta.3 - 2022-12-22

- [#1158](https://github.com/stripe/stripe-ruby/pull/1158) API Updates for beta branch
  - Updated stable APIs to the latest version
  - Move `TaxCalculation` and `TaxTransaction` to `Tax::Calculation` and `Tax::Transaction`.

## 8.1.0-beta.2 - 2022-12-15

- [#1156](https://github.com/stripe/stripe-ruby/pull/1156) API Updates for beta branch
  - Updated stable APIs to the latest version
  - Add support for new resources `TaxCalculation`, and `TaxTransaction`
  - Add support for `create` and `list_line_items` methods on resource `TaxCalculation`
  - Add support for `create_reversal`, `create`, and `retrieve` methods on resource `TaxTransaction`
- [#1155](https://github.com/stripe/stripe-ruby/pull/1155) API Updates for beta branch
  - Updated stable APIs to the latest version
  - Add support for new resource `QuoteLine`.

## 8.1.0-beta.1 - 2022-12-08

- [#1153](https://github.com/stripe/stripe-ruby/pull/1153) API Updates for beta branch
  - Updated stable APIs to the latest version
- [#1146](https://github.com/stripe/stripe-ruby/pull/1146) API Updates for beta branch
  - Updated stable APIs to the latest version

## 8.0.0 - 2022-11-16

- [#1144](https://github.com/stripe/stripe-ruby/pull/1144) Next major release changes

Breaking changes that arose during code generation of the library that we postponed for the next major version. For changes to the Stripe products, read more at https://docs.stripe.com/changelog/2022-11-15.

"⚠️" symbol highlights breaking changes.

## 7.2.0-beta.5 - 2022-11-02

- [#1139](https://github.com/stripe/stripe-ruby/pull/1139) API Updates for beta branch
  - Updated beta APIs to the latest stable version
- [#1135](https://github.com/stripe/stripe-ruby/pull/1135) API Updates for beta branch
  - Updated stable APIs to the latest version

## 7.2.0-beta.4 - 2022-10-07

- [#999](https://github.com/stripe/stripe-ruby/pull/999) DESCRIBE CHANGES HERE (try to use the same style, tense, etc. as the other entries)

## 7.2.0-beta.3 - 2022-09-26

- [#1129](https://github.com/stripe/stripe-ruby/pull/1129) API Updates for beta branch
  - Updated stable APIs to the latest version
  - Add `FinancingOffer`, `FinancingSummary` and `FinancingTransaction` resources.

## 7.2.0-beta.2 - 2022-08-26

- [#1127](https://github.com/stripe/stripe-ruby/pull/1127) API Updates for beta branch
  - Updated stable APIs to the latest version
  - Add support for the beta [Gift Card API](https://stripe.com/docs/gift-cards).

## 7.2.0-beta.1 - 2022-08-23

- [#1122](https://github.com/stripe/stripe-ruby/pull/1122) API Updates for beta branch
  - Updated stable APIs to the latest version
  - `Stripe-Version` beta headers are not pinned by-default and need to be manually specified, please refer to [beta SDKs README section](https://github.com/stripe/stripe-ruby/blob/master/README.md#beta-sdks)

## 7.1.0 - 2022-08-19

- [#1116](https://github.com/stripe/stripe-ruby/pull/1116) API Updates
  - Add support for new resource `CustomerCashBalanceTransaction`
- [#1118](https://github.com/stripe/stripe-ruby/pull/1118) Update AllowedChars in rubocop config
- [#1117](https://github.com/stripe/stripe-ruby/pull/1117) Refresh rubocop config.
- [#1115](https://github.com/stripe/stripe-ruby/pull/1115) Add a support section to the readme

## 7.1.0-beta.2 - 2022-08-11

- [#1113](https://github.com/stripe/stripe-ruby/pull/1113) API Updates for beta branch
  - Updated stable APIs to the latest version
  - Add `refund_payment` method to Terminal resource

## 7.1.0-beta.1 - 2022-08-03

- [#1107](https://github.com/stripe/stripe-ruby/pull/1107) API Updates for beta branch
  - Updated stable APIs to the latest version
  - Added the `Order` resource support

## 7.0.0 - 2022-08-02

Breaking changes that arose during code generation of the library that we postponed for the next major version. For changes to the SDK, read more detailed description at https://github.com/stripe/stripe-ruby/wiki/Migration-guide-for-v7. For changes to the Stripe products, read more at https://docs.stripe.com/changelog/2022-08-01.

"⚠️" symbol highlights breaking changes.

- [#1106](https://github.com/stripe/stripe-ruby/pull/1106) API Updates
- [#1092](https://github.com/stripe/stripe-ruby/pull/1092) API Updates
- [#1090](https://github.com/stripe/stripe-ruby/pull/1090) Use auto-generation for `Invoice` methods
- [#1103](https://github.com/stripe/stripe-ruby/pull/1103) Next major release changes

## 6.6.0-beta.1 - 2022-07-22

- [#1100](https://github.com/stripe/stripe-ruby/pull/1100) API Updates for beta branch
  - Updated stable APIs to the latest version
  - Add `QuotePhase` resource
- [#1097](https://github.com/stripe/stripe-ruby/pull/1097) API Updates for beta branch
  - Updated stable APIs to the latest version
  - Add `SubscriptionSchedule.amend` method.
- [#1093](https://github.com/stripe/stripe-ruby/pull/1093) API Updates for beta branch
  - Include `server_side_confirmation_beta=v1` beta
  - Add `secretKeyConfirmation` to `PaymentIntent`
- [#1085](https://github.com/stripe/stripe-ruby/pull/1085) API Updates for beta branch
  - Updated stable APIs to the latest version
- [#1075](https://github.com/stripe/stripe-ruby/pull/1075) Use the generated API version

## 6.5.0 - 2022-06-29

- [#1084](https://github.com/stripe/stripe-ruby/pull/1084) API Updates
  - Add support for `deliver_card`, `fail_card`, `return_card`, and `ship_card` test helper methods on resource `Issuing.Card`
- [#1076](https://github.com/stripe/stripe-ruby/pull/1076) fix: Update logging to coerce ASCII-8BIT into UTF-8.

## 6.4.0 - 2022-06-17

- [#1073](https://github.com/stripe/stripe-ruby/pull/1073) API Updates
  - Add support for `fund_cash_balance` test helper method on resource `Customer`
- [#1074](https://github.com/stripe/stripe-ruby/pull/1074) Support updating pre-release versions
- [#1072](https://github.com/stripe/stripe-ruby/pull/1072) Trigger workflows on beta branches
- [#1071](https://github.com/stripe/stripe-ruby/pull/1071) Use request_stripe_object for all requests
- [#1070](https://github.com/stripe/stripe-ruby/pull/1070) API Updates

  Switch from using meta-programing to generating explicit methods for custom methods.

- [#1069](https://github.com/stripe/stripe-ruby/pull/1069) chore: Stop special implementation of Account.persons method.

## 6.3.0 - 2022-06-08

- [#1063](https://github.com/stripe/stripe-ruby/pull/1063) fix: Update cash balance methods to no longer require nested ID.

## 6.2.0 - 2022-05-23

- [#1060](https://github.com/stripe/stripe-ruby/pull/1060) API Updates
  - Add support for new resource `Apps.Secret`

## 6.1.0 - 2022-05-19

- [#1057](https://github.com/stripe/stripe-ruby/pull/1057) API Updates
  - Add support for new resources `Treasury.CreditReversal`, `Treasury.DebitReversal`, `Treasury.FinancialAccountFeatures`, `Treasury.FinancialAccount`, `Treasury.FlowDetails`, `Treasury.InboundTransfer`, `Treasury.OutboundPayment`, `Treasury.OutboundTransfer`, `Treasury.ReceivedCredit`, `Treasury.ReceivedDebit`, `Treasury.TransactionEntry`, and `Treasury.Transaction`
  - Add support for `retrieve_payment_method` method on resource `Customer`
  - Add support for `list_owners` and `list` methods on resource `FinancialConnections.Account`

## 6.0.0 - 2022-05-09

- [#1056](https://github.com/stripe/stripe-ruby/pull/1056) API Updates
  Major version release. The [migration guide](https://github.com/stripe/stripe-ruby/wiki/Migration-Guide-for-v6) contains more information.

  (⚠️ = breaking changes):

  - ⚠️ Replace the legacy `Order` API with the new `Order` API.
    - New methods: `cancel`, `list_line_items`, `reopen`, and `submit`
    - Removed methods: `pay` and `return_order`
    - Removed resources: `OrderItem` and `OrderReturn`
  - ⚠️ Rename `FinancialConnections::Account.refresh` to `FinancialConnections::Account.refresh_account

## 5.55.0 - 2022-05-05

- [#1055](https://github.com/stripe/stripe-ruby/pull/1055) API Updates
  - Add support for new resources `FinancialConnections.AccountOwner`, `FinancialConnections.AccountOwnership`, `FinancialConnections.Account`, and `FinancialConnections.Session`

## 5.54.0 - 2022-05-03

- [#1053](https://github.com/stripe/stripe-ruby/pull/1053) API Updates
  - Add support for new resource `CashBalance`

## 5.53.0 - 2022-04-21

- [#1050](https://github.com/stripe/stripe-ruby/pull/1050) API Updates
  - Add support for `expire` test helper method on resource `Refund`

## 5.52.0 - 2022-04-18

- [#1046](https://github.com/stripe/stripe-ruby/pull/1046) [#1047](https://github.com/stripe/stripe-ruby/pull/1047) API Updates
  - Add support for new resources `FundingInstructions` and `Terminal.Configuration`

## 5.51.0 - 2022-04-15

- [#1046](https://github.com/stripe/stripe-ruby/pull/1046) This release was incomplete and was yanked from RubyGems immediately after it was published.

## 5.50.0 - 2022-04-13

- [#1045](https://github.com/stripe/stripe-ruby/pull/1045) API Updates
  - Add support for `increment_authorization` method on resource `PaymentIntent`

## 5.49.0 - 2022-04-08

- [#1043](https://github.com/stripe/stripe-ruby/pull/1043) API Updates
  - Add support for `apply_customer_balance` method on resource `PaymentIntent`

## 5.48.0 - 2022-03-30

- [#1041](https://github.com/stripe/stripe-ruby/pull/1041) API Updates
  - Add support for `cancel_action`, `process_payment_intent`, `process_setup_intent`, and `set_reader_display` methods on resource `Terminal.Reader`

## 5.47.0 - 2022-03-29

- [#1040](https://github.com/stripe/stripe-ruby/pull/1040) API Updates

  - Add support for Search API
    - Add support for `search` method on resources `Charge`, `Customer`, `Invoice`, `PaymentIntent`, `Price`, `Product`, and `Subscription`

- [#1034](https://github.com/stripe/stripe-ruby/pull/1034) Add supporting classes for test helper generation

## 5.46.0 - 2022-03-23

- [#1039](https://github.com/stripe/stripe-ruby/pull/1039) API Updates
  - Add support for `cancel` method on resource `Refund`
- [#992](https://github.com/stripe/stripe-ruby/pull/992) Add support for Search API

## 5.45.0 - 2022-03-01

- [#1035](https://github.com/stripe/stripe-ruby/pull/1035) API Updates
  - Add support for new resource `TestHelpers.TestClock`

## 5.44.0 - 2022-02-16

- [#1032](https://github.com/stripe/stripe-ruby/pull/1032) API Updates
  - Add support for `verify_microdeposits` method on resources `PaymentIntent` and `SetupIntent`

## 5.43.0 - 2022-01-20

- [#1031](https://github.com/stripe/stripe-ruby/pull/1031) API Updates
  - Add support for new resource `PaymentLink`

## 5.42.0 - 2021-12-13

- [#1022](https://github.com/stripe/stripe-ruby/pull/1022) Add connection manager logging and include object IDs in logging.

## 5.41.0 - 2021-11-16

- [#1017](https://github.com/stripe/stripe-ruby/pull/1017) API Updates
  - Add support for new resource `ShippingRate`

## 5.40.0 - 2021-11-11

- [#1015](https://github.com/stripe/stripe-ruby/pull/1015) API Updates
  - Add support for `expire` method on resource `Checkout.Session`
- [#1013](https://github.com/stripe/stripe-ruby/pull/1013) Add tests for child resources.
- [#1012](https://github.com/stripe/stripe-ruby/pull/1012) Add tests for namespaced resources.
- [#1011](https://github.com/stripe/stripe-ruby/pull/1011) codegen: 3 more files

## 5.39.0 - 2021-10-11

- [#1010](https://github.com/stripe/stripe-ruby/pull/1010) API Updates
  - Add support for `list_payment_methods` method on resource `Customer`

## 5.38.0 - 2021-08-10

- [#993](https://github.com/stripe/stripe-ruby/pull/993) Add `request_id` to RequestEndEvent
- [#991](https://github.com/stripe/stripe-ruby/pull/991) Codegen more files
- [#989](https://github.com/stripe/stripe-ruby/pull/989) Remove unused API error types from docs.

## 5.37.0 - 2021-07-14

- [#988](https://github.com/stripe/stripe-ruby/pull/988) API Updates
  - Add support for `list_computed_upfront_line_items` method on resource `Quote`

## 5.36.0 - 2021-07-09

- [#987](https://github.com/stripe/stripe-ruby/pull/987) Add support for `Quote` API

## 5.35.0 - 2021-06-30

- [#985](https://github.com/stripe/stripe-ruby/pull/985) Update normalize_opts to use dup instead of clone.
- [#982](https://github.com/stripe/stripe-ruby/pull/982) Deprecate travis
- [#983](https://github.com/stripe/stripe-ruby/pull/983) Add support for making a request and receiving the response as a stream.

## 5.34.0 - 2021-06-04

- [#981](https://github.com/stripe/stripe-ruby/pull/981) API Updates
  - Add support for `TaxCode` API.

## 5.33.0 - 2021-05-19

- [#979](https://github.com/stripe/stripe-ruby/pull/979) Add support for the Identify VerificationSession and VerificationReport APIs

## 5.32.1 - 2021-04-05

- Correct use of regexp `match` in gemspec for old versions of Ruby

## 5.32.0 - 2021-04-05

- [#973](https://github.com/stripe/stripe-ruby/pull/973) Reduce packed gem size

## 5.31.0 - 2021-04-02

- [#968](https://github.com/stripe/stripe-ruby/pull/968) Allow StripeClient to be configured per instance
- [#971](https://github.com/stripe/stripe-ruby/pull/971) On config change, only clear connection managers for changed config
- [#972](https://github.com/stripe/stripe-ruby/pull/972) Rename `Stripe.configuration` to `Stripe.config`
- [#970](https://github.com/stripe/stripe-ruby/pull/970) Reserve some critical field names when adding `StripeObject` accessors
- [#967](https://github.com/stripe/stripe-ruby/pull/967) CI: github actions

## 5.30.0 - 2021-02-22

- [#965](https://github.com/stripe/stripe-ruby/pull/965) Add support for the Billing Portal Configuration API

## 5.29.1 - 2021-02-09

- [#964](https://github.com/stripe/stripe-ruby/pull/964) Fix return value of `Customer#delete_discount`

## 5.29.0 - 2021-01-05

- [#952](https://github.com/stripe/stripe-ruby/pull/952) Allow client_id configuration on instance config

## 5.28.0 - 2020-10-14

- [#950](https://github.com/stripe/stripe-ruby/pull/950) Add configuration option for `write_timeout` for connections on Ruby 2.6+

## 5.27.0 - 2020-10-14

- [#951](https://github.com/stripe/stripe-ruby/pull/951) Add support for the Payout Reverse API

## 5.26.0 - 2020-09-29

- [#949](https://github.com/stripe/stripe-ruby/pull/949) Add support for the `SetupAttempt` resource and List API

## 5.25.0 - 2020-09-02

- [#944](https://github.com/stripe/stripe-ruby/pull/944) Add support for the Issuing Dispute Submit API

## 5.24.0 - 2020-08-26

- [#939](https://github.com/stripe/stripe-ruby/pull/939) Extract configurations into separate object
- [#940](https://github.com/stripe/stripe-ruby/pull/940) Fix typo in documentation of `stripe_object.rb`

## 5.23.1 - 2020-08-05

- [#936](https://github.com/stripe/stripe-ruby/pull/936) Rename API resource's `request` method

## 5.23.0 - 2020-08-05

- [#937](https://github.com/stripe/stripe-ruby/pull/937) Add support for the `PromotionCode` resource and APIs

## 5.22.0 - 2020-05-11

- [#918](https://github.com/stripe/stripe-ruby/pull/918) Add support for the `LineItem` resource and APIs

## 5.21.0 - 2020-04-29

- [#917](https://github.com/stripe/stripe-ruby/pull/917) Add support for the `Price` resource and APIs

## 5.20.0 - 2020-04-27

- [#916](https://github.com/stripe/stripe-ruby/pull/916) Add new `.generate_header` method for webhooks

## 5.19.0 - 2020-04-24

- [#915](https://github.com/stripe/stripe-ruby/pull/915) Expose `Stripe::Webhook.compute_signature` publicly

## 5.18.0 - 2020-04-22

- [#911](https://github.com/stripe/stripe-ruby/pull/911) Add support for `BillingPortal` namespace and `Session` resource and APIs

## 5.17.0 - 2020-02-26

- [#907](https://github.com/stripe/stripe-ruby/pull/907) Add `StripeError#idempotent_replayed?`

## 5.16.0 - 2020-02-26

- [#906](https://github.com/stripe/stripe-ruby/pull/906) Add support for listing Checkout sessions
- [#903](https://github.com/stripe/stripe-ruby/pull/903) Upgrade to Rubocop 0.80

## 5.15.0 - 2020-02-10

- [#902](https://github.com/stripe/stripe-ruby/pull/902) Add `request_begin` instrumentation callback

## 5.14.0 - 2020-01-14

- [#896](https://github.com/stripe/stripe-ruby/pull/896) Add support for `CreditNoteLineItem`
- [#894](https://github.com/stripe/stripe-ruby/pull/894) Clean up test output by capturing `$stderr` when we expect warnings
- [#892](https://github.com/stripe/stripe-ruby/pull/892) Explicitly pass a parameter as hash to be more ruby 2.7 friendly
- [#893](https://github.com/stripe/stripe-ruby/pull/893) Upgrade Rubocop to 0.79

## 5.13.0 - 2020-01-08

- [#891](https://github.com/stripe/stripe-ruby/pull/891) Fix most Ruby 2.7 warnings

## 5.12.1 - 2020-01-06

- [#890](https://github.com/stripe/stripe-ruby/pull/890) Override API key with `client_secret` in `OAuth.token`

## 5.12.0 - 2020-01-02

- [#889](https://github.com/stripe/stripe-ruby/pull/889) Add support for retrieve source transaction API method

## 5.11.0 - 2019-11-26

- [#885](https://github.com/stripe/stripe-ruby/pull/885) Add support for `CreditNote` preview

## 5.10.0 - 2019-11-08

- [#882](https://github.com/stripe/stripe-ruby/pull/882) Add list_usage_record_summaries and list_source_transactions

## 5.9.0 - 2019-11-07

- [#870](https://github.com/stripe/stripe-ruby/pull/870) Add request instrumentation callback (see `README.md` for usage example)

## 5.8.0 - 2019-11-05

- [#879](https://github.com/stripe/stripe-ruby/pull/879) Add support for `Mandate`
- [#876](https://github.com/stripe/stripe-ruby/pull/876) Add additional per-request configuration documentation
- [#874](https://github.com/stripe/stripe-ruby/pull/874) Raise an error when requests params are invalid
- [#873](https://github.com/stripe/stripe-ruby/pull/873) Contributor Covenant

## 5.7.1 - 2019-10-15

- [#869](https://github.com/stripe/stripe-ruby/pull/869) Fixes the misnamed `connection_base=` setter to be named `connect_base=`

## 5.7.0 - 2019-10-10

- [#865](https://github.com/stripe/stripe-ruby/pull/865) Support backwards pagination with list's `#auto_paging_each`

## 5.6.0 - 2019-10-04

- [#861](https://github.com/stripe/stripe-ruby/pull/861) Nicer error when specifying non-nil non-string opt value

## 5.5.0 - 2019-10-03

- [#859](https://github.com/stripe/stripe-ruby/pull/859) User-friendly messages and retries for `EOFError`, `Errno::ECONNRESET`, `Errno::ETIMEDOUT`, and `Errno::EHOSTUNREACH` network errors

## 5.4.1 - 2019-10-01

- [#858](https://github.com/stripe/stripe-ruby/pull/858) Drop Timecop dependency

## 5.4.0 - 2019-10-01

- [#857](https://github.com/stripe/stripe-ruby/pull/857) Move to monotonic time for duration calculations

## 5.3.0 - 2019-10-01

- [#853](https://github.com/stripe/stripe-ruby/pull/853) Support `Stripe-Should-Retry` header

## 5.2.0 - 2019-09-19

- [#851](https://github.com/stripe/stripe-ruby/pull/851) Introduce system for garbage collecting connection managers

## 5.1.1 - 2019-09-04

- [#845](https://github.com/stripe/stripe-ruby/pull/845) Transfer the request_id from the http_headers to error.

## 5.1.0 - 2019-08-27

- [#841](https://github.com/stripe/stripe-ruby/pull/841) Retry requests on a 429 that's a lock timeout

## 5.0.1 - 2019-08-20

- [#836](https://github.com/stripe/stripe-ruby/pull/836) Increase connection keep alive timeout to 30 seconds

## 5.0.0 - 2019-08-20

Major version release. The [migration guide](https://github.com/stripe/stripe-ruby/wiki/Migration-guide-for-v5) contains a detailed list of backwards-incompatible changes with upgrade instructions.

Pull requests included in this release (cf. [#815](https://github.com/stripe/stripe-ruby/pull/815)) (⚠️ = breaking changes):

- ⚠️ [#813](https://github.com/stripe/stripe-ruby/pull/813): Convert library to use built-in `Net::HTTP`
- ⚠️ [#816](https://github.com/stripe/stripe-ruby/pull/816): Make `code` argument in `CardError` named instead of positional.
- ⚠️ [#817](https://github.com/stripe/stripe-ruby/pull/817): Drop support for very old Ruby versions.
- [#818](https://github.com/stripe/stripe-ruby/pull/818): Bump Rubocop to latest version
- [#819](https://github.com/stripe/stripe-ruby/pull/819): Ruby minimum version increase followup
- ⚠️ [#820](https://github.com/stripe/stripe-ruby/pull/820): Remove old deprecated methods
- ⚠️ [#823](https://github.com/stripe/stripe-ruby/pull/823): Remove all alias for list methods
- ⚠️ [#826](https://github.com/stripe/stripe-ruby/pull/826): Remove `UsageRecord.create` method
- ⚠️ [#827](https://github.com/stripe/stripe-ruby/pull/827): Remove `IssuerFraudRecord`
- [#811](https://github.com/stripe/stripe-ruby/pull/811): Add `ErrorObject` to `StripeError` exceptions
- [#828](https://github.com/stripe/stripe-ruby/pull/828): Tweak retry logic to be a little more like stripe-node
- [#829](https://github.com/stripe/stripe-ruby/pull/829): Reset connections when connection-changing configuration changes (optional)
- [#830](https://github.com/stripe/stripe-ruby/pull/830): Fix inverted sign for 500 retries
- ⚠️[#831](https://github.com/stripe/stripe-ruby/pull/831): Remove a few more very old deprecated methods
- [#832](https://github.com/stripe/stripe-ruby/pull/832): Minor cleanup in `StripeClient`
- [#833](https://github.com/stripe/stripe-ruby/pull/833): Do better bookkeeping when tracking state in `Thread.current`
- [#834](https://github.com/stripe/stripe-ruby/pull/834): Add `Invoice.list_upcoming_line_items` method

## 4.24.0 - 2019-08-12

- [#825](https://github.com/stripe/stripe-ruby/pull/825) Add `SubscriptionItem.create_usage_record` method
  - This release also removed the `SubscriptionSchedule.revisions` method. This should have been included in the previous release (4.23.0)

## 4.23.0 - 2019-08-09

- [#824](https://github.com/stripe/stripe-ruby/pull/824) Remove SubscriptionScheduleRevision
  - This is technically a breaking change. We've chosen to release it as a minor vesion bump because the associated API is unused.

## 4.22.1 - 2019-08-09

- [#808](https://github.com/stripe/stripe-ruby/pull/808) Unify request/response handling

## 4.22.0 - 2019-07-30

- [#821](https://github.com/stripe/stripe-ruby/pull/821) Listing `BalanceTransaction` objects now uses `/v1/balance_transactions` instead of `/v1/balance/history`

## 4.21.3 - 2019-07-15

- [#810](https://github.com/stripe/stripe-ruby/pull/810) Better error message when passing non-string to custom method

## 4.21.2 - 2019-07-05

- [#806](https://github.com/stripe/stripe-ruby/pull/806) Revert back to `initialize_from` from `Util.convert_to_stripe_object`

## 4.21.1 - 2019-07-04

- [#807](https://github.com/stripe/stripe-ruby/pull/807) Add gem metadata

## 4.21.0 - 2019-06-28

- [#803](https://github.com/stripe/stripe-ruby/pull/803) Add support for the `SetupIntent` resource and APIs

## 4.20.1 - 2019-06-28

- [#805](https://github.com/stripe/stripe-ruby/pull/805) Fix formatting in `ConnectionFailed` error message

## 4.20.0 - 2019-06-24

- [#800](https://github.com/stripe/stripe-ruby/pull/800) Enable request latency telemetry by default

## 4.19.0 - 2019-06-17

- [#770](https://github.com/stripe/stripe-ruby/pull/770) Add support for `CustomerBalanceTransaction` resource and APIs

## 4.18.1 - 2019-05-27

- [#789](https://github.com/stripe/stripe-ruby/pull/789) Allow `Order#pay` to be called without arguments

## 4.18.0 - 2019-05-23

- [#783](https://github.com/stripe/stripe-ruby/pull/783) Add support for `radar.early_fraud_warning` resource

## 4.17.0 - 2019-05-14

- [#779](https://github.com/stripe/stripe-ruby/pull/779) Add support for the Capability resource and APIs

## 4.16.0 - 2019-04-24

- [#760](https://github.com/stripe/stripe-ruby/pull/760) Add support for the `TaxRate` resource and APIs

## 4.15.0 - 2019-04-22

- [#762](https://github.com/stripe/stripe-ruby/pull/762) Add support for the `TaxId` resource and APIs

## 4.14.0 - 2019-04-18

- [#758](https://github.com/stripe/stripe-ruby/pull/758) Add support for the `CreditNote` resource and APIs

## 4.13.0 - 2019-04-16

- [#766](https://github.com/stripe/stripe-ruby/pull/766) Relax constraints on objects that we'll accept as a file (now they just need to respond to `#read`)

## 4.12.0 - 2019-04-02

- [#752](https://github.com/stripe/stripe-ruby/pull/752) Add `.delete` class method on deletable API resources
- [#754](https://github.com/stripe/stripe-ruby/pull/754) Add class methods for all custom API requests (e.g. `Charge.capture`)

## 4.11.0 - 2019-03-26

- [#753](https://github.com/stripe/stripe-ruby/pull/753) Add a global proxy configuration parameter

## 4.10.0 - 2019-03-18

- [#745](https://github.com/stripe/stripe-ruby/pull/745) Add support for the `PaymentMethod` resource and APIs
- [#747](https://github.com/stripe/stripe-ruby/pull/747) Add support for retrieving a Checkout `Session`
- [#748](https://github.com/stripe/stripe-ruby/pull/748) Add support for deleting a Terminal `Location` and `Reader`

## 4.9.1 - 2019-03-18

- [#750](https://github.com/stripe/stripe-ruby/pull/750) Catch error and warn if unable to remove a method

## 4.9.0 - 2019-02-12

- [#739](https://github.com/stripe/stripe-ruby/pull/739) Add support for `SubscriptionSchedule` and `SubscriptionScheduleRevision`

## 4.8.1 - 2019-02-11

- [#743](https://github.com/stripe/stripe-ruby/pull/743) Fix bug in file uploading introduced in #741

## 4.8.0 - 2019-02-03

- [#741](https://github.com/stripe/stripe-ruby/pull/741) Use `FaradayStripeEncoder` to encode all parameter styles

## 4.7.1 - 2019-02-01

- [#740](https://github.com/stripe/stripe-ruby/pull/740) Fix query encoding for integer-indexed maps

## 4.7.0 - 2019-01-23

- [#735](https://github.com/stripe/stripe-ruby/pull/735) Rename `CheckoutSession` to `Session` and move it under the `Checkout` namespace. This is a breaking change, but we've reached out to affected merchants and all new merchants would use the new approach.

## 4.6.0 - 2019-01-21

- [#736](https://github.com/stripe/stripe-ruby/pull/736) Properly serialize `individual` on `Account` objects

## 4.5.0 - 2019-01-02

- [#719](https://github.com/stripe/stripe-ruby/pull/719) Generate OAuth authorize URLs for Express accounts as well as standard

## 4.4.1 - 2018-12-31

- [#718](https://github.com/stripe/stripe-ruby/pull/718) Fix an error message typo

## 4.4.0 - 2018-12-21

- [#716](https://github.com/stripe/stripe-ruby/pull/716) Add support for the `CheckoutSession` resource

## 4.3.0 - 2018-12-10

- [#711](https://github.com/stripe/stripe-ruby/pull/711) Add support for account links

## 4.2.0 - 2018-11-28

- [#705](https://github.com/stripe/stripe-ruby/pull/705) Add support for the `Review` APIs

## 4.1.0 - 2018-11-27

- [#695](https://github.com/stripe/stripe-ruby/pull/695) Add support for `ValueList` and `ValueListItem` for Radar

## 4.0.3 - 2018-11-19

- [#703](https://github.com/stripe/stripe-ruby/pull/703) Don't use `Net::HTTP::Persistent` on Windows where it's not well supported

## 4.0.2 - 2018-11-16

- [#701](https://github.com/stripe/stripe-ruby/pull/701) Require minimum Faraday 0.13 for proper support of persistent connections

## 4.0.1 - 2018-11-15

- [#699](https://github.com/stripe/stripe-ruby/pull/699) Only send telemetry if `Request-Id` was present in the response

## 4.0.0 - 2018-11-15

- [#698](https://github.com/stripe/stripe-ruby/pull/698) Use persistent connections by default through `Net::HTTP::Persistent`
- [#698](https://github.com/stripe/stripe-ruby/pull/698) Drop support for Ruby 2.0 (which we consider a breaking change here)

## 3.31.1 - 2018-11-12

- [#697](https://github.com/stripe/stripe-ruby/pull/697) Send telemetry in milliseconds specifically

## 3.31.0 - 2018-11-12

- [#696](https://github.com/stripe/stripe-ruby/pull/696) Add configurable telemetry to gather information on client-side request latency

## 3.30.0 - 2018-11-08

- [#693](https://github.com/stripe/stripe-ruby/pull/693) Add new API endpoints for the `Invoice` resource.

## 3.29.0 - 2018-10-30

- [#692](https://github.com/stripe/stripe-ruby/pull/692) Add support for the `Person` resource
- [#694](https://github.com/stripe/stripe-ruby/pull/694) Add support for the `WebhookEndpoint` resource

## 3.28.0 - 2018-09-24

- [#690](https://github.com/stripe/stripe-ruby/pull/690) Add support for Stripe Terminal

## 3.27.0 - 2018-09-24

- [#689](https://github.com/stripe/stripe-ruby/pull/689) Rename `FileUpload` to `File`

## 3.26.1 - 2018-09-14

- [#688](https://github.com/stripe/stripe-ruby/pull/688) Fix hash equality on `StripeObject`

## 3.26.0 - 2018-09-05

- [#681](https://github.com/stripe/stripe-ruby/pull/681) Add support for reporting resources

## 3.25.0 - 2018-08-28

- [#678](https://github.com/stripe/stripe-ruby/pull/678) Allow payment intent `#cancel`, `#capture`, and `#confirm` to take their own parameters

## 3.24.0 - 2018-08-27

- [#675](https://github.com/stripe/stripe-ruby/pull/675) Remove support for `BitcoinReceiver` write-actions

## 3.23.0 - 2018-08-23

- [#676](https://github.com/stripe/stripe-ruby/pull/676) Add support for usage record summaries

## 3.22.0 - 2018-08-15

- [#674](https://github.com/stripe/stripe-ruby/pull/674) Use integer-indexed encoding for all arrays

## 3.21.0 - 2018-08-03

- [#671](https://github.com/stripe/stripe-ruby/pull/671) Add cancel support for topups

## 3.20.0 - 2018-08-03

- [#669](https://github.com/stripe/stripe-ruby/pull/669) Add support for file links

## 3.19.0 - 2018-07-27

- [#666](https://github.com/stripe/stripe-ruby/pull/666) Add support for scheduled query runs (`Stripe::Sigma::ScheduledQueryRun`) for Sigma

## 3.18.0 - 2018-07-26

- [#665](https://github.com/stripe/stripe-ruby/pull/665) Add support for Stripe Issuing

## 3.17.2 - 2018-07-19

- [#664](https://github.com/stripe/stripe-ruby/pull/664) Don't colorize log output being sent to a configured logger

## 3.17.1 - 2018-07-19

- [#663](https://github.com/stripe/stripe-ruby/pull/663) Internal improvements to `ApiResource.class_url`

## 3.17.0 - 2018-06-28

- [#658](https://github.com/stripe/stripe-ruby/pull/658) Add support for `partner_id` from `Stripe.set_app_info`

## 3.16.0 - 2018-06-28

- [#657](https://github.com/stripe/stripe-ruby/pull/657) Add support for payment intents

## 3.15.0 - 2018-05-10

- [#649](https://github.com/stripe/stripe-ruby/pull/649) Freeze all string literals

## 3.14.0 - 2018-05-09

- [#645](https://github.com/stripe/stripe-ruby/pull/645) Add support for issuer fraud records

## 3.13.1 - 2018-05-07

- [#647](https://github.com/stripe/stripe-ruby/pull/647) Merge query parameters coming from path with `params` argument

## 3.13.0 - 2018-04-11

- [#498](https://github.com/stripe/stripe-ruby/pull/498) Add support for flexible billing primitives

## 3.12.1 - 2018-04-05

- [#636](https://github.com/stripe/stripe-ruby/pull/636) Fix a warning for uninitialized instance variable `@additive_params`

## 3.12.0 - 2018-04-05

- [#632](https://github.com/stripe/stripe-ruby/pull/632) Introduce `additive_object_param` so that non-`metadata` subobjects don't zero their keys as they're being replaced

## 3.11.0 - 2018-02-26

- [#628](https://github.com/stripe/stripe-ruby/pull/628) Add support for `code` attribute on all Stripe exceptions

## 3.10.0 - 2018-02-21

- [#627](https://github.com/stripe/stripe-ruby/pull/627) Add support for topups

## 3.9.2 - 2018-02-12

- [#625](https://github.com/stripe/stripe-ruby/pull/625) Skip calling `to_hash` for `nil`

## 3.9.1 - 2017-12-15

- [#616](https://github.com/stripe/stripe-ruby/pull/616) Support all file-like objects for uploads with duck typed checks on `path` and `read` (we previously whitelisted only certain classes)

## 3.9.0 - 2017-12-08

- [#613](https://github.com/stripe/stripe-ruby/pull/613) Introduce new `IdempotencyError` type for idempotency-specific failures

## 3.8.2 - 2017-12-07

- [#612](https://github.com/stripe/stripe-ruby/pull/612) Fix integer-indexed array encoding when sent as query parameter (subscription items can now be used when fetching an upcoming invoice)

## 3.8.1 - 2017-12-06

- [#611](https://github.com/stripe/stripe-ruby/pull/611) Support `Tempfile` (as well as `File`) in file uploads

## 3.8.0 - 2017-10-31

- [#606](https://github.com/stripe/stripe-ruby/pull/606) Support for exchange rates APIs

## 3.7.0 - 2017-10-26

- [#603](https://github.com/stripe/stripe-ruby/pull/603) Support for listing source transactions

## 3.6.0 - 2017-10-17

- [#597](https://github.com/stripe/stripe-ruby/pull/597) Add static methods to manipulate resources from parent
  - `Account` gains methods for external accounts and login links (e.g. `.create_account`, `create_login_link`)
  - `ApplicationFee` gains methods for refunds
  - `Customer` gains methods for sources
  - `Transfer` gains methods for reversals

## 3.5.3 - 2017-10-16

- [#594](https://github.com/stripe/stripe-ruby/pull/594) Make sure that `StripeObject`'s `#deep_copy` maintains original class
- [#595](https://github.com/stripe/stripe-ruby/pull/595) Allow `Object#method` to be called on `StripeObject` even if it conflicts with an accessor
- [#596](https://github.com/stripe/stripe-ruby/pull/596) Encode arrays as integer-indexed hashes where appropriate
- [#598](https://github.com/stripe/stripe-ruby/pull/598) Don't persist `idempotency_key` opt between requests

## 3.5.2 - 2017-10-13

- [#592](https://github.com/stripe/stripe-ruby/pull/592) Bring back `Marshal.dump/load` support with custom marshal encoder/decoder

## 3.5.1 - 2017-10-12

- [#591](https://github.com/stripe/stripe-ruby/pull/591) Use thread-local `StripeClient` instances for thread safety

## 3.5.0 - 2017-10-11

- [#589](https://github.com/stripe/stripe-ruby/pull/589) Rename source `delete` to `detach` (and deprecate the former)

## 3.4.1 - 2017-10-05

- [#586](https://github.com/stripe/stripe-ruby/pull/586) Log query strings as well as form bodies with STRIPE_LOG
- [#588](https://github.com/stripe/stripe-ruby/pull/588) Require minimum Faraday 0.10 for bug fix in parameter encoding

## 3.4.0 - 2017-09-20

- Mark legacy Bitcoin API as deprecated, and remove corresponding tests
- Mark recipients API as deprecated, and remove recipient card tests

## 3.3.2 - 2017-09-20

- Correct minimum required Ruby version in gemspec (it's 2.0.0)

## 3.3.1 - 2017-08-18

- Only parse webhook payload after verification to decrease likelihood of
  attack

## 3.3.0 - 2017-08-11

- Add support for standard library logger interface with `Stripe.logger`
- Error logs now go to stderr if using `Stripe.log_level`/`STRIPE_LOG`
- `Stripe.log_level`/`STRIPE_LOG` now support `Stipe::LEVEL_ERROR`

## 3.2.0 - 2017-08-03

- Add logging for request retry account and `Stripe-Account` header

## 3.1.0 - 2017-08-03

- Implement request logging with `Stripe.log_level` and `STRIPE_LOG`

## 3.0.3 - 2017-07-28

- Revert `nil` to empty string coercion from 3.0.2
- Handle `invalid_client` OAuth error code
- Improve safety of error handling logic safer for unrecognized OAuth error codes

## 3.0.2 - 2017-07-12

**Important:** This version is non-functional and has been yanked in favor of 3.0.3.

- Convert `nil` to empty string when serializing parameters (instead of opaquely dropping it) -- NOTE: this change has since been reverted

## 3.0.1 - 2017-07-11

- Properties set with an API resource will now serialize that resource's ID if possible
- API resources will throw an ArgumentError on save if a property has been with an API resource that cannot be serialized

## 3.0.0 - 2017-06-27

- `#pay` on invoice now takes params as well as opts

## 2.12.0 - 2017-06-20

- Add support for ephemeral keys

## 2.11.0 - 2017-05-26

- Warn when keys that look like opts are included as parameters

## 2.10.0 - 2017-05-25

- Add support for account login links

## 2.9.0 - 2017-05-18

- Support for OAuth operations in `Stripe::OAuth`

## 2.8.0 - 2017-04-28

- Support for checking webhook signatures

## 2.7.0 - 2017-04-26

- Add model `InvoiceLineItem`

## 2.6.0 - 2017-04-26

- Add `OBJECT_NAME` constants to all API resources

## 2.5.0 - 2017-04-24

- Make `opts` argument in `Util.convert_to_stripe_object` optional

## 2.4.0 - 2017-04-18

- Add `Stripe.set_app_info` for use by plugin creators

## 2.3.0 - 2017-04-14

- Add question mark accessor when assigning boolean value to undefined field

## 2.2.1 - 2017-04-07

- Declare minimum required Faraday as 0.9

## 2.2.0 - 2017-04-06

- Add support for payouts and recipient transfers

## 2.1.0 - 2017-03-17

- Support for detaching sources from customers

## 2.0.3 - 2017-03-16

- Fix marshalling of `StripeObjects` that have an embedded client

## 2.0.2 - 2017-03-16

- Fix bad field reference when recovering from a JSON parsing problem

## 2.0.1 - 2017-02-22

- Fix multipart parameter encoding to repair broken file uploads

## 2.0.0 - 2017-02-14

- Drop support for Ruby 1.9
- Allow HTTP client that makes Stripe calls to be configured via Faraday
- Drop RestClient
- Switch to OpenAPI 2.0 spec and generated fixtures in test suite
- Switch to Webmock in test suite

## 1.58.0 - 2017-01-19

- Remove erroneously added list methods for `Source` model

## 1.57.1 - 2016-11-28

- Disallow sending protected fields along with API resource `.update`

## 1.57.0 - 2016-11-21

- Add retrieve method for 3-D Secure resources

## 1.56.2 - 2016-11-17

- Improve `StripeObject`'s `#to_s` to better handle how embedded objects are displayed

## 1.56.1 - 2016-11-09

- Fix (fairly serious) memory like in `StripeObject`

## 1.56.0 - 2016-10-24

- Add accessors for new fields added in `#update_attributes`
- Handle multi-plan subscriptions through new subscription items
- Handle 403 status codes from the API

## 1.55.1 - 2016-10-24

Identical to 1.56.0 above. I incorrectly cut a patch-level release.

## 1.55.0 - 2016-09-15

- Add support for Apple Pay domains

## 1.54.0 - 2016-09-01

- Whitelist errors that should be retried; scope to known socket and HTTP errors

## 1.53.0 - 2016-08-31

- Relax version constraint on rest-client (and by extension mime-types) for users on Ruby 2+

## 1.52.0 - 2016-08-30

- Make sure `Subscription`'s `source` is saved with its parent

## 1.51.1 - 2016-08-30

- Make sure `Account`'s `external_account` is saved with its parent

## 1.51.0 - 2016-08-26

- Error when an array of maps is detected that cannot be accurately encoded
- Start using strings for header names instead of symbols for better clarity

## 1.50.1 - 2016-08-25

- Fix encoding of arrays of maps where maps unequal sets of keys

## 1.50.0 - 2016-08-15

- Allow sources to be created

## 1.49.0 - 2016-07-28

- Add top-level `Source` model

## 1.48.0 - 2016-07-12

- Add `ThreeDSecure` model for 3-D secure payments

## 1.47.0 - 2016-07-11

- Allow rest-client version 2.0+ to be used with the gem

## 1.46.0 - 2016-07-07

- Allow retry when a 409 conflict is encountered

## 1.45.0 - 2016-07-07

- Do not send subresources when updating except when explicitly told to do so (see #433)

## 1.44.0 - 2016-06-29

- Add `update` class method to all resources that can be updated

## 1.43.1 - 2016-06-17

- Fix type of resource returned from `Order#return_order`

## 1.43.0 - 2016-05-20

- Allow Relay orders to be returned and add associated types
- Support Alipay account retrieval and deletion

## 1.42.0 - 2016-05-04

- Add support for the new /v1/subscriptions endpoint (retrieve, list, create, update, and delete)

## 1.41.0 - 2016-04-13

- Add global `stripe_account` option that adds a `Stripe-Account` header to all requests

## 1.40.0 - 2016-04-06

- Fix bug that omitted subresources from serialization

## 1.39.0 - 2016-03-31

- Update CA cert bundle for compatibility with OpenSSL versions below 1.0.1

## 1.38.0 - 2016-03-18

- Allow `opts` to be passed to an API resource's `#save` method

## 1.37.0 - 2016-03-14

- Add `Account#reject` to support the new API feature

## 1.36.2 - 2016-03-14

- Fix reference to non-existent `#url` in `ListObject`

## 1.36.1 - 2016-03-04

- Fix serialization when subhash given to `#save` or `#update_attributes`

## 1.36.0 - 2016-02-08

- Add `CountrySpec` model for looking up country payment information

## 1.35.1 - 2016-02-03

- Add compatibility layer for old API versions on `Charge#refund`

## 1.35.0 - 2016-02-01

- Allow CA cert bundle location to be configured
- Updated bundled CA certs

## 1.34.0 - 2016-01-25

- Add support for deleting products and SKUs

## 1.33.1 - 2016-01-21

- Pass through arguments of `Charge#refund`

## 1.33.0 - 2016-01-19

- Re-implement `Charge#refund` helper to use the modern endpoint suggested by docs

## 1.32.1 - 2016-01-07

- Fix bug where ivar left uninitialized in StripeObject could error on serialization
- Fix bug where a nil customer from API could error Bitcoin model on refresh

## 1.32.0 - 2016-01-05

- Add configuration to optionally retry network failures
- Use modern API endpoint for producing application fee refunds

## 1.31.0 - 2015-10-29

- Add BankAccount#verify convenience method

## 1.30.3 - 2015-10-28

- Fix bug where arrays that were not `additional_owners` were not properly encoded for requests

## 1.30.2 - 2015-10-12

- Fix bug where `opts` didn't properly propagate to descendant `StripeObjects`

## 1.30.1 - 2015-10-10

- Fix bug that prevent lists of hashes from being URI-encoded properly
- Fix bug where filter conditions were not making it past the first instantiated `ListObject`

## 1.30.0 - 2015-10-09

- Add `StripeObject#deleted?` for a reliable way to check whether an object is alive
- Deprecate `StripeObject#refresh_from`
- New parameter encoding scheme that doesn't use `URI.escape`

## 1.29.1 - 2015-10-06

- Fix bug where ampersands were not being properly encoded

## 1.29.0 - 2015-10-05

- Add pagination helpers `#auto_paging_each`, `#previous_page`, and `#next_page`

## 1.28.1 - 2015-10-05

- Fix URI being referenced by file upload resources

## 1.28.0 - 2015-10-05

- Make StripeObject's #save "upsert"-like; creates an object if new
- Add #update_attributes to StripeObject for safe mass assignment
- Properly mass assign attributes on calls to #save
- Add question mark helpers for boolean fields (e.g. #paid? as well as old #paid)
- Fix a bug that broke the API for StripeObject initialization
- Remove use of deprecated URI.escape

## 1.27.2 - 2015-09-25

- Correct the URLs used to fetch Bitcoin transactions.

## 1.27.1 - 2015-09-20

- Use hash rockets for backwards compatibility.

## 1.27.0 - 2015-09-14

- Add Orders, Products, and SKUs for Relay

## 1.26.0 - 2015-09-11

- Add support for 429 Rate Limited response

## 1.25.0 - 2015-08-17

- Added support for refund listing and retrieval without an associated charge

## 1.24.0 - 2015-08-03

- Added support for deleting managed accounts
- Added support for dispute listing and retrieval
- Bugfix: token objects now are the correct class

## 1.23.0 - 2015-07-06

- Added request IDs and HTTP headers to errors

## 1.22.0 - 2015-06-10

- Added support for bank accounts and debit cards in managed accounts (via the `external_accounts` param)

## 1.21.0 - 2015-04-14

- Remove TLS cert revocation check (all pre-heartbleed certs have expired)
- Bugfix: don't unset keys when they don't exist on StripeObject

## 1.20.4 - 2015-03-26

- Raise an error when explicitly passing nil as the API key on resource methods
- Fix error when passing an API key to Balance.retrieve (github issue #232)

## 1.20.3 - 2015-03-13

- Fixed error when updating certain resources (github issue #224)

## 1.20.2 - 2015-03-10

- Added support for updating nested hashes besides `metadata` (which was already supported)
- Fixed bug in balance retrieval

## 1.20.1 - 2015-02-26

- Updated Card to point to customer sources endpoint when customer property is set

## 1.20.0 - 2015-02-19

- Added Update & Delete operations to Bitcoin Receivers

## 1.19.1 - 2015-02-18

- Fixed fetching upcoming invoice/paying invoice methods

## 1.19.0 - 2015-02-15

- Support for new Transfers /reversals endpoint
- Account retrieval now optionally accepts an account ID
- Better support for passing custom headers, like Stripe-Account, through requests

## 1.18.0 - 2015-01-21

- 1 major enhancement:
  - Added support for making bitcoin charges through BitcoinReceiver source object

## 1.17.3 - 2015-01-12

- 1 bugfix:
  - Fixed API key propagation for ApplicationFee#refund

## 1.17.2 - 2015-01-08

- 1 bugfix:
  - Fixed API key propagation for child resources

## 1.17.1 - 2015-01-07

- 2 minor enhacements:
  - Fixed dependencies for Ruby versions less than 1.9.3
  - Added deauthorize method to Account object

## 1.17.0 - 2014-12-15

- 1 major enhacement:
  - File uploads resource was added (for uploading pdf or image documents for disputes)

## 1.16.1 - 2014-12-19

- 2 minor enhancements:
  - Ability to send idempotent requests
  - Ability to specify stripe account as a header

## 1.16.0 - 2014-10-08

- 1 minor enhacement:
  - Coupons now support update operations - useful for manipulating metadata

## 1.15.0 - 2014-07-26

- 1 major enhacement:
  - Application Fee refunds now a list instead of array

## 1.14.0 - 2014-06-17

- 1 major enhancement:
  - Add metadata for refunds and disputes

## 1.13.0 - 2014-05-28

- 1 major enhancement:
  - Support for canceling transfers

## 1.12.0 - 2014-05-21

- 1 major enhancement:
  - Support for cards for recipients

## 1.11.0 - 2014-04-09

- 2 minor enhancements:
  - Update included ca bundles
  - Implement certificate blacklisting

## 1.10.2 - 2014-02-18

- 1 minor enhancement:
  - Add create_subscription on Customer resources, so you can create
    subscriptions without needing to retrieve the customer first (github
    issue #120)

## 1.10.1 - 2014-02-03

- 1 bugfix:
  - Fix marshaling of StripeObjects

## 1.10.0 - 2014-01-29

- 2 major enhancements

  - Support for multiple subscriptions per customer
  - Testing ruby 2.1.0

- 2 minor enhancements

  - Replace multi_json with json
  - Allow #save to take opts (for :expand)

- 1 bugfix
  - Fix #try and #respond_to? on StripeObjects

## 1.9.9 - 2013-12-02

- 1 major enhancement
  - Add ApplicationFee resource

## 1.8.9 - 2013-11-14

- 2 bugfixes:
  - Fix gemspec dependencies so the gem doesn't break for Ruby 1.8 users
  - Fix api_resource_test to not use returns as a way of testing rescue behavior

## 1.8.8 - 2013-10-3

- 1 major enhancement
  - Add support for metadata on resources

## 1.8.7 - 2013-08-18

- 1 minor enhancement
  - Add support for closing disputes.

## 1.8.6 - 2013-08-13

- 1 major enhancement
  - Add Balance and BalanceTransaction resources

## 1.8.5 - 2013-08-12

- 1 major enhancement
  - Add support for unsetting attributes by setting to nil. This permits unsetting email and description on customers and description on charges. Setting properties to a blank string is now an error.
  - Attempting to set an object's id is now an error

## 1.8.4 - 2013-07-11

- 1 major enhancement
  - Add support for new cards API (Stripe API version - 2013-07-05)

## 1.8.3 - 2013-05-06

- 1 bugfix:
  - Fix handling of per-call API keys (github issue #67)

## 1.8.2 - 2013-05-01

- 3 minor enhancements:

  - Use to_sym instead of type checking for minor performance improvement (github issue #59)
  - Handle low-memory situations without throwing an exception (github issue #61)
  - Add an Customer#upcoming_invoice convenience method (github issue #65)

- 1 bugfix:
  - Allow updating resources without first retrieving them (github issue #60)

## 1.8.1 - 2013-04-19

- 1 minor enhancement:
  - Add support for specifying an API key when retrieving an upcoming invoice

## 1.8.0 - 2013-04-11

- 1 major enhancement:
  - Add new Recipient resource
  - Allow Transfers to be createable

## 1.7.11 - 2013-02-21

- 1 minor enhancement
  - Add 'id' to the list of permanent attributes

## 1.7.10 - 2013-02-01

- 1 major enhancement
  - Add support for passing options when retrieving Stripe objects e.g., Stripe::Charge.retrieve({id:"foo", expand:["customer"]}) Stripe::Charge("foo") is still supported as well

## 1.7.9 - 2013-01-15

- 1 major enhancement
  - Add support for setting a Stripe API version override.

## 1.7.8 - 2012-11-21

- 1 bugfix
  - Relax the version constraint on multi_json (github issue #44)

## 1.7.7 - 2012-11-07

- 1 minor enhancement:

  - Add support for updating charge disputes

- 1 bugfix
  - Fix Account API resource bug

## 1.7.6 - 2012-10-30

- 1 major enhancement
  - Add support for creating invoices

## 1.7.5 - 2012-10-25

- 1 major enhancement
  - Add support for new API lists

## 1.7.4 - 2012-10-08

- 1 bugfix
  - Fix bug introduced in 1.7.3 calling API methods that take no
    arguments, like Stripe::Invoice#pay (github issue #42)

## 1.7.3 - 2012-09-14

- 2 bugfixes
  - Make sure that both keys and values of GET params are URL-encoded. NOTE: If you were previously URL-encoding values yourself, you may need to adjust your code.
  - URL-encode POST params directly, instead of allowing rest-client to do it to work around an unfortunate interaction with the hashery gem (github issue #38)

## 1.7.2 - 2012-08-31

- 1 major enhancement
  - Add support for new pay and update methods for Invoice objects

## 1.7.1 - 2012-08-15

- 1 major enhancement
  - Add new Account API resource

## 1.7.0 - 2012-05-17

- 3 major enhancements:

  - Switch from vendored stripe-json to multi_json for all JSON parsing and rendering. This should not impact programmatic usage of the library, but may cause small rendering differences from, e.g., StripeObject#inspect (github issue #22)
  - Add new delete_discount method to Customer objects
  - Add new Transfer API resource

- 2 minor enhancements:
  - Switch from HTTP Basic auth to Bearer auth (Note: Stripe will support Basic auth for the indefinite future, but recommends Bearer auth when possible going forward)
  - Numerous test suite improvements

## 1.6.3 - 2012-03-22

- 1 bugfix:
  - Encode GET query strings ourselves instead of using rest-client to work around a bug

## 1.6.2 - 2012-02-24

- 1 bugfix:
  - Correct argument handling in StripeObject#as_json

## 1.6.1 - 2012-02-22

- 1 bugfix:
  - Fix StripeObject#inspect when ActiveSupport 3.0 is loaded

## 1.6.0 - 2012-02-01

- A whole bunch of releases between 1.5.0 and 1.6.0, but few changes, mainly the addition of plans, coupons, events, and tokens
- 1.6.0 also contains a new inspect/to_string implementation

## 1.5.0 - 2011-05-09

- 1 major enhancement:
  - Update for new RESTful API

## 1.3.4 - 2011-01-07

- 1 major enhancement:
  - Rename to Stripe

## 1.2 - 2010-06-06

- 1 major enhancement:
  - Support for the set_customer_subscription and delete_customer API methods

## 1.1 - 2010-03-14

- 1 major enhancement:
  - Support for recurring billing

## 1.0 - 2010-01-05

- 1 major enhancement:
  - Initial release

<!--
# vim: set tw=0:
-->

