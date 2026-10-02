---
title: Update generated code
pr_url: https://github.com/stripe/stripe-ruby/pull/1988
semver_level: major
is_stripe_api_change: true
---

* Add support for new resources `Radar::Rule` and `V2::MoneyManagement::FundingSession`
* Add support for `create` method on resource `V2::MoneyManagement::FundingSession`
* ⚠️ Change type of `Charge::Outcome.rule` from `RadarRule` to `$Radar.Rule`
* Add support for `payment_settings` on `Checkout::SessionCreateParams` and `Checkout::Session`
* Add support for `on_behalf_of` on `Checkout::Session`
* Add support for `fuels` on `Issuing::Transaction::PurchaseDetail`
* Add support for `fleet` on `PaymentIntent::PaymentMethodOption::CardPresent`, `PaymentIntentConfirmParams::PaymentMethodOption::CardPresent`, `PaymentIntentCreateParams::PaymentMethodOption::CardPresent`, and `PaymentIntentUpdateParams::PaymentMethodOption::CardPresent`
* Add support for `subscription_reference` on `PaymentIntent::PaymentMethodOption::Paypay`, `PaymentIntentConfirmParams::PaymentMethodOption::Paypay`, `PaymentIntentCreateParams::PaymentMethodOption::Paypay`, and `PaymentIntentUpdateParams::PaymentMethodOption::Paypay`
* Add support for `us_bank_account` on `Radar::PaymentEvaluation::PaymentDetail::MoneyMovementDetail` and `Radar::PaymentEvaluationCreateParams::PaymentDetail::MoneyMovementDetail`
* Change type of `Radar::PaymentEvaluationCreateParams::PaymentDetail::MoneyMovementDetail.money_movement_type` from `literal('card')` to `enum('card'|'us_bank_account')`
* Add support for `rules` on `Radar::PaymentEvaluation`
* ⚠️ Change type of `Radar::PaymentEvaluation::PaymentDetail::MoneyMovementDetail.money_movement_type` from `literal('card')` to `enum('card'|'us_bank_account')`
* Add support for `bank_initiated_return` on `Radar::PaymentEvaluation::Signal`
* Add support for `account` on `V2::MoneyManagement::FinancialAddressCreateParams`, `V2::MoneyManagement::FinancialAddressListParams`, and `V2::MoneyManagement::FinancialAddress`
* Add support for `supported_network_details` on `V2::MoneyManagement::FinancialAddress::CryptoWallet`
* Add support for `network_details` on `V2::MoneyManagement::InboundTransferCreateParams` and `V2::MoneyManagement::InboundTransfer`
* Add support for `originating_crypto_wallet`, `token_currency`, and `transaction_hash` on `V2::MoneyManagement::ReceivedCredit::CryptoWalletTransfer`
* Add support for `customer` and `subscription` on `EventsV1InvoiceUpcomingEvent`
