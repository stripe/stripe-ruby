---
title: Add `StripeContext` object
pr_url: https://github.com/stripe/stripe-ruby/pull/1664
semver_level: major
released_in_version: 16.0.0
---

- Add the `StripeContext` class. Previously you could set the stripe_context to only a string value. Now you can use the new class as well
- ⚠️ Change `EventNotification` (formerly known as `ThinEvent`)'s `context` property from `string` to `StripeContext`
