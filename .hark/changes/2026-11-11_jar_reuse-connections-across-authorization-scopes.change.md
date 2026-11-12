---
title: Reuse connections across account and context scopes
pr_url: https://github.com/stripe/stripe-ruby/pull/2026
semver_level: patch
---

Account and context selectors no longer create separate connection pools when other configuration matches. Requests retain their own authorization headers, while proxy, TLS, certificate, and timeout differences still select separate pools.
