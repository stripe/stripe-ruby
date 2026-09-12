<!--
THIS IS A GENERATED FILE. Any changes you make to it directly will be blown away.
Instead, edit a corresponding `.change.md` file and run `hark build`.
-->

# Changelog

> This changelog only covers the **public preview** releases. Each release builds on the most recent GA release; see those notes in [the GA changelog](https://github.com/stripe/stripe-ruby/blob/master/CHANGELOG.md).

## 19.7.0-beta.1 - 2026-08-26
This release changes the pinned API version to `2026-08-26.preview`.

* [#1935](https://github.com/stripe/stripe-ruby/pull/1935) Add non-verified methods to managed handlers
* ⚠️ [#1919](https://github.com/stripe/stripe-ruby/pull/1919) Update generated code for beta
  * Add support for new resources `V2::Core::ApprovalRequest`, `V2::Signals::AccountActivity`, `V2::Signals::AccountEvaluation`, and `V2::Signals::AccountSignal`
  * Add support for `list` and `retrieve` methods on resource `V2::Signals::AccountSignal`
  * Add support for `create` and `retrieve` methods on resource `V2::Signals::AccountEvaluation`
  * Add support for `create`, `delete`, and `retrieve` methods on resource `V2::Signals::AccountActivity`
  * Add support for `cancel`, `list`, `retrieve`, and `update` methods on resource `V2::Core::ApprovalRequest`
  * Add support for `disable` method on resource `V2::MoneyManagement::PayoutMethod`
  * Add support for `disable_stripe_user_authentication` on `AccountSessionCreateParams::Component::PaymentMethodSetting::Feature`
  * ⚠️ Remove support for `payment_method_types` on `PaymentIntentConfirmParams`, `PaymentIntentCreateParams`, `PaymentIntentUpdateParams`, `SetupIntentCreateParams`, and `SetupIntentUpdateParams`
  * ⚠️ Change type of `ProductCatalog::TrialOffer.price` and `ProductCatalog::TrialOffer::EndBehavior::Transition.price` from `$Price` to `deletable($Price)`
  * Add support for `billie` on `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption`
  * Add support for `payout_methods` on `V2::Core::Account::Default` and `V2::Core::AccountUpdateParams::Default`
  * Add support for `restricted` on `V2::Core::Vault::GbBankAccount` and `V2::Core::Vault::UsBankAccount`
  * Add support for `enabled_delivery_schemes` on `V2::MoneyManagement::PayoutMethod::BankAccount`
  * ⚠️ Remove support for `enabled_delivery_options` on `V2::MoneyManagement::PayoutMethod::BankAccount`
  * Add support for event notifications `V2CoreApprovalRequestApprovedEvent`, `V2CoreApprovalRequestCanceledEvent`, `V2CoreApprovalRequestCreatedEvent`, `V2CoreApprovalRequestExpiredEvent`, `V2CoreApprovalRequestFailedEvent`, `V2CoreApprovalRequestRejectedEvent`, and `V2CoreApprovalRequestSucceededEvent` with related object `V2::Core::ApprovalRequest`
  * Add support for event notification `V2SignalsAccountEvaluationCompleteEvent` with related object `V2::Signals::AccountEvaluation`

## 19.5.0-beta.1 - 2026-07-29
This release changes the pinned API version to `2026-07-29.preview`.

* ⚠️ [#1899](https://github.com/stripe/stripe-ruby/pull/1899) Update generated code for beta
  * Add support for `list` and `retrieve` methods on resource `ProductCatalog::TrialOffer`
  * Add support for `tax_items` on `ChargeCaptureParams::PaymentDetail::CarRentalDatum::Total::Tax`, `ChargeCaptureParams::PaymentDetail::FlightDatum::Total::Tax`, `ChargeCaptureParams::PaymentDetail::LodgingDatum::Total::Tax`, `ChargeUpdateParams::PaymentDetail::CarRentalDatum::Total::Tax`, `ChargeUpdateParams::PaymentDetail::FlightDatum::Total::Tax`, `ChargeUpdateParams::PaymentDetail::LodgingDatum::Total::Tax`, `PaymentIntent::PaymentDetail::CarRentalDatum::Total::Tax`, `PaymentIntent::PaymentDetail::FlightDatum::Total::Tax`, `PaymentIntent::PaymentDetail::LodgingDatum::Total::Tax`, `PaymentIntentCaptureParams::PaymentDetail::CarRentalDatum::Total::Tax`, `PaymentIntentCaptureParams::PaymentDetail::FlightDatum::Total::Tax`, `PaymentIntentCaptureParams::PaymentDetail::LodgingDatum::Total::Tax`, `PaymentIntentConfirmParams::PaymentDetail::CarRentalDatum::Total::Tax`, `PaymentIntentConfirmParams::PaymentDetail::FlightDatum::Total::Tax`, `PaymentIntentConfirmParams::PaymentDetail::LodgingDatum::Total::Tax`, `PaymentIntentCreateParams::PaymentDetail::CarRentalDatum::Total::Tax`, `PaymentIntentCreateParams::PaymentDetail::FlightDatum::Total::Tax`, `PaymentIntentCreateParams::PaymentDetail::LodgingDatum::Total::Tax`, `PaymentIntentUpdateParams::PaymentDetail::CarRentalDatum::Total::Tax`, `PaymentIntentUpdateParams::PaymentDetail::FlightDatum::Total::Tax`, and `PaymentIntentUpdateParams::PaymentDetail::LodgingDatum::Total::Tax`
  * ⚠️ Remove support for `taxes` on `ChargeCaptureParams::PaymentDetail::CarRentalDatum::Total::Tax`, `ChargeCaptureParams::PaymentDetail::FlightDatum::Total::Tax`, `ChargeCaptureParams::PaymentDetail::LodgingDatum::Total::Tax`, `ChargeUpdateParams::PaymentDetail::CarRentalDatum::Total::Tax`, `ChargeUpdateParams::PaymentDetail::FlightDatum::Total::Tax`, `ChargeUpdateParams::PaymentDetail::LodgingDatum::Total::Tax`, `PaymentIntent::PaymentDetail::CarRentalDatum::Total::Tax`, `PaymentIntent::PaymentDetail::FlightDatum::Total::Tax`, `PaymentIntent::PaymentDetail::LodgingDatum::Total::Tax`, `PaymentIntentCaptureParams::PaymentDetail::CarRentalDatum::Total::Tax`, `PaymentIntentCaptureParams::PaymentDetail::FlightDatum::Total::Tax`, `PaymentIntentCaptureParams::PaymentDetail::LodgingDatum::Total::Tax`, `PaymentIntentConfirmParams::PaymentDetail::CarRentalDatum::Total::Tax`, `PaymentIntentConfirmParams::PaymentDetail::FlightDatum::Total::Tax`, `PaymentIntentConfirmParams::PaymentDetail::LodgingDatum::Total::Tax`, `PaymentIntentCreateParams::PaymentDetail::CarRentalDatum::Total::Tax`, `PaymentIntentCreateParams::PaymentDetail::FlightDatum::Total::Tax`, `PaymentIntentCreateParams::PaymentDetail::LodgingDatum::Total::Tax`, `PaymentIntentUpdateParams::PaymentDetail::CarRentalDatum::Total::Tax`, `PaymentIntentUpdateParams::PaymentDetail::FlightDatum::Total::Tax`, and `PaymentIntentUpdateParams::PaymentDetail::LodgingDatum::Total::Tax`
  * Add support for `tax_id` on `Checkout::Session::CollectedInformation`
  * ⚠️ Remove support for `tax_ids` on `Checkout::Session::CollectedInformation`
  * Add support for `mode` on `FinancialConnections::Session::ManualEntry`
  * Add support for `name` on `Issuing::CardholderUpdateParams`
  * Add support for `custom_fields`, `description`, and `footer` on `QuotePreviewSubscriptionSchedule::DefaultSetting::InvoiceSetting` and `QuotePreviewSubscriptionSchedule::Phase::InvoiceSetting`
  * Add support for `trial` on `QuotePreviewSubscriptionSchedule::Phase`
  * ⚠️ Remove support for `acss_debit`, `afterpay_clearpay`, `alipay`, `alma`, `amazon_pay`, `au_becs_debit`, `bacs_debit`, `bancontact`, `billie`, `bizum`, `blik`, `boleto`, `card_present`, `cashapp`, `crypto`, `customer_balance`, `eps`, `fpx`, `giropay`, `gopay`, `grabpay`, `id_bank_transfer`, `ideal`, `interac_present`, `kakao_pay`, `konbini`, `kr_card`, `mb_way`, `mobilepay`, `multibanco`, `naver_pay`, `nz_bank_account`, `oxxo`, `p24`, `pay_by_bank`, `payco`, `paynow`, `paypal`, `paypay`, `payto`, `pix`, `promptpay`, `qris`, `rechnung`, `revolut_pay`, `samsung_pay`, `satispay`, `scalapay`, `sepa_debit`, `shopeepay`, `sofort`, `stripe_balance`, `sunbit`, `swish`, `twint`, `upi`, `us_bank_account`, `wechat_pay`, and `zip` on `SharedPayment::GrantedToken::PaymentMethodDetail`
  * Add support for `use_stripe_sdk` on `SharedPayment::IssuedTokenCreateParams` and `SharedPayment::IssuedToken`
  * Add support for `redirect_to_url` on `SharedPayment::IssuedToken::NextAction`
  * ⚠️ Change type of `SharedPayment::IssuedToken::NextAction.type` from `literal('use_stripe_sdk')` to `enum('redirect_to_url'|'use_stripe_sdk')`
  * Add support for `livemode` on `Tax::Location`
  * Add support for `source` on `V2::Iam::ActivityLog::Detail::UserRole`
  * Add support for `payout` on `V2::MoneyManagement::ReceivedCredit::BalanceTransfer`
  * ⚠️ Remove support for `payout_v1` on `V2::MoneyManagement::ReceivedCredit::BalanceTransfer`
  * ⚠️ Change `V2::MoneyManagement::ReceivedDebit::BankTransfer.us_bank_account` to be optional

## 19.4.0-beta.1 - 2026-06-24
This release changes the pinned API version to `2026-06-24.preview`.

* ⚠️ [#1869](https://github.com/stripe/stripe-ruby/pull/1869) Update generated code for beta
  * Add support for `redaction` on `Card`, `Charge`, `Checkout::Session`, `Customer`, `Issuing::Authorization`, `Issuing::Card`, `Issuing::Cardholder`, `Issuing::Dispute`, `Issuing::Transaction`, `PaymentIntent`, `PaymentMethod`, `SetupIntent`, `Source`, and `Token`
  * Add support for `disclaimer_variant` on `Capital::FinancingOffer` and `Capital::FinancingSummary::Detail`
  * Add support for `active` on `FinancialConnections::Account::StatusDetail` and `FinancialConnections::Authorization::StatusDetail`
  * Change type of `FinancialConnections::SessionCreateParams::Limit.accounts` from `longInteger` to `emptyable(longInteger)`
  * Add support for `pause` on `InvoiceCreatePreviewParams::SubscriptionDetail`
  * Add support for `release_details` on `Reserve::Hold`
  * Add support for `buyer_id` on `SharedPayment::GrantedToken::PaymentMethodDetail::Bizum` and `SharedPayment::GrantedToken::PaymentMethodDetail::Blik`
  * Add support for `fingerprint` on `SharedPayment::GrantedToken::PaymentMethodDetail::Pix`
  * Add support for `money_manager` on `V2::Core::Account::Configuration`, `V2::Core::Account::Identity::Attestation::TermsOfService`, `V2::Core::AccountCreateParams::Configuration`, `V2::Core::AccountCreateParams::Identity::Attestation::TermsOfService`, `V2::Core::AccountTokenCreateParams::Identity::Attestation::TermsOfService`, and `V2::Core::AccountUpdateParams::Configuration`
  * ⚠️ Remove support for `storer` on `V2::Core::Account::Configuration`, `V2::Core::Account::Identity::Attestation::TermsOfService`, `V2::Core::AccountCreateParams::Configuration`, `V2::Core::AccountCreateParams::Identity::Attestation::TermsOfService`, `V2::Core::AccountTokenCreateParams::Identity::Attestation::TermsOfService`, and `V2::Core::AccountUpdateParams::Configuration`
  * ⚠️ Remove support for `maximum_rps` on `V2::Core::BatchJobCreateParams` and `V2::Core::BatchJob`
  * Add support for `bic` on `V2::MoneyManagement::FinancialAddress::Credential::UsBankAccount`
  * ⚠️ Remove support for `swift_code` on `V2::MoneyManagement::FinancialAddress::Credential::UsBankAccount`
  * Add support for `processing` on `V2::MoneyManagement::OutboundPayment::StatusDetail` and `V2::MoneyManagement::OutboundTransfer::StatusDetail`
  * Add support for `account_holder_name` on `V2::MoneyManagement::ReceivedCredit::BankTransfer::UsBankAccount`
  * Add support for `statuses` on `V2::MoneyManagement::FinancialAccountListParams`
  * ⚠️ Remove support for `status` on `V2::MoneyManagement::FinancialAccountListParams`
  * Change `V2::Core::BatchJobCreateParams.metadata` to be optional
  * Add support for event notifications `V2CoreAccountIncludingConfigurationMoneyManagerCapabilityStatusUpdatedEvent` and `V2CoreAccountIncludingConfigurationMoneyManagerUpdatedEvent` with related object `V2::Core::Account`
  * Add support for event notification `V2MoneyManagementOutboundPaymentUnderReviewEvent` with related object `V2::MoneyManagement::OutboundPayment`
  * Add support for event notification `V2MoneyManagementOutboundTransferUnderReviewEvent` with related object `V2::MoneyManagement::OutboundTransfer`
  * ⚠️ Remove support for event notifications `V2CoreAccountIncludingConfigurationStorerCapabilityStatusUpdatedEvent` and `V2CoreAccountIncludingConfigurationStorerUpdatedEvent` with related object `V2::Core::Account`

## 19.3.0-beta.1 - 2026-05-27
This release changes the pinned API version to `2026-05-27.preview`.

* ⚠️ [#1857](https://github.com/stripe/stripe-ruby/pull/1857) Update generated code for beta
  * Add support for `pause` method on resource `Subscription`
  * Add support for `retrieve` method on resource `V2::Iam::ActivityLog`
  * Change type of `ProductCatalog::TrialOffer::EndBehavior::Transition.price` from `string` to `expandable($Price)`
  * Add support for `amount_paid_off_stripe` on `QuotePreviewInvoice`
  * Add support for `discountable` on `QuotePreviewSubscriptionSchedule::Phase::AddInvoiceItem`
  * Add support for `bizum` and `scalapay` on `SharedPayment::GrantedToken::PaymentMethodDetail`
  * Change `SharedPayment::GrantedToken.agent_details` to be required
  * Change type of `SubscriptionItem.billed_until` from `nullable(DateTime)` to `DateTime`
  * Add support for `payment_behavior` on `SubscriptionResumeParams`
  * Add support for `status_details` on `Subscription`
  * Change `Subscription.billing_schedules` to be required
  * ⚠️ Change type of `V2::MoneyManagement::ReceivedCredit::BankTransfer::GbBankAccount.network` from `literal('fps')` to `enum('chaps'|'fps')`

## 19.2.0-beta.2 - 2026-04-24
* ⚠️ [#1854](https://github.com/stripe/stripe-ruby/pull/1854) Update generated code for beta
  * Add support for new resources `V2::Commerce::ProductCatalogImport`, `V2::Data::Reporting::QueryRun`, `V2::Extend::WorkflowRun`, `V2::Extend::Workflow`, `V2::Iam::ActivityLog`, `V2::Network::BusinessProfile`, and `V2::OrchestratedCommerce::Agreement`
  * Add support for `confirm`, `create`, `list`, `retrieve`, and `terminate` methods on resource `V2::OrchestratedCommerce::Agreement`
  * Add support for `me` and `retrieve` methods on resource `V2::Network::BusinessProfile`
  * Add support for `list` method on resource `V2::Iam::ActivityLog`
  * Add support for `list` and `retrieve` methods on resource `V2::Extend::WorkflowRun`
  * Add support for `invoke`, `list`, and `retrieve` methods on resource `V2::Extend::Workflow`
  * Add support for `create` and `retrieve` methods on resources `V2::Commerce::ProductCatalogImport` and `V2::Data::Reporting::QueryRun`
  * ⚠️ Change type of `V2::Billing::Cadence::SettingsDatum::Collection::PaymentMethodOption.konbini`, `V2::Billing::CollectionSetting::PaymentMethodOption.konbini`, `V2::Billing::CollectionSettingCreateParams::PaymentMethodOption.konbini`, `V2::Billing::CollectionSettingUpdateParams::PaymentMethodOption.konbini`, and `V2::Billing::CollectionSettingVersion::PaymentMethodOption.konbini` from `map(string: dynamic)` to `an object`
  * ⚠️ Change type of `V2::Billing::Cadence::SettingsDatum::Collection::PaymentMethodOption.sepa_debit`, `V2::Billing::CollectionSetting::PaymentMethodOption.sepa_debit`, `V2::Billing::CollectionSettingCreateParams::PaymentMethodOption.sepa_debit`, `V2::Billing::CollectionSettingUpdateParams::PaymentMethodOption.sepa_debit`, and `V2::Billing::CollectionSettingVersion::PaymentMethodOption.sepa_debit` from `map(string: dynamic)` to `an object`
  * ⚠️ Change type of `V2::MoneyManagement::InboundTransfer::TransferHistory.bank_debit_processing` from `map(string: dynamic)` to `an object`
  * ⚠️ Change type of `V2::MoneyManagement::InboundTransfer::TransferHistory.bank_debit_queued` from `map(string: dynamic)` to `an object`
  * ⚠️ Change type of `V2::MoneyManagement::InboundTransfer::TransferHistory.bank_debit_succeeded` from `map(string: dynamic)` to `an object`
  * Change type of `V2::Core::BatchJobCreateParams::Endpoint.http_method` from `literal('post')` to `enum('delete'|'post')`
  * Add support for `treasury_transaction` on `EventsV2MoneyManagementTransactionCreatedEvent`
  * Add support for event notifications `V2CommerceProductCatalogImportsFailedEvent`, `V2CommerceProductCatalogImportsProcessingEvent`, `V2CommerceProductCatalogImportsSucceededEvent`, and `V2CommerceProductCatalogImportsSucceededWithErrorsEvent` with related object `V2::Commerce::ProductCatalogImport`
  * Add support for event notifications `V2DataReportingQueryRunCreatedEvent`, `V2DataReportingQueryRunFailedEvent`, `V2DataReportingQueryRunSucceededEvent`, and `V2DataReportingQueryRunUpdatedEvent` with related object `V2::Data::Reporting::QueryRun`
  * Add support for event notifications `V2ExtendWorkflowRunFailedEvent`, `V2ExtendWorkflowRunStartedEvent`, and `V2ExtendWorkflowRunSucceededEvent` with related object `V2::Extend::WorkflowRun`
  * Add support for event notifications `V2OrchestratedCommerceAgreementConfirmedEvent`, `V2OrchestratedCommerceAgreementCreatedEvent`, `V2OrchestratedCommerceAgreementPartiallyConfirmedEvent`, and `V2OrchestratedCommerceAgreementTerminatedEvent` with related object `V2::OrchestratedCommerce::Agreement`
  * Add support for error type `CannotProceedError`

## 19.2.0-beta.1 - 2026-04-23
This release changes the pinned API version to `2026-04-22.preview`.

* ⚠️ [#1847](https://github.com/stripe/stripe-ruby/pull/1847) Update generated code for beta
  * Add support for new resources `SharedPayment::GrantedToken` and `SharedPayment::IssuedToken`
  * Add support for `retrieve` method on resource `SharedPayment::GrantedToken`
  * Add support for `create` and `revoke` test helper methods on resource `SharedPayment::GrantedToken`
  * Add support for `create`, `retrieve`, and `revoke` methods on resource `SharedPayment::IssuedToken`
  * Add support for `blik` on `Checkout::SessionCreateParams::PaymentMethodOption`, `Invoice::PaymentSetting::PaymentMethodOption`, `InvoiceCreateParams::PaymentSetting::PaymentMethodOption`, `InvoiceUpdateParams::PaymentSetting::PaymentMethodOption`, `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption`, `Subscription::PaymentSetting::PaymentMethodOption`, `SubscriptionCreateParams::PaymentSetting::PaymentMethodOption`, and `SubscriptionUpdateParams::PaymentSetting::PaymentMethodOption`
  * Change `Checkout::Session.managed_payments`, `PaymentIntent.managed_payments`, `PaymentLink.managed_payments`, and `Subscription.managed_payments` to be required
  * Add support for `shared_payment_granted_token` on `ConfirmationTokenCreateParams::PaymentMethodDatum`, `PaymentIntentConfirmParams::PaymentMethodDatum`, `PaymentIntentCreateParams::PaymentMethodDatum`, `PaymentIntentUpdateParams::PaymentMethodDatum`, `PaymentMethod`, `SetupIntentConfirmParams::PaymentMethodDatum`, `SetupIntentCreateParams::PaymentMethodDatum`, and `SetupIntentUpdateParams::PaymentMethodDatum`
  * Change `Invoice::PaymentSetting::PaymentMethodOption.pix`, `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption.pix`, and `Subscription::PaymentSetting::PaymentMethodOption.pix` to be required
  * Change `Invoice::PaymentSetting::PaymentMethodOption.upi`, `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption.upi`, and `Subscription::PaymentSetting::PaymentMethodOption.upi` to be required
  * Add support for `validation_errors` on `Privacy::RedactionJob`
  * Add support for `tax_details` on `Product`
  * Change type of `QuotePreviewInvoice::TotalTax::TaxRateDetail.tax_rate` from `string` to `expandable($TaxRate)`
  * ⚠️ Change type of `Radar::PaymentEvaluation::ClientDeviceMetadataDetail.radar_session` from `string` to `nullable(string)`
  * Change `SetupIntent::NextAction::PixDisplayQrCode.data` to be required
  * Change `SetupIntent::NextAction::PixDisplayQrCode.expires_at` to be required
  * Change `SetupIntent::NextAction::PixDisplayQrCode.hosted_instructions_url` to be required
  * Change `SetupIntent::NextAction::PixDisplayQrCode.image_url_png` to be required
  * Change `SetupIntent::NextAction::PixDisplayQrCode.image_url_svg` to be required
  * Add support for `admissions_tax`, `attendance_tax`, `entertainment_tax`, `gross_receipts_tax`, `hospitality_tax`, `luxury_tax`, `resort_tax`, and `tourism_tax` on `Tax::RegistrationCreateParams::CountryOption::Me`
  * Add support for `purpose` on `Treasury::OutboundPaymentCreateParams` and `Treasury::OutboundPayment`

## 19.1.0-beta.2 - 2026-03-27
* [#1840](https://github.com/stripe/stripe-ruby/pull/1840) Update generated code for beta
  * Fix "Unable to resolve constant" sorbet errors for Params classes

## 19.1.0-beta.1 - 2026-03-25
This release changes the pinned API version to `2026-03-25.preview`.

It is built on top of SDK version 19.0.0 which contains breaking changes. Please review the [changelog for 19.0.0](https://github.com/stripe/stripe-ruby/blob/master/CHANGELOG.md#1900---2026-03-25) if upgrading from older SDK versions.

* ⚠️ [#1801](https://github.com/stripe/stripe-ruby/pull/1801) Update generated code for beta
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
* [#1832](https://github.com/stripe/stripe-ruby/pull/1832) Update generated code for beta
  * Release specs are identical.
* [#1833](https://github.com/stripe/stripe-ruby/pull/1833) Update generated code for beta

## 18.5.0-beta.1 - 2026-02-25
This release changes the pinned API version to `2026-02-25.preview`.

* [#1789](https://github.com/stripe/stripe-ruby/pull/1789) Update generated code for beta
  * Add support for `smart_disputes` on `Account::Setting`, `AccountCreateParams::Setting`, `AccountUpdateParams::Setting`, `V2::Core::Account::Configuration::Merchant`, `V2::Core::AccountCreateParams::Configuration::Merchant`, and `V2::Core::AccountUpdateParams::Configuration::Merchant`
  * Add support for `email_customers_on_successful_payment` on `Account::Setting::Payment`, `AccountCreateParams::Setting::Payment`, and `AccountUpdateParams::Setting::Payment`
  * Add support for `managed_payments` on `Checkout::SessionCreateParams`, `Checkout::Session`, `PaymentIntent`, `SetupIntent`, and `Subscription`
  * Add support for `purpose` on `V2::MoneyManagement::OutboundPaymentCreateParams` and `V2::MoneyManagement::OutboundPayment`
  * Add support for `branch_number` and `swift_code` on `V2::MoneyManagement::PayoutMethod::BankAccount`
  * Change `V2::MoneyManagement::Transaction.flow` and `V2::MoneyManagement::TransactionEntry::TransactionDetail.flow` to be optional

## 18.4.0-beta.3 - 2026-02-17
* [#1787](https://github.com/stripe/stripe-ruby/pull/1787) Fix v2 typed params sending nil values on GET requests
  - Fixes a bug on V2 GET where we were serializing `nil` query parameters as empty strings. The server would return an error in such cases like `'limit: Expected an Integer value got: .'`

## 18.4.0-beta.2 - 2026-02-03
* [#1775](https://github.com/stripe/stripe-ruby/pull/1775) Update generated code
  * References to Stripe objects from *Param class fields are now fully qualified in `stripe.rbi`.  This ensures that the class fields in .rbi files generated with tapioca are able to refer to the correct type.

## 18.4.0-beta.1 - 2026-01-28
This release changes the pinned API version to `2026-01-28.preview`.

* [#1747](https://github.com/stripe/stripe-ruby/pull/1747) Add EventNotificationHandler example
* [#1758](https://github.com/stripe/stripe-ruby/pull/1758) Fix preserving null param values when calling v2 APIs
  - Nil input params are now preserved when calling V2 APIs.  Add additional tests for nil when calling V2 services you do not accidentally include an unintentional nil value.  V1 API calls are not affected (nil values are stripped from params hashes in V1).
* [#1762](https://github.com/stripe/stripe-ruby/pull/1762) Update generated code for beta
  * Add support for new resource `FinancialConnections::Authorization`
  * Add support for `retrieve` method on resource `FinancialConnections::Authorization`
  * Add support for `detach_payment` method on resource `Invoice`
  * Remove support for `cancel`, `list_line_items`, and `reopen` methods on resource `Order`
  * Remove support for `attach_cadence` method on resource `Subscription`
  * Add support for `additional_files` and `site` on `Account::Setting::PaypayPayment`, `AccountCreateParams::Setting::PaypayPayment`, and `AccountUpdateParams::Setting::PaypayPayment`
  * Remove support for `capital` on `Account::Setting`
  * Change type of `Charge::PaymentMethodDetail::StripeBalance.source_type`, `ConfirmationToken::PaymentMethodPreview::StripeBalance.source_type`, `PaymentAttemptRecord::PaymentMethodDetail::StripeBalance.source_type`, `PaymentMethod::StripeBalance.source_type`, and `PaymentRecord::PaymentMethodDetail::StripeBalance.source_type` from `enum('bank_account'|'card'|'fpx')` to `nullable(enum('bank_account'|'card'|'fpx'))`
  * Add support for `authorization` and `status_details` on `FinancialConnections::Account`
  * Add support for `relink_options` on `FinancialConnections::SessionCreateParams` and `FinancialConnections::Session`
  * Change `FinancialConnections::SessionCreateParams.account_holder` to be optional
  * Add support for `relink_result` on `FinancialConnections::Session`
  * Remove support for `billing_cadence` on `InvoiceCreatePreviewParams`, `SubscriptionCreateParams`, `SubscriptionUpdateParams`, and `Subscription`
  * Remove support for `billing_cadence_details` on `Invoice::Parent` and `QuotePreviewInvoice::Parent`
  * Add support for `car_rental_data`, `flight_data`, and `lodging_data` on `PaymentIntent::PaymentDetail`
  * Change `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption.payto` to be required
  * Add support for `alternative_reference` on `V2::Core::Vault::GbBankAccount`, `V2::Core::Vault::UsBankAccount`, and `V2::MoneyManagement::PayoutMethod`
  * Add support for `account_holder_address` and `account_holder_name` on `V2::MoneyManagement::FinancialAddress::Credential::UsBankAccount`
  * Add support for `fingerprint` on `V2::MoneyManagement::PayoutMethod::Card`

## 18.2.0-beta.1 - 2025-12-16
This release changes the pinned API version to `2025-12-15.preview`.

* [#1724](https://github.com/stripe/stripe-ruby/pull/1724) Add EventNotificationHandler
  * This is a new, simplified way to handle event notifications (AKA thin event webhooks). Learn more in the docs: https://docs.stripe.com/webhooks/event-notification-handlers?lang=ruby
* [#1735](https://github.com/stripe/stripe-ruby/pull/1735) Update generated code for beta
  * Add support for new resources `Reserve::Hold`, `Reserve::Plan`, and `Reserve::Release`
  * Add support for `list` and `retrieve` methods on resources `Reserve::Hold` and `Reserve::Release`
  * Add support for `retrieve` method on resource `Reserve::Plan`
  * Change `Billing::CreditBalanceSummary.customer_account`, `Billing::CreditGrant.customer_account`, `BillingPortal::Session.customer_account`, `CashBalance.customer_account`, `Checkout::Session.customer_account`, `ConfirmationToken::PaymentMethodPreview.customer_account`, `CreditNote.customer_account`, `CustomerBalanceTransaction.customer_account`, `CustomerCashBalanceTransaction.customer_account`, `CustomerSession.customer_account`, `Discount.customer_account`, `Invoice.customer_account`, `InvoiceItem.customer_account`, `PaymentIntent.customer_account`, `PaymentMethod.customer_account`, `PromotionCode.customer_account`, `Quote.customer_account`, `QuotePreviewInvoice.customer_account`, `QuotePreviewSubscriptionSchedule.customer_account`, `SetupAttempt.customer_account`, `Subscription.customer_account`, `SubscriptionSchedule.customer_account`, `TaxId.customer_account`, and `TaxId::Owner.customer_account` to be required
  * Change type of `V2::FinancialAddressGeneratedMicrodeposits.amounts` from `amount` to `an object`
  * Change type of `Checkout::SessionCreateParams::PaymentMethodOption::Payto::MandateOption.amount`, `PaymentIntentConfirmParams::PaymentMethodOption::Payto::MandateOption.amount`, `PaymentIntentCreateParams::PaymentMethodOption::Payto::MandateOption.amount`, `PaymentIntentUpdateParams::PaymentMethodOption::Payto::MandateOption.amount`, `SetupIntentConfirmParams::PaymentMethodOption::Payto::MandateOption.amount`, `SetupIntentCreateParams::PaymentMethodOption::Payto::MandateOption.amount`, and `SetupIntentUpdateParams::PaymentMethodOption::Payto::MandateOption.amount` from `longInteger` to `emptyable(longInteger)`
  * Change type of `Checkout::SessionCreateParams::PaymentMethodOption::Payto::MandateOption.amount_type`, `PaymentIntentConfirmParams::PaymentMethodOption::Payto::MandateOption.amount_type`, `PaymentIntentCreateParams::PaymentMethodOption::Payto::MandateOption.amount_type`, `PaymentIntentUpdateParams::PaymentMethodOption::Payto::MandateOption.amount_type`, `SetupIntentConfirmParams::PaymentMethodOption::Payto::MandateOption.amount_type`, `SetupIntentCreateParams::PaymentMethodOption::Payto::MandateOption.amount_type`, and `SetupIntentUpdateParams::PaymentMethodOption::Payto::MandateOption.amount_type` from `enum('fixed'|'maximum')` to `emptyable(enum('fixed'|'maximum'))`
  * Change type of `Checkout::SessionCreateParams::PaymentMethodOption::Payto::MandateOption.end_date`, `PaymentIntentConfirmParams::PaymentMethodOption::Payto::MandateOption.end_date`, `PaymentIntentCreateParams::PaymentMethodOption::Payto::MandateOption.end_date`, `PaymentIntentUpdateParams::PaymentMethodOption::Payto::MandateOption.end_date`, `SetupIntentConfirmParams::PaymentMethodOption::Payto::MandateOption.end_date`, `SetupIntentCreateParams::PaymentMethodOption::Payto::MandateOption.end_date`, and `SetupIntentUpdateParams::PaymentMethodOption::Payto::MandateOption.end_date` from `string` to `emptyable(string)`
  * Change type of `Checkout::SessionCreateParams::PaymentMethodOption::Payto::MandateOption.payment_schedule`, `PaymentIntentConfirmParams::PaymentMethodOption::Payto::MandateOption.payment_schedule`, `PaymentIntentCreateParams::PaymentMethodOption::Payto::MandateOption.payment_schedule`, `PaymentIntentUpdateParams::PaymentMethodOption::Payto::MandateOption.payment_schedule`, `SetupIntentConfirmParams::PaymentMethodOption::Payto::MandateOption.payment_schedule`, `SetupIntentCreateParams::PaymentMethodOption::Payto::MandateOption.payment_schedule`, and `SetupIntentUpdateParams::PaymentMethodOption::Payto::MandateOption.payment_schedule` from `enum` to `emptyable(enum)`
  * Change type of `Checkout::SessionCreateParams::PaymentMethodOption::Payto::MandateOption.payments_per_period`, `PaymentIntentConfirmParams::PaymentMethodOption::Payto::MandateOption.payments_per_period`, `PaymentIntentCreateParams::PaymentMethodOption::Payto::MandateOption.payments_per_period`, `PaymentIntentUpdateParams::PaymentMethodOption::Payto::MandateOption.payments_per_period`, `SetupIntentConfirmParams::PaymentMethodOption::Payto::MandateOption.payments_per_period`, `SetupIntentCreateParams::PaymentMethodOption::Payto::MandateOption.payments_per_period`, and `SetupIntentUpdateParams::PaymentMethodOption::Payto::MandateOption.payments_per_period` from `longInteger` to `emptyable(longInteger)`
  * Change type of `Checkout::SessionCreateParams::PaymentMethodOption::Payto::MandateOption.purpose`, `PaymentIntentConfirmParams::PaymentMethodOption::Payto::MandateOption.purpose`, `PaymentIntentCreateParams::PaymentMethodOption::Payto::MandateOption.purpose`, `PaymentIntentUpdateParams::PaymentMethodOption::Payto::MandateOption.purpose`, `SetupIntentConfirmParams::PaymentMethodOption::Payto::MandateOption.purpose`, `SetupIntentCreateParams::PaymentMethodOption::Payto::MandateOption.purpose`, and `SetupIntentUpdateParams::PaymentMethodOption::Payto::MandateOption.purpose` from `enum` to `emptyable(enum)`
  * Change type of `Checkout::SessionCreateParams::PaymentMethodOption::Payto::MandateOption.start_date`, `SetupIntentConfirmParams::PaymentMethodOption::Payto::MandateOption.start_date`, `SetupIntentCreateParams::PaymentMethodOption::Payto::MandateOption.start_date`, and `SetupIntentUpdateParams::PaymentMethodOption::Payto::MandateOption.start_date` from `string` to `emptyable(string)`
  * Change `Identity::VerificationSession.related_customer_account` to be required
  * Add support for `async_workflows` on `PaymentIntent`
  * Add support for `payto` on `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption`
  * Remove support for `requested` on `V2::Core::Account::Configuration::Customer::Capability::AutomaticIndirectTax`, `V2::Core::Account::Configuration::Merchant::Capability::AchDebitPayment`, `V2::Core::Account::Configuration::Merchant::Capability::AcssDebitPayment`, `V2::Core::Account::Configuration::Merchant::Capability::AffirmPayment`, `V2::Core::Account::Configuration::Merchant::Capability::AfterpayClearpayPayment`, `V2::Core::Account::Configuration::Merchant::Capability::AlmaPayment`, `V2::Core::Account::Configuration::Merchant::Capability::AmazonPayPayment`, `V2::Core::Account::Configuration::Merchant::Capability::AuBecsDebitPayment`, `V2::Core::Account::Configuration::Merchant::Capability::BacsDebitPayment`, `V2::Core::Account::Configuration::Merchant::Capability::BancontactPayment`, `V2::Core::Account::Configuration::Merchant::Capability::BlikPayment`, `V2::Core::Account::Configuration::Merchant::Capability::BoletoPayment`, `V2::Core::Account::Configuration::Merchant::Capability::CardPayment`, `V2::Core::Account::Configuration::Merchant::Capability::CartesBancairesPayment`, `V2::Core::Account::Configuration::Merchant::Capability::CashappPayment`, `V2::Core::Account::Configuration::Merchant::Capability::EpsPayment`, `V2::Core::Account::Configuration::Merchant::Capability::FpxPayment`, `V2::Core::Account::Configuration::Merchant::Capability::GbBankTransferPayment`, `V2::Core::Account::Configuration::Merchant::Capability::GrabpayPayment`, `V2::Core::Account::Configuration::Merchant::Capability::IdealPayment`, `V2::Core::Account::Configuration::Merchant::Capability::JcbPayment`, `V2::Core::Account::Configuration::Merchant::Capability::JpBankTransferPayment`, `V2::Core::Account::Configuration::Merchant::Capability::KakaoPayPayment`, `V2::Core::Account::Configuration::Merchant::Capability::KlarnaPayment`, `V2::Core::Account::Configuration::Merchant::Capability::KonbiniPayment`, `V2::Core::Account::Configuration::Merchant::Capability::KrCardPayment`, `V2::Core::Account::Configuration::Merchant::Capability::LinkPayment`, `V2::Core::Account::Configuration::Merchant::Capability::MobilepayPayment`, `V2::Core::Account::Configuration::Merchant::Capability::MultibancoPayment`, `V2::Core::Account::Configuration::Merchant::Capability::MxBankTransferPayment`, `V2::Core::Account::Configuration::Merchant::Capability::NaverPayPayment`, `V2::Core::Account::Configuration::Merchant::Capability::OxxoPayment`, `V2::Core::Account::Configuration::Merchant::Capability::P24Payment`, `V2::Core::Account::Configuration::Merchant::Capability::PayByBankPayment`, `V2::Core::Account::Configuration::Merchant::Capability::PaycoPayment`, `V2::Core::Account::Configuration::Merchant::Capability::PaynowPayment`, `V2::Core::Account::Configuration::Merchant::Capability::PromptpayPayment`, `V2::Core::Account::Configuration::Merchant::Capability::RevolutPayPayment`, `V2::Core::Account::Configuration::Merchant::Capability::SamsungPayPayment`, `V2::Core::Account::Configuration::Merchant::Capability::SepaBankTransferPayment`, `V2::Core::Account::Configuration::Merchant::Capability::SepaDebitPayment`, `V2::Core::Account::Configuration::Merchant::Capability::StripeBalance::Payout`, `V2::Core::Account::Configuration::Merchant::Capability::SwishPayment`, `V2::Core::Account::Configuration::Merchant::Capability::TwintPayment`, `V2::Core::Account::Configuration::Merchant::Capability::UsBankTransferPayment`, `V2::Core::Account::Configuration::Merchant::Capability::ZipPayment`, `V2::Core::Account::Configuration::Recipient::Capability::BankAccount::Local`, `V2::Core::Account::Configuration::Recipient::Capability::BankAccount::Wire`, `V2::Core::Account::Configuration::Recipient::Capability::Card`, `V2::Core::Account::Configuration::Recipient::Capability::StripeBalance::Payout`, `V2::Core::Account::Configuration::Recipient::Capability::StripeBalance::StripeTransfer`, `V2::Core::Account::Configuration::Storer::Capability::FinancialAddress::BankAccount`, `V2::Core::Account::Configuration::Storer::Capability::HoldsCurrency::Eur`, `V2::Core::Account::Configuration::Storer::Capability::HoldsCurrency::Gbp`, `V2::Core::Account::Configuration::Storer::Capability::HoldsCurrency::Usd`, `V2::Core::Account::Configuration::Storer::Capability::InboundTransfer::BankAccount`, `V2::Core::Account::Configuration::Storer::Capability::OutboundPayment::BankAccount`, `V2::Core::Account::Configuration::Storer::Capability::OutboundPayment::Card`, `V2::Core::Account::Configuration::Storer::Capability::OutboundPayment::FinancialAccount`, `V2::Core::Account::Configuration::Storer::Capability::OutboundTransfer::BankAccount`, and `V2::Core::Account::Configuration::Storer::Capability::OutboundTransfer::FinancialAccount`
  * Change type of `V2::Core::Account::Identity::BusinessDetail::AnnualRevenue.amount`, `V2::Core::Account::Identity::BusinessDetail::MonthlyEstimatedRevenue.amount`, `V2::Core::AccountCreateParams::Identity::BusinessDetail::AnnualRevenue.amount`, `V2::Core::AccountCreateParams::Identity::BusinessDetail::MonthlyEstimatedRevenue.amount`, `V2::Core::AccountTokenCreateParams::Identity::BusinessDetail::AnnualRevenue.amount`, `V2::Core::AccountTokenCreateParams::Identity::BusinessDetail::MonthlyEstimatedRevenue.amount`, `V2::Core::AccountUpdateParams::Identity::BusinessDetail::AnnualRevenue.amount`, `V2::Core::AccountUpdateParams::Identity::BusinessDetail::MonthlyEstimatedRevenue.amount`, `V2::FinancialAddressCreditSimulationCreditParams.amount`, `V2::MoneyManagement::Adjustment.amount`, `V2::MoneyManagement::InboundTransfer.amount`, `V2::MoneyManagement::InboundTransferCreateParams.amount`, `V2::MoneyManagement::OutboundPayment.amount`, `V2::MoneyManagement::OutboundPaymentCreateParams.amount`, `V2::MoneyManagement::OutboundPaymentQuote.amount`, `V2::MoneyManagement::OutboundPaymentQuote::EstimatedFee.amount`, `V2::MoneyManagement::OutboundPaymentQuoteCreateParams.amount`, `V2::MoneyManagement::OutboundTransfer.amount`, `V2::MoneyManagement::OutboundTransferCreateParams.amount`, `V2::MoneyManagement::ReceivedCredit.amount`, `V2::MoneyManagement::ReceivedDebit.amount`, and `V2::MoneyManagement::Transaction.amount` from `amount` to `an object`
  * Change `V2::Core::Account::Default.responsibilities` to be required
  * Change `V2::Core::Account::Default::Responsibility.fees_collector` to be optional
  * Change `V2::Core::Account::Default::Responsibility.losses_collector` to be optional
  * Add support for `financial_connections_account` on `V2::Core::Vault::UsBankAccount` and `V2::MoneyManagement::PayoutMethod::BankAccount`
  * Change type of `V2::MoneyManagement::FinancialAccount::Balance.available`, `V2::MoneyManagement::Transaction::BalanceImpact.available`, and `V2::MoneyManagement::TransactionEntry::BalanceImpact.available` from `amount` to `an object`
  * Change type of `V2::MoneyManagement::FinancialAccount::Balance.inbound_pending`, `V2::MoneyManagement::Transaction::BalanceImpact.inbound_pending`, and `V2::MoneyManagement::TransactionEntry::BalanceImpact.inbound_pending` from `amount` to `an object`
  * Change type of `V2::MoneyManagement::FinancialAccount::Balance.outbound_pending`, `V2::MoneyManagement::Transaction::BalanceImpact.outbound_pending`, and `V2::MoneyManagement::TransactionEntry::BalanceImpact.outbound_pending` from `amount` to `an object`
  * Change type of `V2::MoneyManagement::InboundTransfer::From.debited`, `V2::MoneyManagement::OutboundPayment::From.debited`, `V2::MoneyManagement::OutboundPaymentQuote::From.debited`, and `V2::MoneyManagement::OutboundTransfer::From.debited` from `amount` to `an object`
  * Change type of `V2::MoneyManagement::InboundTransfer::To.credited`, `V2::MoneyManagement::OutboundPayment::To.credited`, `V2::MoneyManagement::OutboundPaymentQuote::To.credited`, and `V2::MoneyManagement::OutboundTransfer::To.credited` from `amount` to `an object`
  * Add support for `transfer` on `V2::MoneyManagement::ReceivedCredit::BalanceTransfer`
  * Change `V2::Core::AccountTokenCreateParams.identity` to be optional
  * Add support for event notification `V2MoneyManagementPayoutMethodCreatedEvent` with related object `V2::MoneyManagement::PayoutMethod`
  * Add support for error type `ControlledByAlternateResourceError`
  * Remove support for error type `RateLimitError`

## 18.1.0-beta.1 - 2025-11-18
This release changes the pinned API version to `2025-11-17.preview`.

* [#1722](https://github.com/stripe/stripe-ruby/pull/1722) Update generated code for beta
  * Add support for new resources `V2::Core::AccountPersonToken` and `V2::Core::AccountToken`
  * Remove support for resource `V2::Payments::OffSessionPayment`
  * Add support for `create` and `retrieve` methods on resources `V2::Core::AccountPersonToken` and `V2::Core::AccountToken`
  * Remove support for `cancel`, `capture`, `create`, `list`, and `retrieve` methods on resource `V2::Payments::OffSessionPayment`
  * Change `Tax::Association.tax_transaction_attempts` to be required
  * Add support for `specified_commercial_transactions_act_url` on `Account::BusinessProfile`, `AccountCreateParams::BusinessProfile`, and `AccountUpdateParams::BusinessProfile`
  * Add support for `paypay_payments` on `Account::Setting`, `AccountCreateParams::Setting`, and `AccountUpdateParams::Setting`
  * Change type of `Billing::Analytics::MeterUsageRetrieveParams::Meter.dimension_filters` from `string` to `array(string)`
  * Change type of `Billing::Analytics::MeterUsageRetrieveParams::Meter.tenant_filters` from `string` to `array(string)`
  * Add support for `car_rental_data`, `flight_data`, and `lodging_data` on `ChargeCaptureParams::PaymentDetail`, `ChargeUpdateParams::PaymentDetail`, `PaymentIntentCaptureParams::PaymentDetail`, `PaymentIntentConfirmParams::PaymentDetail`, `PaymentIntentCreateParams::PaymentDetail`, and `PaymentIntentUpdateParams::PaymentDetail`
  * Add support for `supplementary_purchase_data` on `OrderCreateParams::Payment::Setting::PaymentMethodOption::Klarna`, `OrderUpdateParams::Payment::Setting::PaymentMethodOption::Klarna`, `PaymentIntentConfirmParams::PaymentMethodOption::Klarna`, `PaymentIntentCreateParams::PaymentMethodOption::Klarna`, and `PaymentIntentUpdateParams::PaymentMethodOption::Klarna`
  * Add support for `allow_redisplay` and `customer_account` on `PaymentMethodListParams`
  * Add support for `future_requirements` on `V2::Core::Account`
  * Add support for `konbini_payments` and `script_statement_descriptor` on `V2::Core::Account::Configuration::Merchant`, `V2::Core::AccountCreateParams::Configuration::Merchant`, and `V2::Core::AccountUpdateParams::Configuration::Merchant`
  * Add support for `eur` on `V2::Core::Account::Configuration::Storer::Capability::HoldsCurrency`, `V2::Core::AccountCreateParams::Configuration::Storer::Capability::HoldsCurrency`, and `V2::Core::AccountUpdateParams::Configuration::Storer::Capability::HoldsCurrency`
  * Add support for `requirements_collector` on `V2::Core::Account::Default::Responsibility`
  * Remove support for `collector` on `V2::Core::Account::Requirement`
  * Add support for `changes` on `V2::Core::Event`
  * Add support for `account_token` on `V2::Core::AccountCreateParams` and `V2::Core::AccountUpdateParams`
  * Add support for `person_token` on `V2::Core::AccountPersonCreateParams` and `V2::Core::AccountPersonUpdateParams`
  * Add support for `changes` on `V2::Core::Event`
  * Add support for thin event `V2CoreHealthEventGenerationFailureResolvedEvent`
  * Remove support for thin events `V2PaymentsOffSessionPaymentAuthorizationAttemptFailedEvent`, `V2PaymentsOffSessionPaymentAuthorizationAttemptStartedEvent`, `V2PaymentsOffSessionPaymentCanceledEvent`, `V2PaymentsOffSessionPaymentCreatedEvent`, `V2PaymentsOffSessionPaymentFailedEvent`, `V2PaymentsOffSessionPaymentRequiresCaptureEvent`, and `V2PaymentsOffSessionPaymentSucceededEvent` with related object `V2::Payments::OffSessionPayment`

## 17.2.0-beta.1 - 2025-10-29
This release changes the pinned API version to `2025-10-29.preview`.

* [#1696](https://github.com/stripe/stripe-ruby/pull/1696) Update generated code for beta
  * Add support for `update` method on resource `V2::MoneyManagement::FinancialAccount`
  * Add support for `confirm_microdeposits`, `list`, and `send_microdeposits` methods on resource `V2::Core::Vault::UsBankAccount`
  * Add support for `list` method on resource `V2::Core::Vault::GbBankAccount`
  * Add support for `payment_portal_url` on `Charge::PaymentMethodDetail::Rechnung`, `PaymentAttemptRecord::PaymentMethodDetail::Rechnung`, and `PaymentRecord::PaymentMethodDetail::Rechnung`
  * Add support for `tax_id_element` on `CustomerSession::Component` and `CustomerSessionCreateParams::Component`
  * Add support for `starting_after` on `PaymentAttemptRecordListParams`
  * Add support for `reference` on `PaymentIntentAmountDetailsLineItem::PaymentMethodOption::Klarna`, `PaymentIntentCaptureParams::AmountDetail::LineItem::PaymentMethodOption::Klarna`, `PaymentIntentConfirmParams::AmountDetail::LineItem::PaymentMethodOption::Klarna`, `PaymentIntentCreateParams::AmountDetail::LineItem::PaymentMethodOption::Klarna`, `PaymentIntentIncrementAuthorizationParams::AmountDetail::LineItem::PaymentMethodOption::Klarna`, and `PaymentIntentUpdateParams::AmountDetail::LineItem::PaymentMethodOption::Klarna`
  * Change `PaymentIntent::PaymentDetail.customer_reference` to be required
  * Change `PaymentIntent::PaymentDetail.order_reference` to be required
  * Add support for `subscription_reference` on `PaymentIntentAmountDetailsLineItem::PaymentMethodOption::Klarna`
  * Add support for `closed` on `V2::Core::AccountListParams` and `V2::Core::Account`
  * Add support for `usd` on `V2::Core::Account::Configuration::Storer::Capability::HoldsCurrency`, `V2::Core::AccountCreateParams::Configuration::Storer::Capability::HoldsCurrency`, and `V2::Core::AccountUpdateParams::Configuration::Storer::Capability::HoldsCurrency`
  * Add support for `representative_declaration` on `V2::Core::Account::Identity::Attestation`, `V2::Core::AccountCreateParams::Identity::Attestation`, and `V2::Core::AccountUpdateParams::Identity::Attestation`
  * Add support for `verification` on `V2::Core::Vault::UsBankAccount`
  * Add support for `v1_id` on `EventsV2MoneyManagementTransactionCreatedEvent`
  * Remove support for thin event `V2BillingBillSettingUpdatedEvent` with related object `V2::Billing::BillSetting`
* [#1714](https://github.com/stripe/stripe-ruby/pull/1714) Update generated code for beta
  * Add support for `crypto_storer` on `V2::Core::AccountUpdateParams::Identity::Attestation::TermsOfService`

## 17.1.0-beta.2 - 2025-10-16

## 17.1.0-beta.1 - 2025-10-09
* Contains a breaking bug fix and other improvements from [v17.0.0](https://github.com/stripe/stripe-ruby/releases/tag/v17.0.0).

## 16.1.0-beta.1 - 2025-09-30
This release changes the pinned API version to `2025-09-30.preview`.

It is built on top of SDK version 18.0.0 which contains breaking changes. Please review the [changelog for 16.0.0](https://github.com/stripe/stripe-ruby/blob/master/CHANGELOG.md#1600---2025-09-30) if upgrading from older SDK versions.

* [#1639](https://github.com/stripe/stripe-ruby/pull/1639) Update generated code for beta
  * Add support for new resources `Billing::Analytics::MeterUsageRow` and `Billing::Analytics::MeterUsage`
  * Remove support for resources `Billing::MeterUsageRow` and `Billing::MeterUsage`
  * Add support for `retrieve` method on resource `Billing::Analytics::MeterUsage`
  * Remove support for `retrieve` method on resource `Billing::MeterUsage`
  * Add support for `report_payment_attempt_informational` method on resource `PaymentRecord`
  * Add support for `minimum_balance_by_currency` on `BalanceSettings::Payment::Payout` and `BalanceSettings::UpdateParams::Payment::Payout`
  * Change type of `BalanceSettings::UpdateParams::Payment::SettlementTiming.delay_days_override` from `longInteger` to `emptyable(longInteger)`
  * Change `BalanceSettings::UpdateParams.payments` to be optional
  * Add support for `delay_days_override` on `BalanceSettings::Payment::SettlementTiming`
  * Add support for `automatic_tax` and `invoice_creation` on `Checkout::Session::UpdateParams`
  * Add support for `unit_label` on `Checkout::Session::UpdateParams::LineItem::PriceDatum::ProductDatum`
  * Add support for `invoice_settings` on `Checkout::Session::UpdateParams::SubscriptionDatum`
  * Change `Checkout::Session::CollectedInformation.business_name` to be required
  * Add support for `intended_submission_method` on `Dispute::UpdateParams` and `Dispute`
  * Change type of `Dispute::SmartDispute.recommended_evidence` from `string` to `array(string)`
  * Add support for `pix` on `Invoice::CreateParams::PaymentSetting::PaymentMethodOption`, `Invoice::PaymentSetting::PaymentMethodOption`, `Invoice::UpdateParams::PaymentSetting::PaymentMethodOption`, `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption`, `Subscription::CreateParams::PaymentSetting::PaymentMethodOption`, `Subscription::PaymentSetting::PaymentMethodOption`, and `Subscription::UpdateParams::PaymentSetting::PaymentMethodOption`
  * Add support for `billing_schedules` on `Invoice::CreatePreviewParams::SubscriptionDetail`, `Subscription::CreateParams`, `Subscription::UpdateParams`, and `Subscription`
  * Add support for `paypay` on `PaymentAttemptRecord::PaymentMethodDetail` and `PaymentRecord::PaymentMethodDetail`
  * Add support for `wallet` on `PaymentAttemptRecord::PaymentMethodDetail::Card` and `PaymentRecord::PaymentMethodDetail::Card`
  * Change type of `PaymentAttemptRecord::ProcessorDetail::Custom.payment_reference` and `PaymentRecord::ProcessorDetail::Custom.payment_reference` from `string` to `nullable(string)`
  * Add support for `flexible` on `QuotePreviewSubscriptionSchedule::BillingMode`
  * Add support for `billed_until` on `SubscriptionItem`
* [#1662](https://github.com/stripe/stripe-ruby/pull/1662) Update generated code for beta
  * Add support for new resources `V2::Billing::BillSettingVersion`, `V2::Billing::BillSetting`, `V2::Billing::Cadence`, `V2::Billing::CollectionSettingVersion`, `V2::Billing::CollectionSetting`, and `V2::Billing::Profile`
  * Add support for `create`, `list`, `retrieve`, and `update` methods on resources `V2::Billing::BillSetting`, `V2::Billing::CollectionSetting`, and `V2::Billing::Profile`
  * Add support for `list` and `retrieve` methods on resources `V2::Billing::BillSettingVersion` and `V2::Billing::CollectionSettingVersion`
  * Add support for `cancel`, `create`, `list`, `retrieve`, and `update` methods on resource `V2::Billing::Cadence`
  * Add support for `profile` on `V2::Core::Account::CreateParams::Default`, `V2::Core::Account::Default`, and `V2::Core::Account::UpdateParams::Default`
  * Add support for `i_p` on `V2::Core::Account::CreateParams::Identity::Attestation::TermsOfService::Account`, `V2::Core::Account::CreateParams::Identity::Attestation::TermsOfService::Storer`, `V2::Core::Account::Identity::Attestation::DirectorshipDeclaration`, `V2::Core::Account::Identity::Attestation::OwnershipDeclaration`, `V2::Core::Account::Identity::Attestation::TermsOfService::Account`, `V2::Core::Account::Identity::Attestation::TermsOfService::Storer`, `V2::Core::Account::Identity::Individual::AdditionalTermsOfService::Account`, `V2::Core::Account::UpdateParams::Identity::Attestation::TermsOfService::Account`, `V2::Core::Account::UpdateParams::Identity::Attestation::TermsOfService::Storer`, `V2::Core::Person::AdditionalTermsOfService::Account`, `V2::Core::Person::CreateParams::AdditionalTermsOfService::Account`, and `V2::Core::Person::UpdateParams::AdditionalTermsOfService::Account`
  * Remove support for `ip` on `V2::Core::Account::CreateParams::Identity::Attestation::TermsOfService::Account`, `V2::Core::Account::CreateParams::Identity::Attestation::TermsOfService::Storer`, `V2::Core::Account::Identity::Attestation::DirectorshipDeclaration`, `V2::Core::Account::Identity::Attestation::OwnershipDeclaration`, `V2::Core::Account::Identity::Attestation::TermsOfService::Account`, `V2::Core::Account::Identity::Attestation::TermsOfService::Storer`, `V2::Core::Account::Identity::Individual::AdditionalTermsOfService::Account`, `V2::Core::Account::UpdateParams::Identity::Attestation::TermsOfService::Account`, `V2::Core::Account::UpdateParams::Identity::Attestation::TermsOfService::Storer`, `V2::Core::Person::AdditionalTermsOfService::Account`, `V2::Core::Person::CreateParams::AdditionalTermsOfService::Account`, and `V2::Core::Person::UpdateParams::AdditionalTermsOfService::Account`
  * Remove support for `doing_business_as`, `product_description`, and `url` on `V2::Core::Account::CreateParams::Identity::BusinessDetail`, `V2::Core::Account::Identity::BusinessDetail`, and `V2::Core::Account::UpdateParams::Identity::BusinessDetail`
  * Add support for `settlement_currency` on `V2::MoneyManagement::FinancialAddress`
  * Add support for `sepa_bank_account` on `V2::MoneyManagement::FinancialAddress::Credential` and `V2::MoneyManagement::ReceivedCredit::BankTransfer`
  * Add support for `amount_details` and `payments_orchestration` on `V2::Payments::OffSessionPayment::CreateParams` and `V2::Payments::OffSessionPayment`
  * Add support for `retry_policy` on `V2::Payments::OffSessionPayment::CreateParams::RetryDetail` and `V2::Payments::OffSessionPayment::RetryDetail`
  * Change type of `V2::MoneyManagement::OutboundPaymentQuote::FxQuote.lock_duration` from `literal('five_minutes')` to `enum('five_minutes'|'none')`
  * Change type of `V2::MoneyManagement::OutboundPaymentQuote::FxQuote.lock_expires_at` from `DateTime` to `nullable(DateTime)`
  * Add support for `origin_type` on `V2::MoneyManagement::ReceivedCredit::BankTransfer`
  * Remove support for `payment_method_type` on `V2::MoneyManagement::ReceivedCredit::BankTransfer`
  * Add support for `mandate_data` and `payment_method_options` on `V2::Payments::OffSessionPayment::CreateParams`
  * Add support for `type` on `V2::MoneyManagement::FinancialAddress::CreateParams`
  * Remove support for `currency` on `V2::MoneyManagement::FinancialAddress::CreateParams`
  * Add support for thin event `V2BillingBillSettingUpdatedEvent` with related object `V2::Billing::BillSetting`
  * Add support for error type `RateLimitError`
* [#1671](https://github.com/stripe/stripe-ruby/pull/1671) Update generated code for beta
  * Add support for `attach_cadence` method on resource `Subscription`
  * Add support for `billing_cadence` on `Invoice::CreatePreviewParams`, `Subscription::CreateParams`, `Subscription::UpdateParams`, and `Subscription`
  * Add support for `billing_cadence_details` on `Invoice::Parent` and `QuotePreviewInvoice::Parent`

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

## 15.2.0-beta.1 - 2025-04-30
This release changes the pinned API version to `2025-04-30.preview`.

* [#1589](https://github.com/stripe/stripe-ruby/pull/1589) Update generated code for beta
  This release changes the pinned API version to `2025-04-30.preview`.

  * Add support for `billing_mode` on `Checkout::Session::CreateParams::SubscriptionDatum`, `Invoice::CreatePreviewParams::ScheduleDetail`, `Invoice::CreatePreviewParams::SubscriptionDetail`, `Quote::CreateParams::SubscriptionDatum`, `Quote::SubscriptionDatum`, `QuotePreviewSubscriptionSchedule`, `Subscription::CreateParams`, `SubscriptionSchedule::CreateParams`, `SubscriptionSchedule`, and `Subscription`
  * Change `Checkout::Session::AutomaticTax.provider`, `Invoice::AutomaticTax.provider`, `Quote::AutomaticTax.provider`, and `QuotePreviewInvoice::AutomaticTax.provider` to be required
  * Add support for `account_number` on `ConfirmationToken::PaymentMethodPreview::AcssDebit` and `PaymentMethod::AcssDebit`

## 15.1.0-beta.2 - 2025-04-17
* [#1588](https://github.com/stripe/stripe-ruby/pull/1588) Removed Request signing authenticator
  - Removed `RequestSigningAuthenticator` class as request signing is not supported by Stripe APIs yet. This allows us to remove the dependency on base64
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

## 15.1.0-beta.1 - 2025-04-10
* [#1572](https://github.com/stripe/stripe-ruby/pull/1572) Handle external_account field
  - Changes `external_account` field in `external_accounts.create` from a `string` to a union type.
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

## 14.1.0-beta.1 - 2025-04-02
This release changes the pinned API version to `2025-03-31.preview`.

* [#1557](https://github.com/stripe/stripe-ruby/pull/1557) Update Stripe.add_beta_version
  * `stripe.add_beta_version` will use the highest version number used for a beta feature instead of raising an `Error` on a conflict as it had done previously.
* [#1563](https://github.com/stripe/stripe-ruby/pull/1563) , [#1558](https://github.com/stripe/stripe-ruby/pull/1558), [#1547](https://github.com/stripe/stripe-ruby/pull/1547) Update generated code for beta
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

## 13.6.0-beta.1 - 2025-03-18
This release changes the pinned API version to `2025-02-24.acacia`.

* [#1546](https://github.com/stripe/stripe-ruby/pull/1546) Beta SDK updates between Open API versions 1473 and 1505
  * Add support for `succeed_input_collection` and `timeout_input_collection` test helper methods on resource `Terminal.Reader`

## 13.5.0-beta.1 - 2025-02-07
* [#1527](https://github.com/stripe/stripe-ruby/pull/1527) Update generated code for beta

## 13.4.0-beta.4 - 2025-01-23
* [#1523](https://github.com/stripe/stripe-ruby/pull/1523) Update generated code for beta
  * Removed support for `stripe_account` from `Stripe::Terminal::Reader`. Use `account` instead.

## 13.4.0-beta.3 - 2025-01-17
This release changes the pinned API version to `2025-01-27.acacia`.

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

## 13.3.0-beta.3 - 2024-12-12
This release changes the pinned API version to `2024-12-18.acacia`.

* [#1499](https://github.com/stripe/stripe-ruby/pull/1499) Update generated code for beta
  * Add support for `AllowRedisplay` on `Card` and `Source`
  * Add support for new values `am_tin`, `ao_tin`, `ba_tin`, `bb_tin`, `bs_tin`, `cd_nif`, `gn_nif`, `kh_tin`, `me_pib`, `mk_vat`, `mr_nif`, `np_pan`, `sn_ninea`, `sr_fin`, `tj_tin`, `ug_tin`, `zm_tin`, and `zw_tin` on enums `CheckoutSessionCollectedInformationTaxIdsType` and `OrderTaxDetailsTaxIdsType`
  * Add support for new value `network_fallback` on enum `IssuingAuthorizationRequestHistoryReason`
  * Remove support for `AmountRefunded` on `PaymentRecord`
  * Add support for `Account` on `TerminalReaderActionCollectPaymentMethod`, `TerminalReaderActionConfirmPaymentIntent`, `TerminalReaderActionProcessPaymentIntent`, and `TerminalReaderActionRefundPayment`

## 13.3.0-beta.2 - 2024-12-05
* [#1490](https://github.com/stripe/stripe-ruby/pull/1490) Add explicit attributes for fields in resources, and rbis for resources
* [#1492](https://github.com/stripe/stripe-ruby/pull/1492) Update generated code for beta

## 13.3.0-beta.1 - 2024-11-21
* [#1489](https://github.com/stripe/stripe-ruby/pull/1489) Merging code from master to get the latest bug fixes.

## 13.2.0-beta.3 - 2024-11-14
This release changes the pinned API version to `2024-11-20.acacia`.

* [#1484](https://github.com/stripe/stripe-ruby/pull/1484) Update generated code for beta

## 13.2.0-beta.2 - 2024-11-07
* [#1480](https://github.com/stripe/stripe-ruby/pull/1480) Update generated code for beta
  * Add support for new resources `Issuing.FraudLiabilityDebit`, `PaymentAttemptRecord`, and `PaymentRecord`
  * Add support for `list` and `retrieve` methods on resources `FraudLiabilityDebit` and `PaymentAttemptRecord`
  * Add support for `report_payment_attempt_canceled`, `report_payment_attempt_failed`, `report_payment_attempt_guaranteed`, `report_payment_attempt`, `report_payment`, and `retrieve` methods on resource `PaymentRecord`

## 13.2.0-beta.1 - 2024-10-29
This release changes the pinned API version to `2024-10-28.acacia`.

* [#1477](https://github.com/stripe/stripe-ruby/pull/1477) Update generated code for beta
  * Add support for `trigger_action` method on resource `PaymentIntent`

## 13.1.0-beta.3 - 2024-10-18
* [#1469](https://github.com/stripe/stripe-ruby/pull/1469) Update generated code for beta

## 13.1.0-beta.2 - 2024-10-08
* [#1468](https://github.com/stripe/stripe-ruby/pull/1468) Update generated code for beta
  * Add support for `submit_card` test helper method on resource `Issuing.Card`

## 13.1.0-beta.1 - 2024-10-03
This release changes the pinned API version to `2024-09-30.acacia`.

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

## 12.7.0-beta.2 - 2024-09-18
* [#1449](https://github.com/stripe/stripe-ruby/pull/1449) Update generated code for beta
  * Remove support for resource `QuotePhase`
  * Remove support for `list_line_items` and `retrieve` methods on resource `QuotePhase`

## 12.7.0-beta.1 - 2024-09-13
* [#1446](https://github.com/stripe/stripe-ruby/pull/1446) Update generated code for beta
  * Add support for new resources `Issuing.DisputeSettlementDetail` and `Issuing.Settlement`
  * Add support for `list` and `retrieve` methods on resource `DisputeSettlementDetail`
  * Remove support for `list` method on resource `QuotePhase`

## 12.6.0-beta.1 - 2024-09-05
* [#1441](https://github.com/stripe/stripe-ruby/pull/1441) Update generated code for beta
  * Add support for new resources `Billing.MeterErrorReport` and `Terminal.ReaderCollectedData`
  * Add support for `retrieve` method on resource `ReaderCollectedData`

## 12.5.0-beta.2 - 2024-08-01
* [#1439](https://github.com/stripe/stripe-ruby/pull/1439) Update generated code for beta
  * Add support for `attach_payment` method on resource `Invoice`

## 12.5.0-beta.1 - 2024-07-25
* [#1429](https://github.com/stripe/stripe-ruby/pull/1429) Update generated code for beta
  * Add support for new resources `Billing.AlertTriggered`, `Billing.Alert`, and `Tax.Association`
  * Add support for `activate`, `archive`, `create`, `deactivate`, `list`, and `retrieve` methods on resource `Alert`
  * Add support for `find` method on resource `Association`

## 12.2.0-beta.1 - 2024-07-05
This release changes the pinned API version to `2024-06-20`.

* [#1409](https://github.com/stripe/stripe-ruby/pull/1409) Update generated code for beta
* [#1428](https://github.com/stripe/stripe-ruby/pull/1428) Update generated code for beta
  * Add support for new resource `FinancialConnections.Institution`
  * Add support for `list` and `retrieve` methods on resource `Institution`

## 11.7.0-beta.1 - 2024-05-30
* [#1400](https://github.com/stripe/stripe-ruby/pull/1400) Update generated code for beta
  * Keeping up with the changes from version 11.6.0

## 11.5.0-beta.1 - 2024-05-09
* [#1395](https://github.com/stripe/stripe-ruby/pull/1395) Update generated code for beta
  * No new beta features. Merging changes from the main branch.

## 11.4.0-beta.1 - 2024-05-02
* [#1386](https://github.com/stripe/stripe-ruby/pull/1386) Update generated code for beta

## 11.3.0-beta.1 - 2024-04-18
* [#1383](https://github.com/stripe/stripe-ruby/pull/1383) Update generated code for beta

## 11.1.0-beta.1 - 2024-04-11
This release changes the pinned API version to `2024-04-10`.

* [#1376](https://github.com/stripe/stripe-ruby/pull/1376) Update generated code for beta
  * Add support for `retrieve` method on resources `Entitlements.ActiveEntitlement` and `Entitlements.Feature`

## 10.15.0-beta.1 - 2024-04-04
* [#1370](https://github.com/stripe/stripe-ruby/pull/1370) Update generated code for beta
* [#1373](https://github.com/stripe/stripe-ruby/pull/1373) Update generated code for beta
  - Add support for `update` method on resource `Entitlements.Feature`

## 10.14.0-beta.1 - 2024-03-21
* [#1363](https://github.com/stripe/stripe-ruby/pull/1363) Update generated code for beta
  - Add support for new resources `Entitlements.ActiveEntitlementSummary` and `Entitlements.ActiveEntitlement`
  - Add support for `list` method on resource `ActiveEntitlement`

## 10.13.0-beta.1 - 2024-03-14
* [#1360](https://github.com/stripe/stripe-ruby/pull/1360) Update generated code for beta
  - Add support for new resources `Billing.MeterEventAdjustment`, `Billing.MeterEvent`, and `Billing.Meter`
  - Add support for `create`, `deactivate`, `list`, `reactivate`, `retrieve`, and `update` methods on resource `Meter`
  - Add support for `create` method on resources `MeterEventAdjustment` and `MeterEvent`
  - Add support for `create` test helper method on resource `ConfirmationToken`
  - Add support for `add_lines`, `remove_lines`, and `update_lines` methods on resource `Invoice`

## 10.12.0-beta.1 - 2024-02-29
* [#1343](https://github.com/stripe/stripe-ruby/pull/1343) Add a helper to add a beta version
* [#1352](https://github.com/stripe/stripe-ruby/pull/1352) Update generated code for beta
  Release specs are identical.
* [#1350](https://github.com/stripe/stripe-ruby/pull/1350) Update generated code for beta
* [#1341](https://github.com/stripe/stripe-ruby/pull/1341) Update generated code for beta
  - Remove support for resource `Entitlements.Event`

## 10.11.0-beta.1 - 2024-02-22
* [#1335](https://github.com/stripe/stripe-ruby/pull/1335) Update generated code for beta

## 10.10.0-beta.1 - 2024-02-16
* [#1328](https://github.com/stripe/stripe-ruby/pull/1328) Update generated code for beta
* [#1332](https://github.com/stripe/stripe-ruby/pull/1332) Update generated code for beta
  - Add support for `decrement_authorization` method on resource `PaymentIntent`

## 10.9.0-beta.1 - 2024-02-08
* [#1321](https://github.com/stripe/stripe-ruby/pull/1321) Update generated code for beta
  - Release specs are identical.

## 10.8.0-beta.1 - 2024-02-01
* [#1318](https://github.com/stripe/stripe-ruby/pull/1318) Update generated code for beta
  - Add support for new resources `Entitlements.Event` and `Entitlements.Feature`
  - Add support for `create` method on resource `Event`
  - Add support for `create` and `list` methods on resource `Feature`

## 10.7.0-beta.3 - 2024-01-25
* [#1307](https://github.com/stripe/stripe-ruby/pull/1307) Beta: report raw request usage
* [#1313](https://github.com/stripe/stripe-ruby/pull/1313) Update generated code for beta
  - Add support for `create_preview` method on resource `Invoice`

## 10.7.0-beta.2 - 2024-01-19
* [#1307](https://github.com/stripe/stripe-ruby/pull/1307) Beta: report raw request usage

## 10.7.0-beta.1 - 2024-01-12
* [#1305](https://github.com/stripe/stripe-ruby/pull/1305) Update generated code for beta
* [#1309](https://github.com/stripe/stripe-ruby/pull/1309) Update generated code for beta

## 10.6.0-beta.1 - 2024-01-04
* [#1302](https://github.com/stripe/stripe-ruby/pull/1302) Update generated code for beta
  - Updated stable APIs to the latest version

## 10.5.0-beta.1 - 2023-12-22
* [#1302](https://github.com/stripe/stripe-ruby/pull/1302) Update generated code for beta

## 10.4.0-beta.1 - 2023-12-14
Updated stable APIs to the latest version

## 10.3.0-beta.1 - 2023-11-30
* [#1298](https://github.com/stripe/stripe-ruby/pull/1298) Update generated code for beta

## 10.2.0-beta.1 - 2023-11-02
* [#1285](https://github.com/stripe/stripe-ruby/pull/1285) Update generated code for beta
* [#1287](https://github.com/stripe/stripe-ruby/pull/1287) Update generated code for beta
  - Add support for `attach_payment_intent` method on resource `Invoice`

## 10.1.0-beta.2 - 2023-10-26
* [#1285](https://github.com/stripe/stripe-ruby/pull/1285) Update generated code for beta
  - Add support for new resource `Margin`
  - Add support for `create`, `list`, `retrieve`, and `update` methods on resource `Margin`

## 10.1.0-beta.1 - 2023-10-17
This release changes the pinned API version to `2023-10-16`.

* [#1282](https://github.com/stripe/stripe-ruby/pull/1282) Update generated code for beta
* [#1284](https://github.com/stripe/stripe-ruby/pull/1284) Update generated code for beta
  - Update pinned API version to `2023-10-16`

## 9.5.0-beta.2 - 2023-10-12
* [#1280](https://github.com/stripe/stripe-ruby/pull/1280) Update generated code for beta
  - Add support for new resources `AccountNotice` and `Issuing.CreditUnderwritingRecord`
  - Add support for `list`, `retrieve`, and `update` methods on resource `AccountNotice`
  - Add support for `correct`, `create_from_application`, `create_from_proactive_review`, `list`, `report_decision`, and `retrieve` methods on resource `CreditUnderwritingRecord`

## 9.5.0-beta.1 - 2023-10-05
* [#1278](https://github.com/stripe/stripe-ruby/pull/1278) Update generated code for beta
  - Add support for `mark_draft` and `mark_stale` methods on resource `Quote`
  - Remove support for `draft_quote` and `mark_stale_quote` methods on resource `Quote`
  - Rename `preview_invoice_lines` to `list_preview_invoice_lines` on resource `Quote`

## 9.4.0-beta.3 - 2023-09-28
* [#1276](https://github.com/stripe/stripe-ruby/pull/1276) Update generated code for beta
  - Rename resources `Issuing.CardDesign` and `Issuing.CardBundle` to `Issuing.PersonalizationDesign` and `Issuing.PhysicalBundle`

## 9.4.0-beta.2 - 2023-09-21
* [#1273](https://github.com/stripe/stripe-ruby/pull/1273) Update generated code for beta

## 9.4.0-beta.1 - 2023-09-14
* Updated stable APIs to the latest version

## 9.3.0-beta.1 - 2023-09-07
* [#1252](https://github.com/stripe/stripe-ruby/pull/1252) Remove developer_message support
* [#1254](https://github.com/stripe/stripe-ruby/pull/1254) Update generated code for beta
  - Add support for `submit_card` test helper method on resource `Issuing.Card`
* [#1257](https://github.com/stripe/stripe-ruby/pull/1257) Update generated code for beta
* [#1259](https://github.com/stripe/stripe-ruby/pull/1259) Update generated code for beta
* [#1264](https://github.com/stripe/stripe-ruby/pull/1264) Update generated code for beta
  - Add support for new resources `QuotePreviewInvoice` and `QuotePreviewSchedule`
* [#1265](https://github.com/stripe/stripe-ruby/pull/1265) Update generated code for beta
  - Rename `Quote.preview_invoices` to `QuotePreviewInvoice.list` and `Quote.preview_schedules` to `QuotePreviewSchedules.list`
* [#1269](https://github.com/stripe/stripe-ruby/pull/1269) Update generated code for beta
  - Release specs are identical.
* [#1268](https://github.com/stripe/stripe-ruby/pull/1268) Update generated code for beta
  - Remove support for `submit_card` test helper method on resource `Issuing.Card`

## 9.2.0-beta.1 - 2023-08-31
* [#1265](https://github.com/stripe/stripe-ruby/pull/1265) Update generated code for beta
  - Rename `Quote.preview_invoices` to `QuotePreviewInvoice.list` and `Quote.preview_schedules` to `QuotePreviewSchedules.list`

## 9.0.0-beta.1 - 2023-08-24
This release changes the pinned API version to `2023-08-16`.

* [#1259](https://github.com/stripe/stripe-ruby/pull/1259) Update generated code for beta
* [#1264](https://github.com/stripe/stripe-ruby/pull/1264) Update generated code for beta
  - Add support for new resources `QuotePreviewInvoice` and `QuotePreviewSchedule`

## 8.8.0-beta.1 - 2023-08-10
* [#1257](https://github.com/stripe/stripe-ruby/pull/1257) Update generated code for beta
  - Updated stable APIs to the latest version

## 8.7.0-beta.3 - 2023-08-03
* [#1252](https://github.com/stripe/stripe-ruby/pull/1252) Remove developer_message support
* [#1254](https://github.com/stripe/stripe-ruby/pull/1254) Update generated code for beta
  - Add support for `submit_card` test helper method on resource `Issuing.Card`

## 8.7.0-beta.2 - 2023-07-28
* [#1246](https://github.com/stripe/stripe-ruby/pull/1246) Update generated code for beta
* [#1249](https://github.com/stripe/stripe-ruby/pull/1249) Update generated code for beta
* [#1251](https://github.com/stripe/stripe-ruby/pull/1251) Update generated code for beta
  - Add support for new resource `Tax.Form`
  - Add support for `list`, `pdf`, and `retrieve` methods on resource `Form`

## 8.7.0-beta.1 - 2023-07-13
* [#1239](https://github.com/stripe/stripe-ruby/pull/1239) Update generated code for beta
* [#1245](https://github.com/stripe/stripe-ruby/pull/1245) Update generated code for beta
  Release specs are identical.
* [#1243](https://github.com/stripe/stripe-ruby/pull/1243) Update generated code for beta
  - Add support for new resource `PaymentMethodConfiguration`
  - Add support for `create`, `list`, `retrieve`, and `update` methods on resource `PaymentMethodConfiguration`

## 8.6.0-beta.6 - 2023-06-22
* [#1229](https://github.com/stripe/stripe-ruby/pull/1229) Update generated code for beta
* [#1233](https://github.com/stripe/stripe-ruby/pull/1233) Update generated code for beta
* [#1237](https://github.com/stripe/stripe-ruby/pull/1237) Update generated code for beta
  - Add support for new resource `CustomerSession`
  - Add support for `create` method on resource `CustomerSession`

## 8.6.0-beta.5 - 2023-06-01
* [#1224](https://github.com/stripe/stripe-ruby/pull/1224) Handle developer message in preview error responses
* [#1228](https://github.com/stripe/stripe-ruby/pull/1228) Document raw_request
* [#1222](https://github.com/stripe/stripe-ruby/pull/1222) Update generated code for beta
* [#1227](https://github.com/stripe/stripe-ruby/pull/1227) Update generated code for beta

## 8.6.0-beta.4 - 2023-05-19
* [#1217](https://github.com/stripe/stripe-ruby/pull/1217) Add raw_request
* [#1214](https://github.com/stripe/stripe-ruby/pull/1214) Update generated code for beta
* [#1216](https://github.com/stripe/stripe-ruby/pull/1216) Update generated code for beta
* [#1220](https://github.com/stripe/stripe-ruby/pull/1220) Update generated code for beta
  - Add support for `subscribe` and `unsubscribe` methods on resource `FinancialConnections.Account`

## 8.6.0-beta.3 - 2023-04-17
* [#1210](https://github.com/stripe/stripe-ruby/pull/1210) , [#1212](https://github.com/stripe/stripe-ruby/pull/1212), [#1213](https://github.com/stripe/stripe-ruby/pull/1213) Add support for request signing
* [#1211](https://github.com/stripe/stripe-ruby/pull/1211) Update generated code for beta

## 8.6.0-beta.2 - 2023-04-13
* [#1205](https://github.com/stripe/stripe-ruby/pull/1205) Update generated code for beta
* [#1206](https://github.com/stripe/stripe-ruby/pull/1206) Update generated code for beta
  - Add support for `collect_payment_method` and `confirm_payment_intent` methods on resource `Terminal.Reader`

## 8.6.0-beta.1 - 2023-03-30
* [#1202](https://github.com/stripe/stripe-ruby/pull/1202) Update generated code for beta

## 8.5.0-beta.1 - 2023-03-23
* [#1194](https://github.com/stripe/stripe-ruby/pull/1194) Update generated code for beta (new)
  - Add support for new resources `Tax.CalculationLineItem` and `Tax.TransactionLineItem`
  - Add support for `collect_inputs` method on resource `Terminal.Reader`

## 8.4.0-beta.4 - 2023-03-16
* [#1188](https://github.com/stripe/stripe-ruby/pull/1188) Update generated code for beta (new)
  - Remove support for resources `Capital.FinancingOffer` and `Capital.FinancingSummary`
  - Remove support for `list`, `mark_delivered`, and `retrieve` methods on resource `FinancingOffer`
  - Remove support for `retrieve` method on resource `FinancingSummary`
* [#1189](https://github.com/stripe/stripe-ruby/pull/1189) Update generated code for beta (new)
  - Add support for `create_from_calculation` method on resource `Tax.Transaction`

## 8.4.0-beta.3 - 2023-03-09
* [#1184](https://github.com/stripe/stripe-ruby/pull/1184) API Updates for beta branch
  - Updated stable APIs to the latest version
  - Remove support for `list_transactions` method on resource `Tax.Transaction`

## 8.4.0-beta.2 - 2023-03-03
* [#1183](https://github.com/stripe/stripe-ruby/pull/1183) API Updates for beta branch
  - Updated stable APIs to the latest version
  - Add support for new resources `Issuing.CardBundle` and `Issuing.CardDesign`
  - Add support for `list` and `retrieve` methods on resource `CardBundle`
  - Add support for `list`, `retrieve`, and `update` methods on resource `CardDesign`

## 8.4.0-beta.1 - 2023-02-23
* [#1182](https://github.com/stripe/stripe-ruby/pull/1182) API Updates for beta branch
  - Updated stable APIs to the latest version

## 8.3.0-beta.1 - 2023-02-02
* [#1174](https://github.com/stripe/stripe-ruby/pull/1174) API Updates for beta branch
  - Updated stable APIs to the latest version
  - Add support for new resource `FinancialConnections.Transaction`
  - Add support for `list` method on resource `Transaction`

## 8.2.0-beta.3 - 2023-01-26
* [#1172](https://github.com/stripe/stripe-ruby/pull/1172) API Updates for beta branch
  - Updated stable APIs to the latest version
  - Add support for `list_transactions` method on resource `Tax.Transaction`

## 8.2.0-beta.2 - 2023-01-19
* [#1170](https://github.com/stripe/stripe-ruby/pull/1170) API Updates for beta branch
  - Updated stable APIs to the latest version
  - Add support for `Tax.Settings` resource.

## 8.2.0-beta.1 - 2023-01-12
* [#1167](https://github.com/stripe/stripe-ruby/pull/1167) API Updates for beta branch
  - Updated stable APIs to the latest version
  - Change `quote.draft_quote` implementation to from calling `POST /v1/quotes/{quote}/draft` to `POST /v1/quotes/{quote}/mark_draft`
  - Add support for `Tax::Register` resource

## 8.1.0-beta.4 - 2023-01-05
* [#1164](https://github.com/stripe/stripe-ruby/pull/1164) API Updates for beta branch
  - Updated stable APIs to the latest version
  - Add support for `mark_stale_quote` method on resource `Quote`

## 8.1.0-beta.3 - 2022-12-22
* [#1158](https://github.com/stripe/stripe-ruby/pull/1158) API Updates for beta branch
  - Updated stable APIs to the latest version
  - Move `TaxCalculation` and `TaxTransaction` to `Tax::Calculation` and `Tax::Transaction`.

## 8.1.0-beta.2 - 2022-12-15
* [#1156](https://github.com/stripe/stripe-ruby/pull/1156) API Updates for beta branch
  - Updated stable APIs to the latest version
  - Add support for new resources `TaxCalculation`, and `TaxTransaction`
  - Add support for `create` and `list_line_items` methods on resource `TaxCalculation`
  - Add support for `create_reversal`, `create`, and `retrieve` methods on resource `TaxTransaction`
* [#1155](https://github.com/stripe/stripe-ruby/pull/1155) API Updates for beta branch
  - Updated stable APIs to the latest version
  - Add support for new resource `QuoteLine`.

## 8.1.0-beta.1 - 2022-12-08
This release changes the pinned API version to `2022-11-15`.

* [#1146](https://github.com/stripe/stripe-ruby/pull/1146) API Updates for beta branch
  - Updated stable APIs to the latest version
* [#1153](https://github.com/stripe/stripe-ruby/pull/1153) API Updates for beta branch
  - Updated stable APIs to the latest version

## 7.2.0-beta.5 - 2022-11-02
* [#1135](https://github.com/stripe/stripe-ruby/pull/1135) API Updates for beta branch
  - Updated stable APIs to the latest version
* [#1139](https://github.com/stripe/stripe-ruby/pull/1139) API Updates for beta branch
  - Updated beta APIs to the latest stable version

## 7.2.0-beta.4 - 2022-10-07
* [#999](https://github.com/stripe/stripe-ruby/pull/999) DESCRIBE CHANGES HERE (try to use the same style, tense, etc. as the other entries)

## 7.2.0-beta.3 - 2022-09-26
* [#1129](https://github.com/stripe/stripe-ruby/pull/1129) API Updates for beta branch
  - Updated stable APIs to the latest version
  - Add `FinancingOffer`, `FinancingSummary` and `FinancingTransaction` resources.

## 7.2.0-beta.2 - 2022-08-26
* [#1127](https://github.com/stripe/stripe-ruby/pull/1127) API Updates for beta branch
  - Updated stable APIs to the latest version
  - Add support for the beta [Gift Card API](https://stripe.com/docs/gift-cards).

## 7.2.0-beta.1 - 2022-08-23
* [#1122](https://github.com/stripe/stripe-ruby/pull/1122) API Updates for beta branch
  - Updated stable APIs to the latest version
  - `Stripe-Version` beta headers are not pinned by-default and need to be manually specified, please refer to [beta SDKs README section](https://github.com/stripe/stripe-ruby/blob/master/README.md#beta-sdks)

## 7.1.0-beta.2 - 2022-08-11
* [#1113](https://github.com/stripe/stripe-ruby/pull/1113) API Updates for beta branch
  - Updated stable APIs to the latest version
  - Add `refund_payment` method to Terminal resource

## 7.1.0-beta.1 - 2022-08-03
* [#1107](https://github.com/stripe/stripe-ruby/pull/1107) API Updates for beta branch
  - Updated stable APIs to the latest version
  - Added the `Order` resource support

## 6.6.0-beta.1 - 2022-07-22
* [#1075](https://github.com/stripe/stripe-ruby/pull/1075) Use the generated API version
* [#1085](https://github.com/stripe/stripe-ruby/pull/1085) API Updates for beta branch
  - Updated stable APIs to the latest version
* [#1093](https://github.com/stripe/stripe-ruby/pull/1093) API Updates for beta branch
  - Include `server_side_confirmation_beta=v1` beta
  - Add `secretKeyConfirmation` to `PaymentIntent`
* [#1097](https://github.com/stripe/stripe-ruby/pull/1097) API Updates for beta branch
  - Updated stable APIs to the latest version
  - Add `SubscriptionSchedule.amend` method.
* [#1100](https://github.com/stripe/stripe-ruby/pull/1100) API Updates for beta branch
  - Updated stable APIs to the latest version
  - Add `QuotePhase` resource
