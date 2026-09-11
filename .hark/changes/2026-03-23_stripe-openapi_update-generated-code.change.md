---
title: Update generated code for beta
pr_link: https://github.com/stripe/stripe-ruby/pull/1801
is_breaking: true
is_stripe_api_change: true
released_in_version: 19.1.0-beta.1
---

* Add support for new resources `ProductCatalog::TrialOffer`, `Tax::Location`, and `V2::Core::BatchJob`
* Add support for `create` method on resource `ProductCatalog::TrialOffer`
* Add support for `create`, `list`, and `retrieve` methods on resource `Tax::Location`
* Add support for `cancel`, `create`, and `retrieve` methods on resource `V2::Core::BatchJob`
* Add support for `performance_location` on `Tax::CalculationCreateParams::LineItem` and `Tax::CalculationLineItem`
* Add support for `trial_offer` on `InvoiceCreatePreviewParams::ScheduleDetail::Amendment::ItemAction::Add`, `InvoiceCreatePreviewParams::ScheduleDetail::Amendment::ItemAction::Set`, `InvoiceCreatePreviewParams::ScheduleDetail::Phase::Item`, `QuoteCreateParams::Line::Action::AddItem`, `QuoteCreateParams::Line::Action::SetItem`, `QuoteLine::Action::AddItem`, `QuoteLine::Action::SetItem`, `QuotePreviewSubscriptionSchedule::Phase::Item`, `QuoteUpdateParams::Line::Action::AddItem`, `QuoteUpdateParams::Line::Action::SetItem`, `SubscriptionSchedule::Phase::Item`, `SubscriptionScheduleAmendParams::Amendment::ItemAction::Add`, `SubscriptionScheduleAmendParams::Amendment::ItemAction::Set`, `SubscriptionScheduleCreateParams::Phase::Item`, and `SubscriptionScheduleUpdateParams::Phase::Item`
* Add support for `risk_reserved` on `Balance`
* ⚠️ Remove support for `source_type` on `Charge::PaymentMethodDetail::StripeBalance`, `ConfirmationToken::PaymentMethodPreview::StripeBalance`, `ConfirmationTokenCreateParams::PaymentMethodDatum::StripeBalance`, `PaymentAttemptRecord::PaymentMethodDetail::StripeBalance`, `PaymentIntentConfirmParams::PaymentMethodDatum::StripeBalance`, `PaymentIntentCreateParams::PaymentMethodDatum::StripeBalance`, `PaymentIntentUpdateParams::PaymentMethodDatum::StripeBalance`, `PaymentMethod::StripeBalance`, `PaymentMethodCreateParams::StripeBalance`, `PaymentRecord::PaymentMethodDetail::StripeBalance`, `SetupIntentConfirmParams::PaymentMethodDatum::StripeBalance`, `SetupIntentCreateParams::PaymentMethodDatum::StripeBalance`, and `SetupIntentUpdateParams::PaymentMethodDatum::StripeBalance`
* Add support for `tax_details` on `Checkout::SessionCreateParams::LineItem::PriceDatum::ProductDatum`, `Checkout::SessionUpdateParams::LineItem::PriceDatum::ProductDatum`, `InvoiceAddLinesParams::Line::PriceDatum::ProductDatum`, `InvoiceLineItemUpdateParams::PriceDatum::ProductDatum`, `InvoiceUpdateLinesParams::Line::PriceDatum::ProductDatum`, `PaymentLinkCreateParams::LineItem::PriceDatum::ProductDatum`, `PlanCreateParams::Product`, `PriceCreateParams::ProductDatum`, `ProductCreateParams`, and `ProductUpdateParams`
* Add support for `pending_invoice_item_interval` on `Checkout::SessionUpdateParams::SubscriptionDatum`
* Add support for `hosted` and `ui_mode` on `FinancialConnections::SessionCreateParams` and `FinancialConnections::Session`
* Add support for `url` on `FinancialConnections::Session`
* Add support for `expires_after_seconds` on `Invoice::PaymentSetting::PaymentMethodOption::Pix`, `InvoiceCreateParams::PaymentSetting::PaymentMethodOption::Pix`, `InvoiceUpdateParams::PaymentSetting::PaymentMethodOption::Pix`, `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption::Pix`, `Subscription::PaymentSetting::PaymentMethodOption::Pix`, `SubscriptionCreateParams::PaymentSetting::PaymentMethodOption::Pix`, and `SubscriptionUpdateParams::PaymentSetting::PaymentMethodOption::Pix`
* Add support for `current_trial` on `InvoiceCreatePreviewParams::SubscriptionDetail::Item`, `SubscriptionCreateParams::Item`, `SubscriptionItemCreateParams`, `SubscriptionItemUpdateParams`, `SubscriptionItem`, and `SubscriptionUpdateParams::Item`
* Add support for `surcharge` on `PaymentIntent::AmountDetail`, `PaymentIntentCaptureParams::AmountDetail`, `PaymentIntentConfirmParams::AmountDetail`, `PaymentIntentCreateParams::AmountDetail`, `PaymentIntentIncrementAuthorizationParams::AmountDetail`, and `PaymentIntentUpdateParams::AmountDetail`
* Add support for `amount_details` and `payment_details` on `PaymentIntentDecrementAuthorizationParams`
* Add support for `mandate_options` on `PaymentIntent::PaymentMethodOption::StripeBalance`
* Add support for `managed_payments` on `PaymentLinkCreateParams` and `PaymentLink`
* Add support for `stripe_balance` on `SetupIntent::PaymentMethodOption`, `SetupIntentConfirmParams::PaymentMethodOption`, `SetupIntentCreateParams::PaymentMethodOption`, and `SetupIntentUpdateParams::PaymentMethodOption`
* Add support for `billing_cycle_anchor` on `Subscription::TrialSetting::EndBehavior`, `SubscriptionCreateParams::TrialSetting::EndBehavior`, and `SubscriptionUpdateParams::TrialSetting::EndBehavior`
* Add support for `admissions_tax`, `attendance_tax`, `entertainment_tax`, `gross_receipts_tax`, `hospitality_tax`, `luxury_tax`, `resort_tax`, and `tourism_tax` on `Tax::Registration::CountryOption::Me`
* Add support for `requirements` on `TaxCode`
* ⚠️ Change type of `V2::Billing::Cadence::SettingsDatum::Collection::PaymentMethodOption::Card::MandateOption.amount`, `V2::Billing::CollectionSetting::PaymentMethodOption::Card::MandateOption.amount`, `V2::Billing::CollectionSettingCreateParams::PaymentMethodOption::Card::MandateOption.amount`, `V2::Billing::CollectionSettingUpdateParams::PaymentMethodOption::Card::MandateOption.amount`, and `V2::Billing::CollectionSettingVersion::PaymentMethodOption::Card::MandateOption.amount` from `longInteger` to `int64_string`
* Add support for `timezone` on `V2::Core::Account::Default`, `V2::Core::AccountCreateParams::Default`, and `V2::Core::AccountUpdateParams::Default`
* Add support for `azure_event_grid` on `V2::Core::EventDestinationCreateParams` and `V2::Core::EventDestination`
* Add support for `supported_currencies` on `V2::Core::Vault::GbBankAccount`, `V2::Core::Vault::UsBankAccount`, and `V2::MoneyManagement::PayoutMethod::Card`
* ⚠️ Change `V2::Core::Vault::GbBankAccount.sort_code` and `V2::Core::Vault::GbBankAccountCreateParams.sort_code` to be optional
* Add support for `restricted` on `V2::MoneyManagement::PayoutMethod`
* Add support for `currencies` on `V2::MoneyManagement::PayoutMethodsBankAccountSpec::Country::Field`
* Add support for `counterparty` and `description` on `V2::MoneyManagement::Transaction`
* ⚠️ Add support for `currency` on `V2::Core::Vault::GbBankAccountCreateParams`, `V2::Core::Vault::UsBankAccountCreateParams`, `V2::MoneyManagement::OutboundSetupIntentCreateParams::PayoutMethodDatum::BankAccount`, `V2::MoneyManagement::OutboundSetupIntentCreateParams::PayoutMethodDatum::Card`, `V2::MoneyManagement::OutboundSetupIntentUpdateParams::PayoutMethodDatum::BankAccount`, and `V2::MoneyManagement::OutboundSetupIntentUpdateParams::PayoutMethodDatum::Card`
* Add support for `iban` on `V2::Core::Vault::GbBankAccountCreateParams`
* Change `V2::Core::Vault::GbBankAccountCreateParams.account_number` to be optional
* Add support for event notifications `V2CoreBatchJobBatchFailedEvent`, `V2CoreBatchJobCanceledEvent`, `V2CoreBatchJobCompletedEvent`, `V2CoreBatchJobCreatedEvent`, `V2CoreBatchJobReadyForUploadEvent`, `V2CoreBatchJobTimeoutEvent`, `V2CoreBatchJobUpdatedEvent`, `V2CoreBatchJobUploadTimeoutEvent`, `V2CoreBatchJobValidatingEvent`, and `V2CoreBatchJobValidationFailedEvent` with related object `V2::Core::BatchJob`
