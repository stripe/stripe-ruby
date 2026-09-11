---
title: Fix `StripeContext` hash key behavior
pr_link: https://github.com/stripe/stripe-ruby/pull/1959
released_in_version: 19.6.2
---

- Fixes `StripeContext` value hashing so equivalent contexts work interchangeably as `Hash` and `Set` keys.
