---
title: "Fix APIResource#retrieve bug not returning instance of custom resources"
pr_link: https://github.com/stripe/stripe-ruby/pull/1476
released_in_version: 13.1.0
---

* Fix bug in APIResource#refresh and APIResource#retrieve where they returned an instance of `StripeObject` for custom resources. They should now return the instance of the custom resource.
