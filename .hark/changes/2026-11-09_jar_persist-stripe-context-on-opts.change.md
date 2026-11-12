---
title: "Preserve resource authorization scope across Marshal round-trips and event-related requests"
semver_level: patch
jira_tickets_closed:
- RUN_DEVSDK-3691
---

Resources retain their account and context when restored from a new `Marshal.dump`, including resources fetched from thin event notifications. Restoring an unscoped resource clears the loading process's account and context defaults. Full events bind to their payload's context when constructed, so related-object requests and subsequent mutations use that scope.

Resources copy account and context selectors so mutating caller-provided strings cannot change their retained scope.

Existing Marshal cache entries continue to load using the legacy behavior. Their original scope may already be missing, so clear cached SDK objects and re-fetch them after upgrading to benefit from this fix. Caching resource IDs together with their explicit context and reconstructing them through a scoped client is also supported.
