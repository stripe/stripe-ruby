---
title: add/adjust event parsing helpers
pr_link: https://github.com/stripe/stripe-ruby/pull/1918
released_in_version: 19.5.0
---

- Added methods that return their respective `Event`/`EventNotification` class instances without verifying authenticity. Use them when you've previously verified an event (e.g. you verified, put the event in a queue, and are now processing). Supports events from [AWS EventBridge](https://docs.stripe.com/event-destinations/eventbridge) and [Azure Event Grid](https://docs.stripe.com/event-destinations/eventgrid) natively.
  - `Webhook#construct_event_without_verification(payload)`
  - `StripeClient#parse_event_notification_without_verification(payload)`
