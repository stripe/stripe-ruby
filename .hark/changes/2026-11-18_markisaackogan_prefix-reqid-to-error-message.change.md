---
title: Prefix request ID to the error message as `[req_xxx]` if a request ID exists
---

`StripeError#message` is now the same as `StripeError#to_s`, and returns `(Status N) [req_xxx] message` (the status and request ID are included only when present). Previously `#message` returned the raw message, and `#to_s` returned `(Status N) (Request req_xxx) message`.
