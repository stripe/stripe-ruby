---
title: Pull in V2 FinancialAccount changes for June release
pr_link: https://github.com/stripe/stripe-ruby/pull/1625
is_stripe_api_change: true
released_in_version: 15.4.0-beta.2
---

* Add support for `close` and `create` methods on resource `V2::MoneyManagement::FinancialAccount`
* Add support for `storer` on `V2::Core::Account::Configuration`, `V2::Core::Account::CreateParams::Configuration`, and `V2::Core::Account::UpdateParams::Configuration`
* Add support for `status_details` on `V2::MoneyManagement::FinancialAccount`
* Add support for `status` on `V2::MoneyManagement::FinancialAccount::ListParams`
* Add support for thin events `V2CoreAccountIncludingConfigurationStorerCapabilityStatusUpdatedEvent` and `V2CoreAccountIncludingConfigurationStorerUpdatedEvent` with related object `V2::Core::Account`
* Add support for error types `AlreadyExistsError` and `NonZeroBalanceError`
