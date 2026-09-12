---
title: Update generated code for private-preview
pr_url: https://github.com/stripe/stripe-ruby/pull/1734
is_stripe_api_change: true
released_in_version: 18.1.0-alpha.2
---

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
