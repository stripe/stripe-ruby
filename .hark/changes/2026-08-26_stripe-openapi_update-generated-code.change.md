---
title: Update generated code for beta
pr_url: https://github.com/stripe/stripe-ruby/pull/1919
is_breaking: true
is_stripe_api_change: true
released_in_version: 19.7.0-beta.1
---

* Add support for new resources `V2::Core::ApprovalRequest`, `V2::Signals::AccountActivity`, `V2::Signals::AccountEvaluation`, and `V2::Signals::AccountSignal`
* Add support for `list` and `retrieve` methods on resource `V2::Signals::AccountSignal`
* Add support for `create` and `retrieve` methods on resource `V2::Signals::AccountEvaluation`
* Add support for `create`, `delete`, and `retrieve` methods on resource `V2::Signals::AccountActivity`
* Add support for `cancel`, `list`, `retrieve`, and `update` methods on resource `V2::Core::ApprovalRequest`
* Add support for `disable` method on resource `V2::MoneyManagement::PayoutMethod`
* Add support for `disable_stripe_user_authentication` on `AccountSessionCreateParams::Component::PaymentMethodSetting::Feature`
* ⚠️ Remove support for `payment_method_types` on `PaymentIntentConfirmParams`, `PaymentIntentCreateParams`, `PaymentIntentUpdateParams`, `SetupIntentCreateParams`, and `SetupIntentUpdateParams`
* ⚠️ Change type of `ProductCatalog::TrialOffer.price` and `ProductCatalog::TrialOffer::EndBehavior::Transition.price` from `$Price` to `deletable($Price)`
* Add support for `billie` on `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption`
* Add support for `payout_methods` on `V2::Core::Account::Default` and `V2::Core::AccountUpdateParams::Default`
* Add support for `restricted` on `V2::Core::Vault::GbBankAccount` and `V2::Core::Vault::UsBankAccount`
* Add support for `enabled_delivery_schemes` on `V2::MoneyManagement::PayoutMethod::BankAccount`
* ⚠️ Remove support for `enabled_delivery_options` on `V2::MoneyManagement::PayoutMethod::BankAccount`
* Add support for event notifications `V2CoreApprovalRequestApprovedEvent`, `V2CoreApprovalRequestCanceledEvent`, `V2CoreApprovalRequestCreatedEvent`, `V2CoreApprovalRequestExpiredEvent`, `V2CoreApprovalRequestFailedEvent`, `V2CoreApprovalRequestRejectedEvent`, and `V2CoreApprovalRequestSucceededEvent` with related object `V2::Core::ApprovalRequest`
* Add support for event notification `V2SignalsAccountEvaluationCompleteEvent` with related object `V2::Signals::AccountEvaluation`
