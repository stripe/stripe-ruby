---
title: Update generated code for private-preview
pr_url: https://github.com/stripe/stripe-ruby/pull/1905
is_breaking: true
is_stripe_api_change: true
released_in_version: 19.4.0-alpha.4
---

* ⚠️ Remove support for resource `FrMealVouchersOnboarding`
* ⚠️ Remove support for `create`, `list`, `retrieve`, and `update` methods on resource `FrMealVouchersOnboarding`
* Add support for `create` method on resource `PaymentRecord`
* ⚠️ Remove support for `financial_accounts_transactions`, `financial_accounts`, and `recipients_list` on `AccountSessionCreateParams::Component`
* Add support for `smart_disputes_management` on `AccountSession::Component::DisputesList::Feature`, `AccountSession::Component::Payment::Feature`, `AccountSession::Component::PaymentDetail::Feature`, and `AccountSession::Component::PaymentDispute::Feature`
* Add support for `mode` on `FinancialConnections::Session::ManualEntry`
* Add support for `business_name` on `Issuing::Card::Shipping`
* ⚠️ Change type of `Issuing::Transaction::NetworkDatum.trace_id` from `IssuingTransactionTraceId` to `nullable(IssuingTransactionTraceId)`
* Add support for `pause_schedules` on `QuotePreviewSubscriptionSchedule`, `SubscriptionScheduleCreateParams`, `SubscriptionScheduleUpdateParams`, and `SubscriptionSchedule`
* Add support for `trial` on `QuotePreviewSubscriptionSchedule::Phase` and `SubscriptionSchedule::Phase`
* Add support for `payment_record` on `RefundCreateParams`
* Add support for `redirect_to_url` on `SharedPayment::IssuedToken::NextAction`
* ⚠️ Change type of `SharedPayment::IssuedToken::NextAction.type` from `literal('use_stripe_sdk')` to `enum('redirect_to_url'|'use_stripe_sdk')`
