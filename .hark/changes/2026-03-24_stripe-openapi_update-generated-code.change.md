---
title: Update generated code for private-preview
pr_url: https://github.com/stripe/stripe-ruby/pull/1822
is_breaking: true
is_stripe_api_change: true
released_in_version: 19.1.0-alpha.1
---

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
