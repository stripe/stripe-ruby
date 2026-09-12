---
title: Add `raw_request`
pr_url: https://github.com/stripe/stripe-ruby/pull/1431
released_in_version: 12.2.0
---

- Adds the ability to make raw requests to the Stripe API, by providing an HTTP method and url. This is an alternative to using `Stripe::APIResource.request(...)` to make custom requests, which is discouraged and will be broken in a future major version.
