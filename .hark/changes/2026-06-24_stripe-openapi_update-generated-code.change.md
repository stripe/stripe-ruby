---
title: Update generated code
pr_link: https://github.com/stripe/stripe-ruby/pull/1896
is_breaking: true
is_stripe_api_change: true
released_in_version: 19.3.0
---

* Add support for `release_details` on `Reserve::Hold`
* Change `Billing::CreditGrant.priority` to be required
* Add support for `buyer_id` on `Charge::PaymentMethodDetail::Bizum`, `ConfirmationToken::PaymentMethodPreview::Bizum`, `ConfirmationToken::PaymentMethodPreview::Blik`, `PaymentAttemptRecord::PaymentMethodDetail::Bizum`, `PaymentMethod::Bizum`, `PaymentMethod::Blik`, and `PaymentRecord::PaymentMethodDetail::Bizum`
* Add support for `transaction_link_id` on `Charge::PaymentMethodDetail::Card`
* Add support for `fingerprint` on `Charge::PaymentMethodDetail::Pix`, `ConfirmationToken::PaymentMethodPreview::Pix`, `PaymentMethod::Pix`, and `SetupAttempt::PaymentMethodDetail::Pix`
* Add support for `sunbit` on `Checkout::Session::PaymentMethodOption`, `Checkout::SessionCreateParams::PaymentMethodOption`, `PaymentIntent::PaymentMethodOption`, `PaymentIntentConfirmParams::PaymentMethodOption`, `PaymentIntentCreateParams::PaymentMethodOption`, and `PaymentIntentUpdateParams::PaymentMethodOption`
* Add support for `billing_cycle_anchor_config` on `Checkout::SessionCreateParams::SubscriptionDatum`
* Add support for `wechat_pay` on `Checkout::Session::PaymentMethodOption`
* Add support for `mastercard_compliance` on `Dispute::Evidence::EnhancedEvidence`, `Dispute::EvidenceDetail::EnhancedEligibility`, and `DisputeUpdateParams::Evidence::EnhancedEvidence`
* Add support for `status_details` on `FinancialConnections::Account`
* ⚠️ Remove support for `stored_credential_usage` on `PaymentAttemptRecord::PaymentMethodDetail::Card` and `PaymentRecord::PaymentMethodDetail::Card`
* ⚠️ Change `PaymentAttemptRecord::PaymentMethodDetail::Card.description` and `PaymentRecord::PaymentMethodDetail::Card.description` to be optional
* ⚠️ Change `PaymentAttemptRecord::PaymentMethodDetail::Card.iin` and `PaymentRecord::PaymentMethodDetail::Card.iin` to be optional
* ⚠️ Change `PaymentAttemptRecord::PaymentMethodDetail::Card.issuer` and `PaymentRecord::PaymentMethodDetail::Card.issuer` to be optional
* Add support for `setup_future_usage` on `PaymentIntent::PaymentMethodOption::Satispay`, `PaymentIntentConfirmParams::PaymentMethodOption::Satispay`, `PaymentIntentCreateParams::PaymentMethodOption::Satispay`, and `PaymentIntentUpdateParams::PaymentMethodOption::Satispay`
* Change `PaymentRecordReportRefundParams.refunded` to be optional
* Add support for `satispay` on `SetupAttempt::PaymentMethodDetail`
* Add support for `custom_fields`, `description`, and `footer` on `Subscription::InvoiceSetting`, `SubscriptionCreateParams::InvoiceSetting`, and `SubscriptionUpdateParams::InvoiceSetting`
* Add support for `payment_method_options` and `payment_method` on `TopupCreateParams`
* Add support for `mode` on `V2::Commerce::ProductCatalogImport`
* Add support for `sunbit_payments` on `V2::Core::Account::Configuration::Merchant::Capability`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability`, and `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability`
* Add support for `crypto_money_manager` and `money_manager` on `V2::Core::AccountUpdateParams::Identity::Attestation::TermsOfService`
* ⚠️ Remove support for `crypto_storer` and `storer` on `V2::Core::AccountUpdateParams::Identity::Attestation::TermsOfService`
