---
title: Update generated code for private-preview
pr_url: https://github.com/stripe/stripe-ruby/pull/1868
is_breaking: true
is_stripe_api_change: true
released_in_version: 19.3.0-alpha.1
---

* Change type of `Billing::AlertCreateParams::SpendThreshold.group_by` from `literal('pricing_plan_subscription')` to `enum('billing_cadence'|'pricing_plan_subscription')`
* ⚠️ Change type of `Billing::Alert::SpendThreshold.group_by` from `literal('pricing_plan_subscription')` to `enum('billing_cadence'|'pricing_plan_subscription')`
* Change `DelegatedCheckout::RequestedSession.affiliate_attributions` to be required
* Add support for `wechat_pay` on `Invoice::PaymentSetting::PaymentMethodOption`, `InvoiceCreateParams::PaymentSetting::PaymentMethodOption`, `InvoiceUpdateParams::PaymentSetting::PaymentMethodOption`, `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption`, `Subscription::PaymentSetting::PaymentMethodOption`, `SubscriptionCreateParams::PaymentSetting::PaymentMethodOption`, and `SubscriptionUpdateParams::PaymentSetting::PaymentMethodOption`
* Add support for `gift_card` on `PaymentIntent::PaymentMethodOption`, `PaymentIntentConfirmParams::PaymentMethodOption`, `PaymentIntentCreateParams::PaymentMethodOption`, and `PaymentIntentUpdateParams::PaymentMethodOption`
* Add support for `payment_details` on `PaymentIntentCreateParams::PaymentsOrchestration`
* Add support for `enabled` on `PaymentIntent::PaymentDetail::Benefit::FrMealVoucher` and `SetupIntent::SetupDetail::Benefit::FrMealVoucher`
* ⚠️ Remove support for `login_failed`, `registration_failed`, `registration_success`, and `type` on `Radar::CustomerEvaluationUpdateParams`
* ⚠️ Remove support for `latest_version` on `V2::Billing::LicenseFee`, `V2::Billing::PricingPlan`, and `V2::Billing::RateCard`
* ⚠️ Remove support for `service_interval_count` and `service_interval` on `V2::Billing::LicenseFee` and `V2::Billing::RateCard`
* Add support for `debit_agreement` on `V2::MoneyManagement::ReceivedCredit::StripeBalancePayment`
* Add support for `canonical_path` on `EventsV2CoreHealthTrafficVolumeDropFiringEvent` and `EventsV2CoreHealthTrafficVolumeDropResolvedEvent`
* Add support for event notifications `V2CoreHealthElementsErrorFiringEvent`, `V2CoreHealthElementsErrorResolvedEvent`, `V2CoreHealthInvoiceCountDroppedFiringEvent`, and `V2CoreHealthInvoiceCountDroppedResolvedEvent`
