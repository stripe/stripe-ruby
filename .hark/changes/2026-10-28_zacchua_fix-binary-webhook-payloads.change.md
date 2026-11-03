---
title: Accept binary webhook payloads with non-ASCII characters
pr_url: https://github.com/stripe/stripe-ruby/pull/2011
semver_level: patch
jira_tickets_closed:
- RUN_DEVSDK-3469
---

- Parse UTF-8 webhook payloads tagged as binary in `construct_event_without_verification` and `parse_event_notification_without_verification`.
