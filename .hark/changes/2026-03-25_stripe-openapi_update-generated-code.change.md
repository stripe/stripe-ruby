---
title: Update generated code for private-preview
pr_link: https://github.com/stripe/stripe-ruby/pull/1836
is_breaking: true
is_stripe_api_change: true
released_in_version: 19.1.0-alpha.1
---

* Add support for new resource `RiskSignals`
* Add support for `financial_account_rewards` and `nesting_demo` on `AccountSession::Component`
* Add support for `upi_payments` on `Account::Capability`, `AccountCreateParams::Capability`, and `AccountUpdateParams::Capability`
* Add support for `risk_signals` on `Account`
* Add support for `fraud_intent` on `AccountSignals`
* Add support for `risk_reserved` on `Balance`
* ⚠️ Remove support for `billable_items` on `Billing::Alert::SpendThreshold::Filter`
* Add support for `upi` on `Charge::PaymentMethodDetail`, `Checkout::Session::PaymentMethodOption`, `Checkout::SessionCreateParams::PaymentMethodOption`, `ConfirmationToken::PaymentMethodPreview`, `ConfirmationTokenCreateParams::PaymentMethodDatum`, `Mandate::PaymentMethodDetail`, `PaymentAttemptRecord::PaymentMethodDetail`, `PaymentIntent::PaymentMethodOption`, `PaymentIntentConfirmParams::PaymentMethodDatum`, `PaymentIntentConfirmParams::PaymentMethodOption`, `PaymentIntentCreateParams::PaymentMethodDatum`, `PaymentIntentCreateParams::PaymentMethodOption`, `PaymentIntentUpdateParams::PaymentMethodDatum`, `PaymentIntentUpdateParams::PaymentMethodOption`, `PaymentMethodConfigurationCreateParams`, `PaymentMethodConfigurationUpdateParams`, `PaymentMethodConfiguration`, `PaymentMethodCreateParams`, `PaymentMethod`, `PaymentRecord::PaymentMethodDetail`, `SetupAttempt::PaymentMethodDetail`, `SetupIntent::PaymentMethodOption`, `SetupIntentConfirmParams::PaymentMethodDatum`, `SetupIntentConfirmParams::PaymentMethodOption`, `SetupIntentCreateParams::PaymentMethodDatum`, `SetupIntentCreateParams::PaymentMethodOption`, `SetupIntentUpdateParams::PaymentMethodDatum`, and `SetupIntentUpdateParams::PaymentMethodOption`
* ⚠️ Remove support for `source_type` on `Charge::PaymentMethodDetail::StripeBalance`, `ConfirmationToken::PaymentMethodPreview::StripeBalance`, `ConfirmationTokenCreateParams::PaymentMethodDatum::StripeBalance`, `PaymentAttemptRecord::PaymentMethodDetail::StripeBalance`, `PaymentIntentConfirmParams::PaymentMethodDatum::StripeBalance`, `PaymentIntentCreateParams::PaymentMethodDatum::StripeBalance`, `PaymentIntentUpdateParams::PaymentMethodDatum::StripeBalance`, `PaymentMethod::StripeBalance`, `PaymentMethodCreateParams::StripeBalance`, `PaymentRecord::PaymentMethodDetail::StripeBalance`, `SetupIntentConfirmParams::PaymentMethodDatum::StripeBalance`, `SetupIntentCreateParams::PaymentMethodDatum::StripeBalance`, and `SetupIntentUpdateParams::PaymentMethodDatum::StripeBalance`
* Add support for `integration_identifier` on `Checkout::SessionCreateParams` and `Checkout::Session`
* Change type of `Checkout::SessionCreateParams::LineItem::PriceDatum::ProductDatum::TaxDetail.tax_code`, `Checkout::SessionUpdateParams::LineItem::PriceDatum::ProductDatum::TaxDetail.tax_code`, `InvoiceAddLinesParams::Line::PriceDatum::ProductDatum::TaxDetail.tax_code`, `InvoiceLineItemUpdateParams::PriceDatum::ProductDatum::TaxDetail.tax_code`, `InvoiceUpdateLinesParams::Line::PriceDatum::ProductDatum::TaxDetail.tax_code`, `PaymentLinkCreateParams::LineItem::PriceDatum::ProductDatum::TaxDetail.tax_code`, `PlanCreateParams::Product::TaxDetail.tax_code`, `PriceCreateParams::ProductDatum::TaxDetail.tax_code`, `ProductCreateParams::TaxDetail.tax_code`, and `ProductUpdateParams::TaxDetail.tax_code` from `string` to `emptyable(string)`
* Add support for `crypto` on `Checkout::SessionCreateParams::PaymentMethodOption`
* Add support for `pending_invoice_item_interval` on `Checkout::SessionCreateParams::SubscriptionDatum` and `Checkout::SessionUpdateParams::SubscriptionDatum`
* Change `Checkout::SessionCreateParams::LineItem::PriceDatum::ProductDatum::TaxDetail.tax_code`, `Checkout::SessionUpdateParams::LineItem::PriceDatum::ProductDatum::TaxDetail.tax_code`, `InvoiceAddLinesParams::Line::PriceDatum::ProductDatum::TaxDetail.tax_code`, `InvoiceLineItemUpdateParams::PriceDatum::ProductDatum::TaxDetail.tax_code`, `InvoiceUpdateLinesParams::Line::PriceDatum::ProductDatum::TaxDetail.tax_code`, `PaymentLinkCreateParams::LineItem::PriceDatum::ProductDatum::TaxDetail.tax_code`, `PlanCreateParams::Product::TaxDetail.tax_code`, `PriceCreateParams::ProductDatum::TaxDetail.tax_code`, `ProductCreateParams::TaxDetail.tax_code`, and `ProductUpdateParams::TaxDetail.tax_code` to be optional
* Add support for `au_becs_debit`, `bacs_debit`, `boleto`, `link`, `sepa_debit`, and `us_bank_account` on `Checkout::Session::CurrentAttempt::PaymentMethodDetail`
* Add support for `metadata` on `CreditNoteCreateParams::Line`, `CreditNoteLineItem`, `CreditNoteListPreviewLineItemsParams::Line`, and `CreditNotePreviewParams::Line`
* Add support for `selected_fulfillment_option_overrides` on `DelegatedCheckout::RequestedSession::FulfillmentDetail`
* Add support for `line_item_keys` on `DelegatedCheckout::RequestedSession::FulfillmentDetail::FulfillmentOption::Digital::DigitalOption` and `DelegatedCheckout::RequestedSession::FulfillmentDetail::FulfillmentOption::Shipping::ShippingOption`
* Add support for `quantity_decimal` on `InvoiceAddLinesParams::Line`, `InvoiceCreatePreviewParams::InvoiceItem`, `InvoiceItemCreateParams`, `InvoiceItemUpdateParams`, `InvoiceItem`, `InvoiceLineItemUpdateParams`, `InvoiceLineItem`, and `InvoiceUpdateLinesParams::Line`
* Add support for `expires_after_seconds` on `Invoice::PaymentSetting::PaymentMethodOption::Pix`, `InvoiceCreateParams::PaymentSetting::PaymentMethodOption::Pix`, `InvoiceUpdateParams::PaymentSetting::PaymentMethodOption::Pix`, `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption::Pix`, `Subscription::PaymentSetting::PaymentMethodOption::Pix`, `SubscriptionCreateParams::PaymentSetting::PaymentMethodOption::Pix`, and `SubscriptionUpdateParams::PaymentSetting::PaymentMethodOption::Pix`
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
* Add support for `surcharge` on `PaymentIntent::AmountDetail`, `PaymentIntentCaptureParams::AmountDetail`, `PaymentIntentConfirmParams::AmountDetail`, `PaymentIntentCreateParams::AmountDetail`, `PaymentIntentIncrementAuthorizationParams::AmountDetail`, and `PaymentIntentUpdateParams::AmountDetail`
* Add support for `mandate_options` on `PaymentIntent::PaymentMethodOption::StripeBalance`, `PaymentIntentConfirmParams::PaymentMethodOption::StripeBalance`, `PaymentIntentCreateParams::PaymentMethodOption::StripeBalance`, and `PaymentIntentUpdateParams::PaymentMethodOption::StripeBalance`
* Add support for `amount_details` and `payment_details` on `PaymentIntentDecrementAuthorizationParams`
* Add support for `upi_handle_redirect_or_display_qr_code` on `PaymentIntent::NextAction` and `SetupIntent::NextAction`
* Add support for `managed_payments` on `PaymentLinkCreateParams` and `PaymentLink`
* Add support for `recommended_action` and `signals` on `Radar::PaymentEvaluation`
* ⚠️ Remove support for `insights` on `Radar::PaymentEvaluation`
* Add support for `stripe_balance` on `SetupIntent::PaymentMethodOption`, `SetupIntentConfirmParams::PaymentMethodOption`, `SetupIntentCreateParams::PaymentMethodOption`, and `SetupIntentUpdateParams::PaymentMethodOption`
* Add support for `recurring_interval` on `SharedPayment::GrantedToken::UsageLimit`
* ⚠️ Change type of `SharedPayment::GrantedToken::UsageLimit.expires_at` from `DateTime` to `nullable(DateTime)`
* Add support for `presentment_details` on `Subscription`
* ⚠️ Remove support for `invoice_resources` on `V2::Billing::Intent`
* ⚠️ Remove support for `amount_due` and `customer_balance_applied` on `V2::Billing::Intent::AmountDetail`
* Add support for `recurring_credit_grant` on `V2::Billing::IntentAction::Modify::PricingPlanSubscriptionDetail::Override::PartialPeriodBehavior`, `V2::Billing::IntentAction::Subscribe::PricingPlanSubscriptionDetail::Override::PartialPeriodBehavior`, `V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetail::Override::PartialPeriodBehavior`, and `V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetail::Override::PartialPeriodBehavior`
* Add support for `consumer_privacy_disclosures` and `consumer_storer` on `V2::Core::Account::Identity::Attestation::TermsOfService`, `V2::Core::AccountCreateParams::Identity::Attestation::TermsOfService`, and `V2::Core::AccountUpdateParams::Identity::Attestation::TermsOfService`
* ⚠️ Remove support for `include` on `V2::Billing::IntentCreateParams` and `V2::Billing::IntentReserveParams`
