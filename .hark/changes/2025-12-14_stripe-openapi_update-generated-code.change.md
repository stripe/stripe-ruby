---
title: Update generated code for private-preview
pr_link: https://github.com/stripe/stripe-ruby/pull/1743
is_stripe_api_change: true
released_in_version: 18.2.0-alpha.1
---

* Add support for new resources `SharedPayment::GrantedToken`, `V2::Iam::ApiKey`, `V2::Payments::SettlementAllocationIntentSplit`, `V2::Payments::SettlementAllocationIntent`, and `V2::Tax::ManualRule`
* Add support for `retrieve` method on resource `SharedPayment::GrantedToken`
* Add support for `create` and `update` test helper methods on resource `SharedPayment::GrantedToken`
* Add support for `create`, `deactivate`, `list`, `retrieve`, and `update` methods on resource `V2::Tax::ManualRule`
* Add support for `cancel`, `create`, `retrieve`, `submit`, and `update` methods on resource `V2::Payments::SettlementAllocationIntent`
* Add support for `cancel`, `create`, and `retrieve` methods on resource `V2::Payments::SettlementAllocationIntentSplit`
* Add support for `create`, `expire`, `list`, `retrieve`, `rotate`, and `update` methods on resource `V2::Iam::ApiKey`
* Add support for `check_scanning` on `AccountSessionCreateParams::Component`
* Add support for `tax_details` on `Checkout::SessionCreateParams::LineItem::PriceDatum::ProductDatum`, `Checkout::SessionUpdateParams::LineItem::PriceDatum::ProductDatum`, `InvoiceAddLinesParams::Line::PriceDatum::ProductDatum`, `InvoiceLineItemUpdateParams::PriceDatum::ProductDatum`, `InvoiceUpdateLinesParams::Line::PriceDatum::ProductDatum`, `PaymentLinkCreateParams::LineItem::PriceDatum::ProductDatum`, `ProductCreateParams`, and `ProductUpdateParams`
* Add support for `payment_method_data` on `DelegatedCheckout::RequestedSessionConfirmParams`
* Add support for `product_details` on `DelegatedCheckout::RequestedSession::LineItemDetail`
* Add support for `wallets` on `Issuing::CardListParams`
* Add support for `primary_account_identifier` on `Issuing::Card::Wallet::ApplePay` and `Issuing::Card::Wallet::GooglePay`
* Add support for `shared_payment_granted_token` on `PaymentIntentConfirmParams`, `PaymentIntentCreateParams`, and `PaymentIntent`
* Change `ProductCatalog::TrialOffer::Duration.relative` to be optional
* Add support for `instant` on `V2::Account::Configuration::RecipientDatum::Feature::BankAccount`, `V2::AccountCreateParams::Configuration::RecipientDatum::Feature::BankAccount`, `V2::AccountUpdateParams::Configuration::RecipientDatum::Feature::BankAccount`, `V2::Core::Account::Configuration::Recipient::Capability::BankAccount`, `V2::Core::AccountCreateParams::Configuration::Recipient::Capability::BankAccount`, and `V2::Core::AccountUpdateParams::Configuration::Recipient::Capability::BankAccount`
* Add support for `collect_at` on `V2::Billing::IntentAction::Deactivate`, `V2::Billing::IntentAction::Modify`, `V2::Billing::IntentAction::Subscribe`, `V2::Billing::IntentCreateParams::Action::Deactivate`, `V2::Billing::IntentCreateParams::Action::Modify`, and `V2::Billing::IntentCreateParams::Action::Subscribe`
* Remove support for `billing_details` on `V2::Billing::IntentAction::Deactivate`, `V2::Billing::IntentAction::Modify`, `V2::Billing::IntentAction::Subscribe`, `V2::Billing::IntentCreateParams::Action::Deactivate`, `V2::Billing::IntentCreateParams::Action::Modify`, and `V2::Billing::IntentCreateParams::Action::Subscribe`
* Add support for `overrides` on `V2::Billing::IntentAction::Deactivate::PricingPlanSubscriptionDetail`, `V2::Billing::IntentAction::Modify::PricingPlanSubscriptionDetail`, `V2::Billing::IntentAction::Subscribe::PricingPlanSubscriptionDetail`, `V2::Billing::IntentCreateParams::Action::Deactivate::PricingPlanSubscriptionDetail`, `V2::Billing::IntentCreateParams::Action::Modify::PricingPlanSubscriptionDetail`, and `V2::Billing::IntentCreateParams::Action::Subscribe::PricingPlanSubscriptionDetail`
* Remove support for `requested` on `V2::Core::Account::Configuration::CardCreator::Capability::Commercial::Celtic::ChargeCard`, `V2::Core::Account::Configuration::CardCreator::Capability::Commercial::Celtic::SpendCard`, `V2::Core::Account::Configuration::CardCreator::Capability::Commercial::CrossRiverBank::ChargeCard`, `V2::Core::Account::Configuration::CardCreator::Capability::Commercial::CrossRiverBank::SpendCard`, `V2::Core::Account::Configuration::CardCreator::Capability::Commercial::Lead::PrepaidCard`, `V2::Core::Account::Configuration::CardCreator::Capability::Commercial::Stripe::ChargeCard`, `V2::Core::Account::Configuration::CardCreator::Capability::Commercial::Stripe::PrepaidCard`, `V2::Core::Account::Configuration::Recipient::Capability::CryptoWallet`, `V2::Core::Account::Configuration::Storer::Capability::FinancialAddress::CryptoWallet`, `V2::Core::Account::Configuration::Storer::Capability::HoldsCurrency::Usdc`, `V2::Core::Account::Configuration::Storer::Capability::OutboundPayment::CryptoWallet`, and `V2::Core::Account::Configuration::Storer::Capability::OutboundTransfer::CryptoWallet`
* Add support for `alternative_reference` on `V2::Core::Vault::GbBankAccount`, `V2::Core::Vault::UsBankAccount`, and `V2::MoneyManagement::PayoutMethod`
* Add support for `managed_by` and `payments` on `V2::MoneyManagement::FinancialAccount`
* Add support for `speed` on `V2::MoneyManagement::OutboundPayment::DeliveryOption`, `V2::MoneyManagement::OutboundPaymentCreateParams::DeliveryOption`, `V2::MoneyManagement::OutboundPaymentQuote::DeliveryOption`, and `V2::MoneyManagement::OutboundPaymentQuoteCreateParams::DeliveryOption`
* Add support for `types` on `V2::MoneyManagement::FinancialAccountListParams`
* Add support for `top_impacted_accounts` on `EventsV2CoreHealthApiErrorFiringEvent`, `EventsV2CoreHealthApiErrorResolvedEvent`, `EventsV2CoreHealthApiLatencyFiringEvent`, `EventsV2CoreHealthApiLatencyResolvedEvent`, `EventsV2CoreHealthPaymentMethodErrorFiringEvent`, and `EventsV2CoreHealthPaymentMethodErrorResolvedEvent`
* Add support for event notifications `V2CoreHealthSepaDebitDelayedFiringEvent`, `V2CoreHealthSepaDebitDelayedResolvedEvent`, and `V2PaymentsSettlementAllocationIntentNotFoundEvent`
* Add support for event notifications `V2PaymentsSettlementAllocationIntentCanceledEvent`, `V2PaymentsSettlementAllocationIntentCreatedEvent`, `V2PaymentsSettlementAllocationIntentErroredEvent`, `V2PaymentsSettlementAllocationIntentFundsNotReceivedEvent`, `V2PaymentsSettlementAllocationIntentMatchedEvent`, `V2PaymentsSettlementAllocationIntentSettledEvent`, and `V2PaymentsSettlementAllocationIntentSubmittedEvent` with related object `V2::Payments::SettlementAllocationIntent`
* Add support for event notifications `V2PaymentsSettlementAllocationIntentSplitCanceledEvent`, `V2PaymentsSettlementAllocationIntentSplitCreatedEvent`, and `V2PaymentsSettlementAllocationIntentSplitSettledEvent` with related object `V2::Payments::SettlementAllocationIntentSplit`
