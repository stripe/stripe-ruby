---
title: Update generated code for private-preview
pr_url: https://github.com/stripe/stripe-ruby/pull/1957
is_stripe_api_change: true
released_in_version: 19.7.0-alpha.3
---

* Add support for `customer_tax_exemption` on `Tax::Calculation::ShippingCost::TaxBreakdown`, `Tax::CalculationLineItem::TaxBreakdown`, and `Tax::Transaction::ShippingCost::TaxBreakdown`
* Add support for `backdate_start_date` on `Checkout::Session::Item::Subscription` and `Checkout::SessionCreateParams::Item::Subscription`
* Add support for `signals` on `Identity::VerificationReport`
* Add support for `network_response_code` on `Issuing::Authorization::RequestHistory`
* Add support for `unit_cost_precision` on `PaymentIntentAmountDetailsLineItem`, `PaymentIntentCaptureParams::AmountDetail::LineItem`, `PaymentIntentConfirmParams::AmountDetail::LineItem`, `PaymentIntentCreateParams::AmountDetail::LineItem`, `PaymentIntentDecrementAuthorizationParams::AmountDetail::LineItem`, `PaymentIntentIncrementAuthorizationParams::AmountDetail::LineItem`, and `PaymentIntentUpdateParams::AmountDetail::LineItem`
* Change `PaymentIntent.payment_record` to be required
* Add support for `active` on `ProductCatalog::TrialOfferListParams`
* Change `Subscription::TrialSetting::EndBehavior.billing_cycle_anchor` to be required
