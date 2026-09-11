---
title: Update generated code for beta
pr_link: https://github.com/stripe/stripe-ruby/pull/1629
is_stripe_api_change: true
released_in_version: 15.6.0-alpha.1
---

* Add support for `list` and `retrieve` methods on resource `InvoicePayment`
* Add support for `list` method on resource `Mandate`
* Add support for `applied` on `V2::Core::Account::Configuration::Customer`, `V2::Core::Account::Configuration::Merchant`, `V2::Core::Account::Configuration::Recipient`, `V2::Core::Account::Configuration::Storer`, `V2::Core::Account::UpdateParams::Configuration::Customer`, `V2::Core::Account::UpdateParams::Configuration::Merchant`, `V2::Core::Account::UpdateParams::Configuration::Recipient`, and `V2::Core::Account::UpdateParams::Configuration::Storer`
* Change type of `Billing::AlertTriggered.value` from `longInteger` to `decimal_string`
* Add support for `display_name` on `V2::MoneyManagement::FinancialAccount::CreateParams` and `V2::MoneyManagement::FinancialAccount`
* Add support for `currency_conversion` on `V2::MoneyManagement::Transaction::Flow` and `V2::MoneyManagement::TransactionEntry::TransactionDetail::Flow`
* Add support for `payments` on `BalanceSettings::UpdateParams` and `BalanceSettings`
* Remove support for `debit_negative_balances`, `payouts`, and `settlement_timing` on `BalanceSettings::UpdateParams` and `BalanceSettings`
* Add support for `mandate` on `Charge::PaymentMethodDetail::Pix`, `PaymentAttemptRecord::PaymentMethodDetail::Pix`, and `PaymentRecord::PaymentMethodDetail::Pix`
* Add support for `coupon_data` on `Checkout::Session::CreateParams::Discount`
* Add support for `mandate_options` on `Checkout::Session::CreateParams::PaymentMethodOption::Pix`, `Checkout::Session::PaymentMethodOption::Pix`, `PaymentIntent::ConfirmParams::PaymentMethodOption::Pix`, `PaymentIntent::CreateParams::PaymentMethodOption::Pix`, `PaymentIntent::PaymentMethodOption::Pix`, and `PaymentIntent::UpdateParams::PaymentMethodOption::Pix`
* Change type of `Checkout::Session::CreateParams::PaymentMethodOption::Pix.setup_future_usage`, `Checkout::Session::PaymentMethodOption::Pix.setup_future_usage`, `PaymentIntent::ConfirmParams::PaymentMethodOption::Pix.setup_future_usage`, `PaymentIntent::CreateParams::PaymentMethodOption::Pix.setup_future_usage`, `PaymentIntent::PaymentMethodOption::Pix.setup_future_usage`, and `PaymentIntent::UpdateParams::PaymentMethodOption::Pix.setup_future_usage` from `literal('none')` to `enum('none'|'off_session')`
* Add support for `amount` on `Mandate::MultiUse`, `PaymentAttemptRecord`, and `PaymentRecord`
* Add support for `currency` on `Mandate::MultiUse`
* Add support for `pix` on `Mandate::PaymentMethodDetail`, `SetupAttempt::PaymentMethodDetail`, `SetupIntent::ConfirmParams::PaymentMethodOption`, `SetupIntent::CreateParams::PaymentMethodOption`, `SetupIntent::PaymentMethodOption`, and `SetupIntent::UpdateParams::PaymentMethodOption`
* Add support for `limit` on `PaymentAttemptRecord::ListParams`
* Add support for `amount_authorized`, `amount_refunded`, and `application` on `PaymentAttemptRecord` and `PaymentRecord`
* Add support for `processor_details` on `PaymentAttemptRecord`, `PaymentRecord::ReportPaymentParams`, and `PaymentRecord`
* Remove support for `payment_reference` on `PaymentAttemptRecord`, `PaymentRecord::ReportPaymentParams`, and `PaymentRecord`
* Add support for `installments` on `PaymentAttemptRecord::PaymentMethodDetail::Alma` and `PaymentRecord::PaymentMethodDetail::Alma`
* Add support for `transaction_id` on `PaymentAttemptRecord::PaymentMethodDetail::Alma`, `PaymentAttemptRecord::PaymentMethodDetail::AmazonPay`, `PaymentAttemptRecord::PaymentMethodDetail::Billie`, `PaymentAttemptRecord::PaymentMethodDetail::KakaoPay`, `PaymentAttemptRecord::PaymentMethodDetail::KrCard`, `PaymentAttemptRecord::PaymentMethodDetail::NaverPay`, `PaymentAttemptRecord::PaymentMethodDetail::Payco`, `PaymentAttemptRecord::PaymentMethodDetail::RevolutPay`, `PaymentAttemptRecord::PaymentMethodDetail::SamsungPay`, `PaymentAttemptRecord::PaymentMethodDetail::Satispay`, `PaymentRecord::PaymentMethodDetail::Alma`, `PaymentRecord::PaymentMethodDetail::AmazonPay`, `PaymentRecord::PaymentMethodDetail::Billie`, `PaymentRecord::PaymentMethodDetail::KakaoPay`, `PaymentRecord::PaymentMethodDetail::KrCard`, `PaymentRecord::PaymentMethodDetail::NaverPay`, `PaymentRecord::PaymentMethodDetail::Payco`, `PaymentRecord::PaymentMethodDetail::RevolutPay`, `PaymentRecord::PaymentMethodDetail::SamsungPay`, and `PaymentRecord::PaymentMethodDetail::Satispay`
* Add support for `location` and `reader` on `PaymentAttemptRecord::PaymentMethodDetail::Paynow` and `PaymentRecord::PaymentMethodDetail::Paynow`
* Add support for `latest_active_mandate` on `PaymentMethod`
* Change `Payout.payout_method` to be required
* Add support for `metadata` and `period` on `QuotePreviewSubscriptionSchedule::Phase::AddInvoiceItem`
* Add support for `pix_display_qr_code` on `SetupIntent::NextAction`
* Add support for `reader_security` on `Terminal::Configuration::CreateParams`, `Terminal::Configuration::UpdateParams`, and `Terminal::Configuration`
