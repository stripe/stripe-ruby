---
title: "Fix stripe_context being dropped on Marshal round-trips and stale stripe_account leaking through when context is set"
semver_level: patch
jira_tickets_closed:
- RUN_DEVSDK-3691
---

- `stripe_context` now persists on fetched objects (previously excluded from `OPTS_PERSISTABLE`), so it survives a `Marshal.dump`/`Marshal.load` round-trip (e.g. a Rails cache) and follow-up calls.
- `stripe_account` is now dropped whenever `stripe_context` is also present, since the two are mutually exclusive on the wire (sending both is rejected). Previously a stale `stripe_account` could ride along with a correct `stripe_context`.
