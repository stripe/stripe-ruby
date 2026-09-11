---
title: Removed Request signing authenticator
pr_link: https://github.com/stripe/stripe-ruby/pull/1588
released_in_version: 15.1.0-beta.2
---

- Removed `RequestSigningAuthenticator` class as request signing is not supported by Stripe APIs yet. This allows us to remove the dependency on base64
