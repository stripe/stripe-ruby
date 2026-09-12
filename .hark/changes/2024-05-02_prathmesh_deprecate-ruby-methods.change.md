---
title: Deprecate Ruby methods based on OpenAPI spec
pr_url: https://github.com/stripe/stripe-ruby/pull/1392
released_in_version: 11.3.0
---

- Mark as deprecated the `approve` and `decline` methods in `lib/stripe/resources/issuing/authorization.rb`. Instead, [respond directly to the webhook request to approve an authorization](https://stripe.com/docs/issuing/controls/real-time-authorizations#authorization-handling).
