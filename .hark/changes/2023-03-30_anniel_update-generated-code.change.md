---
title: Update generated code
pr_url: https://github.com/stripe/stripe-ruby/pull/1203
is_stripe_api_change: true
released_in_version: 8.5.0
---

* Remove support for `create` method on resource `Tax.Transaction`
  * This is not a breaking change, as this method was deprecated before the Tax Transactions API was released in favor of the `create_from_calculation` method.
