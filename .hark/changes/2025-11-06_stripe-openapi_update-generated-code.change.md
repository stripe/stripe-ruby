---
title: Update generated code for private-preview
pr_url: https://github.com/stripe/stripe-ruby/pull/1720
is_stripe_api_change: true
released_in_version: 17.3.0-alpha.1
---

* Add support for new resources `TransitBalance`, `V2::Reporting::ReportRun`, `V2::Reporting::Report`
* Add support for `create` and `retrieve` methods on resources `V2::Billing::ServiceAction` and `V2::Reporting::ReportRun`
  * Add support for `retrieve` method on resources `V2::Billing::LicenseFeeSubscription` and `V2::Reporting::Report`
* Add support for `create` and `refill` test helper methods on resource `Capital::FinancingOffer`
* Add support for `allocated_funds` on `Charge`, `PaymentIntentConfirmParams`, `PaymentIntentCreateParams`, and `PaymentIntentUpdateParams`
* Add support for thin events `V2ReportingReportRunCreatedEvent`, `V2ReportingReportRunFailedEvent`, `V2ReportingReportRunSucceededEvent`, and `V2ReportingReportRunUpdatedEvent` with related object `V2::Reporting::ReportRun`
