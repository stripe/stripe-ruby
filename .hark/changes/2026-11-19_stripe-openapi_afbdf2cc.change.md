---
title: Update generated code
pr_url: https://github.com/stripe/stripe-ruby/pull/2018
semver_level: major
is_stripe_api_change: true
released_in_version: 21.2.0-beta.1
---

* ⚠️ Remove support for resource `V2::Billing::Cadence`
* Add support for `create` and `refill` test helper methods on resource `Capital::FinancingOffer`
* ⚠️ Remove support for `cancel`, `create`, `list`, `retrieve`, and `update` methods on resource `V2::Billing::Cadence`
* Add support for `export_tax_transactions`, `product_tax_code_selector`, and `tax_threshold_monitoring` on `AccountSession::Component`
* Add support for `custom` on `CouponCreateParams` and `Coupon`
* Add support for `type` on `CouponCreateParams` and `CustomerCustomerBalanceTransactionCreateParams`
* Add support for `applied_to_invoice` on `CustomerCustomerBalanceTransactionCreateParams`
* Add support for `customer_balance` on `Invoice` and `QuotePreviewInvoice`
* ⚠️ Change type of `PaymentIntent::NextAction::VerifyWithMicrodeposit.arrival_date` and `SetupIntent::NextAction::VerifyWithMicrodeposit.arrival_date` from `DateTime` to `nullable(DateTime)`
* Add support for `connect`, `data_export`, `event_destination`, `radar`, and `user_access` on `V2::Iam::ActivityLog::Detail`
* Add support for `apple_pay` on `V2::MoneyManagement::OutboundSetupIntentCreateParams::PayoutMethodDatum` and `V2::MoneyManagement::PayoutMethod`
* Add support for `network` and `originating_bank_account` on `V2::MoneyManagement::ReceivedDebit::BankTransfer`
* Add support for `created` on `V2::MoneyManagement::ReceivedDebitListParams`
* Add support for `logs_from` on `V2::Iam::ActivityLogListParams`
* Add support for `severity` on `EventsV2CoreHealthEventGenerationFailureResolvedEvent`
