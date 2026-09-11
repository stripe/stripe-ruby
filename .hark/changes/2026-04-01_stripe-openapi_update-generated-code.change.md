---
title: Update generated code for private-preview
pr_link: https://github.com/stripe/stripe-ruby/pull/1843
is_breaking: true
is_stripe_api_change: true
released_in_version: 19.1.0-alpha.3
---

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
