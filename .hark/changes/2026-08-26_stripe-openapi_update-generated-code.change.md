---
title: Update generated code for private-preview
pr_url: https://github.com/stripe/stripe-ruby/pull/1941
is_breaking: true
is_stripe_api_change: true
released_in_version: 19.7.0-alpha.1
---

* Add support for new resource `CustomerTaxExemption`
* Add support for `create`, `delete`, `list`, and `retrieve` methods on resource `CustomerTaxExemption`
* Add support for `details` on `Account::FutureRequirement::Error`, `Account::Requirement::Error`, `BankAccount::FutureRequirement::Error`, `BankAccount::Requirement::Error`, `Capability::FutureRequirement::Error`, `Capability::Requirement::Error`, `Person::FutureRequirement::Error`, and `Person::Requirement::Error`
* ⚠️ Remove support for `sequra_payments` on `Account::Capability`
* Add support for `subscription_pause` on `BillingPortal::SessionCreateParams::FlowDatum`
* ⚠️ Remove support for `sequra` on `Charge::PaymentMethodDetail`, `Checkout::Session::PaymentMethodOption`, `ConfirmationToken::PaymentMethodPreview`, `PaymentAttemptRecord::PaymentMethodDetail`, `PaymentIntent::PaymentMethodOption`, and `PaymentRecord::PaymentMethodDetail`
* Add support for `enablement_details` on `Checkout::Session::AutomaticTax`
* Add support for `credit` on `FinancialConnections::Transaction::Classification`
* Change type of `FinancialConnections::Transaction::Classification.money_movement` from `nullable(BankConnectionsResourceTransactionResourceClassificationsLabels)` to `BankConnectionsResourceTransactionResourceClassificationsLabels`
* Change type of `FinancialConnections::Transaction::Classification.personal_finance` from `nullable(BankConnectionsResourceTransactionResourceClassificationsLabels)` to `BankConnectionsResourceTransactionResourceClassificationsLabels`
* ⚠️ Change `FinancialConnections::Transaction::Classification.money_movement` to be optional
* ⚠️ Change `FinancialConnections::Transaction::Classification.personal_finance` to be optional
* Add support for `user_consent` on `Identity::VerificationSessionCreateParams` and `Identity::VerificationSessionUpdateParams`
* Add support for `company_details` on `Invoice::PaymentSetting::PaymentMethodOption::Billie`, `PaymentIntent::PaymentMethodOption::Billie`, `PaymentIntentConfirmParams::PaymentMethodOption::Billie`, `PaymentIntentCreateParams::PaymentMethodOption::Billie`, `PaymentIntentUpdateParams::PaymentMethodOption::Billie`, `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption::Billie`, and `Subscription::PaymentSetting::PaymentMethodOption::Billie`
* Add support for `reference` on `Invoice::PaymentSetting::PaymentMethodOption::Billie`, `PaymentIntent::PaymentMethodOption::Billie`, `PaymentIntentConfirmParams::PaymentMethodOption::Billie`, `PaymentIntentCreateParams::PaymentMethodOption::Billie`, `PaymentIntentUpdateParams::PaymentMethodOption::Billie`, and `QuotePreviewInvoice::PaymentSetting::PaymentMethodOption::Billie`
* Add support for `pos_condition` on `Issuing::AuthorizationCreateParams` and `Issuing::Authorization`
* Add support for `crypto_wallet` on `Issuing::CardCreateParams`, `Issuing::CardUpdateParams`, and `Issuing::Card`
* Add support for `payment_evaluations` and `payment_method_details` on `PaymentAttemptRecordReportAuthorizedParams`
* Add support for `aade_data` on `PaymentIntentConfirmParams::PaymentMethodOption::CardPresent`, `PaymentIntentCreateParams::PaymentMethodOption::CardPresent`, and `PaymentIntentUpdateParams::PaymentMethodOption::CardPresent`
* ⚠️ Remove support for `cancel_at_period_end` on `Subscription::PendingUpdate`
* Add support for `blik_recurring_payments` on `V2::Core::Account::Configuration::Merchant::Capability`, `V2::Core::AccountCreateParams::Configuration::Merchant::Capability`, and `V2::Core::AccountUpdateParams::Configuration::Merchant::Capability`
* Add support for `user_access` on `V2::Iam::ActivityLog::Detail`
