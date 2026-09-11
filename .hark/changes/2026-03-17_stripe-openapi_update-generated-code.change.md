---
title: Update generated code for private-preview
pr_link: https://github.com/stripe/stripe-ruby/pull/1818
is_stripe_api_change: true
released_in_version: 18.5.0-alpha.4
---

* Add support for `simulate_crypto_deposit` test helper method on resource `PaymentIntent`
* Add support for `deposit_options` and `mode` on `PaymentIntent::PaymentMethodOption::Crypto`, `PaymentIntentConfirmParams::PaymentMethodOption::Crypto`, `PaymentIntentCreateParams::PaymentMethodOption::Crypto`, and `PaymentIntentUpdateParams::PaymentMethodOption::Crypto`
* Add support for `crypto_display_details` on `PaymentIntent::NextAction`
