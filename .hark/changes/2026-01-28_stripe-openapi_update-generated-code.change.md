---
title: Update generated code for beta
pr_link: https://github.com/stripe/stripe-ruby/pull/1762
is_stripe_api_change: true
released_in_version: 18.4.0-beta.1
---

* Add support for new resource `FinancialConnections::Authorization`
* Add support for `retrieve` method on resource `FinancialConnections::Authorization`
* Add support for `detach_payment` method on resource `Invoice`
* Remove support for `cancel`, `list_line_items`, and `reopen` methods on resource `Order`
* Remove support for `attach_cadence` method on resource `Subscription`
* Add support for `additional_files` and `site` on `Account::Setting::PaypayPayment`, `AccountCreateParams::Setting::PaypayPayment`, and `AccountUpdateParams::Setting::PaypayPayment`
* Remove support for `capital` on `Account::Setting`
* Change type of `Charge::PaymentMethodDetail::StripeBalance.source_type`, `ConfirmationToken::PaymentMethodPreview::StripeBalance.source_type`, `PaymentAttemptRecord::PaymentMethodDetail::StripeBalance.source_type`, `PaymentMethod::StripeBalance.source_type`, and `PaymentRecord::PaymentMethodDetail::StripeBalance.source_type` from `enum('bank_account'|'card'|'fpx')` to `nullable(enum('bank_account'|'card'|'fpx'))`
* Add support for `authorization` and `status_details` on `FinancialConnections::Account`
* Add support for `relink_options` on `FinancialConnections::SessionCreateParams` and `FinancialConnections::Session`
* Change `FinancialConnections::SessionCreateParams.account_holder` to be optional
* Add support for `relink_result` on `FinancialConnections::Session`
* Remove support for `billing_cadence` on `InvoiceCreatePreviewParams`, `SubscriptionCreateParams`, `SubscriptionUpdateParams`, and `Subscription`
* Remove support for `billing_cadence_details` on `Invoice::Parent` and `QuotePreviewInvoice::Parent`
* Add support for `car_rental_data`, `flight_data`, and `lodging_data` on `PaymentIntent::PaymentDetail`
* Change `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption.payto` to be required
* Add support for `alternative_reference` on `V2::Core::Vault::GbBankAccount`, `V2::Core::Vault::UsBankAccount`, and `V2::MoneyManagement::PayoutMethod`
* Add support for `account_holder_address` and `account_holder_name` on `V2::MoneyManagement::FinancialAddress::Credential::UsBankAccount`
* Add support for `fingerprint` on `V2::MoneyManagement::PayoutMethod::Card`
