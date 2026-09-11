---
title: "Always return the result of APIResource#refresh in APIResource.retrieve"
pr_link: https://github.com/stripe/stripe-ruby/pull/1473
released_in_version: 13.0.2
---

* Fix bug where we would not return the mutated `self` object when calling `APIResource.retrieve`
