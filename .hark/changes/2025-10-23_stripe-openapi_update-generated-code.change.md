---
title: Update generated code for private-preview
pr_link: https://github.com/stripe/stripe-ruby/pull/1710
is_stripe_api_change: true
released_in_version: 17.1.0-alpha.4
---

* Add support for new resource `V2::Billing::PricingPlanSubscriptionComponents`
* Add support for `retrieve` method on resource `V2::Billing::PricingPlanSubscriptionComponents`
* Add support for `dimension_payload_keys` on `Billing::MeterCreateParams` and `Billing::Meter`
* Add support for `dimension_filters` and `dimension_group_by_keys` on `Billing::BillingMeterMeterEventSummaryListParams`
* Add support for `dimensions` on `Billing::MeterEventSummary`
* Add support for `fulfillment_details` and `payment_method_data` on `DelegatedCheckout::RequestedSessionCreateParams` and `DelegatedCheckout::RequestedSessionUpdateParams`
* Add support for `line_item_details`, `metadata`, `payment_method`, and `shared_metadata` on `DelegatedCheckout::RequestedSessionCreateParams`, `DelegatedCheckout::RequestedSessionUpdateParams`, and `DelegatedCheckout::RequestedSession`
* Add support for `currency`, `customer`, and `risk_details` on `DelegatedCheckout::RequestedSessionCreateParams`
* Add support for `seller_details` and `setup_future_usage` on `DelegatedCheckout::RequestedSessionCreateParams` and `DelegatedCheckout::RequestedSession`
* Add support for `amount_subtotal`, `amount_total`, `created_at`, `expires_at`, `order_details`, `shared_payment_issued_token`, `status`, `total_details`, and `updated_at` on `DelegatedCheckout::RequestedSession`
* Add support for `address`, `email`, `fulfillment_options`, `name`, `phone`, and `selected_fulfillment_option` on `DelegatedCheckout::RequestedSession::FulfillmentDetail`
