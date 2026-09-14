---
title: Update generated code
pr_url: https://github.com/stripe/stripe-ruby/pull/1700
is_stripe_api_change: true
released_in_version: 17.1.0
---

* Add support for new resources `PaymentAttemptRecord`, `PaymentIntentAmountDetailsLineItem`, and `PaymentRecord`
* Add support for `list` and `retrieve` methods on resource `PaymentAttemptRecord`
* Add support for `report_payment_attempt_canceled`, `report_payment_attempt_failed`, `report_payment_attempt_guaranteed`, `report_payment_attempt_informational`, `report_payment_attempt`, `report_payment`, `report_refund`, and `retrieve` methods on resource `PaymentRecord`
* Add support for `list` method on resource `PaymentIntentAmountDetailsLineItem`
* Add support for `representative_declaration` on `Account::Company`, `AccountCreateParams::Company`, `AccountUpdateParams::Company`, and `TokenCreateParams::Account::Company`
* Change `Billing::CreditGrantCreateParams.category` to be optional
* Add support for `payment_method_configuration` on `BillingPortal::ConfigurationCreateParams::Feature::PaymentMethodUpdate` and `BillingPortal::ConfigurationUpdateParams::Feature::PaymentMethodUpdate`
* Add support for `twint` on `Checkout::Session::PaymentMethodOption` and `Checkout::SessionCreateParams::PaymentMethodOption`
* Add support for `payment_record_refund` and `type` on `CreditNote::Refund`, `CreditNoteCreateParams::Refund`, `CreditNoteListPreviewLineItemsParams::Refund`, and `CreditNotePreviewParams::Refund`
* Add support for `customer_sheet` and `mobile_payment_element` on `CustomerSession::Component` and `CustomerSessionCreateParams::Component`
* Add support for `provider` on `Customer::Tax`
* Add support for `payment_record` on `InvoiceAttachPaymentParams`, `InvoicePayment::Payment`, and `InvoicePaymentListParams::Payment`
* Change type of `InvoicePaymentListParams::Payment.type` from `literal('payment_intent')` to `enum('payment_intent'|'payment_record')`
* Add support for `amount_details` on `PaymentIntentCaptureParams`, `PaymentIntentConfirmParams`, `PaymentIntentCreateParams`, `PaymentIntentIncrementAuthorizationParams`, and `PaymentIntentUpdateParams`
* Add support for `payment_details` on `PaymentIntentCaptureParams`, `PaymentIntentConfirmParams`, `PaymentIntentCreateParams`, `PaymentIntentIncrementAuthorizationParams`, `PaymentIntentUpdateParams`, and `PaymentIntent`
* Add support for `discount_amount`, `line_items`, `shipping`, and `tax` on `PaymentIntent::AmountDetail`
* Add support for `name_collection` on `PaymentLinkCreateParams`, `PaymentLinkUpdateParams`, and `PaymentLink`
* Add support for `crypto` on `PaymentMethodConfigurationCreateParams`, `PaymentMethodConfigurationUpdateParams`, `PaymentMethodConfiguration`, and `Refund::DestinationDetail`
* Add support for `mb_way` on `PaymentMethodConfigurationCreateParams`, `PaymentMethodConfigurationUpdateParams`, and `PaymentMethodConfiguration`
* Add support for `custom` on `PaymentMethodCreateParams` and `PaymentMethod`
* Add support for `excluded_payment_method_types` on `SetupIntentCreateParams`, `SetupIntentUpdateParams`, and `SetupIntent`
* Change `SetupIntent.flow_directions` to be optional
* Add support for `tw` on `Tax::Registration::CountryOption` and `Tax::RegistrationCreateParams::CountryOption`
* Add support for `gip` on `Terminal::Configuration::Tipping`, `Terminal::ConfigurationCreateParams::Tipping`, and `Terminal::ConfigurationUpdateParams::Tipping`
* Add support for `last_seen_at` on `Terminal::Reader`
* Add support for `gt`, `gte`, `lt`, `lte`, and `types` on `V2::Core::EventListParams`
* Change `V2::Core::EventListParams.object_id` to be optional
