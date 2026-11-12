---
title: Keep API keys out of YAML dumps of clients and event notifications
semver_level: patch
---

`YAML.dump` of an `EventNotification`, `StripeClient`, or `APIRequestor` no longer includes API keys or proxy credentials. A notification restored from YAML keeps its fields but has no client, so `fetch_event` and `fetch_related_object` raise `Stripe::AuthenticationError`. Parse the original payload with `StripeClient#parse_event_notification` to make requests.
