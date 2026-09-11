---
title: Remove list method in child resources
pr_link: https://github.com/stripe/stripe-ruby/pull/1317
released_in_version: 10.7.0
---

* Removes list method mixin from child resources, as these methods always return `InvalidRequestError` and never succeed
