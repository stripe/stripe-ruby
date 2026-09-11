---
title: Remove expanded instance variables after a resource has been updated
pr_link: https://github.com/stripe/stripe-ruby/pull/1698
is_breaking: true
released_in_version: 17.0.0
---

- ⚠️ Removes dynamically added instance variables on subsequent non-expanded updates to a resource that had previously been expanded. For example,
```ruby
# expand `payments` field on an invoice
invoice = Stripe::Invoice.retrieve(id: 'in_123', expand: ['payments'])

# `pay` invoice without expanding `payments`, so that field would have stale data
# Use `expand` to keep `payments` like this: `invoice.pay(expand: ['payments'])`
invoice.pay

# This is now nil instead of a stale Hash
invoice.payments
```
