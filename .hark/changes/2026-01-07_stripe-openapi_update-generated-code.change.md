---
title: Update generated code for private-preview
pr_url: https://github.com/stripe/stripe-ruby/pull/1745
is_stripe_api_change: true
released_in_version: 18.2.0-alpha.2
---

* Nil input params are now preserved when calling V2 APIs.  Add additional tests for nil when calling V2 services you do not accidentally include an unintentional nil value.  V1 API calls are not affected (nil values are stripped from params hashes in V1).
* Add support for new resource `Tax::Location`
* Add support for `create`, `list`, and `retrieve` methods on resource `Tax::Location`
* Add support for `pause` method on resource `Subscription`
* Add support for `performance_location` on `Checkout::SessionCreateParams::LineItem::PriceDatum::ProductDatum::TaxDetail`, `Checkout::SessionUpdateParams::LineItem::PriceDatum::ProductDatum::TaxDetail`, `InvoiceAddLinesParams::Line::PriceDatum::ProductDatum::TaxDetail`, `InvoiceLineItemUpdateParams::PriceDatum::ProductDatum::TaxDetail`, `InvoiceUpdateLinesParams::Line::PriceDatum::ProductDatum::TaxDetail`, `PaymentLinkCreateParams::LineItem::PriceDatum::ProductDatum::TaxDetail`, `ProductCreateParams::TaxDetail`, `ProductUpdateParams::TaxDetail`, `Tax::CalculationCreateParams::LineItem`, and `Tax::CalculationLineItem`
* Change type of `DelegatedCheckout::RequestedSessionUpdateParams.metadata` from `map(string: string)` to `emptyable(map(string: string))`
* Change type of `DelegatedCheckout::RequestedSessionUpdateParams.payment_method_data` from `payment_method_data` to `emptyable(payment_method_data)`
* Change type of `DelegatedCheckout::RequestedSessionUpdateParams.shared_metadata` from `map(string: string)` to `emptyable(map(string: string))`
* Add support for `subscription` on `Invoice::Parent::ScheduleDetail` and `QuotePreviewInvoice::Parent::ScheduleDetail`
* Change type of `PaymentIntentConfirmParams::PaymentDetail::Benefit.fr_meal_voucher`, `PaymentIntentCreateParams::PaymentDetail::Benefit.fr_meal_voucher`, `PaymentIntentUpdateParams::PaymentDetail::Benefit.fr_meal_voucher`, `SetupIntentConfirmParams::SetupDetail::Benefit.fr_meal_voucher`, `SetupIntentCreateParams::SetupDetail::Benefit.fr_meal_voucher`, and `SetupIntentUpdateParams::SetupDetail::Benefit.fr_meal_voucher` from `payment_details_benefit_fr_meal_voucher` to `emptyable(payment_details_benefit_fr_meal_voucher)`
* Add support for `tax_details` on `PlanCreateParams::Product` and `PriceCreateParams::ProductDatum`
* Add support for `external_reference` on `Plan` and `Price`
* Add support for `admissions_tax`, `attendance_tax`, `entertainment_tax`, `gross_receipts_tax`, `hospitality_tax`, `luxury_tax`, `resort_tax`, and `tourism_tax` on `Tax::Registration::CountryOption::Me`
* Add support for `requirements` on `TaxCode`
