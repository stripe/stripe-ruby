---
title: Update generated code for private-preview
pr_link: https://github.com/stripe/stripe-ruby/pull/1770
is_stripe_api_change: true
released_in_version: 18.3.0-alpha.1
---

* Remove support for `pause` method on resource `Subscription`
* Change type of `Quote::SubscriptionDataOverride.phase_effective_at` and `Quote::SubscriptionDatum.phase_effective_at` from `enum('billing_period_start'|'phase_start')` to `nullable(enum('billing_period_start'|'phase_start'))`
