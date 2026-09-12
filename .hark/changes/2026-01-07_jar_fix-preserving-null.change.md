---
title: Fix preserving null param values when calling v2 APIs
pr_url: https://github.com/stripe/stripe-ruby/pull/1758
released_in_version: 18.4.0-beta.1
---

- Nil input params are now preserved when calling V2 APIs.  Add additional tests for nil when calling V2 services you do not accidentally include an unintentional nil value.  V1 API calls are not affected (nil values are stripped from params hashes in V1).
