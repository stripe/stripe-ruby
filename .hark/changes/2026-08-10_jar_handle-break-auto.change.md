---
title: Handle break in auto-paging blocks
pr_link: https://github.com/stripe/stripe-ruby/pull/1932
released_in_version: 19.5.0
---

- Rescues `LocalJumpError` to prevent crash when calling `break` inside an `auto_paging_each`
