---
title: Update generated code for beta
pr_url: https://github.com/stripe/stripe-ruby/pull/1569
is_stripe_api_change: true
released_in_version: 15.1.0-beta.1
---

### Breaking changes
* Change type of `V2MoneyManagementReceivedDebit.status_transitions` from `an object` to `nullable(an object)`

### Additions
* Add support for new resources `Privacy::RedactionJobRootObjects`, `Privacy::RedactionJobValidationError`, and `Privacy::RedactionJob`
* Add support for `cancel`, `create`, `list`, `retrieve`, `run`, `update`, and `validate` methods on resource `RedactionJob`
* Add support for `list` and `retrieve` methods on resource `RedactionJobValidationError`
* Add support for `minority_owned_business_designation` on `Account::BusinessProfile`, `Account::CreateParams::BusinessProfile`, and `Account::UpdateParams::BusinessProfile`
* Add support for `export_tax_transactions` and `payment_disputes` on `AccountSession::CreateParams::Component`
* Add support for `wallet_options` on `CheckoutSession::CreateParams` and `CheckoutSession`
* Add support for `klarna` on `PaymentMethodDomain`
* Change type of `TaxCalculationLineItem.reference` from `nullable(string)` to `string`
* Add support for `in` on `TaxRegistration::CountryOption` and `TaxRegistration::CreateParams::CountryOption`
