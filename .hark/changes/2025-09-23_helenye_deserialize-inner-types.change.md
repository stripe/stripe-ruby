---
title: Deserialize inner types in resources for more detailed types
pr_url: https://github.com/stripe/stripe-ruby/pull/1652
is_breaking: true
released_in_version: 16.0.0
---

* ⚠️ Deserialize inner classes, so inner class types will now reflect generated inner classes
  * For example, `Stripe::Customer.address` is deserialized to specific a `Stripe::Customer::Address` class instead of the generic `Stripe::StripeObject`, as is suggested by the static type annotations
  * This should not affect any normal use cases of the SDK, as inner types remain children of `Stripe::StripeObject`
