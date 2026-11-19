---
title: Update generated code
pr_url: https://github.com/stripe/stripe-ruby/pull/2024
semver_level: minor
is_stripe_api_change: true
---

* Add support for new resource `V2::Core::ClaimableSandbox`
* Add support for `create`, `renew_onboarding_link`, and `retrieve` methods on resource `V2::Core::ClaimableSandbox`
* Add support for `funding_sources` on `Charge::PaymentMethodDetail::Card::Wallet::Link` and `Charge::PaymentMethodDetail::Link`
* Add support for `fingerprint` on `Charge::PaymentMethodDetail::Paypay`, `PaymentAttemptRecord::PaymentMethodDetail::Paypay`, and `PaymentRecord::PaymentMethodDetail::Paypay`
* Add support for `address_collection_precision` on `Checkout::Session::AutomaticTax` and `Checkout::SessionCreateParams::AutomaticTax`
* Change `Dispute::Evidence.appeal` to be required
* Change `Issuing::Card::Shipping.delivered_at` to be required
* Change `Issuing::Card::Shipping.shipped_at` to be required
* Change `PaymentAttemptRecord::PaymentMethodDetail::Card.stored_credential_usage` and `PaymentRecord::PaymentMethodDetail::Card.stored_credential_usage` to be required
* Add support for `car_rental_data` and `lodging_data` on `PaymentIntent::PaymentDetail`, `PaymentIntentCaptureParams::PaymentDetail`, `PaymentIntentConfirmParams::PaymentDetail`, `PaymentIntentCreateParams::PaymentDetail`, and `PaymentIntentUpdateParams::PaymentDetail`
* Change type of `PaymentLinkCreateParams::PaymentIntentDatum.capture_method` from `enum('automatic'|'automatic_async'|'manual')` to `emptyable(enum('automatic'|'automatic_async'|'manual'))`
* Add support for `capture_method` on `PaymentLinkUpdateParams::PaymentIntentDatum`
* Add support for `loss_message` on `Product::MarketingFeature`, `ProductCreateParams::MarketingFeature`, and `ProductUpdateParams::MarketingFeature`
* Add support for `application` on `Refund`
* Add support for `bizum` and `upi` on `Refund::DestinationDetail`
* Add support for `tax_invoice_month` on `Reporting::ReportRun::Parameter` and `Reporting::ReportRunCreateParams::Parameter`
* Add support for `igic` on `Tax::Registration::CountryOption::E` and `Tax::RegistrationCreateParams::CountryOption::E`
* Add support for `network_details` on `Treasury::InboundTransfer::FailureDetail`, `Treasury::InboundTransferFailParams::FailureDetail`, `Treasury::OutboundPayment::ReturnedDetail`, and `Treasury::OutboundTransfer::ReturnedDetail`
* Add support for `failure_details` on `Treasury::InboundTransferReturnInboundTransferParams`
* Add support for `account_dashboard` on `V2::Core::AccountLink::UseCase` and `V2::Core::AccountLinkCreateParams::UseCase`
* Add support for `paypay_payments` on `V2::Core::Account::Configuration::Merchant::Capability`, `V2::Core::Account::Configuration::Merchant`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability`, `V2::Core::AccountCreateParams::Configuration::Merchant`, `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability`, and `V2::Core::AccountUpdateParams::Configuration::Merchant`
* Add support for `billie_payments`, `mb_way_payments`, `nz_bank_account_becs_debit_payments`, and `pix_payments` on `V2::Core::Account::Configuration::Merchant::Capability`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability`, and `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability`
* Add support for `additional_material` on `V2::Core::Account::Configuration::Merchant::KonbiniPayment`, `V2::Core::AccountCreateParams::Configuration::Merchant::KonbiniPayment`, and `V2::Core::AccountUpdateParams::Configuration::Merchant::KonbiniPayment`
* Add support for event notifications `V2CoreClaimableSandboxClaimedEvent`, `V2CoreClaimableSandboxCreatedEvent`, `V2CoreClaimableSandboxExpiredEvent`, `V2CoreClaimableSandboxExpiringEvent`, and `V2CoreClaimableSandboxUpdatedEvent` with related object `V2::Core::ClaimableSandbox`
