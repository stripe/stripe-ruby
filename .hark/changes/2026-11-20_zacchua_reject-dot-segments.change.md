---
title: Reject request paths with a "." or ".." segment, such as an ID of ".", before sending the request
semver_level: patch
jira_tickets_closed:
- RUN_DEVSDK-3747
---

Passing an ID of `.` or `..` to a method such as `client.v1.checkout.sessions.retrieve` or `Stripe::Checkout::Session.retrieve` now raises `ArgumentError` without sending a request. Proxies or servers that normalize URL paths could otherwise route such a request to a different endpoint; for example, `/v1/customers/../payment_methods/pm_123` becomes `/v1/payment_methods/pm_123`. Paths passed to `raw_request` are checked the same way, including percent-encoded forms such as `%2E`.
