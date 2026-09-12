---
title: Update generated code for private-preview
pr_url: https://github.com/stripe/stripe-ruby/pull/1850
is_breaking: true
is_stripe_api_change: true
released_in_version: 19.1.0-alpha.5
---

* Add support for new resources `V2::Core::WorkflowRun` and `V2::Core::Workflow`
* Add support for `report_authorized` method on resource `PaymentAttemptRecord`
* Add support for `list` and `retrieve` methods on resource `V2::Core::WorkflowRun`
* Add support for `invoke`, `list`, and `retrieve` methods on resource `V2::Core::Workflow`
* Add support for `next_action` and `status` on `SharedPayment::IssuedToken`
* ⚠️ Remove support for `network_id` on `SharedPayment::IssuedToken::SellerDetail`
* Add support for `bills` on `AccountSession::Component`
* Add support for `settlement_currencies` on `BalanceSettings::Payment` and `BalanceSettingsUpdateParams::Payment`
* Add support for `default_settlement_currency` on `BalanceSettings::Payment`
* Add support for `account_funding` on `Charge::PaymentMethodDetail::Card`
* Add support for `automatic_surcharge` on `Checkout::SessionCreateParams`, `Checkout::Session`, `PaymentLinkCreateParams`, and `PaymentLink`
* Add support for `bizum` on `Checkout::Session::PaymentMethodOption` and `Checkout::SessionCreateParams::PaymentMethodOption`
* Add support for `surcharge_cost` on `Checkout::Session`
* Add support for `amount_surcharge` on `Checkout::Session::TotalDetail`
* Add support for `shared_payment_granted_token` on `ConfirmationTokenCreateParams::PaymentMethodDatum`, `PaymentIntentConfirmParams::PaymentMethodDatum`, `PaymentIntentCreateParams::PaymentMethodDatum`, `PaymentIntentUpdateParams::PaymentMethodDatum`, `SetupIntentConfirmParams::PaymentMethodDatum`, `SetupIntentCreateParams::PaymentMethodDatum`, and `SetupIntentUpdateParams::PaymentMethodDatum`
* Add support for `details` on `Identity::VerificationReport::Email`
* Add support for `confirm` on `Identity::VerificationSessionCreateParams` and `Identity::VerificationSessionUpdateParams`
* Add support for `subscription` on `InvoiceItem::Parent::ScheduleDetail`
* ⚠️ Remove support for `shared_payment_granted_token` on `PaymentIntentConfirmParams` and `PaymentIntentCreateParams`
* Add support for `money_services` on `PaymentIntent::PaymentDetail`
* ⚠️ Remove support for `external_reference` on `Plan`
* Change `SharedPayment::GrantedToken::PaymentMethodDetail.billing_details` to be required
