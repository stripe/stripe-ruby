---
title: Update generated code for private-preview
pr_link: https://github.com/stripe/stripe-ruby/pull/1793
is_stripe_api_change: true
released_in_version: 18.5.0-alpha.1
---

* Add support for new resource `AccountSignals`
* Add support for `retrieve` method on resource `AccountSignals`
* Add support for `aggregation_period`, `group_by`, and `triggered_at` on `Billing::AlertTriggered`
* Add support for `external_account_collection` on `AccountLinkCreateParams::CollectionOption`
* Add support for `funding_source` on `ApplicationFee`
* Change `DelegatedCheckout::RequestedSessionConfirmParams::PaymentMethodDatum::BillingDetail::Address.line1`, `DelegatedCheckout::RequestedSessionCreateParams::FulfillmentDetail::Address.line1`, `DelegatedCheckout::RequestedSessionCreateParams::PaymentMethodDatum::BillingDetail::Address.line1`, `DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetail::Address.line1`, and `DelegatedCheckout::RequestedSessionUpdateParams::PaymentMethodDatum::BillingDetail::Address.line1` to be optional
* Add support for `hosted` and `ui_mode` on `FinancialConnections::SessionCreateParams` and `FinancialConnections::Session`
* Add support for `url` on `FinancialConnections::Session`
* Add support for `billing_cycle_anchor` on `SubscriptionCreateParams::TrialSetting::EndBehavior` and `SubscriptionUpdateParams::TrialSetting::EndBehavior`
