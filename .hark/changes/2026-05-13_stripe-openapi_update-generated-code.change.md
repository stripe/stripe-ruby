---
title: Update generated code for private-preview
pr_url: https://github.com/stripe/stripe-ruby/pull/1863
is_breaking: true
is_stripe_api_change: true
released_in_version: 19.2.0-alpha.5
---

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
