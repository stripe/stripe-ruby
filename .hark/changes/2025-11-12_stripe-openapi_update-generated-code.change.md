---
title: Update generated code for private-preview
pr_link: https://github.com/stripe/stripe-ruby/pull/1723
is_stripe_api_change: true
released_in_version: 17.3.0-alpha.2
---

* Remove support for resource `V2::Tax::AutomaticRule`
* Remove support for `create`, `deactivate`, `find`, `retrieve`, and `update` methods on resource `V2::Tax::AutomaticRule`
* Add support for `self_reported_income` and `self_reported_monthly_housing_payment` on `AccountCreateParams::Individual`, `AccountPersonCreateParams`, `AccountPersonUpdateParams`, `AccountUpdateParams::Individual`, `Person`, `TokenCreateParams::Account::Individual`, and `TokenCreateParams::Person`
* Add support for `billing_schedules` and `phase_effective_at` on `Quote::SubscriptionDataOverride`, `Quote::SubscriptionDatum`, `QuoteCreateParams::SubscriptionDataOverride`, `QuoteCreateParams::SubscriptionDatum`, `QuoteUpdateParams::SubscriptionDataOverride`, and `QuoteUpdateParams::SubscriptionDatum`
* Add support for `bill_from` on `Subscription::BillingSchedule`
* Add support for `amendment_end` and `line_ends_at` on `Subscription::BillingSchedule::BillUntil`
