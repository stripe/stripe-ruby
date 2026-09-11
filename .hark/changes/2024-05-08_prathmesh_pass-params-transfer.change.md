---
title: Pass params to transfer reversal
pr_link: https://github.com/stripe/stripe-ruby/pull/1399
released_in_version: 11.4.0
---

* Allow `Stripe::Transfer.retrieve_reversal()` to accept a params hash as the third argument, followed by opts. No changes to existing calls are necessary, but in a future major version this method will be updated to only accept params as the first argument. Fixes [#1393](https://github.com/stripe/stripe-ruby/issues/1393)
