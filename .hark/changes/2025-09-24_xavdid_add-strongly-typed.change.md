---
title: Add strongly typed EventNotifications
pr_url: https://github.com/stripe/stripe-ruby/pull/1650
is_breaking: true
released_in_version: 16.0.0
---

We've overhauled how V2 Events are handled in the SDK! This approach should provide a lot more information at authoring and compile time, leading to more robust integrations. As part of this process, there are a number of changes to be aware of.
- Added matching `EventNotification` classes to every v2 `Event`
  - For example, there's now a `V1BillingMeterErrorReportTriggeredEventNotification` to match the existing `V1BillingMeterErrorReportTriggeredEvent`
  - Each notification class defines a `fetch_event()` method to retrieve its corresponding event
  - For events with related objects, there's a `fetch_related_object()` method that performs the API call and casts the response to the correct type on both the `EventNotification` and `Event`.
- ⚠️ Rename function `StripeClient.parse_thin_event` to `StripeClient.parse_event_notification` and remove the `Stripe::ThinEvent` class.
    - This function now returns a `Stripe::V2::Core::EventNotification` (which is the shared base class that all of the more specific `Stripe::Event::*EventNotification` classes  share) instead of `Stripe::ThinEvent`. When applicable, these event notifications will have the `relatedObject` property and a `fetch_related_object()` function. They also have a `fetch_event()` method to retrieve their corresponding `Stripe::Events::*Event` instance.
    - If you parse an event the SDK doesn't have types for (e.g. it's newer than the SDK you're using), you'll get an instance of `Stripe::Events::UnknownEventNotification` instead of a more specific type. It has both the `related_object` property and the `fetch_related_object()` function (but they may be/return `nil`)
- ⚠️ Move all Event Classes into the `Events` module
  - For example, `Stripe::V1BillingMeterErrorReportTriggeredEvent` is now `Stripe::Events::V1BillingMeterErrorReportTriggeredEvent`
