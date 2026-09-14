---
title: Update generated code
pr_url: https://github.com/stripe/stripe-ruby/pull/1777
released_in_version: 18.3.1
---

* References to Stripe objects from *Param class fields are now fully qualified in `stripe.rbi`.  This ensures that the class fields in .rbi files generated with tapioca are able to refer to the correct type.
