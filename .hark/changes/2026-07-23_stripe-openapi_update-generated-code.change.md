---
title: Update generated code for private-preview
pr_link: https://github.com/stripe/stripe-ruby/pull/1910
is_breaking: true
is_stripe_api_change: true
released_in_version: 19.4.0-alpha.5
---

* Add support for new resources `Billing::AlertNotification` and `Crypto::DepositAddress`
* Add support for `create`, `list`, and `retrieve` methods on resource `Crypto::DepositAddress`
* Add support for `list` method on resource `Billing::AlertNotification`
* Add support for `vipps` on `ConfirmationToken::PaymentMethodPreview`, `ConfirmationTokenCreateParams::PaymentMethodDatum`, `PaymentIntent::PaymentMethodOption`, `PaymentIntentConfirmParams::PaymentMethodDatum`, `PaymentIntentConfirmParams::PaymentMethodOption`, `PaymentIntentCreateParams::PaymentMethodDatum`, `PaymentIntentCreateParams::PaymentMethodOption`, `PaymentIntentUpdateParams::PaymentMethodDatum`, `PaymentIntentUpdateParams::PaymentMethodOption`, `PaymentMethodConfigurationCreateParams`, `PaymentMethodConfigurationUpdateParams`, `PaymentMethodConfiguration`, `PaymentMethodCreateParams`, `PaymentMethod`, `SetupIntentConfirmParams::PaymentMethodDatum`, `SetupIntentCreateParams::PaymentMethodDatum`, and `SetupIntentUpdateParams::PaymentMethodDatum`
* Add support for `sui` on `Crypto::OnrampSession::TransactionDetail::WalletAddress`
* Add support for `use_stripe_sdk` on `DelegatedCheckout::RequestedSessionConfirmParams`
* Add support for `ev_charging` on `PaymentIntentAmountDetailsLineItem::PaymentMethodOption::Card`, `PaymentIntentCaptureParams::AmountDetail::LineItem::PaymentMethodOption::Card`, `PaymentIntentConfirmParams::AmountDetail::LineItem::PaymentMethodOption::Card`, `PaymentIntentCreateParams::AmountDetail::LineItem::PaymentMethodOption::Card`, `PaymentIntentDecrementAuthorizationParams::AmountDetail::LineItem::PaymentMethodOption::Card`, `PaymentIntentIncrementAuthorizationParams::AmountDetail::LineItem::PaymentMethodOption::Card`, and `PaymentIntentUpdateParams::AmountDetail::LineItem::PaymentMethodOption::Card`
* Add support for `tax_items` on `PaymentIntent::PaymentDetail::CarRentalDatum::Total::Tax`, `PaymentIntent::PaymentDetail::FlightDatum::Total::Tax`, and `PaymentIntent::PaymentDetail::LodgingDatum::Total::Tax`
* ⚠️ Remove support for `taxes` on `PaymentIntent::PaymentDetail::CarRentalDatum::Total::Tax`, `PaymentIntent::PaymentDetail::FlightDatum::Total::Tax`, and `PaymentIntent::PaymentDetail::LodgingDatum::Total::Tax`
* Change `PaymentRecordCreateParams.closed` to be optional
* Change `PaymentRecordCreateParams.funded` to be optional
* Add support for `card` on `Radar::PaymentEvaluationCreateParams::PaymentDetail::PaymentMethodDetail`
* ⚠️ Remove support for `acss_debit`, `afterpay_clearpay`, `alipay`, `alma`, `amazon_pay`, `au_becs_debit`, `bacs_debit`, `bancontact`, `billie`, `bizum`, `blik`, `boleto`, `card_present`, `cashapp`, `crypto`, `customer_balance`, `eps`, `fpx`, `gift_card`, `giropay`, `gopay`, `grabpay`, `id_bank_transfer`, `ideal`, `interac_present`, `kakao_pay`, `konbini`, `kr_card`, `mb_way`, `mobilepay`, `multibanco`, `naver_pay`, `nz_bank_account`, `oxxo`, `p24`, `pay_by_bank`, `payco`, `paynow`, `paypal`, `paypay`, `payto`, `pix`, `promptpay`, `qris`, `rechnung`, `revolut_pay`, `samsung_pay`, `satispay`, `scalapay`, `sepa_debit`, `shopeepay`, `sofort`, `stripe_balance`, `sunbit`, `swish`, `tamara`, `twint`, `upi`, `us_bank_account`, `wechat_pay`, and `zip` on `SharedPayment::GrantedToken::PaymentMethodDetail`
* Add support for `spend_card` on `V2::Core::Account::Configuration::CardCreator::Capability::Commercial::Stripe`, `V2::Core::AccountCreateParams::Configuration::CardCreator::Capability::Commercial::Stripe`, and `V2::Core::AccountUpdateParams::Configuration::CardCreator::Capability::Commercial::Stripe`
