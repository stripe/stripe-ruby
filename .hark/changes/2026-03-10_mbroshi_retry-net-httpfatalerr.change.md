---
title: Retry on Net::HTTPFatalError
pr_url: https://github.com/stripe/stripe-ruby/pull/1811
released_in_version: 18.4.2
---

- Fixes a bug where `Net::HTTPFatalError` errors were being thrown and not retried (unlike other 5xx responses from the Stripe API)
