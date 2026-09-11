---
title: Update generated code for beta
pr_link: https://github.com/stripe/stripe-ruby/pull/1599
is_stripe_api_change: true
released_in_version: 15.3.0-beta.1
---

### Breaking changes
* Remove support for deprecated previews
  * Remove support for resources `Billing::MeterErrorReport`, `GiftCards::Card`, `GiftCards::Transaction`, and `Privacy::RedactionJobRootObjects`
  * Remove support for `create`, `list`, `retrieve`, `update`, and `validate` methods on resource `GiftCards::Card`
  * Remove support for `cancel`, `confirm`, `create`, `list`, `retrieve`, and `update` methods on resource `GiftCards::Transaction`
  * Remove support for `provisioning` on `Product::CreateParams` and `Product`
* Change type of `Checkout::Session::UpdateParams::LineItem.quantity` from `emptyable(longInteger)` to `longInteger`
* Change `CreditNote.post_payment_amount` to be required
* Change `CreditNote.pre_payment_amount` to be required
* Remove support for `credits` on `Order::CreateParams`, `Order::UpdateParams`, and `Order`
* Remove support for `amount_remaining` on `Order`
* Remove support for `amount_credit` on `Order::TotalDetail`
* Change type of `Invoice::CreatePreviewParams::SubscriptionDetail.cancel_at`, `Subscription::CreateParams.cancel_at`, and `Subscription::UpdateParams.cancel_at` from `DateTime` to `DateTime | enum('max_period_end'|'min_period_end')`
* Change type of `PaymentAttemptRecord.metadata` and `PaymentRecord.metadata` from `nullable(map(string: string))` to `map(string: string)`
* Change type of `PaymentRecord::ReportPaymentAttemptCanceledParams.metadata`, `PaymentRecord::ReportPaymentAttemptFailedParams.metadata`, `PaymentRecord::ReportPaymentAttemptGuaranteedParams.metadata`, `PaymentRecord::ReportPaymentAttemptParams.metadata`, and `PaymentRecord::ReportPaymentParams.metadata` from `map(string: string)` to `emptyable(map(string: string))`
* Change type of `Privacy::RedactionJob.objects` from `$Privacy.RedactionJobRootObjects` to `RedactionResourceRootObjects`
* Change type of `Privacy::RedactionJobValidationError.erroring_object` from `map(string: string)` to `RedactionResourceErroringObject`
* Remove support for `async_workflows` on `PaymentIntent::CaptureParams`, `PaymentIntent::ConfirmParams`, `PaymentIntent::CreateParams`, `PaymentIntent::DecrementAuthorizationParams`, `PaymentIntent::IncrementAuthorizationParams`, `PaymentIntent::UpdateParams`, and `PaymentIntent`
* Remove support for `status_details` and `status` on `Tax::Association`

### Other changes
* Add support for `migrate` method on resource `Subscription`
* Add support for `distance`, `pickup_location_name`, `return_location_name`, and `vehicle_identification_number` on `Charge::CaptureParams::PaymentDetail::CarRental`, `Charge::UpdateParams::PaymentDetail::CarRental`, `PaymentIntent::CaptureParams::PaymentDetail::CarRental`, `PaymentIntent::ConfirmParams::PaymentDetail::CarRental`, `PaymentIntent::CreateParams::PaymentDetail::CarRental`, `PaymentIntent::PaymentDetail::CarRental`, and `PaymentIntent::UpdateParams::PaymentDetail::CarRental`
* Add support for `driver_identification_number` and `driver_tax_number` on `Charge::CaptureParams::PaymentDetail::CarRental::Driver`, `Charge::UpdateParams::PaymentDetail::CarRental::Driver`, `PaymentIntent::CaptureParams::PaymentDetail::CarRental::Driver`, `PaymentIntent::ConfirmParams::PaymentDetail::CarRental::Driver`, `PaymentIntent::CreateParams::PaymentDetail::CarRental::Driver`, `PaymentIntent::PaymentDetail::CarRental::Driver`, and `PaymentIntent::UpdateParams::PaymentDetail::CarRental::Driver`
* Add support for `institution` on `FinancialConnections::Account`
* Add support for `countries` on `FinancialConnections::Institution`
* Add support for `location` and `reader` on `PaymentAttemptRecord::PaymentMethodDetail::Affirm`, `PaymentAttemptRecord::PaymentMethodDetail::WechatPay`, `PaymentRecord::PaymentMethodDetail::Affirm`, and `PaymentRecord::PaymentMethodDetail::WechatPay`
* Add support for `hooks` on `PaymentIntent::CaptureParams`, `PaymentIntent::ConfirmParams`, `PaymentIntent::CreateParams`, `PaymentIntent::DecrementAuthorizationParams`, `PaymentIntent::IncrementAuthorizationParams`, `PaymentIntent::UpdateParams`, and `PaymentIntent`
* Add support for `card_present` on `PaymentIntentAmountDetailsLineItem::PaymentMethodOption`
* Add support for `livemode` on `Privacy::RedactionJob`
* Add support for `billing_thresholds` on `QuotePreviewSubscriptionSchedule::DefaultSetting`, `QuotePreviewSubscriptionSchedule::Phase::Item`, and `QuotePreviewSubscriptionSchedule::Phase`
* Add support for `billing_mode_details` on `Subscription`
* Add support for `tax_transaction_attempts` on `Tax::Association`
* Add support for `confirm_config` on `Terminal::Reader::Action::ConfirmPaymentIntent` and `Terminal::Reader::ConfirmPaymentIntentParams`
