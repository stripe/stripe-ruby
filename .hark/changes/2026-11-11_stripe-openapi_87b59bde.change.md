---
title: Update generated code
pr_url: https://github.com/stripe/stripe-ruby/pull/2025
semver_level: major
is_stripe_api_change: true
---

* Add support for new resources `Tax::Certificate`, `Tax::FormCorrection`, `V2::Core::AccountSession`, `V2::Extend::ObjectDefinitionVersion`, `V2::Extend::ObjectDefinition`, and `V2::MoneyManagement::SpendingMandate`
* ⚠️ Remove support for resource `V2::Core::AccountSessionResource`
* Add support for `create`, `delete`, `list`, and `retrieve` methods on resource `Tax::Certificate`
* Add support for `create` method on resource `Tax::Form`
* Add support for `cancel`, `list`, and `retrieve` methods on resource `V2::MoneyManagement::SpendingMandate`
* Add support for `list` and `retrieve` methods on resources `V2::Extend::ObjectDefinitionVersion` and `V2::Extend::ObjectDefinition`
* Add support for `bills`, `financial_account_rewards`, `financial_accounts_transactions`, `financial_accounts`, `network_cost_passthrough_report`, and `recipients_list` on `AccountSessionCreateParams::Component`
* Add support for `business_profile_management` on `AccountSessionCreateParams::Component` and `V2::Core::AccountSessionResourceCreateParams::Component`
* Add support for `export_tax_transactions`, `product_tax_code_selector`, and `tax_threshold_monitoring` on `AccountSession::Component`
* Add support for `aeon_pay`, `au_pay`, `dbarai`, and `merpay` on `Charge::PaymentMethodDetail`, `ConfirmationToken::PaymentMethodPreview`, `ConfirmationTokenCreateParams::PaymentMethodDatum`, `PaymentAttemptRecord::PaymentMethodDetail`, `PaymentIntentConfirmParams::PaymentMethodDatum`, `PaymentIntentCreateParams::PaymentMethodDatum`, `PaymentIntentUpdateParams::PaymentMethodDatum`, `PaymentMethodCreateParams`, `PaymentMethod`, `PaymentRecord::PaymentMethodDetail`, `SetupIntentConfirmParams::PaymentMethodDatum`, `SetupIntentCreateParams::PaymentMethodDatum`, and `SetupIntentUpdateParams::PaymentMethodDatum`
* Add support for `funding_sources` on `Charge::PaymentMethodDetail::Card::Wallet::Link` and `Charge::PaymentMethodDetail::Link`
* Add support for `fleet` on `Charge::PaymentMethodDetail::CardPresent`, `ConfirmationToken::PaymentMethodPreview::Card::GeneratedFrom::PaymentMethodDetail::CardPresent`, `PaymentAttemptRecord::PaymentMethodDetail::CardPresent`, `PaymentMethod::Card::GeneratedFrom::PaymentMethodDetail::CardPresent`, and `PaymentRecord::PaymentMethodDetail::CardPresent`
* Add support for `cardholder_message` on `Charge::PaymentMethodDetail::CardPresent::Receipt`, `ConfirmationToken::PaymentMethodPreview::Card::GeneratedFrom::PaymentMethodDetail::CardPresent::Receipt`, `PaymentAttemptRecord::PaymentMethodDetail::CardPresent::Receipt`, `PaymentMethod::Card::GeneratedFrom::PaymentMethodDetail::CardPresent::Receipt`, and `PaymentRecord::PaymentMethodDetail::CardPresent::Receipt`
* Add support for `fingerprint` on `Charge::PaymentMethodDetail::Paypay`, `PaymentAttemptRecord::PaymentMethodDetail::Paypay`, `PaymentRecord::PaymentMethodDetail::Paypay`, and `SetupAttempt::PaymentMethodDetail::Paypay`
* Add support for `custom_payment_method_options` and `pricing_token` on `Checkout::SessionCreateParams`
* Add support for `stripe_balance` on `Checkout::Session::PaymentMethodOption` and `Checkout::SessionCreateParams::PaymentMethodOption`
* Add support for `setup_future_usage` on `Checkout::Session::PaymentMethodOption::Paypay` and `Checkout::SessionCreateParams::PaymentMethodOption::Paypay`
* Add support for `marketing_attributions` on `CustomerUpdateParams`
* Add support for `reason_details` and `reason` on `CustomerCustomerTaxExemptionCreateParams` and `CustomerTaxExemption`
* Add support for `tax_code_group` on `CustomerCustomerTaxExemptionCreateParams::Me` and `CustomerTaxExemption::Me`
* Change `Dispute::Evidence.appeal` to be required
* Add support for `fraudulent_selfie` on `Identity::VerificationReport::Signal`
* Add support for `target_date` on `Invoice::PaymentSetting::PaymentMethodOption::SepaDebit`, `InvoiceCreateParams::PaymentSetting::PaymentMethodOption::SepaDebit`, and `InvoiceUpdateParams::PaymentSetting::PaymentMethodOption::SepaDebit`
* Change `Issuing::Card::Shipping.delivered_at` to be required
* Change `Issuing::Card::Shipping.shipped_at` to be required
* Add support for `toss_pay` on `Mandate::PaymentMethodDetail`, `PaymentMethodConfigurationCreateParams`, `PaymentMethodConfigurationUpdateParams`, `PaymentMethodConfiguration`, and `SetupAttempt::PaymentMethodDetail`
* Add support for `payment_evaluations` and `payment_method_details` on `PaymentAttemptRecordReportAuthenticatedParams`
* Add support for `three_d_secure` on `PaymentAttemptRecordReportAuthorizedParams::PaymentMethodDetail::Card`, `PaymentAttemptRecordReportGuaranteedParams::PaymentMethodDetail::Card`, `PaymentRecordReportPaymentAttemptGuaranteedParams::PaymentMethodDetail::Card`, `PaymentRecordReportPaymentAttemptParams::PaymentMethodDetail::Card`, and `PaymentRecordReportPaymentParams::PaymentMethodDetail::Card`
* Change type of `PaymentAttemptRecordReportGuaranteedParams::PaymentMethodDetail.type` and `PaymentRecordReportPaymentAttemptGuaranteedParams::PaymentMethodDetail.type` from `literal('card')` to `enum('card'|'us_bank_account')`
* Add support for `dispute_details` on `PaymentAttemptRecord` and `PaymentRecord`
* Add support for `ev_charging` and `fleet_data` on `PaymentIntentAmountDetailsLineItem::PaymentMethodOption::CardPresent`, `PaymentIntentCaptureParams::AmountDetail::LineItem::PaymentMethodOption::CardPresent`, `PaymentIntentConfirmParams::AmountDetail::LineItem::PaymentMethodOption::CardPresent`, `PaymentIntentCreateParams::AmountDetail::LineItem::PaymentMethodOption::CardPresent`, `PaymentIntentDecrementAuthorizationParams::AmountDetail::LineItem::PaymentMethodOption::CardPresent`, `PaymentIntentIncrementAuthorizationParams::AmountDetail::LineItem::PaymentMethodOption::CardPresent`, and `PaymentIntentUpdateParams::AmountDetail::LineItem::PaymentMethodOption::CardPresent`
* Add support for `financial_connections` on `PaymentIntent::PaymentMethodOption::BacsDebit`, `PaymentIntentConfirmParams::PaymentMethodOption::BacsDebit`, `PaymentIntentCreateParams::PaymentMethodOption::BacsDebit`, `PaymentIntentUpdateParams::PaymentMethodOption::BacsDebit`, `SetupIntent::PaymentMethodOption::BacsDebit`, `SetupIntentConfirmParams::PaymentMethodOption::BacsDebit`, `SetupIntentCreateParams::PaymentMethodOption::BacsDebit`, and `SetupIntentUpdateParams::PaymentMethodOption::BacsDebit`
* Add support for `wechat_pay_redirect_to_mini_program` on `PaymentIntent::NextAction`
* Add support for `payment_details` on `PaymentIntent::PaymentMethodOption::CardPresent` and `PaymentIntent::PaymentMethodOption::Card`
* Add support for `rakuten_pay` on `PaymentMethodConfigurationCreateParams`, `PaymentMethodConfigurationUpdateParams`, and `PaymentMethodConfiguration`
* Add support for `sepa_debit` on `Radar::PaymentEvaluation::PaymentDetail::MoneyMovementDetail` and `Radar::PaymentEvaluationCreateParams::PaymentDetail::MoneyMovementDetail`
* Add support for `card_testing` on `Radar::PaymentEvaluation::Signal`
* Add support for `payment_method` on `RefundCreateParams`
* Add support for `payment_record` on `Refund`
* Add support for `bizum` and `upi` on `Refund::DestinationDetail`
* Add support for `tax_invoice_month` on `Reporting::ReportRun::Parameter`
* Add support for `radar_options` on `SetupIntentConfirmParams`, `SetupIntentCreateParams`, and `SetupIntent`
* Add support for `referral_fee_details` on `SharedPayment::GrantedToken`, `SharedPayment::IssuedTokenCreateParams`, and `SharedPayment::IssuedToken`
* Add support for `billing_group` on `SubscriptionCreateParams`, `SubscriptionListParams`, `SubscriptionUpdateParams`, and `Subscription`
* Add support for `device_health_details` and `device_health` on `Terminal::Reader`
* Add support for `network_details` on `Treasury::InboundTransfer::FailureDetail`, `Treasury::OutboundPayment::ReturnedDetail`, and `Treasury::OutboundTransfer::ReturnedDetail`
* Add support for `reference` on `V2::MoneyManagement::FinancialAddress::BankAccount::Iban`
* Add support for `check_send` on `V2::MoneyManagement::OutboundPayment::To::PayoutMethodOption`, `V2::MoneyManagement::OutboundPayment::TrackingDetail`, `V2::MoneyManagement::OutboundPaymentCreateParams::To::PayoutMethodOption`, `V2::MoneyManagement::OutboundSetupIntentCreateParams::PayoutMethodDatum`, `V2::MoneyManagement::PayoutIntent::To::PayoutMethodOption`, `V2::MoneyManagement::PayoutIntentCreateParams::To::PayoutMethodOption`, `V2::MoneyManagement::PayoutIntentUpdateParams::To::PayoutMethodOption`, and `V2::MoneyManagement::PayoutMethod`
* Add support for `spending_mandate` on `V2::MoneyManagement::ReceivedDebit::BankTransfer` and `V2::MoneyManagement::ReceivedDebitListParams`
* Add support for `additional_details` on `V2::Signals::AccountSignal::CustomerRisk`
* Add support for event notification `V2ExtendObjectDefinitionCreatedEvent` with related object `V2::Extend::ObjectDefinition`
* Add support for event notification `V2ExtendObjectDefinitionVersionCreatedEvent` with related object `V2::Extend::ObjectDefinitionVersion`
* Add support for event notifications `V2MoneyManagementSpendingMandateCanceledEvent`, `V2MoneyManagementSpendingMandateCreatedEvent`, `V2MoneyManagementSpendingMandateExpiredEvent`, `V2MoneyManagementSpendingMandatePendingCancellationEvent`, and `V2MoneyManagementSpendingMandateUpdatedEvent` with related object `V2::MoneyManagement::SpendingMandate`
* ⚠️ Add error type `MerchantNotGatedError` on `V2::Core::Vault::NetworkToken#create_from_credential`
