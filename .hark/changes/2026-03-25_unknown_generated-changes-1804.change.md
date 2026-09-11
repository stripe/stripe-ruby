---
title: "Generated changes from [#1804](https://github.com/stripe/stripe-ruby/pull/1804), [#1834](https://github.com/stripe/stripe-ruby/pull/1834), [#1831](https://github.com/stripe/stripe-ruby/pull/1831), [#1830](https://github.com/stripe/stripe-ruby/pull/1830)"
is_breaking: true
is_stripe_api_change: true
section: ⚠️ Breaking changes due to changes in the Stripe API
released_in_version: 19.0.0
---

* Add support for `upi_payments` on `Account::Capability`, `AccountCreateParams::Capability`, and `AccountUpdateParams::Capability`
* Add support for `upi` on `Charge::PaymentMethodDetail`, `Checkout::Session::PaymentMethodOption`, `Checkout::SessionCreateParams::PaymentMethodOption`, `ConfirmationToken::PaymentMethodPreview`, `ConfirmationTokenCreateParams::PaymentMethodDatum`, `Mandate::PaymentMethodDetail`, `PaymentAttemptRecord::PaymentMethodDetail`, `PaymentIntent::PaymentMethodOption`, `PaymentIntentConfirmParams::PaymentMethodDatum`, `PaymentIntentConfirmParams::PaymentMethodOption`, `PaymentIntentCreateParams::PaymentMethodDatum`, `PaymentIntentCreateParams::PaymentMethodOption`, `PaymentIntentUpdateParams::PaymentMethodDatum`, `PaymentIntentUpdateParams::PaymentMethodOption`, `PaymentMethodConfigurationCreateParams`, `PaymentMethodConfigurationUpdateParams`, `PaymentMethodConfiguration`, `PaymentMethodCreateParams`, `PaymentMethod`, `PaymentRecord::PaymentMethodDetail`, `SetupAttempt::PaymentMethodDetail`, `SetupIntent::PaymentMethodOption`, `SetupIntentConfirmParams::PaymentMethodDatum`, `SetupIntentConfirmParams::PaymentMethodOption`, `SetupIntentCreateParams::PaymentMethodDatum`, `SetupIntentCreateParams::PaymentMethodOption`, `SetupIntentUpdateParams::PaymentMethodDatum`, and `SetupIntentUpdateParams::PaymentMethodOption`
* Add support for `integration_identifier` on `Checkout::SessionCreateParams` and `Checkout::Session`
* Add support for `crypto` on `Checkout::SessionCreateParams::PaymentMethodOption`
* Add support for `pending_invoice_item_interval` on `Checkout::SessionCreateParams::SubscriptionDatum`
* Add support for `metadata` on `CreditNoteCreateParams::Line`, `CreditNoteLineItem`, `CreditNoteListPreviewLineItemsParams::Line`, and `CreditNotePreviewParams::Line`
* Add support for `quantity_decimal` on `InvoiceAddLinesParams::Line`, `InvoiceCreatePreviewParams::InvoiceItem`, `InvoiceItemCreateParams`, `InvoiceItemUpdateParams`, `InvoiceItem`, `InvoiceLineItemUpdateParams`, `InvoiceLineItem`, and `InvoiceUpdateLinesParams::Line`
* ⚠️ Add support for `level` on `Issuing::AuthorizationCreateParams::RiskAssessment::CardTestingRisk` and `Issuing::AuthorizationCreateParams::RiskAssessment::MerchantDisputeRisk`
* ⚠️ Remove support for `risk_level` on `Issuing::AuthorizationCreateParams::RiskAssessment::CardTestingRisk` and `Issuing::AuthorizationCreateParams::RiskAssessment::MerchantDisputeRisk`
* Add support for `lifecycle_controls` on `Issuing::CardCreateParams` and `Issuing::Card`
* ⚠️ Change type of `Issuing::Token::NetworkDatum::Visa.card_reference_id` from `string` to `nullable(string)`
* ⚠️ Change type of `PaymentAttemptRecord::PaymentMethodDetail::Card.brand` and `PaymentRecord::PaymentMethodDetail::Card.brand` from `enum` to `nullable(enum)`
* ⚠️ Change type of `PaymentAttemptRecord::PaymentMethodDetail::Card.exp_month` and `PaymentRecord::PaymentMethodDetail::Card.exp_month` from `longInteger` to `nullable(longInteger)`
* ⚠️ Change type of `PaymentAttemptRecord::PaymentMethodDetail::Card.exp_year` and `PaymentRecord::PaymentMethodDetail::Card.exp_year` from `longInteger` to `nullable(longInteger)`
* ⚠️ Change type of `PaymentAttemptRecord::PaymentMethodDetail::Card.funding` and `PaymentRecord::PaymentMethodDetail::Card.funding` from `enum('credit'|'debit'|'prepaid'|'unknown')` to `nullable(enum('credit'|'debit'|'prepaid'|'unknown'))`
* ⚠️ Change type of `PaymentAttemptRecord::PaymentMethodDetail::Card.last4` and `PaymentRecord::PaymentMethodDetail::Card.last4` from `string` to `nullable(string)`
* ⚠️ Change type of `PaymentAttemptRecord::PaymentMethodDetail::Card.moto` and `PaymentRecord::PaymentMethodDetail::Card.moto` from `boolean` to `nullable(boolean)`
* Add support for `cryptogram`, `electronic_commerce_indicator`, `exemption_indicator_applied`, and `exemption_indicator` on `PaymentAttemptRecord::PaymentMethodDetail::Card::ThreeDSecure` and `PaymentRecord::PaymentMethodDetail::Card::ThreeDSecure`
* Add support for `upi_handle_redirect_or_display_qr_code` on `PaymentIntent::NextAction` and `SetupIntent::NextAction`
* Add support for `recommended_action` and `signals` on `Radar::PaymentEvaluation`
* ⚠️ Remove support for `insights` on `Radar::PaymentEvaluation`
