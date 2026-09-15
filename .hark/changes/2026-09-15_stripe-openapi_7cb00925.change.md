---
title: Update generated code
pr_url: https://github.com/stripe/stripe-ruby/pull/1963
semver_level: major
is_stripe_api_change: true
---

* ⚠️ Remove support for `nesting_demo` on `AccountSession::Component`
* Add support for `verification_method` on `Checkout::Session::PaymentMethodOption::BacsDebit` and `Checkout::SessionCreateParams::PaymentMethodOption::BacsDebit`
* Add support for `appeal` on `Dispute::Evidence`
* Add support for `bacs_debit` on `Invoice::PaymentSetting::PaymentMethodOption`, `InvoiceCreateParams::PaymentSetting::PaymentMethodOption`, `InvoiceUpdateParams::PaymentSetting::PaymentMethodOption`, `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption`, `Subscription::PaymentSetting::PaymentMethodOption`, `SubscriptionCreateParams::PaymentSetting::PaymentMethodOption`, and `SubscriptionUpdateParams::PaymentSetting::PaymentMethodOption`
* Add support for `pricing_token` on `InvoiceCreatePreviewParams`
* Add support for `funding_source_group` on `PaymentAttemptRecord::PaymentMethodDetail::Link` and `PaymentRecord::PaymentMethodDetail::Link`
* Add support for `payout_method_options` on `PayoutCreateParams`
* ⚠️ Change `ProductCatalog::TrialOffer::EndBehavior.transition` to be optional
* ⚠️ Remove support for `igic` on `Tax::Registration::CountryOption::At`, `Tax::Registration::CountryOption::Be`, `Tax::Registration::CountryOption::Bg`, `Tax::Registration::CountryOption::Cy`, `Tax::Registration::CountryOption::Cz`, `Tax::Registration::CountryOption::De`, `Tax::Registration::CountryOption::Dk`, `Tax::Registration::CountryOption::Ee`, `Tax::Registration::CountryOption::Fi`, `Tax::Registration::CountryOption::Fr`, `Tax::Registration::CountryOption::Gr`, `Tax::Registration::CountryOption::Hr`, `Tax::Registration::CountryOption::Hu`, `Tax::Registration::CountryOption::Ie`, `Tax::Registration::CountryOption::It`, `Tax::Registration::CountryOption::Lt`, `Tax::Registration::CountryOption::Lu`, `Tax::Registration::CountryOption::Lv`, `Tax::Registration::CountryOption::Mt`, `Tax::Registration::CountryOption::Nl`, `Tax::Registration::CountryOption::Pl`, `Tax::Registration::CountryOption::Pt`, `Tax::Registration::CountryOption::Ro`, `Tax::Registration::CountryOption::Se`, `Tax::Registration::CountryOption::Si`, and `Tax::Registration::CountryOption::Sk`
