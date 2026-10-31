---
title: Keep custom search limits in the request body and use dedicated v2 search helpers
semver_level: patch
---

Handwritten v2 search services should call `request_v2_search` instead of `request` to send `limit` in the initial URL query. Ordinary requests no longer infer search behavior from the path.
