---
title: Update generated code for beta
pr_link: https://github.com/stripe/stripe-ruby/pull/1857
is_breaking: true
is_stripe_api_change: true
released_in_version: 19.3.0-beta.1
---

* Add support for `pause` method on resource `Subscription`
* Add support for `retrieve` method on resource `V2::Iam::ActivityLog`
* Change type of `ProductCatalog::TrialOffer::EndBehavior::Transition.price` from `string` to `expandable($Price)`
* Add support for `amount_paid_off_stripe` on `QuotePreviewInvoice`
* Add support for `discountable` on `QuotePreviewSubscriptionSchedule::Phase::AddInvoiceItem`
* Add support for `bizum` and `scalapay` on `SharedPayment::GrantedToken::PaymentMethodDetail`
* Change `SharedPayment::GrantedToken.agent_details` to be required
* Change type of `SubscriptionItem.billed_until` from `nullable(DateTime)` to `DateTime`
* Add support for `payment_behavior` on `SubscriptionResumeParams`
* Add support for `status_details` on `Subscription`
* Change `Subscription.billing_schedules` to be required
* ⚠️ Change type of `V2::MoneyManagement::ReceivedCredit::BankTransfer::GbBankAccount.network` from `literal('fps')` to `enum('chaps'|'fps')`
