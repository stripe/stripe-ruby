---
title: Update generated code for private-preview
pr_link: https://github.com/stripe/stripe-ruby/pull/1806
is_breaking: true
is_stripe_api_change: true
released_in_version: 18.5.0-alpha.3
---

* Add support for new resource `Radar::IssuingAuthorizationEvaluation`
* Add support for `create` method on resource `Radar::IssuingAuthorizationEvaluation`
* ⚠️ Rename `affiliate_attributions` to `affiliate_attribution` on `DelegatedCheckout::RequestedSessionConfirmParams` and `DelegatedCheckout::RequestedSessionCreateParams`
* Add support for `amount_to_counter` on `Dispute`
* Add support for `frozen_fields` on `InvoiceItem`
* Add support for `consumer` on `V2::Core::Account::Configuration::CardCreator::Capability`, `V2::Core::Account::Identity::Attestation::TermsOfService::CardCreator`, `V2::Core::AccountCreateParams::Configuration::CardCreator::Capability`, `V2::Core::AccountCreateParams::Identity::Attestation::TermsOfService::CardCreator`, `V2::Core::AccountUpdateParams::Configuration::CardCreator::Capability`, and `V2::Core::AccountUpdateParams::Identity::Attestation::TermsOfService::CardCreator`
* Add support for `fifth_third` on `V2::Core::Account::Configuration::CardCreator::Capability::Commercial`, `V2::Core::Account::Identity::Attestation::TermsOfService::CardCreator::Commercial`, `V2::Core::AccountCreateParams::Configuration::CardCreator::Capability::Commercial`, `V2::Core::AccountCreateParams::Identity::Attestation::TermsOfService::CardCreator::Commercial`, `V2::Core::AccountUpdateParams::Configuration::CardCreator::Capability::Commercial`, and `V2::Core::AccountUpdateParams::Identity::Attestation::TermsOfService::CardCreator::Commercial`
* Add support for `prepaid_card` on `V2::Core::Account::Configuration::CardCreator::Capability::Commercial::CrossRiverBank`, `V2::Core::Account::Identity::Attestation::TermsOfService::CardCreator::Commercial::CrossRiverBank`, `V2::Core::AccountCreateParams::Configuration::CardCreator::Capability::Commercial::CrossRiverBank`, `V2::Core::AccountCreateParams::Identity::Attestation::TermsOfService::CardCreator::Commercial::CrossRiverBank`, `V2::Core::AccountUpdateParams::Configuration::CardCreator::Capability::Commercial::CrossRiverBank`, and `V2::Core::AccountUpdateParams::Identity::Attestation::TermsOfService::CardCreator::Commercial::CrossRiverBank`
* Add support for `payment_method_data` on `V2::Payments::OffSessionPaymentCreateParams`
* Change `V2::Payments::OffSessionPaymentCreateParams.payment_method` to be optional
