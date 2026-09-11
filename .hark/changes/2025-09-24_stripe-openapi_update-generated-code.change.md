---
title: Update generated code for beta
pr_link: https://github.com/stripe/stripe-ruby/pull/1662
is_stripe_api_change: true
released_in_version: 16.1.0-beta.1
---

* Add support for new resources `V2::Billing::BillSettingVersion`, `V2::Billing::BillSetting`, `V2::Billing::Cadence`, `V2::Billing::CollectionSettingVersion`, `V2::Billing::CollectionSetting`, and `V2::Billing::Profile`
* Add support for `create`, `list`, `retrieve`, and `update` methods on resources `V2::Billing::BillSetting`, `V2::Billing::CollectionSetting`, and `V2::Billing::Profile`
* Add support for `list` and `retrieve` methods on resources `V2::Billing::BillSettingVersion` and `V2::Billing::CollectionSettingVersion`
* Add support for `cancel`, `create`, `list`, `retrieve`, and `update` methods on resource `V2::Billing::Cadence`
* Add support for `profile` on `V2::Core::Account::CreateParams::Default`, `V2::Core::Account::Default`, and `V2::Core::Account::UpdateParams::Default`
* Add support for `i_p` on `V2::Core::Account::CreateParams::Identity::Attestation::TermsOfService::Account`, `V2::Core::Account::CreateParams::Identity::Attestation::TermsOfService::Storer`, `V2::Core::Account::Identity::Attestation::DirectorshipDeclaration`, `V2::Core::Account::Identity::Attestation::OwnershipDeclaration`, `V2::Core::Account::Identity::Attestation::TermsOfService::Account`, `V2::Core::Account::Identity::Attestation::TermsOfService::Storer`, `V2::Core::Account::Identity::Individual::AdditionalTermsOfService::Account`, `V2::Core::Account::UpdateParams::Identity::Attestation::TermsOfService::Account`, `V2::Core::Account::UpdateParams::Identity::Attestation::TermsOfService::Storer`, `V2::Core::Person::AdditionalTermsOfService::Account`, `V2::Core::Person::CreateParams::AdditionalTermsOfService::Account`, and `V2::Core::Person::UpdateParams::AdditionalTermsOfService::Account`
* Remove support for `ip` on `V2::Core::Account::CreateParams::Identity::Attestation::TermsOfService::Account`, `V2::Core::Account::CreateParams::Identity::Attestation::TermsOfService::Storer`, `V2::Core::Account::Identity::Attestation::DirectorshipDeclaration`, `V2::Core::Account::Identity::Attestation::OwnershipDeclaration`, `V2::Core::Account::Identity::Attestation::TermsOfService::Account`, `V2::Core::Account::Identity::Attestation::TermsOfService::Storer`, `V2::Core::Account::Identity::Individual::AdditionalTermsOfService::Account`, `V2::Core::Account::UpdateParams::Identity::Attestation::TermsOfService::Account`, `V2::Core::Account::UpdateParams::Identity::Attestation::TermsOfService::Storer`, `V2::Core::Person::AdditionalTermsOfService::Account`, `V2::Core::Person::CreateParams::AdditionalTermsOfService::Account`, and `V2::Core::Person::UpdateParams::AdditionalTermsOfService::Account`
* Remove support for `doing_business_as`, `product_description`, and `url` on `V2::Core::Account::CreateParams::Identity::BusinessDetail`, `V2::Core::Account::Identity::BusinessDetail`, and `V2::Core::Account::UpdateParams::Identity::BusinessDetail`
* Add support for `settlement_currency` on `V2::MoneyManagement::FinancialAddress`
* Add support for `sepa_bank_account` on `V2::MoneyManagement::FinancialAddress::Credential` and `V2::MoneyManagement::ReceivedCredit::BankTransfer`
* Add support for `amount_details` and `payments_orchestration` on `V2::Payments::OffSessionPayment::CreateParams` and `V2::Payments::OffSessionPayment`
* Add support for `retry_policy` on `V2::Payments::OffSessionPayment::CreateParams::RetryDetail` and `V2::Payments::OffSessionPayment::RetryDetail`
* Change type of `V2::MoneyManagement::OutboundPaymentQuote::FxQuote.lock_duration` from `literal('five_minutes')` to `enum('five_minutes'|'none')`
* Change type of `V2::MoneyManagement::OutboundPaymentQuote::FxQuote.lock_expires_at` from `DateTime` to `nullable(DateTime)`
* Add support for `origin_type` on `V2::MoneyManagement::ReceivedCredit::BankTransfer`
* Remove support for `payment_method_type` on `V2::MoneyManagement::ReceivedCredit::BankTransfer`
* Add support for `mandate_data` and `payment_method_options` on `V2::Payments::OffSessionPayment::CreateParams`
* Add support for `type` on `V2::MoneyManagement::FinancialAddress::CreateParams`
* Remove support for `currency` on `V2::MoneyManagement::FinancialAddress::CreateParams`
* Add support for thin event `V2BillingBillSettingUpdatedEvent` with related object `V2::Billing::BillSetting`
* Add support for error type `RateLimitError`
