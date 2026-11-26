---
title: Preserve request state when restoring Stripe resources
semver_level: patch
---

After you reattach an API key, individual resources restored from Marshal or YAML keep the original refresh parameters. YAML dumps also preserve the resource's account, context, and API mode. Re-fetch resources saved before this release so new dumps capture the missing state.
