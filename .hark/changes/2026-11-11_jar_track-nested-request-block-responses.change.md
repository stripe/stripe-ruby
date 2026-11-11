---
title: Support nested request blocks and track responses across requestors
pr_url: https://github.com/stripe/stripe-ruby/pull/2026
semver_level: minor
---

Request blocks return the last response produced in that block, including requests through another client or a resource bound to a different requestor. Nested blocks track their own responses, including when they use the same requestor. Request routing continues to use each resource or client’s configured credentials and scope.
