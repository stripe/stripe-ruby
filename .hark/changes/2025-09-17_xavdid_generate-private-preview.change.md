---
title: generate private-preview SDK w/ mid Sept changes
pr_link: https://github.com/stripe/stripe-ruby/pull/1654
is_stripe_api_change: true
released_in_version: 15.6.0-alpha.3
---

* Add support for `retrieve` method on resource `V2::Core::ClaimableSandbox`
* Add support for `month_of_year` on `V2::Billing::Cadence::BillingCycle::Month` and `V2::Billing::Cadence::CreateParams::BillingCycle::Month`
* Add support for `claimed_at`, `expires_at`, `sandbox_details`, and `status` on `V2::Core::ClaimableSandbox`
* Remove support for `api_keys` on `V2::Core::ClaimableSandbox`
* Change type of `V2::Core::ClaimableSandbox.claim_url` from `string` to `nullable(string)`
* Add support for `will_activate_at` and `will_cancel_at` on `V2::Billing::PricingPlanSubscription::ServicingStatusTransition` and `V2::Billing::RateCardSubscription::ServicingStatusTransition`
* Add support for `category` and `priority` on `V2::Billing::ServiceAction::CreateParams::CreditGrantPerTenant`, `V2::Billing::ServiceAction::CreateParams::CreditGrant`, `V2::Billing::ServiceAction::CreditGrantPerTenant`, and `V2::Billing::ServiceAction::CreditGrant`
* Change `V2::Billing::LicenseFee::UpdateParams.display_name`  to be optional
* Add support for `invoices` on `EventsV2BillingCadenceBilledEvent`
* Add support for thin events `V2CoreClaimableSandboxClaimedEvent`, `V2CoreClaimableSandboxExpiredEvent`, `V2CoreClaimableSandboxExpiringEvent`, and `V2CoreClaimableSandboxSandboxDetailsOwnerAccountUpdatedEvent` with related object `V2::Core::ClaimableSandbox`
* Remove support for thin event `V2BillingCadenceErroredEvent` with related object `V2::Billing::Cadence`
