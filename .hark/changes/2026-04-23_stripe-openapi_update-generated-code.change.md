---
title: Update generated code
pr_link: https://github.com/stripe/stripe-ruby/pull/1842
is_breaking: true
is_stripe_api_change: true
released_in_version: 19.1.0
---

* Add support for `balance_report` and `payout_reconciliation_report` on `AccountSession::Component` and `AccountSessionCreateParams::Component`
* Add support for `app_distribution` and `sunbit_payments` on `Account::Capability`, `AccountCreateParams::Capability`, and `AccountUpdateParams::Capability`
* Add support for `sunbit` on `Charge::PaymentMethodDetail`, `ConfirmationToken::PaymentMethodPreview`, `ConfirmationTokenCreateParams::PaymentMethodDatum`, `PaymentAttemptRecord::PaymentMethodDetail`, `PaymentIntentConfirmParams::PaymentMethodDatum`, `PaymentIntentCreateParams::PaymentMethodDatum`, `PaymentIntentUpdateParams::PaymentMethodDatum`, `PaymentMethodConfigurationCreateParams`, `PaymentMethodConfigurationUpdateParams`, `PaymentMethodConfiguration`, `PaymentMethodCreateParams`, `PaymentMethod`, `PaymentRecord::PaymentMethodDetail`, `SetupIntentConfirmParams::PaymentMethodDatum`, `SetupIntentCreateParams::PaymentMethodDatum`, and `SetupIntentUpdateParams::PaymentMethodDatum`
* Add support for `location` and `reader` on `Charge::PaymentMethodDetail::Klarna`, `PaymentAttemptRecord::PaymentMethodDetail::Klarna`, and `PaymentRecord::PaymentMethodDetail::Klarna`
* Add support for `mandate` on `Charge::PaymentMethodDetail::Pix`, `PaymentAttemptRecord::PaymentMethodDetail::Pix`, and `PaymentRecord::PaymentMethodDetail::Pix`
* Add support for `managed_payments` on `Checkout::SessionCreateParams`, `Checkout::Session`, `PaymentIntent`, `PaymentLinkCreateParams`, `PaymentLink`, `SetupIntent`, and `Subscription`
* Add support for `mandate_options` on `Checkout::Session::PaymentMethodOption::Pix`, `Checkout::SessionCreateParams::PaymentMethodOption::Pix`, `PaymentIntent::PaymentMethodOption::Pix`, `PaymentIntentConfirmParams::PaymentMethodOption::Pix`, `PaymentIntentCreateParams::PaymentMethodOption::Pix`, and `PaymentIntentUpdateParams::PaymentMethodOption::Pix`
* Change type of `Checkout::SessionCreateParams::PaymentMethodOption::Pix.setup_future_usage`, `PaymentIntentConfirmParams::PaymentMethodOption::Pix.setup_future_usage`, `PaymentIntentCreateParams::PaymentMethodOption::Pix.setup_future_usage`, and `PaymentIntentUpdateParams::PaymentMethodOption::Pix.setup_future_usage` from `literal('none')` to `enum('none'|'off_session')`
* ⚠️ Change type of `Checkout::Session::PaymentMethodOption::Pix.setup_future_usage` and `PaymentIntent::PaymentMethodOption::Pix.setup_future_usage` from `literal('none')` to `enum('none'|'off_session')`
* Add support for `pix` on `Invoice::PaymentSetting::PaymentMethodOption`, `InvoiceCreateParams::PaymentSetting::PaymentMethodOption`, `InvoiceUpdateParams::PaymentSetting::PaymentMethodOption`, `Mandate::PaymentMethodDetail`, `SetupAttempt::PaymentMethodDetail`, `SetupIntent::PaymentMethodOption`, `SetupIntentConfirmParams::PaymentMethodOption`, `SetupIntentCreateParams::PaymentMethodOption`, `SetupIntentUpdateParams::PaymentMethodOption`, `Subscription::PaymentSetting::PaymentMethodOption`, `SubscriptionCreateParams::PaymentSetting::PaymentMethodOption`, and `SubscriptionUpdateParams::PaymentSetting::PaymentMethodOption`
* Add support for `upi` on `Invoice::PaymentSetting::PaymentMethodOption`, `InvoiceCreateParams::PaymentSetting::PaymentMethodOption`, `InvoiceUpdateParams::PaymentSetting::PaymentMethodOption`, `Subscription::PaymentSetting::PaymentMethodOption`, `SubscriptionCreateParams::PaymentSetting::PaymentMethodOption`, and `SubscriptionUpdateParams::PaymentSetting::PaymentMethodOption`
* Add support for `card_presence` on `Issuing::Authorization`
* Add support for `allowed_card_presences` and `blocked_card_presences` on `Issuing::Card::SpendingControl`, `Issuing::CardCreateParams::SpendingControl`, `Issuing::CardUpdateParams::SpendingControl`, `Issuing::Cardholder::SpendingControl`, `Issuing::CardholderCreateParams::SpendingControl`, and `Issuing::CardholderUpdateParams::SpendingControl`
* Add support for `amount` and `currency` on `Mandate::MultiUse`
* Add support for `amount_to_confirm` on `PaymentIntentConfirmParams`
* Add support for `klarna_display_qr_code` on `PaymentIntent::NextAction`
* Add support for `moto` on `SetupAttempt::PaymentMethodDetail::Card`
* Add support for `pix_display_qr_code` on `SetupIntent::NextAction`
