---
title: Update generated code
pr_url: https://github.com/stripe/stripe-ruby/pull/2016
semver_level: minor
is_stripe_api_change: true
released_in_version: 20.2.0-alpha.2
---

* Add support for new resources `Tax::Certificate`, `Tax::FormCorrection`, `V2::Extend::ObjectDefinitionVersion`, and `V2::Extend::ObjectDefinition`
* Add support for `create`, `delete`, `list`, and `retrieve` methods on resource `Tax::Certificate`
* Add support for `create` method on resource `Tax::Form`
* Add support for `list` and `retrieve` methods on resources `V2::Extend::ObjectDefinitionVersion` and `V2::Extend::ObjectDefinition`
* Add support for `bills`, `financial_account_rewards`, `financial_accounts_transactions`, `financial_accounts`, `network_cost_passthrough_report`, and `recipients_list` on `AccountSessionCreateParams::Component`
* Add support for `business_profile_management` on `AccountSessionCreateParams::Component`, `V2::Core::AccountSession::Component`, and `V2::Core::AccountSessionCreateParams::Component`
* Add support for `export_tax_transactions`, `product_tax_code_selector`, and `tax_threshold_monitoring` on `AccountSession::Component`
* Add support for `aeon_pay`, `au_pay`, `dbarai`, and `merpay` on `Charge::PaymentMethodDetail`, `ConfirmationToken::PaymentMethodPreview`, `ConfirmationTokenCreateParams::PaymentMethodDatum`, `PaymentAttemptRecord::PaymentMethodDetail`, `PaymentIntentConfirmParams::PaymentMethodDatum`, `PaymentIntentCreateParams::PaymentMethodDatum`, `PaymentIntentUpdateParams::PaymentMethodDatum`, `PaymentMethodCreateParams`, `PaymentMethod`, `PaymentRecord::PaymentMethodDetail`, `SetupIntentConfirmParams::PaymentMethodDatum`, `SetupIntentCreateParams::PaymentMethodDatum`, and `SetupIntentUpdateParams::PaymentMethodDatum`
* Add support for `funding_sources` on `Charge::PaymentMethodDetail::Card::Wallet::Link` and `Charge::PaymentMethodDetail::Link`
* Add support for `fleet` on `Charge::PaymentMethodDetail::CardPresent`, `ConfirmationToken::PaymentMethodPreview::Card::GeneratedFrom::PaymentMethodDetail::CardPresent`, `PaymentAttemptRecord::PaymentMethodDetail::CardPresent`, `PaymentMethod::Card::GeneratedFrom::PaymentMethodDetail::CardPresent`, and `PaymentRecord::PaymentMethodDetail::CardPresent`
* Add support for `fingerprint` on `Charge::PaymentMethodDetail::Paypay`, `PaymentAttemptRecord::PaymentMethodDetail::Paypay`, `PaymentRecord::PaymentMethodDetail::Paypay`, and `SetupAttempt::PaymentMethodDetail::Paypay`
* Add support for `custom_payment_method_options` on `Checkout::SessionCreateParams`
* Add support for `stripe_balance` on `Checkout::Session::PaymentMethodOption` and `Checkout::SessionCreateParams::PaymentMethodOption`
* Add support for `setup_future_usage` on `Checkout::Session::PaymentMethodOption::Paypay` and `Checkout::SessionCreateParams::PaymentMethodOption::Paypay`
* Add support for `reason_details` and `reason` on `CustomerCustomerTaxExemptionCreateParams` and `CustomerTaxExemption`
* Add support for `tax_code_group` on `CustomerCustomerTaxExemptionCreateParams::Me` and `CustomerTaxExemption::Me`
* Change `Dispute::Evidence.appeal` to be required
* Add support for `target_date` on `Invoice::PaymentSetting::PaymentMethodOption::SepaDebit`, `InvoiceCreateParams::PaymentSetting::PaymentMethodOption::SepaDebit`, and `InvoiceUpdateParams::PaymentSetting::PaymentMethodOption::SepaDebit`
* Change `Issuing::Card::Shipping.delivered_at` to be required
* Change `Issuing::Card::Shipping.shipped_at` to be required
* Add support for `payment_method_details` on `PaymentAttemptRecordReportAuthenticatedParams`
* Change type of `PaymentAttemptRecordReportGuaranteedParams::PaymentMethodDetail.type` and `PaymentRecordReportPaymentAttemptGuaranteedParams::PaymentMethodDetail.type` from `literal('card')` to `enum('card'|'us_bank_account')`
* Add support for `dispute_details` on `PaymentAttemptRecord` and `PaymentRecord`
* Add support for `ev_charging` and `fleet_data` on `PaymentIntentAmountDetailsLineItem::PaymentMethodOption::CardPresent`, `PaymentIntentCaptureParams::AmountDetail::LineItem::PaymentMethodOption::CardPresent`, `PaymentIntentConfirmParams::AmountDetail::LineItem::PaymentMethodOption::CardPresent`, `PaymentIntentCreateParams::AmountDetail::LineItem::PaymentMethodOption::CardPresent`, `PaymentIntentDecrementAuthorizationParams::AmountDetail::LineItem::PaymentMethodOption::CardPresent`, `PaymentIntentIncrementAuthorizationParams::AmountDetail::LineItem::PaymentMethodOption::CardPresent`, and `PaymentIntentUpdateParams::AmountDetail::LineItem::PaymentMethodOption::CardPresent`
* Add support for `financial_connections` on `PaymentIntent::PaymentMethodOption::BacsDebit`, `PaymentIntentConfirmParams::PaymentMethodOption::BacsDebit`, `PaymentIntentCreateParams::PaymentMethodOption::BacsDebit`, and `PaymentIntentUpdateParams::PaymentMethodOption::BacsDebit`
* Add support for `payment_details` on `PaymentIntent::PaymentMethodOption::CardPresent` and `PaymentIntent::PaymentMethodOption::Card`
* Add support for `rakuten_pay` on `PaymentMethodConfigurationCreateParams`, `PaymentMethodConfigurationUpdateParams`, and `PaymentMethodConfiguration`
* Add support for `sepa_debit` on `Radar::PaymentEvaluation::PaymentDetail::MoneyMovementDetail` and `Radar::PaymentEvaluationCreateParams::PaymentDetail::MoneyMovementDetail`
* Add support for `card_testing` on `Radar::PaymentEvaluation::Signal`
* Add support for `payment_method` on `RefundCreateParams`
* Add support for `payment_record` on `Refund`
* Add support for `bizum` and `upi` on `Refund::DestinationDetail`
* Add support for `tax_invoice_month` on `Reporting::ReportRun::Parameter`
* Add support for `radar_options` on `SetupIntentConfirmParams`, `SetupIntentCreateParams`, and `SetupIntent`
* Add support for `billing_group` on `SubscriptionCreateParams`, `SubscriptionListParams`, `SubscriptionUpdateParams`, and `Subscription`
* Add support for `network_details` on `Treasury::InboundTransfer::FailureDetail`, `Treasury::OutboundPayment::ReturnedDetail`, and `Treasury::OutboundTransfer::ReturnedDetail`
* Add support for event notification `V2ExtendObjectDefinitionCreatedEvent` with related object `V2::Extend::ObjectDefinition`
* Add support for event notification `V2ExtendObjectDefinitionVersionCreatedEvent` with related object `V2::Extend::ObjectDefinitionVersion`
