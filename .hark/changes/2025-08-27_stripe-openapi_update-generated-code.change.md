---
title: Update generated code.
pr_link: https://github.com/stripe/stripe-ruby/pull/1631
is_stripe_api_change: true
released_in_version: 15.5.0
---

* Add support for `balance_report`, `payout_details`, and `payout_reconciliation_report` on `AccountSession::Component` and `AccountSession::CreateParams::Component`
* Add support for `name` on `BillingPortal::Configuration::CreateParams`, `BillingPortal::Configuration::UpdateParams`, and `BillingPortal::Configuration`
* Add support for `installments` on `Charge::PaymentMethodDetail::Alma`
* Add support for `transaction_id` on `Charge::PaymentMethodDetail::Alma`, `Charge::PaymentMethodDetail::AmazonPay`, `Charge::PaymentMethodDetail::Billie`, `Charge::PaymentMethodDetail::KakaoPay`, `Charge::PaymentMethodDetail::KrCard`, `Charge::PaymentMethodDetail::NaverPay`, `Charge::PaymentMethodDetail::Payco`, `Charge::PaymentMethodDetail::RevolutPay`, `Charge::PaymentMethodDetail::SamsungPay`, and `Charge::PaymentMethodDetail::Satispay`
* Add support for `location` and `reader` on `Charge::PaymentMethodDetail::Paynow`
* Add support for `amount_includes_iof` on `Checkout::Session::CreateParams::PaymentMethodOption::Pix`, `Checkout::Session::PaymentMethodOption::Pix`, `PaymentIntent::ConfirmParams::PaymentMethodOption::Pix`, `PaymentIntent::CreateParams::PaymentMethodOption::Pix`, `PaymentIntent::PaymentMethodOption::Pix`, and `PaymentIntent::UpdateParams::PaymentMethodOption::Pix`
* Add support for `metadata` and `period` on `Invoice::CreatePreviewParams::ScheduleDetail::Phase::AddInvoiceItem`, `Subscription::CreateParams::AddInvoiceItem`, `Subscription::UpdateParams::AddInvoiceItem`, `SubscriptionSchedule::CreateParams::Phase::AddInvoiceItem`, `SubscriptionSchedule::Phase::AddInvoiceItem`, and `SubscriptionSchedule::UpdateParams::Phase::AddInvoiceItem`
* Add support for `exp_month` and `exp_year` on `Issuing::Card::CreateParams`
* Add support for `excluded_payment_method_types` on `PaymentIntent::CreateParams` and `PaymentIntent`
* Add support for `payout_method` on `Payout::CreateParams` and `Payout`
* Add support for `mxn` on `Terminal::Configuration::CreateParams::Tipping`, `Terminal::Configuration::Tipping`, and `Terminal::Configuration::UpdateParams::Tipping`
* Add support for `card` on `Terminal::Reader::PresentPaymentMethodParams`
