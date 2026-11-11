---
title: Omit API keys from Marshal and YAML dumps of StripeObjects
semver_level: major
---

Marshal and YAML dumps of StripeObjects no longer preserve API keys. Before making requests through a restored object, call `reattach_api_key(api_key)`. This also reattaches API keys to nested objects.

See the [v21 migration guide](https://github.com/stripe/stripe-ruby/blob/master/.hark/migration-guides/v21.md#api-keys-are-no-longer-preserved-in-marshal-and-yaml-dumps-of-stripeobjects) for details.
