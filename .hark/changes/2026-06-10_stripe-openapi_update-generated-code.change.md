---
title: Update generated code for private-preview
pr_link: https://github.com/stripe/stripe-ruby/pull/1876
is_breaking: true
is_stripe_api_change: true
released_in_version: 19.3.0-alpha.3
---

* Add support for new resources `GiftCardOperation`, `GiftCard`, and `TaxFund`
* Add support for `retrieve` method on resource `GiftCardOperation`
* Add support for `activate`, `cashout`, `check_balance`, `create`, `reload`, `retrieve`, and `void_operation` methods on resource `GiftCard`
* Add support for `list` and `retrieve` methods on resource `TaxFund`
* Add support for `update_crypto_refund_address` method on resource `PaymentIntent`
* Add support for `performance_location_details` on `Tax::CalculationCreateParams::LineItem`, `Tax::CalculationLineItem`, and `Tax::TransactionLineItem`
* ⚠️ Remove support for `money_services` on `ChargeCaptureParams::PaymentDetail`, `ChargeUpdateParams::PaymentDetail`, and `PaymentIntentCaptureParams::PaymentDetail`
* Add support for `fr_meal_voucher` on `Charge::PaymentMethodDetail::Card::Benefit`
* Add support for `multicapture` on `Charge::PaymentMethodDetail::CardPresent`, `ConfirmationToken::PaymentMethodPreview::Card::GeneratedFrom::PaymentMethodDetail::CardPresent`, `PaymentAttemptRecord::PaymentMethodDetail::CardPresent`, `PaymentMethod::Card::GeneratedFrom::PaymentMethodDetail::CardPresent`, and `PaymentRecord::PaymentMethodDetail::CardPresent`
* Add support for `pix` on `Checkout::Session::CurrentAttempt::PaymentMethodDetail`
* Add support for `provisional_credit` on `Issuing::DisputeUpdateParams` and `Issuing::Dispute`
* Add support for `reason` on `PaymentAttemptRecordReportCanceledParams` and `PaymentRecordReportPaymentAttemptCanceledParams`
* Add support for `fiserv_valuelink`, `givex`, and `svs` on `PaymentAttemptRecord::ProcessorDetail` and `PaymentRecord::ProcessorDetail`
* ⚠️ Change type of `PaymentAttemptRecord::ProcessorDetail.type` and `PaymentRecord::ProcessorDetail.type` from `literal('custom')` to `enum('custom'|'fiserv_valuelink'|'givex'|'svs')`
* Add support for `capture_by` and `capture_delay` on `PaymentIntent::PaymentMethodOption::CardPresent`, `PaymentIntent::PaymentMethodOption::Card`, `PaymentIntentConfirmParams::PaymentMethodOption::CardPresent`, `PaymentIntentConfirmParams::PaymentMethodOption::Card`, `PaymentIntentCreateParams::PaymentMethodOption::CardPresent`, `PaymentIntentCreateParams::PaymentMethodOption::Card`, `PaymentIntentUpdateParams::PaymentMethodOption::CardPresent`, and `PaymentIntentUpdateParams::PaymentMethodOption::Card`
* ⚠️ Remove support for `liquid_asset` on `PaymentIntentConfirmParams::PaymentMethodOption::Card::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentConfirmParams::PaymentMethodOption::CardPresent::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentCreateParams::PaymentMethodOption::Card::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentCreateParams::PaymentMethodOption::CardPresent::PaymentDetail::MoneyService::AccountFunding`, `PaymentIntentUpdateParams::PaymentMethodOption::Card::PaymentDetail::MoneyService::AccountFunding`, and `PaymentIntentUpdateParams::PaymentMethodOption::CardPresent::PaymentDetail::MoneyService::AccountFunding`
* Add support for `request_multicapture` on `PaymentIntent::PaymentMethodOption::CardPresent`, `PaymentIntentConfirmParams::PaymentMethodOption::CardPresent`, `PaymentIntentCreateParams::PaymentMethodOption::CardPresent`, and `PaymentIntentUpdateParams::PaymentMethodOption::CardPresent`
* Add support for `ignore_application_fee`, `ignore_transfer_data`, and `request_partial_authorization` on `PaymentIntentConfirmParams::PaymentMethodOption::GiftCard`, `PaymentIntentCreateParams::PaymentMethodOption::GiftCard`, and `PaymentIntentUpdateParams::PaymentMethodOption::GiftCard`
* Change `PaymentIntentConfirmParams::PaymentDetail::Benefit::FrMealVoucher.siret`, `PaymentIntentCreateParams::PaymentDetail::Benefit::FrMealVoucher.siret`, `PaymentIntentUpdateParams::PaymentDetail::Benefit::FrMealVoucher.siret`, `SetupIntentConfirmParams::SetupDetail::Benefit::FrMealVoucher.siret`, `SetupIntentCreateParams::SetupDetail::Benefit::FrMealVoucher.siret`, and `SetupIntentUpdateParams::SetupDetail::Benefit::FrMealVoucher.siret` to be optional
* Add support for `latest_payment_attempt_record` and `payment_record` on `PaymentIntent`
* ⚠️ Remove support for `reauthorization` and `reauthorize_before` on `PaymentIntent::AdvancedFeatureDetail`
* Add support for `refund_address` on `PaymentIntent::NextAction::CryptoDisplayDetail::DepositAddress::Base`, `PaymentIntent::NextAction::CryptoDisplayDetail::DepositAddress::Solana`, and `PaymentIntent::NextAction::CryptoDisplayDetail::DepositAddress::Tempo`
* Add support for `location` on `PaymentIntent::PaymentDetail` and `SetupIntent::SetupDetail`
* Add support for `data` on `Radar::AccountEvaluationCreateParams::LoginInitiated::ClientDeviceMetadataDetail`, `Radar::AccountEvaluationCreateParams::RegistrationInitiated::ClientDeviceMetadataDetail`, and `Radar::CustomerEvaluationCreateParams::EvaluationContext::ClientDetail`
* Change `Radar::AccountEvaluationCreateParams::LoginInitiated::ClientDeviceMetadataDetail.radar_session`, `Radar::AccountEvaluationCreateParams::RegistrationInitiated::ClientDeviceMetadataDetail.radar_session`, and `Radar::CustomerEvaluationCreateParams::EvaluationContext::ClientDetail.radar_session` to be optional
* ⚠️ Change type of `V2::Core::FeeBatch::Adjustment.tax_adjustment` from `amount` to `an object`
* ⚠️ Change type of `V2::Core::FeeBatch.amount`, `V2::Core::FeeBatch::CollectionRecord.amount`, `V2::Core::FeeBatch::CollectionRecord::Tax.amount`, `V2::Core::FeeBatch::Tax.amount`, `V2::Core::FeeEntry.amount`, and `V2::Core::FeeEntry::Tax.amount` from `amount` to `an object`
* Add support for `tax_fund` on `V2::MoneyManagement::Transaction::Flow` and `V2::MoneyManagement::TransactionEntry::TransactionDetail::Flow`
