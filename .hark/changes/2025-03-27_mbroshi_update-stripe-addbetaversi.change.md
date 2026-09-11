---
title: Update Stripe.add_beta_version
pr_link: https://github.com/stripe/stripe-ruby/pull/1557
released_in_version: 14.1.0-beta.1
---

* `stripe.add_beta_version` will use the highest version number used for a beta feature instead of raising an `Error` on a conflict as it had done previously.
