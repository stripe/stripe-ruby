---
title: API Updates
pr_url: https://github.com/stripe/stripe-ruby/pull/1056
is_breaking: true
is_stripe_api_change: true
released_in_version: 6.0.0
---

Major version release. The [migration guide](https://github.com/stripe/stripe-ruby/wiki/Migration-Guide-for-v6) contains more information.

(⚠️ = breaking changes):
* ⚠️ Replace the legacy `Order` API with the new `Order` API.
  * New methods: `cancel`, `list_line_items`, `reopen`, and `submit`
  * Removed methods: `pay` and `return_order`
  * Removed resources: `OrderItem` and `OrderReturn`
* ⚠️ Rename `FinancialConnections::Account.refresh` to `FinancialConnections::Account.refresh_account
