---
title: Pass requestor to all deserialized objects including lists
pr_link: https://github.com/stripe/stripe-ruby/pull/1507
released_in_version: 13.3.0
---

* Fixes bug where `StripeObject` retrieved from lists could not be used to make requests, such as `refresh`
