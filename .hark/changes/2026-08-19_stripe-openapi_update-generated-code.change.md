---
title: Update generated code for private-preview
pr_url: https://github.com/stripe/stripe-ruby/pull/1933
is_breaking: true
is_stripe_api_change: true
released_in_version: 19.6.0-alpha.2
---

* Add support for new resources `Billing::FeedbackOption` and `PaymentPlan`
* ⚠️ Remove support for resource `Billing::FeedbackOptions`
* Add support for `create`, `list`, `retrieve`, and `update` methods on resource `PaymentPlan`
* Add support for `update` method on resource `V2::MoneyManagement::Transaction`
* Add support for `wechat_pay_payments` on `Account::Setting`, `AccountCreateParams::Setting`, and `AccountUpdateParams::Setting`
* ⚠️ Change type of `BillingPortal::Configuration::Feature::SubscriptionCancel::CancellationReason.feedback_options` from `$Billing.FeedbackOptions` to `$Billing.FeedbackOption`
* Change `BillingPortal::Configuration::Feature::SubscriptionCancel::CancellationReason.feedback_options` to be required
* Add support for `subscription_pause` on `BillingPortal::Session::Flow`
* Add support for `active_entitlements` on `CustomerSession::Component`
* Add support for `shared_payment_issued_token` on `DelegatedCheckout::RequestedSessionConfirmParams`
* Add support for `managed_payments` on `InvoiceCreateParams`, `InvoiceItemCreateParams`, `InvoiceItem`, `Invoice`, and `QuotePreviewInvoice`
* Add support for `payment_plan` on `Invoice`
* Add support for `estimated_fee_details` and `estimated_fee` on `Issuing::Authorization::PendingRequest::HoldAmountDetail` and `Issuing::Authorization::RequestHistory::HoldAmountDetail`
* ⚠️ Remove support for `cryptogram` on `PaymentAttemptRecord::PaymentMethodDetail::Card::ThreeDSecure` and `PaymentRecord::PaymentMethodDetail::Card::ThreeDSecure`
* ⚠️ Change type of `ProductCatalog::TrialOffer::EndBehavior::Transition.price` from `$Price` to `deletable($Price)`
* ⚠️ Change type of `Subscription::CancellationDetail.feedback_option` from `$Billing.FeedbackOptions` to `$Billing.FeedbackOption`
* Add support for `cancel_at_period_end` on `Subscription::PendingUpdate`
* Change `Subscription::CancellationDetail.feedback_option` to be required
* Add support for `igic` on `Tax::Registration::CountryOption::At`, `Tax::Registration::CountryOption::Be`, `Tax::Registration::CountryOption::Bg`, `Tax::Registration::CountryOption::Cy`, `Tax::Registration::CountryOption::Cz`, `Tax::Registration::CountryOption::De`, `Tax::Registration::CountryOption::Dk`, `Tax::Registration::CountryOption::E`, `Tax::Registration::CountryOption::Ee`, `Tax::Registration::CountryOption::Fi`, `Tax::Registration::CountryOption::Fr`, `Tax::Registration::CountryOption::Gr`, `Tax::Registration::CountryOption::Hr`, `Tax::Registration::CountryOption::Hu`, `Tax::Registration::CountryOption::Ie`, `Tax::Registration::CountryOption::It`, `Tax::Registration::CountryOption::Lt`, `Tax::Registration::CountryOption::Lu`, `Tax::Registration::CountryOption::Lv`, `Tax::Registration::CountryOption::Mt`, `Tax::Registration::CountryOption::Nl`, `Tax::Registration::CountryOption::Pl`, `Tax::Registration::CountryOption::Pt`, `Tax::Registration::CountryOption::Ro`, `Tax::Registration::CountryOption::Se`, `Tax::Registration::CountryOption::Si`, and `Tax::Registration::CountryOption::Sk`
* Add support for `metadata` on `V2::Billing::Contract::PricingLine::Datum::Pricing::PriceDetail::PricingOverride::Datum`, `V2::Billing::Contract::PricingOverride::Datum`, `V2::Billing::ContractCreateParams::PricingOverride`, `V2::Billing::ContractUpdateParams::PricingLineAction::Update`, `V2::Billing::ContractUpdateParams::PricingOverrideAction::Add`, `V2::Billing::ContractUpdateParams::PricingOverrideAction::Update`, `V2::Billing::ContractUpdateParams`, and `V2::MoneyManagement::Transaction`
* Add support for `tax_amount` on `V2::MoneyManagement::OutboundPaymentQuote::EstimatedFee`
* Add support for `payout_method_options` on `V2::MoneyManagement::OutboundPaymentQuote::To` and `V2::MoneyManagement::OutboundPaymentQuoteCreateParams::To`
* Change type of `V2::Billing::ContractUpdateParams::PricingLineAction::Update::Pricing::PriceDetail::PricingOverrideAction::Update.metadata` from `string` to `emptyable(string)`
