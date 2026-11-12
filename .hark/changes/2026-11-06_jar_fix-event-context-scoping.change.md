---
title: "Fix stripe_account and stripe_context scoping on Event#fetch_related_object"
pr_url: https://github.com/stripe/stripe-ruby/pull/2022
semver_level: patch
jira_tickets_closed:
- RUN_DEVSDK-3694
released_in_version: 21.0.0
---

When fetching a related object, directly-retrieved `Event` objects used the retaining client's own `stripe_context` rather than the event's `stripe_context`. `fetch_related_object` now routes through a requestor scoped to the event's context.  This mirrors how `EventNotification` scopes its client.
