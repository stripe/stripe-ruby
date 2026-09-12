---
title: Update generated code for private-preview
pr_url: https://github.com/stripe/stripe-ruby/pull/1870
is_breaking: true
is_stripe_api_change: true
released_in_version: 19.3.0-alpha.2
---

* Add support for new resources `DelegatedCheckout::OrderEvent`, `DelegatedCheckout::Order`, `V2::Billing::ContractLicensePricingQuantityChange`, `V2::Billing::Contract`, and `V2::Signals::AccountSignal`
* Add support for `retrieve` method on resource `DelegatedCheckout::Order`
* Add support for `list_orders` method on resource `DelegatedCheckout::RequestedSession`
* Add support for `list` and `retrieve` methods on resource `V2::Signals::AccountSignal`
* Add support for `activate`, `cancel`, `create`, `list`, `retrieve`, and `update` methods on resource `V2::Billing::Contract`
* Add support for `birth_address` on `AccountCreateParams::Individual`, `AccountPersonCreateParams`, `AccountPersonUpdateParams`, `AccountUpdateParams::Individual`, `Person`, `TokenCreateParams::Account::Individual`, and `TokenCreateParams::Person`
* Change type of `ChargeCaptureParams::PaymentDetail::MoneyService.transaction_type`, `ChargeUpdateParams::PaymentDetail::MoneyService.transaction_type`, `PaymentIntentCaptureParams::PaymentDetail::MoneyService.transaction_type`, `PaymentIntentConfirmParams::PaymentDetail::MoneyService.transaction_type`, `PaymentIntentCreateParams::PaymentDetail::MoneyService.transaction_type`, and `PaymentIntentUpdateParams::PaymentDetail::MoneyService.transaction_type` from `literal('account_funding')` to `enum('account_funding'|'debt_repayment')`
* Add support for `provisioning_decision` and `token_type` on `Issuing::Authorization::TokenDetail` and `Issuing::Token`
* Add support for `token_decision_recommendation` on `Issuing::Authorization::TokenDetail::NetworkDatum::Visa` and `Issuing::Token::NetworkDatum::Visa`
* Add support for `language` on `Issuing::Token::NetworkDatum::Device`
* Add support for `digital_asset_category` on `PaymentIntentConfirmParams::PaymentMethodOption::Card::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentConfirmParams::PaymentMethodOption::CardPresent::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentCreateParams::PaymentMethodOption::Card::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentCreateParams::PaymentMethodOption::CardPresent::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentUpdateParams::PaymentMethodOption::Card::PaymentDetail::MoneyService::AccountFunding`, and `PaymentIntentUpdateParams::PaymentMethodOption::CardPresent::PaymentDetail::MoneyService::AccountFunding`
* Add support for `static_address` on `PaymentIntent::PaymentMethodOption::Crypto::DepositOption`, `PaymentIntentConfirmParams::PaymentMethodOption::Crypto::DepositOption`, `PaymentIntentCreateParams::PaymentMethodOption::Crypto::DepositOption`, and `PaymentIntentUpdateParams::PaymentMethodOption::Crypto::DepositOption`
* Add support for `payment_reference` on `PaymentIntentCreateParams::PaymentsOrchestration`
* ⚠️ Remove support for `payment_details` on `PaymentIntentCreateParams::PaymentsOrchestration`
* ⚠️ Change type of `PaymentIntent::PaymentDetail::MoneyService.transaction_type` from `literal('account_funding')` to `enum('account_funding'|'debt_repayment')`
* Add support for `ending_before`, `limit`, and `starting_after` on `PaymentLocationListParams`
* ⚠️ Change `Radar::IssuingAuthorizationEvaluationCreateParams::CardDetail.last4` to be required
* Add support for `schema` on `V2::Data::Reporting::QueryRun::Result::File` and `V2::Reporting::ReportRun::Result::File`
* Add support for `include` on `V2::Data::Reporting::QueryRunRetrieveParams` and `V2::Reporting::ReportRunRetrieveParams`
* Add support for `requirements_collector` on `V2::Core::AccountCreateParams::Default::Responsibility` and `V2::Core::AccountUpdateParams::Default::Responsibility`
* Add support for event notification `V2SignalsAccountSignalMerchantDelinquencyReadyEvent` with related object `V2::Signals::AccountSignal`
