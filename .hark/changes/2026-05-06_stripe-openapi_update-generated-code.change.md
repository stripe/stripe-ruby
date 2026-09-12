---
title: Update generated code for private-preview
pr_url: https://github.com/stripe/stripe-ruby/pull/1861
is_stripe_api_change: true
released_in_version: 19.2.0-alpha.4
---

* Add support for new resource `PaymentLocation`
* Add support for `create`, `delete`, `retrieve`, and `update` methods on resource `PaymentLocation`
* Add support for `protections` on `AccountCreateParams::Capability::CardPayment`, `AccountUpdateParams::Capability::CardPayment`, and `Capability`
* Add support for `gift_card` on `ConfirmationToken::PaymentMethodPreview`, `ConfirmationTokenCreateParams::PaymentMethodDatum`, `PaymentIntentConfirmParams::PaymentMethodDatum`, `PaymentIntentCreateParams::PaymentMethodDatum`, `PaymentIntentUpdateParams::PaymentMethodDatum`, `PaymentMethodCreateParams`, `PaymentMethod`, `SetupIntentConfirmParams::PaymentMethodDatum`, `SetupIntentCreateParams::PaymentMethodDatum`, `SetupIntentUpdateParams::PaymentMethodDatum`, and `SharedPayment::GrantedToken::PaymentMethodDetail`
* Add support for `metadata` on `DelegatedCheckout::RequestedSessionConfirmParams`
* Add support for `credited_items` on `InvoiceItem::ProrationDetail`
* Add support for `network_lifecycle` on `Issuing::Dispute`
* Add support for `status_details` on `Subscription`
