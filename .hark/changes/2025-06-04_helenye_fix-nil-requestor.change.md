---
title: Fix `nil` requestor in `Webhook.construct_event` to allow for event data refresh
pr_url: https://github.com/stripe/stripe-ruby/pull/1617
released_in_version: 15.2.1
---

* Fix bug where `Event` constructed from `Webhook.construct_event` could not be refreshed due to a `nil` APIRequestor
  * Raised in https://github.com/stripe/stripe-ruby/issues/1616
