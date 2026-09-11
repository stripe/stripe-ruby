---
title: Discard the connection when a request is interrupted
pr_link: https://github.com/stripe/stripe-ruby/pull/1924
released_in_version: 19.5.0
---

- Fix connection reuse after a request is interrupted by a non-StandardError exception (e.g. from rack-timeout), which could cause subsequent requests to receive a previous request's response
