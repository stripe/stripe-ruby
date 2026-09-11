---
title: Rename `object_id` in V2::Core::EventService::ListParams to `object_id_`
pr_link: https://github.com/stripe/stripe-ruby/pull/1574
is_breaking: true
section: Breaking change
released_in_version: 15.0.0
---

* ⚠️ Change name of parameter from `object_id` to `object_id_` on `Stripe::V2::Core::EventService::ListParams` to avoid conflict with Ruby native attribute, as found in https://github.com/stripe/stripe-ruby/issues/1567
* This is a no-op unless you are using this specific parameter that was introduced in `v14.0.0`
