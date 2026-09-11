---
title: Update generated code for private-preview
pr_link: https://github.com/stripe/stripe-ruby/pull/1900
is_breaking: true
is_stripe_api_change: true
released_in_version: 19.4.0-alpha.3
---

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
