---
title: Update generated code
pr_url: https://github.com/stripe/stripe-ruby/pull/1947
semver_level: major
is_stripe_api_change: true
---

* Add support for new resource `Radar::BillingEvaluation`
* Add support for `create` method on resource `Radar::BillingEvaluation`
* Add support for `list` method on resource `Reserve::Plan`
* Change `Tax::CalculationLineItem.performance_location` and `TaxCode::Requirement.performance_location` to be required
* Change `Account::BusinessProfile.specified_commercial_transactions_act_url` to be required
* Add support for `after_expiration` on `BillingPortal::SessionCreateParams` and `BillingPortal::Session`
* Add support for `setup_credential_usage` on `Charge::PaymentMethodDetail::Card`, `PaymentIntent::PaymentMethodOption::Card`, `PaymentIntentConfirmParams::PaymentMethodOption::Card`, `PaymentIntentCreateParams::PaymentMethodOption::Card`, `PaymentIntentUpdateParams::PaymentMethodOption::Card`, `SetupIntent::PaymentMethodOption::Card`, `SetupIntentConfirmParams::PaymentMethodOption::Card`, `SetupIntentCreateParams::PaymentMethodOption::Card`, and `SetupIntentUpdateParams::PaymentMethodOption::Card`
* Add support for `stored_credential_usage` on `Charge::PaymentMethodDetail::Card`, `PaymentAttemptRecord::PaymentMethodDetail::Card`, `PaymentIntent::PaymentMethodOption::Card`, `PaymentIntentConfirmParams::PaymentMethodOption::Card`, `PaymentIntentCreateParams::PaymentMethodOption::Card`, `PaymentIntentUpdateParams::PaymentMethodOption::Card`, and `PaymentRecord::PaymentMethodDetail::Card`
* Add support for `expires_at` on `Checkout::SessionCreateParams::PaymentMethodOption::Blik::MandateOption`, `Subscription::PaymentSetting::PaymentMethodOption::Blik::MandateOption`, `SubscriptionCreateParams::PaymentSetting::PaymentMethodOption::Blik::MandateOption`, and `SubscriptionUpdateParams::PaymentSetting::PaymentMethodOption::Blik::MandateOption`
* ⚠️ Remove support for `expires_after` on `Checkout::SessionCreateParams::PaymentMethodOption::Blik::MandateOption`, `Subscription::PaymentSetting::PaymentMethodOption::Blik::MandateOption`, `SubscriptionCreateParams::PaymentSetting::PaymentMethodOption::Blik::MandateOption`, and `SubscriptionUpdateParams::PaymentSetting::PaymentMethodOption::Blik::MandateOption`
* Add support for `payment_intent_data` on `Checkout::SessionUpdateParams`
* Add support for `appeal` on `Dispute::Evidence` and `DisputeUpdateParams::Evidence`
* Add support for `livemode` on `FxQuote`
* ⚠️ Remove support for `capture_method` on `PaymentIntentConfirmParams::PaymentMethodOption::Paypay`, `PaymentIntentCreateParams::PaymentMethodOption::Paypay`, and `PaymentIntentUpdateParams::PaymentMethodOption::Paypay`
* Add support for `active` on `ProductCatalog::TrialOfferCreateParams`, `ProductCatalog::TrialOfferListParams`, and `ProductCatalog::TrialOffer`
* Add support for `nickname` on `ProductCatalog::TrialOfferCreateParams` and `ProductCatalog::TrialOffer`
* ⚠️ Remove support for `name` on `ProductCatalog::TrialOfferCreateParams` and `ProductCatalog::TrialOffer`
* ⚠️ Change `ProductCatalog::TrialOffer::EndBehavior.transition` to be optional
* Change `Product.tax_details` to be required
* Add support for `status_details` on `QuotePreviewInvoice`
* Add support for `company_details` and `reference` on `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption::Billie`
* Add support for `pause_schedules` on `QuotePreviewSubscriptionSchedule`
* Add support for `destination` on `Reserve::Hold`, `Reserve::Plan`, and `Reserve::Release`
* Add support for `manual_release` on `Reserve::Plan`
* Change `SubscriptionItem.current_trial` to be required
* Change `Subscription::TrialSetting::EndBehavior.billing_cycle_anchor` to be required
* Change `TaxCode.requirements` to be required
