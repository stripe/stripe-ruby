---
title: API Updates for beta branch
pr_link: https://github.com/stripe/stripe-ruby/pull/1167
is_stripe_api_change: true
released_in_version: 8.2.0-beta.1
---

- Updated stable APIs to the latest version
- Change `quote.draft_quote` implementation to from calling `POST /v1/quotes/{quote}/draft` to `POST /v1/quotes/{quote}/mark_draft`
- Add support for `Tax::Register` resource
