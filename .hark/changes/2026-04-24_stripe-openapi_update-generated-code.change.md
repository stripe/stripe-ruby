---
title: Update generated code for beta
pr_url: https://github.com/stripe/stripe-ruby/pull/1854
is_breaking: true
is_stripe_api_change: true
released_in_version: 19.2.0-beta.2
---

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
