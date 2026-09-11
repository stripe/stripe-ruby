---
title: Removed deprecated `delete` method on `Subscription` resource. Please use `cancel` method instead.
is_breaking: true
section: ⚠️ Removed
released_in_version: 8.0.0
---

```ruby
# before
Stripe::Subscription::delete("sub_12345")

# after
Stripe::Subscription::cancel("sub_12345")
```
