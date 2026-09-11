---
title: Update generated code for private-preview
pr_link: https://github.com/stripe/stripe-ruby/pull/1946
is_breaking: true
is_stripe_api_change: true
released_in_version: 19.7.0-alpha.2
---

* Add support for new resources `Radar::BillingEvaluation`, `V2::Signals::PaymentRetryEvaluation`, `V2::Signals::PaymentRetrySignal`, and `V2::Tax::IntegrationConfiguration`
* Add support for `create` method on resource `Radar::BillingEvaluation`
* Add support for `create`, `deactivate`, `list`, `retrieve`, and `update` methods on resource `Billing::FeedbackOption`
* Add support for `retrieve` and `update` methods on resource `V2::Tax::IntegrationConfiguration`
* Add support for `retrieve` method on resource `V2::Signals::PaymentRetrySignal`
* Add support for `cancel`, `create`, `retrieve`, and `update` methods on resource `V2::Signals::PaymentRetryEvaluation`
* Add support for `disable` method on resource `V2::MoneyManagement::PayoutMethod`
* Add support for `update` method on resource `V2::Core::ApprovalRequest`
* ⚠️ Remove support for `execute` and `submit` methods on resource `V2::Core::ApprovalRequest`
* Add support for `disable_stripe_user_authentication` on `AccountSessionCreateParams::Component::PaymentMethodSetting::Feature`
* Add support for `capital_financing_manual_payment` on `AccountSession::Component`
* Add support for `sequra_payments` on `Account::Capability`
* Add support for `feedback_options` on `BillingPortal::ConfigurationCreateParams::Feature::SubscriptionCancel::CancellationReason` and `BillingPortal::ConfigurationUpdateParams::Feature::SubscriptionCancel::CancellationReason`
* Add support for `sequra` on `Charge::PaymentMethodDetail`, `Checkout::Session::PaymentMethodOption`, `ConfirmationToken::PaymentMethodPreview`, `PaymentAttemptRecord::PaymentMethodDetail`, `PaymentIntent::PaymentMethodOption`, and `PaymentRecord::PaymentMethodDetail`
* Add support for `funding_types_blocked` on `Checkout::SessionCreateParams::PaymentMethodOption::Card::Restriction`
* Add support for `payment_intent_data` on `Checkout::SessionUpdateParams`
* ⚠️ Change type of `Checkout::Session::PaymentMethodOption::Bancontact.setup_future_usage` from `literal('none')` to `enum('none'|'off_session')`
* Add support for `metadata` on `ConfirmationToken`, `V2::Signals::AccountActivityCreateParams`, and `V2::Signals::AccountActivity`
* Add support for `active_entitlements` and `customer_portal` on `CustomerSessionCreateParams::Component`
* Add support for `address_match_confidence` and `name_match_confidence` on `Identity::VerificationReport::Email` and `Identity::VerificationReport::Phone`
* Add support for `domain_country`, `email_exists_confidence`, `observed_domain_tenure_days`, `observed_email_tenure_days`, and `phone_match_confidence` on `Identity::VerificationReport::Email`
* Add support for `carrier`, `line_type`, and `observed_phone_tenure_days` on `Identity::VerificationReport::Phone`
* ⚠️ Remove support for `payment_method_types` on `PaymentIntentConfirmParams`, `PaymentIntentCreateParams`, `PaymentIntentUpdateParams`, `SetupIntentCreateParams`, and `SetupIntentUpdateParams`
* Add support for `verification_method` on `PaymentIntent::PaymentMethodOption::BacsDebit`, `PaymentIntentConfirmParams::PaymentMethodOption::BacsDebit`, `PaymentIntentCreateParams::PaymentMethodOption::BacsDebit`, `PaymentIntentUpdateParams::PaymentMethodOption::BacsDebit`, `SetupIntent::PaymentMethodOption::BacsDebit`, `SetupIntentConfirmParams::PaymentMethodOption::BacsDebit`, `SetupIntentCreateParams::PaymentMethodOption::BacsDebit`, and `SetupIntentUpdateParams::PaymentMethodOption::BacsDebit`
* Change `PaymentIntent.allowed_payment_method_types` and `SetupIntent.allowed_payment_method_types` to be required
* Add support for `application_fee_amount`, `application_fee_percent`, `on_behalf_of`, and `transfer_data` on `PaymentLinkUpdateParams`
* Add support for `canceled` on `PaymentRecordReportPaymentAttemptParams` and `PaymentRecordReportPaymentParams`
* ⚠️ Change type of `ProductCatalog::TrialOffer.price` from `$Price` to `deletable($Price)`
* ⚠️ Change `ProductCatalog::TrialOffer.name` to be optional
* Add support for `recurring` on `SharedPayment::GrantedToken::UsageLimit`, `SharedPayment::GrantedTokenCreateParams::UsageLimit`, `SharedPayment::IssuedToken::UsageLimit`, and `SharedPayment::IssuedTokenCreateParams::UsageLimit`
* Add support for `feedback_option` on `SubscriptionCancelParams::CancellationDetail` and `SubscriptionUpdateParams::CancellationDetail`
* Add support for `pricing_token` on `SubscriptionUpdateParams`
* Add support for `igic` on `Tax::RegistrationCreateParams::CountryOption::At`, `Tax::RegistrationCreateParams::CountryOption::Be`, `Tax::RegistrationCreateParams::CountryOption::Bg`, `Tax::RegistrationCreateParams::CountryOption::Cy`, `Tax::RegistrationCreateParams::CountryOption::Cz`, `Tax::RegistrationCreateParams::CountryOption::De`, `Tax::RegistrationCreateParams::CountryOption::Dk`, `Tax::RegistrationCreateParams::CountryOption::E`, `Tax::RegistrationCreateParams::CountryOption::Ee`, `Tax::RegistrationCreateParams::CountryOption::Fi`, `Tax::RegistrationCreateParams::CountryOption::Fr`, `Tax::RegistrationCreateParams::CountryOption::Gr`, `Tax::RegistrationCreateParams::CountryOption::Hr`, `Tax::RegistrationCreateParams::CountryOption::Hu`, `Tax::RegistrationCreateParams::CountryOption::Ie`, `Tax::RegistrationCreateParams::CountryOption::It`, `Tax::RegistrationCreateParams::CountryOption::Lt`, `Tax::RegistrationCreateParams::CountryOption::Lu`, `Tax::RegistrationCreateParams::CountryOption::Lv`, `Tax::RegistrationCreateParams::CountryOption::Mt`, `Tax::RegistrationCreateParams::CountryOption::Nl`, `Tax::RegistrationCreateParams::CountryOption::Pl`, `Tax::RegistrationCreateParams::CountryOption::Pt`, `Tax::RegistrationCreateParams::CountryOption::Ro`, `Tax::RegistrationCreateParams::CountryOption::Se`, `Tax::RegistrationCreateParams::CountryOption::Si`, and `Tax::RegistrationCreateParams::CountryOption::Sk`
* Add support for `one_time_fees` on `V2::Billing::ContractCreateParams` and `V2::Billing::Contract`
* ⚠️ Remove support for `payment_method_collection` on `V2::Core::Account::Configuration::Merchant::GrossSettlement`, `V2::Core::AccountCreateParams::Configuration::Merchant::GrossSettlement`, and `V2::Core::AccountUpdateParams::Configuration::Merchant::GrossSettlement`
* Add support for `payout_methods` on `V2::Core::Account::Default` and `V2::Core::AccountUpdateParams::Default`
* Add support for `reason` on `V2::Core::ApprovalRequest`
* ⚠️ Remove support for `description` on `V2::Core::ApprovalRequest`
* Add support for `api_key`, `type`, and `user` on `V2::Core::ApprovalRequest::RequestedBy` and `V2::Core::ApprovalRequest::Review::ReviewedBy`
* ⚠️ Remove support for `id` and `name` on `V2::Core::ApprovalRequest::RequestedBy` and `V2::Core::ApprovalRequest::Review::ReviewedBy`
* Add support for `approved_at` on `V2::Core::ApprovalRequest::StatusTransition`
* ⚠️ Remove support for `requires_execution_at` on `V2::Core::ApprovalRequest::StatusTransition`
* Add support for `crypto_transaction` on `V2::Core::FeeBatch::CollectionRecord`
* Add support for `restricted` on `V2::Core::Vault::GbBankAccount` and `V2::Core::Vault::UsBankAccount`
* Add support for `savings` on `V2::MoneyManagement::FinancialAccountCreateParams` and `V2::MoneyManagement::FinancialAccount`
* Add support for `enabled_delivery_schemes` on `V2::MoneyManagement::PayoutMethod::BankAccount`
* ⚠️ Remove support for `enabled_delivery_options` on `V2::MoneyManagement::PayoutMethod::BankAccount`
* Add support for `to_account` on `V2::MoneyManagement::ReceivedDebit::BalanceTransfer`
* Add support for `account_restricted` and `account_suspended` on `V2::Signals::AccountActivityCreateParams` and `V2::Signals::AccountActivity`
* Add support for `additional_details` on `V2::Signals::AccountSignal::FraudulentMerchant` and `V2::Signals::AccountSignal::MerchantDelinquency`
* ⚠️ Remove support for `indicators` on `V2::Signals::AccountSignal::FraudulentMerchant` and `V2::Signals::AccountSignal::MerchantDelinquency`
* Add support for `action`, `created`, and `status` on `V2::Core::ApprovalRequestListParams`
* Add support for `one_time_fee_actions` on `V2::Billing::ContractUpdateParams`
* Add support for event notifications `V2CoreHealthMetronomeNotificationLatencyFiringEvent`, `V2CoreHealthMetronomeNotificationLatencyResolvedEvent`, and `V2SignalsPaymentRetryEvaluationsRetryRecommendedEvent`
* Add support for event notifications `V2MoneyManagementPayoutIntentCanceledEvent`, `V2MoneyManagementPayoutIntentCreatedEvent`, `V2MoneyManagementPayoutIntentPostedEvent`, `V2MoneyManagementPayoutIntentProcessingEvent`, and `V2MoneyManagementPayoutIntentRequiresActionEvent` with related object `V2::MoneyManagement::PayoutIntent`
