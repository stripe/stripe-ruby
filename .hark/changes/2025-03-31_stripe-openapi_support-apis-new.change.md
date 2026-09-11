---
title: Support for APIs in the new API version 2025-03-31.basil
pr_link: https://github.com/stripe/stripe-ruby/pull/1543
is_breaking: true
is_stripe_api_change: true
released_in_version: 14.0.0
---

This release changes the pinned API version to `2025-03-31.basil`.

### ⚠️ Breaking changes  due to changes in the Stripe API

Please review details for the breaking changes and alternatives in the [Stripe API changelog](https://docs.stripe.com/changelog/basil) before upgrading.

* Remove support for resources `SubscriptionItemUsageRecordSummary` and `SubscriptionItemUsageRecord`
* Remove support for `create` method on resource `SubscriptionItemUsageRecord`
* Remove support for `list` method on resource `SubscriptionItemUsageRecordSummary`
* Remove support for `upcomingLines` and `upcoming` methods on resource `Invoice`

### ⚠️ Other breaking changes in the SDK
* [#1553](https://github.com/stripe/stripe-ruby/pull/1553) Remove public idempotent_replayed? method
  * ⚠️ Remove the `idempotent_replayed?` method on `StripeError`
    * The information is accessible indirectly via the raw response headers, `StripeResponse.http_headers`. For example, use `resource.last_response.http_headers['Idempotent-Replayed']`

### Additions to the Stripe API

* Add support for new resource `InvoicePayment`
* Add support for `list` and `retrieve` methods on resource `InvoicePayment`
