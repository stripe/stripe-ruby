---
title: Fix InvoiceLineItem parent class
pr_url: https://github.com/stripe/stripe-ruby/pull/1536
released_in_version: 13.5.0
---

* Fix bug where `Stripe::InvoiceLineItem` had the incorrect parent class, making it error when `update` was called
