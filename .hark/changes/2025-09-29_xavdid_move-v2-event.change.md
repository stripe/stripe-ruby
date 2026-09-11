---
title: Move `V2.Event` API resources to `V2.Core.Events`
pr_link: https://github.com/stripe/stripe-ruby/pull/1677
is_breaking: true
released_in_version: 16.0.0
---

- ⚠️ Move `Stripe::V2::Event` and `Stripe::V2::EventDestination` to `Stripe::V2::Core::Event` and `Stripe::V2::Core::EventDestination` respectively. They now correctly match their API path 
