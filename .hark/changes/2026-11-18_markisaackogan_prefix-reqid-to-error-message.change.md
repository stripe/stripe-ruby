---
title: Prefix request ID to the error message as `[req_xxx]` if a request ID exists
---

`StripeError#message` (via `to_s`) now returns `(Status N) [req_xxx] message` instead of `(Status N) (Request req_xxx) message`. `StripeError#message` no longer returns the raw message; use the new `StripeError#user_message` for the message without the prefix.
