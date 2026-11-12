---
title: Omit API keys from Marshal and YAML dumps of StripeObjects
semver_level: major
released_in_version: 21.0.0
---

Marshal and YAML dumps of StripeObjects no longer preserve API keys. Before making requests through a restored object, call `reattach_api_key(api_key)`. This also reattaches API keys to nested objects.

See the [v21 migration guide](https://github.com/stripe/stripe-ruby/wiki/Migration-guide-for-v21#api-keys-are-no-longer-preserved-in-marshal-and-yaml-dumps-of-stripeobjects) for details.
