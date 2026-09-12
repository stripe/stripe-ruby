---
title: Update generated code for private-preview
pr_url: https://github.com/stripe/stripe-ruby/pull/1697
is_stripe_api_change: true
released_in_version: 17.1.0-alpha.1
---

* Add support for new resource `PaymentMethodBalance`
* Add support for `check_balance` method on resource `PaymentMethod`
* Add support for `benefits` on `Card`, `Charge::PaymentMethodDetail::Card`, `ConfirmationToken::PaymentMethodPreview::Card`, and `PaymentMethod::Card`
* Add support for `benefit` on `PaymentIntent::PaymentDetail`, `PaymentIntentConfirmParams::PaymentDetail`, `PaymentIntentCreateParams::PaymentDetail`, and `PaymentIntentUpdateParams::PaymentDetail`
* Add support for `setup_details` on `SetupIntentConfirmParams`, `SetupIntentCreateParams`, `SetupIntentUpdateParams`, and `SetupIntent`
* Add support for `card_creator` on `V2::Core::Account::Configuration`, `V2::Core::Account::Identity::Attestation::TermsOfService`, `V2::Core::AccountCreateParams::Configuration`, `V2::Core::AccountCreateParams::Identity::Attestation::TermsOfService`, `V2::Core::AccountUpdateParams::Configuration`, and `V2::Core::AccountUpdateParams::Identity::Attestation::TermsOfService`
* Add support for thin events `V2CoreAccountIncludingConfigurationCardCreatorCapabilityStatusUpdatedEvent` and `V2CoreAccountIncludingConfigurationCardCreatorUpdatedEvent` with related object `V2::Core::Account`
* Remove support for thin events `V1CustomerDiscountCreatedEvent`, `V1CustomerDiscountDeletedEvent`, and `V1CustomerDiscountUpdatedEvent` with related object `Discount`
