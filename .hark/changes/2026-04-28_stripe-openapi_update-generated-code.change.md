---
title: Update generated code for private-preview
pr_url: https://github.com/stripe/stripe-ruby/pull/1856
is_breaking: true
is_stripe_api_change: true
released_in_version: 19.2.0-alpha.2
---

* Add support for new resource `V2::Data::Analytics::MetricQueryResult`
* Add support for `create`, `retrieve`, and `revoke` methods on resource `SharedPayment::IssuedToken`
* Add support for `create` method on resource `V2::Data::Analytics::MetricQueryResult`
* Add support for `balance_report` and `payout_reconciliation_report` on `AccountSession::Component` and `AccountSessionCreateParams::Component`
* Add support for `app_distribution` and `sunbit_payments` on `Account::Capability`, `AccountCreateParams::Capability`, and `AccountUpdateParams::Capability`
* Add support for `sunbit` on `Charge::PaymentMethodDetail`, `ConfirmationToken::PaymentMethodPreview`, `ConfirmationTokenCreateParams::PaymentMethodDatum`, `PaymentAttemptRecord::PaymentMethodDetail`, `PaymentIntentConfirmParams::PaymentMethodDatum`, `PaymentIntentCreateParams::PaymentMethodDatum`, `PaymentIntentUpdateParams::PaymentMethodDatum`, `PaymentMethodConfigurationCreateParams`, `PaymentMethodConfigurationUpdateParams`, `PaymentMethodConfiguration`, `PaymentMethodCreateParams`, `PaymentMethod`, `PaymentRecord::PaymentMethodDetail`, `SetupIntentConfirmParams::PaymentMethodDatum`, `SetupIntentCreateParams::PaymentMethodDatum`, and `SetupIntentUpdateParams::PaymentMethodDatum`
* Add support for `last4` on `Charge::PaymentMethodDetail::GiftCard`, `PaymentAttemptRecord::PaymentMethodDetail::GiftCard`, and `PaymentRecord::PaymentMethodDetail::GiftCard`
* Add support for `location` and `reader` on `Charge::PaymentMethodDetail::Klarna`, `PaymentAttemptRecord::PaymentMethodDetail::Klarna`, and `PaymentRecord::PaymentMethodDetail::Klarna`
* Add support for `blik` on `Checkout::SessionCreateParams::PaymentMethodOption`, `Invoice::PaymentSetting::PaymentMethodOption`, `InvoiceCreateParams::PaymentSetting::PaymentMethodOption`, `InvoiceUpdateParams::PaymentSetting::PaymentMethodOption`, `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption`, `Subscription::PaymentSetting::PaymentMethodOption`, `SubscriptionCreateParams::PaymentSetting::PaymentMethodOption`, and `SubscriptionUpdateParams::PaymentSetting::PaymentMethodOption`
* Change `Checkout::Session.managed_payments`, `PaymentIntent.managed_payments`, `PaymentLink.managed_payments`, and `Subscription.managed_payments` to be required
* Add support for `shared_payment_granted_token` on `ConfirmationTokenCreateParams::PaymentMethodDatum`, `PaymentIntentConfirmParams::PaymentMethodDatum`, `PaymentIntentCreateParams::PaymentMethodDatum`, `PaymentIntentUpdateParams::PaymentMethodDatum`, `PaymentMethod`, `SetupIntentConfirmParams::PaymentMethodDatum`, `SetupIntentCreateParams::PaymentMethodDatum`, and `SetupIntentUpdateParams::PaymentMethodDatum`
* Change type of `CreditNote::TotalTax::TaxRateDetail.tax_rate`, `CreditNoteLineItem::Tax::TaxRateDetail.tax_rate`, `Invoice::TotalTax::TaxRateDetail.tax_rate`, `InvoiceLineItem::Tax::TaxRateDetail.tax_rate`, and `QuotePreviewInvoice::TotalTax::TaxRateDetail.tax_rate` from `string` to `expandable($TaxRate)`
* Add support for `buyer_consents` on `DelegatedCheckout::RequestedSessionConfirmParams`
* Add support for `consents` on `DelegatedCheckout::RequestedSession::BuyerConsent::Marketing`
* Change `Invoice::PaymentSetting::PaymentMethodOption.pix`, `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption.pix`, and `Subscription::PaymentSetting::PaymentMethodOption.pix` to be required
* Change `Invoice::PaymentSetting::PaymentMethodOption.upi`, `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption.upi`, and `Subscription::PaymentSetting::PaymentMethodOption.upi` to be required
* Add support for `payment_facilitator_id` and `sub_merchant_id` on `Issuing::AuthorizationCreateParams::MerchantDatum`, `Issuing::TransactionCreateForceCaptureParams::MerchantDatum`, and `Issuing::TransactionCreateUnlinkedRefundParams::MerchantDatum`
* Add support for `card_presence` on `Issuing::Authorization`
* Add support for `allowed_card_presences` and `blocked_card_presences` on `Issuing::Card::SpendingControl`, `Issuing::CardCreateParams::SpendingControl`, `Issuing::CardUpdateParams::SpendingControl`, `Issuing::Cardholder::SpendingControl`, `Issuing::CardholderCreateParams::SpendingControl`, and `Issuing::CardholderUpdateParams::SpendingControl`
* ⚠️ Change type of `PaymentAttemptRecord::PaymentMethodDetail::GiftCard.balance` and `PaymentRecord::PaymentMethodDetail::GiftCard.balance` from `PaymentFlowsPrivatePaymentMethodsGiftCardDeprecatedDetailsResourceBalanceAmount` to `nullable(PaymentsPrimitivesPaymentRecordsResourcePaymentMethodGiftCardDetailsResourceBalance)`
* ⚠️ Change type of `PaymentAttemptRecord::PaymentMethodDetail::GiftCard.brand` and `PaymentRecord::PaymentMethodDetail::GiftCard.brand` from `enum('fiserv_valuelink'|'givex'|'svs')` to `nullable(enum('fiserv_valuelink'|'givex'|'svs'))`
* ⚠️ Change type of `PaymentAttemptRecord::PaymentMethodDetail::GiftCard.first6` and `PaymentRecord::PaymentMethodDetail::GiftCard.first6` from `string` to `nullable(string)`
* ⚠️ Change type of `PaymentAttemptRecord::PaymentMethodDetail::GiftCard.transaction_id` and `PaymentRecord::PaymentMethodDetail::GiftCard.transaction_id` from `string` to `nullable(string)`
* Add support for `amount_to_confirm` on `PaymentIntentConfirmParams`
* Add support for `klarna_display_qr_code` on `PaymentIntent::NextAction`
* Add support for `validation_errors` on `Privacy::RedactionJob`
* Add support for `tax_details` on `Product`
* ⚠️ Change type of `Radar::PaymentEvaluation::ClientDeviceMetadataDetail.radar_session` from `string` to `nullable(string)`
* Add support for `moto` on `SetupAttempt::PaymentMethodDetail::Card`
* Change `SetupIntent::NextAction::PixDisplayQrCode.data` to be required
* Change `SetupIntent::NextAction::PixDisplayQrCode.expires_at` to be required
* Change `SetupIntent::NextAction::PixDisplayQrCode.hosted_instructions_url` to be required
* Change `SetupIntent::NextAction::PixDisplayQrCode.image_url_png` to be required
* Change `SetupIntent::NextAction::PixDisplayQrCode.image_url_svg` to be required
* Add support for `admissions_tax`, `attendance_tax`, `entertainment_tax`, `gross_receipts_tax`, `hospitality_tax`, `luxury_tax`, `resort_tax`, and `tourism_tax` on `Tax::RegistrationCreateParams::CountryOption::Me`
* Add support for `purpose` on `Treasury::OutboundPaymentCreateParams` and `Treasury::OutboundPayment`
* Add support for `crypto_wallet` on `V2::MoneyManagement::FinancialAddress::Credential`
* Add support for `mx_bank_account` on `V2::MoneyManagement::FinancialAddress::Credential` and `V2::MoneyManagement::ReceivedCredit::BankTransfer`
* Add support for `crypto_wallet_transfer` on `V2::MoneyManagement::ReceivedCredit`
* Add support for `eu_bank_account` on `V2::MoneyManagement::ReceivedCredit::BankTransfer`
* Change `V2::Payments::OffSessionPaymentCaptureParams.metadata` and `V2::Payments::OffSessionPaymentCreateParams.metadata` to be optional
* Add support for `crypto_properties` and `settlement_currency` on `V2::MoneyManagement::FinancialAddressCreateParams`
* Add support for event notifications `V2CoreApprovalRequestCreatedEvent` and `V2CoreApprovalRequestExpiredEvent` with related object `V2::Core::ApprovalRequest`
* Add support for event notification `V2ExtendExtensionRunFailedEvent`
