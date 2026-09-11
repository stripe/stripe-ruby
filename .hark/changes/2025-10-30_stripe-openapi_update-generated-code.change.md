---
title: Update generated code for private-preview
pr_link: https://github.com/stripe/stripe-ruby/pull/1719
is_stripe_api_change: true
released_in_version: 17.2.0-alpha.2
---

* Change `DelegatedCheckout::RequestedSessionUpdateParams::LineItemDetail.quantity` to be required
* Add support for `payment_method_preview` on `DelegatedCheckout::RequestedSession`
* Add support for `order_id` on `DelegatedCheckout::RequestedSession::OrderDetail`
* Add support for `lead` on `V2::Core::Account::Configuration::CardCreator::Capability::Commercial`, `V2::Core::Account::Identity::Attestation::TermsOfService::CardCreator::Commercial`, `V2::Core::AccountCreateParams::Configuration::CardCreator::Capability::Commercial`, `V2::Core::AccountCreateParams::Identity::Attestation::TermsOfService::CardCreator::Commercial`, `V2::Core::AccountUpdateParams::Configuration::CardCreator::Capability::Commercial`, and `V2::Core::AccountUpdateParams::Identity::Attestation::TermsOfService::CardCreator::Commercial`
* Add support for `global_account_holder` on `V2::Core::Account::Identity::Attestation::TermsOfService::CardCreator::Commercial`, `V2::Core::AccountCreateParams::Identity::Attestation::TermsOfService::CardCreator::Commercial`, and `V2::Core::AccountUpdateParams::Identity::Attestation::TermsOfService::CardCreator::Commercial`
