---
title: Update generated code for private-preview
pr_url: https://github.com/stripe/stripe-ruby/pull/1916
is_breaking: true
is_stripe_api_change: true
released_in_version: 19.5.0-alpha.1
---

* Add support for new resources `V2::MoneyManagement::ReceivedDebitMandate`, `V2::Risk::Inquiry`, `V2::Signals::AccountActivity`, and `V2::Signals::AccountEvaluation`
* Add support for `create` and `retrieve` methods on resource `V2::Signals::AccountEvaluation`
* Add support for `create`, `delete`, and `retrieve` methods on resource `V2::Signals::AccountActivity`
* Add support for `list`, `retrieve`, and `update` methods on resource `V2::Risk::Inquiry`
* Add support for `cancel`, `list`, and `retrieve` methods on resource `V2::MoneyManagement::ReceivedDebitMandate`
* Add support for `rate_cards` on `Billing::CreditBalanceSummaryRetrieveParams::Filter::ApplicabilityScope`, `Billing::CreditGrant::ApplicabilityConfig::Scope`, and `Billing::CreditGrantCreateParams::ApplicabilityConfig::Scope`
* ⚠️ Change type of `ConfirmationToken::PaymentMethodPreview::GiftCard.brand`, `GiftCard.brand`, `GiftCardCreateParams.brand`, `PaymentMethod::GiftCard.brand`, `Terminal::ReaderActivateGiftCardParams.brand`, `Terminal::ReaderCashoutGiftCardParams.brand`, `Terminal::ReaderCheckGiftCardBalanceParams.brand`, and `Terminal::ReaderReloadGiftCardParams.brand` from `enum('fiserv_valuelink'|'givex'|'svs')` to `literal('svs')`
* Add support for `tempo` on `Crypto::OnrampSession::TransactionDetail::WalletAddress`
* Add support for `healthcare` on `Issuing::Authorization`
* Add support for `product_code` on `Issuing::CardCreateParams`, `Issuing::CardUpdateParams`, and `Issuing::Card`
* Add support for `product_graduation_state` on `Issuing::Card`
* Add support for `cvc` and `number` on `Radar::PaymentEvaluationCreateParams::PaymentDetail::PaymentMethodDetail::Card`
* Change `Radar::PaymentEvaluationCreateParams::PaymentDetail::PaymentMethodDetail::Card.first6` to be optional
* Change `Radar::PaymentEvaluationCreateParams::PaymentDetail::PaymentMethodDetail::Card.last4` to be optional
* Add support for `card` on `Radar::PaymentEvaluation::PaymentDetail::PaymentMethodDetail`
* ⚠️ Change type of `Terminal::ReaderCollectPaymentMethodParams::CollectConfig.gift_card_brand` and `Terminal::ReaderProcessPaymentIntentParams::ProcessConfig.gift_card_brand` from `enum('fiserv_valuelink'|'givex'|'svs')` to `literal('svs')`
* Add support for `gift_card` on `Terminal::ReaderPresentPaymentMethodParams`
* Add support for `amount_due` and `customer_balance_applied` on `V2::Billing::Intent::AmountDetail`
* ⚠️ Change type of `V2::Core::AccountEvaluation.evaluations_triggered` from `literal('fraudulent_website')` to `enum('fraudulent_website'|'user_account_sharing'|'user_multi_accounting')`
* Add support for `gross_settlement` on `V2::Core::Account::Configuration::Merchant`, `V2::Core::AccountCreateParams::Configuration::Merchant`, and `V2::Core::AccountUpdateParams::Configuration::Merchant`
* ⚠️ Change type of `V2::MoneyManagement::DebitDispute::BankTransfer.network` from `literal('ach')` to `enum('ach'|'bacs')`
* ⚠️ Remove support for `managed_by` on `V2::MoneyManagement::FinancialAccount`
* Add support for `payout_intent` on `V2::MoneyManagement::OutboundPayment`
* Add support for `settles_at` on `V2::MoneyManagement::ReceivedDebit`
* Add support for `gb_bank_account` on `V2::MoneyManagement::ReceivedDebit::BankTransfer`
* ⚠️ Change type of `V2::MoneyManagement::ReceivedDebit::BankTransfer.origin_type` from `literal('us_bank_account')` to `enum('gb_bank_account'|'us_bank_account')`
* ⚠️ Change type of `V2::MoneyManagement::ReceivedDebit::BankTransfer.payment_method_type` from `literal('us_bank_account')` to `enum('gb_bank_account'|'us_bank_account')`
* Add support for `target_date` on `V2::Payments::OffSessionPaymentCreateParams` and `V2::Payments::OffSessionPayment`
* Add support for `account_evaluation`, `fraudulent_website`, `payment_delinquency_exposure`, `user_account_sharing`, and `user_multi_accounting` on `V2::Signals::AccountSignal`
* Change type of `V2::MoneyManagement::FinancialAddressDebitSimulationDebitParams.network` from `literal('ach')` to `enum('ach'|'bacs')`
* Add support for `received_debit_mandate` on `V2::MoneyManagement::ReceivedDebitListParams`
* ⚠️ Remove support for `payout_intent` on `V2::MoneyManagement::OutboundPaymentCreateParams`
* Change type of `V2::Core::AccountEvaluationCreateParams.signals` from `literal('fraudulent_website')` to `enum('fraudulent_website'|'user_account_sharing'|'user_multi_accounting')`
* ⚠️ Remove support for `id` on `EventsV2SignalsAccountSignalFraudulentMerchantReadyEvent`
* Add support for event notifications `V2MoneyManagementReceivedDebitCreatedEvent` and `V2MoneyManagementReceivedDebitScheduledEvent` with related object `V2::MoneyManagement::ReceivedDebit`
* Add support for event notifications `V2MoneyManagementReceivedDebitMandateCanceledEvent`, `V2MoneyManagementReceivedDebitMandateCreatedEvent`, `V2MoneyManagementReceivedDebitMandateExpiredEvent`, `V2MoneyManagementReceivedDebitMandatePendingCancellationEvent`, and `V2MoneyManagementReceivedDebitMandateUpdatedEvent` with related object `V2::MoneyManagement::ReceivedDebitMandate`
* Add support for event notification `V2SignalsAccountEvaluationCompleteEvent` with related object `V2::Signals::AccountEvaluation`
* Add support for event notifications `V2SignalsAccountSignalFraudulentWebsiteReadyEvent` and `V2SignalsAccountSignalPaymentDelinquencyExposureReadyEvent` with related object `V2::Signals::AccountSignal`
