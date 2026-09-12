---
title: Update generated code
pr_url: https://github.com/stripe/stripe-ruby/pull/1627
is_stripe_api_change: true
released_in_version: 15.4.0
---

* Add support for `instant_payouts_promotion` on `AccountSession::Component` and `AccountSession::CreateParams::Component`
* Add support for `adjustable_quantity` on `BillingPortal::Configuration::CreateParams::Feature::SubscriptionUpdate::Product`, `BillingPortal::Configuration::Feature::SubscriptionUpdate::Product`, and `BillingPortal::Configuration::UpdateParams::Feature::SubscriptionUpdate::Product`
* Add support for `transaction_id` on `Charge::PaymentMethodDetail::Cashapp`
* Add support for `origin_context` on `Checkout::Session::CreateParams` and `Checkout::Session`
* Add support for `template` on `Checkout::Session::CreateParams::InvoiceCreation::InvoiceDatum::RenderingOption`, `Checkout::Session::InvoiceCreation::InvoiceDatum::RenderingOption`, `PaymentLink::CreateParams::InvoiceCreation::InvoiceDatum::RenderingOption`, `PaymentLink::InvoiceCreation::InvoiceDatum::RenderingOption`, and `PaymentLink::UpdateParams::InvoiceCreation::InvoiceDatum::RenderingOption`
* Add support for `setup_future_usage` on `Checkout::Session::CreateParams::PaymentMethodOption::Pix` and `Checkout::Session::PaymentMethodOption::Pix`
* Change `Identity::VerificationSession::RelatedPerson.account` to be required
* Change `Identity::VerificationSession::RelatedPerson.person` to be required
* Add support for `duration` on `Invoice::CreatePreviewParams::ScheduleDetail::Phase`, `SubscriptionSchedule::CreateParams::Phase`, and `SubscriptionSchedule::UpdateParams::Phase`
* Change type of `Invoice::CreatePreviewParams::SubscriptionDetail.cancel_at`, `Subscription::CreateParams.cancel_at`, and `Subscription::UpdateParams.cancel_at` from `DateTime` to `DateTime | enum('max_period_end'|'min_period_end')`
* Add support for `price_data` on `PaymentLink::CreateParams::LineItem`
* Change `PaymentLink::CreateParams::LineItem.price` to be optional
* Add support for `standard` on `Tax::Registration::CountryOption::Ae`, `Tax::Registration::CountryOption::Au`, `Tax::Registration::CountryOption::Ch`, `Tax::Registration::CountryOption::Gb`, `Tax::Registration::CountryOption::Jp`, `Tax::Registration::CountryOption::No`, `Tax::Registration::CountryOption::Nz`, `Tax::Registration::CountryOption::Sg`, `Tax::Registration::CreateParams::CountryOption::Ae`, `Tax::Registration::CreateParams::CountryOption::Al`, `Tax::Registration::CreateParams::CountryOption::Ao`, `Tax::Registration::CreateParams::CountryOption::Au`, `Tax::Registration::CreateParams::CountryOption::Aw`, `Tax::Registration::CreateParams::CountryOption::B`, `Tax::Registration::CreateParams::CountryOption::Ba`, `Tax::Registration::CreateParams::CountryOption::Bb`, `Tax::Registration::CreateParams::CountryOption::Bd`, `Tax::Registration::CreateParams::CountryOption::Bf`, `Tax::Registration::CreateParams::CountryOption::Bh`, `Tax::Registration::CreateParams::CountryOption::Cd`, `Tax::Registration::CreateParams::CountryOption::Ch`, `Tax::Registration::CreateParams::CountryOption::Et`, `Tax::Registration::CreateParams::CountryOption::Gb`, `Tax::Registration::CreateParams::CountryOption::Gn`, `Tax::Registration::CreateParams::CountryOption::Is`, `Tax::Registration::CreateParams::CountryOption::Jp`, `Tax::Registration::CreateParams::CountryOption::Me`, `Tax::Registration::CreateParams::CountryOption::Mk`, `Tax::Registration::CreateParams::CountryOption::Mr`, `Tax::Registration::CreateParams::CountryOption::No`, `Tax::Registration::CreateParams::CountryOption::Nz`, `Tax::Registration::CreateParams::CountryOption::Om`, `Tax::Registration::CreateParams::CountryOption::R`, `Tax::Registration::CreateParams::CountryOption::Sg`, `Tax::Registration::CreateParams::CountryOption::Sr`, `Tax::Registration::CreateParams::CountryOption::Uy`, `Tax::Registration::CreateParams::CountryOption::Za`, and `Tax::Registration::CreateParams::CountryOption::Zw`
* Add support for `aed`, `bgn`, `huf`, and `ron` on `Terminal::Configuration::CreateParams::Tipping`, `Terminal::Configuration::Tipping`, and `Terminal::Configuration::UpdateParams::Tipping`
