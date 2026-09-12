---
title: Fix v2 typed params sending nil values on GET requests
pr_url: https://github.com/stripe/stripe-ruby/pull/1788
released_in_version: 18.4.0-alpha.4
---

- Fixes a bug on V2 GET where we were serializing `nil` query parameters as empty strings. The server would return an error in such cases like `'limit: Expected an Integer value got: .'`
