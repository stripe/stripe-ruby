---
title: Update generated code
pr_url: https://github.com/stripe/stripe-ruby/pull/1605
is_stripe_api_change: true
released_in_version: 15.2.0
---

* Add support for `attach_payment` method on resource `Invoice`
* Add support for `collect_inputs` method on resource `Terminal::Reader`
* Add support for `succeed_input_collection` and `timeout_input_collection` test helper methods on resource `Terminal::Reader`
* Add support for `pix_payments` on `Account::Capability`, `Account::CreateParams::Capability`, and `Account::UpdateParams::Capability`
* Add support for `disputes_list` and `payment_disputes` on `AccountSession::Component` and `AccountSession::CreateParams::Component`
* Add support for `refund_and_dispute_prefunding` on `Balance`
* Add support for `balance_type` on `BalanceTransaction`
* Change `Billing::Alert::CreateParams::UsageThreshold.meter` to be required
* Add support for `location` and `reader` on `Charge::PaymentMethodDetail::Affirm` and `Charge::PaymentMethodDetail::WechatPay`
* Add support for `payment_method_remove` on `Checkout::Session::CreateParams::SavedPaymentMethodOption`
* Add support for `setup_future_usage` on `Checkout::Session::PaymentMethodOption::NaverPay`
* Change `ConfirmationToken::PaymentMethodPreview::NaverPay.buyer_id` and `PaymentMethod::NaverPay.buyer_id` to be required
* Add support for `post_payment_amount` and `pre_payment_amount` on `CreditNote`
* Add support for `sex`, `unparsed_place_of_birth`, and `unparsed_sex` on `Identity::VerificationReport::Document` and `Identity::VerificationSession::VerifiedOutput`
* Add support for `billing_thresholds` on `Invoice::CreatePreviewParams::ScheduleDetail::Phase::Item`, `Invoice::CreatePreviewParams::ScheduleDetail::Phase`, `Invoice::CreatePreviewParams::SubscriptionDetail::Item`, `Subscription::CreateParams::Item`, `Subscription::CreateParams`, `Subscription::UpdateParams::Item`, `Subscription::UpdateParams`, `SubscriptionItem::CreateParams`, `SubscriptionItem::UpdateParams`, `SubscriptionItem`, `SubscriptionSchedule::CreateParams::DefaultSetting`, `SubscriptionSchedule::CreateParams::Phase::Item`, `SubscriptionSchedule::CreateParams::Phase`, `SubscriptionSchedule::DefaultSetting`, `SubscriptionSchedule::Phase::Item`, `SubscriptionSchedule::Phase`, `SubscriptionSchedule::UpdateParams::DefaultSetting`, `SubscriptionSchedule::UpdateParams::Phase::Item`, `SubscriptionSchedule::UpdateParams::Phase`, and `Subscription`
* Add support for `satispay` on `PaymentIntent::ConfirmParams::PaymentMethodOption`, `PaymentIntent::CreateParams::PaymentMethodOption`, `PaymentIntent::PaymentMethodOption`, and `PaymentIntent::UpdateParams::PaymentMethodOption`
* Add support for `capture_method` on `PaymentIntent::PaymentMethodOption::Billie`
* Add support for `kakao_pay`, `kr_card`, `naver_pay`, `payco`, and `samsung_pay` on `PaymentMethodConfiguration::CreateParams`, `PaymentMethodConfiguration::UpdateParams`, and `PaymentMethodConfiguration`
* Add support for `network_decline_code` on `Refund::DestinationDetail::Paypal`
* Add support for `metadata` on `Tax::Calculation::CreateParams::LineItem` and `Tax::CalculationLineItem`
* Add support for `return_url` on `Terminal::Reader::Action::ProcessPaymentIntent::ProcessConfig` and `Terminal::Reader::ProcessPaymentIntentParams::ProcessConfig`
* Add support for `collect_inputs` on `Terminal::Reader::Action`
