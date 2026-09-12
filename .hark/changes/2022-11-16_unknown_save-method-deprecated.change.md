---
title: The `save` method is deprecated. Prefer the static `update` method that doesn't require retrieval of the resource to update it.
section: Deprecated
released_in_version: 8.0.0
---

``` ruby
# before
refund = Stripe::Refund.retrieve("re_123")
refund.description = "Refund description"
refund.save

# after
Stripe::Refund.update("re_123", description: "Refund description")
```
