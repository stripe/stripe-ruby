---
title: Change retry logic
pr_url: https://github.com/stripe/stripe-ruby/pull/1374
released_in_version: 11.0.0
---

* This release changes the pinned API version to `2024-04-10`. Please read the [API Changelog](https://docs.stripe.com/changelog/2024-04-10) and carefully review the API changes before upgrading.

### ⚠️ Breaking changes

* When no `x-stripe-should-retry` header is set in the response, the library now retries all requests with `status >= 500`, not just non-POST methods.
