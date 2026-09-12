---
title: Build SDK w/ V2 OpenAPI spec
pr_url: https://github.com/stripe/stripe-ruby/pull/1651
is_breaking: true
released_in_version: 16.0.0
---

- ⚠️ The delete methods for v2 APIs (the ones in the `StripeClient.v2` namespace) now return a `V2DeletedObject` which has the id of the object that has been deleted and a string representing the type of the object that has been deleted.
- ⚠️ Deeply nested param hashes with no properties no longer have classes generated for them. Instead, they're typed as `T::Hash[String, T.untyped]`. Because there were no params, it's unlikely you were using these classes.
