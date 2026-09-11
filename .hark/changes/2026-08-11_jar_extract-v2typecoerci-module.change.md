---
title: Extract V2TypeCoercion module for bidirectional field encoding
pr_link: https://github.com/stripe/stripe-ruby/pull/1926
released_in_version: 19.6.0
---

- Fixes V2 `int64_string` response fields so they return `Integer` (to match the field's Sorbet type) instead of `String`
