---
title: Update generated code for beta
pr_link: https://github.com/stripe/stripe-ruby/pull/1869
is_breaking: true
is_stripe_api_change: true
released_in_version: 19.4.0-beta.1
---

* Add support for `redaction` on `Card`, `Charge`, `Checkout::Session`, `Customer`, `Issuing::Authorization`, `Issuing::Card`, `Issuing::Cardholder`, `Issuing::Dispute`, `Issuing::Transaction`, `PaymentIntent`, `PaymentMethod`, `SetupIntent`, `Source`, and `Token`
* Add support for `disclaimer_variant` on `Capital::FinancingOffer` and `Capital::FinancingSummary::Detail`
* Add support for `active` on `FinancialConnections::Account::StatusDetail` and `FinancialConnections::Authorization::StatusDetail`
* Change type of `FinancialConnections::SessionCreateParams::Limit.accounts` from `longInteger` to `emptyable(longInteger)`
* Add support for `pause` on `InvoiceCreatePreviewParams::SubscriptionDetail`
* Add support for `release_details` on `Reserve::Hold`
* Add support for `buyer_id` on `SharedPayment::GrantedToken::PaymentMethodDetail::Bizum` and `SharedPayment::GrantedToken::PaymentMethodDetail::Blik`
* Add support for `fingerprint` on `SharedPayment::GrantedToken::PaymentMethodDetail::Pix`
* Add support for `money_manager` on `V2::Core::Account::Configuration`, `V2::Core::Account::Identity::Attestation::TermsOfService`, `V2::Core::AccountCreateParams::Configuration`, `V2::Core::AccountCreateParams::Identity::Attestation::TermsOfService`, `V2::Core::AccountTokenCreateParams::Identity::Attestation::TermsOfService`, and `V2::Core::AccountUpdateParams::Configuration`
* ⚠️ Remove support for `storer` on `V2::Core::Account::Configuration`, `V2::Core::Account::Identity::Attestation::TermsOfService`, `V2::Core::AccountCreateParams::Configuration`, `V2::Core::AccountCreateParams::Identity::Attestation::TermsOfService`, `V2::Core::AccountTokenCreateParams::Identity::Attestation::TermsOfService`, and `V2::Core::AccountUpdateParams::Configuration`
* ⚠️ Remove support for `maximum_rps` on `V2::Core::BatchJobCreateParams` and `V2::Core::BatchJob`
* Add support for `bic` on `V2::MoneyManagement::FinancialAddress::Credential::UsBankAccount`
* ⚠️ Remove support for `swift_code` on `V2::MoneyManagement::FinancialAddress::Credential::UsBankAccount`
* Add support for `processing` on `V2::MoneyManagement::OutboundPayment::StatusDetail` and `V2::MoneyManagement::OutboundTransfer::StatusDetail`
* Add support for `account_holder_name` on `V2::MoneyManagement::ReceivedCredit::BankTransfer::UsBankAccount`
* Add support for `statuses` on `V2::MoneyManagement::FinancialAccountListParams`
* ⚠️ Remove support for `status` on `V2::MoneyManagement::FinancialAccountListParams`
* Change `V2::Core::BatchJobCreateParams.metadata` to be optional
* Add support for event notifications `V2CoreAccountIncludingConfigurationMoneyManagerCapabilityStatusUpdatedEvent` and `V2CoreAccountIncludingConfigurationMoneyManagerUpdatedEvent` with related object `V2::Core::Account`
* Add support for event notification `V2MoneyManagementOutboundPaymentUnderReviewEvent` with related object `V2::MoneyManagement::OutboundPayment`
* Add support for event notification `V2MoneyManagementOutboundTransferUnderReviewEvent` with related object `V2::MoneyManagement::OutboundTransfer`
* ⚠️ Remove support for event notifications `V2CoreAccountIncludingConfigurationStorerCapabilityStatusUpdatedEvent` and `V2CoreAccountIncludingConfigurationStorerUpdatedEvent` with related object `V2::Core::Account`
