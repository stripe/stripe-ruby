---
title: Import global configuration for options not available on StripeClient options
pr_url: https://github.com/stripe/stripe-ruby/pull/1512
released_in_version: 13.3.1
---

* Fixes bug where `StripeClient` was not falling back to global options for options that are not available to be set per-client
