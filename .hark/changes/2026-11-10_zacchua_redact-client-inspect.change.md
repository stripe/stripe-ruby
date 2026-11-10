---
title: Keep API keys out of the inspect and as_json output of clients and event notifications
semver_level: patch
jira_tickets_closed:
- RUN_DEVSDK-3701
---

`inspect` on `StripeClient`, `StripeConfiguration`, `APIRequestor`, event notification handlers, and `EventNotification` no longer includes API keys, webhook secrets, or proxy credentials, so passing these objects to `Logger`, `p`, or `pp` doesn't write credentials to logs. `EventNotification#as_json` now omits the internal client, so ActiveSupport's `to_json` no longer includes the API key.
