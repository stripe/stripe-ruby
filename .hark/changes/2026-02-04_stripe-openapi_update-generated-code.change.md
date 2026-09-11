---
title: Update generated code for private-preview
pr_link: https://github.com/stripe/stripe-ruby/pull/1774
is_stripe_api_change: true
released_in_version: 18.4.0-alpha.2
---

* Add support for new resource `V2::Core::ConnectionSession`
* Add support for `create` and `retrieve` methods on resource `V2::Core::ConnectionSession`
* Add support for `list` method on resources `V2::Payments::SettlementAllocationIntentSplit` and `V2::Payments::SettlementAllocationIntent`
* Add support for `agentic_commerce_settings` on `AccountSessionCreateParams::Component`
* Add support for `terminal_hardware_orders` and `terminal_hardware_shop` on `AccountSession::Component` and `AccountSessionCreateParams::Component`
* Add support for `network_cost_passthrough_report` on `AccountSession::Component`
* Add support for `cadence_data` on `V2::Billing::IntentCreateParams` and `V2::Billing::Intent`
* Add support for `cancellation_details` on `V2::Billing::IntentAction::Deactivate`, `V2::Billing::IntentCreateParams::Action::Deactivate`, and `V2::Billing::PricingPlanSubscription`
* Add support for `contact_phone` on `V2::Core::AccountCreateParams`, `V2::Core::AccountTokenCreateParams`, `V2::Core::AccountUpdateParams`, and `V2::Core::Account`
* Add support for `registration_date` on `V2::Core::Account::Identity::BusinessDetail`, `V2::Core::AccountCreateParams::Identity::BusinessDetail`, `V2::Core::AccountTokenCreateParams::Identity::BusinessDetail`, and `V2::Core::AccountUpdateParams::Identity::BusinessDetail`
* Add support for `reference` on `V2::MoneyManagement::Adjustment`
* Add support for `accrued_fees` on `V2::MoneyManagement::FinancialAccount`
* Add support for `starting_balance` on `V2::MoneyManagement::FinancialAccount::Payment`
* Add support for `account_holder_address` and `account_holder_name` on `V2::MoneyManagement::FinancialAddress::Credential::UsBankAccount`
* Add support for `fingerprint` on `V2::MoneyManagement::PayoutMethod::Card`
* Add support for `card_spend` on `V2::MoneyManagement::ReceivedCredit` and `V2::MoneyManagement::ReceivedDebit`
* Add support for `application_fee_refund`, `application_fee`, `charge`, `dispute`, `payout`, `refund`, `reserve_hold`, `reserve_release`, `topup`, `transfer_reversal`, and `transfer` on `V2::MoneyManagement::Transaction::Flow` and `V2::MoneyManagement::TransactionEntry::TransactionDetail::Flow`
* Change `V2::Payments::SettlementAllocationIntentSplit.flow` to be optional
* Change `V2::Billing::RateCardRateCreateParams.metered_item` to be required
