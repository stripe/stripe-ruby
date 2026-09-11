---
title: Update generated code
pr_link: https://github.com/stripe/stripe-ruby/pull/1566
is_stripe_api_change: true
released_in_version: 15.1.0
---

* Add support for `minority_owned_business_designation` on `Account::BusinessProfile`, `Account::CreateParams::BusinessProfile`, and `Account::UpdateParams::BusinessProfile`
* Add support for `registration_date` on `Account::Company`, `Account::CreateParams::Company`, `Account::UpdateParams::Company`, and `Token::CreateParams::Account::Company`
* Add support for `us_cfpb_data` on `Account::CreateParams`, `Account::UpdateParams`, `AccountPerson::CreateParams`, `AccountPerson::UpdateParams`, `Person`, and `Token::CreateParams::Person`
* Add support for `tax_id` on `Charge::BillingDetail`, `ConfirmationToken::CreateParams::PaymentMethodDatum::BillingDetail`, `ConfirmationToken::PaymentMethodPreview::BillingDetail`, `PaymentIntent::ConfirmParams::PaymentMethodDatum::BillingDetail`, `PaymentIntent::CreateParams::PaymentMethodDatum::BillingDetail`, `PaymentIntent::UpdateParams::PaymentMethodDatum::BillingDetail`, `PaymentMethod::BillingDetail`, `PaymentMethod::CreateParams::BillingDetail`, `PaymentMethod::UpdateParams::BillingDetail`, `SetupIntent::ConfirmParams::PaymentMethodDatum::BillingDetail`, `SetupIntent::CreateParams::PaymentMethodDatum::BillingDetail`, `SetupIntent::UpdateParams::PaymentMethodDatum::BillingDetail`, `TestHelpers::ConfirmationToken::CreateParams::PaymentMethodDatum::BillingDetail`, and `Treasury::OutboundPayment::CreateParams::DestinationPaymentMethodDatum::BillingDetail`
* Add support for `wallet_options` on `Checkout::Session::CreateParams` and `Checkout::Session`
* Add support for `provider` on `Checkout::Session::AutomaticTax`, `Invoice::AutomaticTax`, and `Quote::AutomaticTax`
* Add support for `payment_method_options` on `ConfirmationToken::CreateParams` and `TestHelpers::ConfirmationToken::CreateParams`
* Add support for `installments` on `ConfirmationToken::PaymentMethodOption::Card`
* Add support for `context` on `Event`
* Change type of `InvoiceLineItem::Parent::SubscriptionItemDetail.subscription` from `string` to `nullable(string)`
* Add support for `billie` on `PaymentIntent::ConfirmParams::PaymentMethodOption`, `PaymentIntent::CreateParams::PaymentMethodOption`, `PaymentIntent::PaymentMethodOption`, and `PaymentIntent::UpdateParams::PaymentMethodOption`
* Add support for `pix` on `PaymentMethodConfiguration::CreateParams`, `PaymentMethodConfiguration::UpdateParams`, and `PaymentMethodConfiguration`
* Add support for `klarna` on `PaymentMethodDomain`
* Add support for `pending_reason` on `Refund`
* Change type of `Tax::CalculationLineItem.reference` from `nullable(string)` to `string`
* Add support for `aw`, `az`, `bd`, `bf`, `bj`, `cm`, `cv`, `et`, `in`, `kg`, `la`, and `ph` on `Tax::Registration::CountryOption` and `Tax::Registration::CreateParams::CountryOption`
