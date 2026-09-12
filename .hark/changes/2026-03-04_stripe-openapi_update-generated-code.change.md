---
title: Update generated code for private-preview
pr_url: https://github.com/stripe/stripe-ruby/pull/1802
is_breaking: true
is_stripe_api_change: true
released_in_version: 18.5.0-alpha.2
---

* Add support for new resources `Billing::AlertRecovered` and `Profile`
* Add support for `reauthorize` method on resource `PaymentIntent`
* Add support for `settings` on `QuoteLine::Action::AddDiscount`, `QuoteLine::Action::AddItem::Discount`, `QuoteLine::Action::SetDiscount`, `QuoteLine::Action::SetItem::Discount`, `QuotePreviewSubscriptionSchedule::Phase::Discount`, `QuotePreviewSubscriptionSchedule::Phase::Item::Discount`, `SubscriptionSchedule::Phase::Discount`, and `SubscriptionSchedule::Phase::Item::Discount`
* Add support for `smart_disputes` on `Account::Setting`, `AccountCreateParams::Setting`, `AccountUpdateParams::Setting`, `V2::Core::Account::Configuration::Merchant`, `V2::Core::AccountCreateParams::Configuration::Merchant`, and `V2::Core::AccountUpdateParams::Configuration::Merchant`
* Add support for `email_customers_on_successful_payment` on `Account::Setting::Payment`, `AccountCreateParams::Setting::Payment`, and `AccountUpdateParams::Setting::Payment`
* Add support for `balance_update_details` on `Billing::CreditBalanceSummary::Balance`
* Add support for `reauthorization` and `reauthorize_before` on `Charge::PaymentMethodDetail::CardPresent`, `Charge::PaymentMethodDetail::Card`, `ConfirmationToken::PaymentMethodPreview::Card::GeneratedFrom::PaymentMethodDetail::CardPresent`, `PaymentAttemptRecord::PaymentMethodDetail::CardPresent`, `PaymentMethod::Card::GeneratedFrom::PaymentMethodDetail::CardPresent`, and `PaymentRecord::PaymentMethodDetail::CardPresent`
* Add support for `location` and `reader` on `Charge::PaymentMethodDetail::CardPresent`, `Charge::PaymentMethodDetail::InteracPresent`, `ConfirmationToken::PaymentMethodPreview::Card::GeneratedFrom::PaymentMethodDetail::CardPresent`, `PaymentAttemptRecord::PaymentMethodDetail::CardPresent`, `PaymentAttemptRecord::PaymentMethodDetail::InteracPresent`, `PaymentMethod::Card::GeneratedFrom::PaymentMethodDetail::CardPresent`, `PaymentRecord::PaymentMethodDetail::CardPresent`, and `PaymentRecord::PaymentMethodDetail::InteracPresent`
* Add support for `managed_payments` on `Checkout::SessionCreateParams`, `Checkout::Session`, `PaymentIntent`, `SetupIntent`, and `Subscription`
* Add support for `digital` on `DelegatedCheckout::RequestedSession::FulfillmentDetail::FulfillmentOption`, `DelegatedCheckout::RequestedSession::FulfillmentDetail::SelectedFulfillmentOption`, and `DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetail::SelectedFulfillmentOption`
* Change `DelegatedCheckout::RequestedSessionUpdateParams::FulfillmentDetail::SelectedFulfillmentOption.shipping` to be optional
* Add support for `affiliate_attributions` on `DelegatedCheckout::RequestedSessionConfirmParams`, `DelegatedCheckout::RequestedSessionCreateParams`, and `DelegatedCheckout::RequestedSession`
* Add support for `fulfillment_type` on `DelegatedCheckout::RequestedSession::LineItemDetail`
* Add support for `marketplace_seller_details`, `network_profile`, `privacy_notice_url`, `return_policy_url`, `store_policy_url`, and `terms_of_service_url` on `DelegatedCheckout::RequestedSession::SellerDetail`
* Add support for `amount_to_counter` on `DisputeUpdateParams`
* Add support for `display_name` and `service_user_number` on `Mandate::PaymentMethodDetail::BacsDebit`
* ⚠️ Change type of `PaymentAttemptRecord::PaymentMethodDetail::Boleto.tax_id` and `PaymentRecord::PaymentMethodDetail::Boleto.tax_id` from `string` to `nullable(string)`
* Change type of `PaymentAttemptRecord::PaymentMethodDetail::UsBankAccount.expected_debit_date` and `PaymentRecord::PaymentMethodDetail::UsBankAccount.expected_debit_date` from `nullable(string)` to `string`
* Add support for `request_reauthorization` on `PaymentIntent::PaymentMethodOption::CardPresent`, `PaymentIntent::PaymentMethodOption::Card`, `PaymentIntentConfirmParams::PaymentMethodOption::CardPresent`, `PaymentIntentConfirmParams::PaymentMethodOption::Card`, `PaymentIntentCreateParams::PaymentMethodOption::CardPresent`, `PaymentIntentCreateParams::PaymentMethodOption::Card`, `PaymentIntentUpdateParams::PaymentMethodOption::CardPresent`, and `PaymentIntentUpdateParams::PaymentMethodOption::Card`
* Add support for `transaction_purpose` on `PaymentIntent::PaymentMethodOption::UsBankAccount`, `PaymentIntentConfirmParams::PaymentMethodOption::UsBankAccount`, `PaymentIntentCreateParams::PaymentMethodOption::UsBankAccount`, and `PaymentIntentUpdateParams::PaymentMethodOption::UsBankAccount`
* Add support for `optional_items` on `PaymentLinkUpdateParams`
* ⚠️ Remove support for `card_issuer_decline` on `Radar::PaymentEvaluation::Insight`
* Add support for `payment_behavior` on `SubscriptionItemDeleteParams`
* Add support for `billing_cycle_anchor` on `Subscription::TrialSetting::EndBehavior`
* Add support for `lk` on `Tax::Registration::CountryOption` and `Tax::RegistrationCreateParams::CountryOption`
* Add support for `cellular` and `stripe_s710` on `Terminal::ConfigurationCreateParams`, `Terminal::ConfigurationUpdateParams`, and `Terminal::Configuration`
* Add support for `recipient_onboarding` and `recipient_update` on `V2::Core::AccountLink::UseCase` and `V2::Core::AccountLinkCreateParams::UseCase`
* Add support for `consumer` on `V2::Core::Account::Configuration::Storer::Capability`, `V2::Core::AccountCreateParams::Configuration::Storer::Capability`, and `V2::Core::AccountUpdateParams::Configuration::Storer::Capability`
* Add support for `funds_usage_type` on `V2::MoneyManagement::FinancialAccount::Storage` and `V2::MoneyManagement::FinancialAccountCreateParams::Storage`
* Add support for `purpose` on `V2::MoneyManagement::OutboundPaymentCreateParams` and `V2::MoneyManagement::OutboundPayment`
* Add support for `branch_number` and `swift_code` on `V2::MoneyManagement::PayoutMethod::BankAccount`
* ⚠️ Change `V2::MoneyManagement::Transaction.flow` and `V2::MoneyManagement::TransactionEntry::TransactionDetail.flow` to be optional
* Add support for event notification `V2BillingRateCardCustomPricingUnitOverageRateCreatedEvent` with related object `V2::Billing::RateCardCustomPricingUnitOverageRate`
* Add support for event notifications `V2IamStripeAccessGrantApprovedEvent`, `V2IamStripeAccessGrantCanceledEvent`, `V2IamStripeAccessGrantDeniedEvent`, `V2IamStripeAccessGrantRemovedEvent`, `V2IamStripeAccessGrantRequestedEvent`, and `V2IamStripeAccessGrantUpdatedEvent`
