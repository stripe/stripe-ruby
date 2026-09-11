---
title: Update generated code for beta
pr_link: https://github.com/stripe/stripe-ruby/pull/1578
is_stripe_api_change: true
released_in_version: 15.1.0-beta.2
---

* Add support for new resources `FxQuote` and `PaymentIntentAmountDetailsLineItem`
* Add support for `create`, `list`, and `retrieve` methods on resource `FxQuote`
* Remove support for `attach_payment_intent` method on resource `Invoice`
* Add support for `registration_date` on `Account::Company`, `Account::CreateParams::Company`, `Account::UpdateParams::Company`, and `Token::CreateParams::Account::Company`
* Add support for `customer_reference` and `order_reference` on `Charge::CaptureParams::PaymentDetail`, `Charge::UpdateParams::PaymentDetail`, `PaymentIntent::CaptureParams::PaymentDetail`, `PaymentIntent::ConfirmParams::PaymentDetail`, `PaymentIntent::CreateParams::PaymentDetail`, `PaymentIntent::PaymentDetail`, and `PaymentIntent::UpdateParams::PaymentDetail`
* Add support for `tax_id` on `Charge::BillingDetail`, `ConfirmationToken::CreateParams::PaymentMethodDatum::BillingDetail`, `ConfirmationToken::PaymentMethodPreview::BillingDetail`, `PaymentIntent::ConfirmParams::PaymentMethodDatum::BillingDetail`, `PaymentIntent::CreateParams::PaymentMethodDatum::BillingDetail`, `PaymentIntent::UpdateParams::PaymentMethodDatum::BillingDetail`, `PaymentMethod::BillingDetail`, `PaymentMethod::CreateParams::BillingDetail`, `PaymentMethod::UpdateParams::BillingDetail`, `SetupIntent::ConfirmParams::PaymentMethodDatum::BillingDetail`, `SetupIntent::CreateParams::PaymentMethodDatum::BillingDetail`, `SetupIntent::UpdateParams::PaymentMethodDatum::BillingDetail`, and `TreasuryOutboundPayment::CreateParams::DestinationPaymentMethodDatum::BillingDetail`
* Add support for `price_data` on `CheckoutSession::UpdateParams::LineItem`
* Change type of `CheckoutSession::UpdateParams::LineItem.quantity` from `longInteger` to `emptyable(longInteger)`
* Add support for `script` on `Coupon::CreateParams` and `Coupon`
* Add support for `type` on `Coupon`
* Add support for `fx_quote` on `PaymentIntent::ConfirmParams`, `PaymentIntent::CreateParams`, `PaymentIntent::UpdateParams`, `PaymentIntent`, `Transfer::CreateParams`, and `Transfer`
* Add support for `discount_amount`, `line_items`, `shipping`, and `tax` on `PaymentIntent::AmountDetail`
* Add support for `pix` on `PaymentMethodConfiguration::CreateParams`, `PaymentMethodConfiguration::UpdateParams`, and `PaymentMethodConfiguration`
* Add support for `us_cfpb_data` on `Person` and `Token::CreateParams::Person`
* Add support for `pending_reason` on `Refund`
* Add support for `aw`, `az`, `bd`, `bj`, `et`, `kg`, `la`, and `ph` on `TaxRegistration::CountryOption` and `TaxRegistration::CreateParams::CountryOption`
