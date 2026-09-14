---
title: Fix OAuth authorize response type defaulting
pr_url: https://github.com/stripe/stripe-ruby/pull/1956
released_in_version: 19.6.1
---

- Fixes `OAuthService#authorize_url` to default `response_type` to `code` without overwriting an explicit value.
