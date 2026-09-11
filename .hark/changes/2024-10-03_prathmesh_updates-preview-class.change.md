---
title: Updates to the `Preview` class
pr_link: https://github.com/stripe/stripe-ruby/pull/1465
released_in_version: 13.1.0-beta.1
---

* Remove `Stripe::Preview`. Use `StripeClient#raw_request` instead (see below).
* Marked `Stripe.raw_request` and `Stripe.deserialize` as deprecated. Use `StripeClient#raw_request` and `StripeClient#deserialize` instead. In StripeClient, the params and opts parameters are passed as keyword arguments:
  ```ruby
  # Before
  resp = Stripe.raw_request(:post, "v1/charges", , {p1: "p1"}, {stripe_account: "acct_123"})
  charge = Stripe.deserialize(resp.data)

  # After
  client = StripeClient.new("sk_test_123")
  resp = client.raw_request(:post, "/v1/charges", params: {p1: "p1"}, opts: {stripe_account: "acct_123"})
  charge = client.deserialize(resp.data)
  ```
