---
title: Update generated code for private-preview
pr_link: https://github.com/stripe/stripe-ruby/pull/1763
is_stripe_api_change: true
released_in_version: 18.2.0-alpha.3
---

* Add support for `risk_details` on `DelegatedCheckout::RequestedSession`
* Remove support for `description`, `images`, and `name` on `DelegatedCheckout::RequestedSession::LineItemDetail`
* Add support for `name` on `ProductCatalog::TrialOfferCreateParams` and `ProductCatalog::TrialOffer`
* Add support for `login_failed` and `registration_failed` on `Radar::AccountEvaluation::Event` and `Radar::AccountEvaluationUpdateParams`
* Change type of `Radar::AccountEvaluationUpdateParams.type` from `literal('registration_succeeded')` to `enum('login_failed'|'login_succeeded'|'registration_failed'|'registration_succeeded')`
* Add support for `tracking_details` on `V2::MoneyManagement::OutboundPayment`
* Add support for `paper_check` on `V2::MoneyManagement::OutboundPayment::DeliveryOption` and `V2::MoneyManagement::OutboundPaymentCreateParams::DeliveryOption`
* Add support for event notification `V2CoreAccountIncludingFutureRequirementsUpdatedEvent` with related object `V2::Core::Account`
