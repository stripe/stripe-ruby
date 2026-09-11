---
title: "Deprecate StripeClient#request"
pr_link: https://github.com/stripe/stripe-ruby/pull/1415
released_in_version: 11.7.0
---

* Add deprecation warning for `StripeClient#request`. This helper method will be removed in a future major version. To access response objects, use the `last_response` property on the returned resource instead. Refer to [Accessing a response object](https://github.com/stripe/stripe-ruby?tab=readme-ov-file#accessing-a-response-object) in the README for usage details.
