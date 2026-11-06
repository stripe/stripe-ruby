---
title: "Fix account scoping on Event#fetch_related_object"
pr_url: https://github.com/stripe/stripe-ruby/pull/2022
semver_level: patch
jira_tickets_closed:
- RUN_DEVSDK-3694
---

Directly-retrieved `Event` objects (as opposed to `EventNotification`s built from a webhook) kept falling back to the retaining client's own `stripe_account`, rather than the event's own `context`, when fetching a related object. `fetch_related_object` now routes through a requestor scoped to the event's context, discarding any stale account, mirroring how `EventNotification` already scopes its client.
