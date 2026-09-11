---
title: Update generated code for beta
pr_link: https://github.com/stripe/stripe-ruby/pull/1847
is_breaking: true
is_stripe_api_change: true
released_in_version: 19.2.0-beta.1
---

* Add support for new resources `SharedPayment::GrantedToken` and `SharedPayment::IssuedToken`
* Add support for `retrieve` method on resource `SharedPayment::GrantedToken`
* Add support for `create` and `revoke` test helper methods on resource `SharedPayment::GrantedToken`
* Add support for `create`, `retrieve`, and `revoke` methods on resource `SharedPayment::IssuedToken`
* Add support for `blik` on `Checkout::SessionCreateParams::PaymentMethodOption`, `Invoice::PaymentSetting::PaymentMethodOption`, `InvoiceCreateParams::PaymentSetting::PaymentMethodOption`, `InvoiceUpdateParams::PaymentSetting::PaymentMethodOption`, `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption`, `Subscription::PaymentSetting::PaymentMethodOption`, `SubscriptionCreateParams::PaymentSetting::PaymentMethodOption`, and `SubscriptionUpdateParams::PaymentSetting::PaymentMethodOption`
* Change `Checkout::Session.managed_payments`, `PaymentIntent.managed_payments`, `PaymentLink.managed_payments`, and `Subscription.managed_payments` to be required
* Add support for `shared_payment_granted_token` on `ConfirmationTokenCreateParams::PaymentMethodDatum`, `PaymentIntentConfirmParams::PaymentMethodDatum`, `PaymentIntentCreateParams::PaymentMethodDatum`, `PaymentIntentUpdateParams::PaymentMethodDatum`, `PaymentMethod`, `SetupIntentConfirmParams::PaymentMethodDatum`, `SetupIntentCreateParams::PaymentMethodDatum`, and `SetupIntentUpdateParams::PaymentMethodDatum`
* Change `Invoice::PaymentSetting::PaymentMethodOption.pix`, `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption.pix`, and `Subscription::PaymentSetting::PaymentMethodOption.pix` to be required
* Change `Invoice::PaymentSetting::PaymentMethodOption.upi`, `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption.upi`, and `Subscription::PaymentSetting::PaymentMethodOption.upi` to be required
* Add support for `validation_errors` on `Privacy::RedactionJob`
* Add support for `tax_details` on `Product`
* Change type of `QuotePreviewInvoice::TotalTax::TaxRateDetail.tax_rate` from `string` to `expandable($TaxRate)`
* ⚠️ Change type of `Radar::PaymentEvaluation::ClientDeviceMetadataDetail.radar_session` from `string` to `nullable(string)`
* Change `SetupIntent::NextAction::PixDisplayQrCode.data` to be required
* Change `SetupIntent::NextAction::PixDisplayQrCode.expires_at` to be required
* Change `SetupIntent::NextAction::PixDisplayQrCode.hosted_instructions_url` to be required
* Change `SetupIntent::NextAction::PixDisplayQrCode.image_url_png` to be required
* Change `SetupIntent::NextAction::PixDisplayQrCode.image_url_svg` to be required
* Add support for `admissions_tax`, `attendance_tax`, `entertainment_tax`, `gross_receipts_tax`, `hospitality_tax`, `luxury_tax`, `resort_tax`, and `tourism_tax` on `Tax::RegistrationCreateParams::CountryOption::Me`
* Add support for `purpose` on `Treasury::OutboundPaymentCreateParams` and `Treasury::OutboundPayment`
