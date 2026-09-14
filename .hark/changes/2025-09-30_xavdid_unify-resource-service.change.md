---
title: Unify resource and service method parameters into one class
pr_url: https://github.com/stripe/stripe-ruby/pull/1670
semver_level: major
released_in_version: 16.0.0
---

* ⚠️ Resource and service request parameter types have been moved to the top-level and are shared.
  * For example, `Stripe::Account::CreateParams` and `Stripe::AccountService::CreateParams` have moved to `Stripe::AccountCreateParams`
  * This change only affects users who use Sorbet types for parameters
