---
title: Update generated code for private-preview
pr_link: https://github.com/stripe/stripe-ruby/pull/1898
is_breaking: true
is_stripe_api_change: true
released_in_version: 19.4.0-alpha.2
---

* Add support for new resources `Crypto::CustomerConsumerWallet`, `Crypto::CustomerPaymentToken`, `Crypto::Customer`, `Crypto::OnrampSession`, and `Crypto::OnrampTransactionLimits`
* Add support for `list` and `retrieve` methods on resource `Crypto::Customer`
* Add support for `checkout`, `create`, `list`, `quote`, and `retrieve` methods on resource `Crypto::OnrampSession`
* Add support for `retrieve` method on resource `Crypto::OnrampTransactionLimits`
* Add support for `redaction` on `Card`, `Charge`, `Checkout::Session`, `Customer`, `Issuing::Authorization`, `Issuing::Card`, `Issuing::Cardholder`, `Issuing::Dispute`, `Issuing::Transaction`, `PaymentIntent`, `PaymentMethod`, `SetupIntent`, `Source`, and `Token`
* Change `Billing::CreditGrant.priority` to be required
* Add support for `disclaimer_variant` on `Capital::FinancingOffer` and `Capital::FinancingSummary::Detail`
* Add support for `buyer_id` on `Charge::PaymentMethodDetail::Bizum`, `ConfirmationToken::PaymentMethodPreview::Bizum`, `ConfirmationToken::PaymentMethodPreview::Blik`, `PaymentAttemptRecord::PaymentMethodDetail::Bizum`, `PaymentMethod::Bizum`, `PaymentMethod::Blik`, `PaymentRecord::PaymentMethodDetail::Bizum`, `SharedPayment::GrantedToken::PaymentMethodDetail::Bizum`, and `SharedPayment::GrantedToken::PaymentMethodDetail::Blik`
* Add support for `electronic_commerce_indicator` and `transaction_link_id` on `Charge::PaymentMethodDetail::Card`
* Add support for `amount_received` and `amount_requested` on `Charge::PaymentMethodDetail::Crypto`, `PaymentAttemptRecord::PaymentMethodDetail::Crypto`, and `PaymentRecord::PaymentMethodDetail::Crypto`
* Add support for `fingerprint` on `Charge::PaymentMethodDetail::GiftCard`, `Charge::PaymentMethodDetail::Pix`, `ConfirmationToken::PaymentMethodPreview::Pix`, `PaymentAttemptRecord::PaymentMethodDetail::GiftCard`, `PaymentMethod::Pix`, `PaymentRecord::PaymentMethodDetail::GiftCard`, `SetupAttempt::PaymentMethodDetail::Pix`, and `SharedPayment::GrantedToken::PaymentMethodDetail::Pix`
* Add support for `address_collection_precision` on `Checkout::SessionCreateParams::AutomaticTax`
* Add support for `sunbit` on `Checkout::Session::PaymentMethodOption`, `Checkout::SessionCreateParams::PaymentMethodOption`, `PaymentIntent::PaymentMethodOption`, `PaymentIntentConfirmParams::PaymentMethodOption`, `PaymentIntentCreateParams::PaymentMethodOption`, and `PaymentIntentUpdateParams::PaymentMethodOption`
* Add support for `billing_cycle_anchor_config` on `Checkout::SessionCreateParams::SubscriptionDatum`
* Add support for `subscription` on `Checkout::Session::Item`
* Add support for `wechat_pay` on `Checkout::Session::PaymentMethodOption`
* Add support for `mastercard_compliance` on `Dispute::Evidence::EnhancedEvidence`, `Dispute::EvidenceDetail::EnhancedEligibility`, and `DisputeUpdateParams::Evidence::EnhancedEvidence`
* Add support for `active` on `FinancialConnections::Account::StatusDetail` and `FinancialConnections::Authorization::StatusDetail`
* Change type of `FinancialConnections::SessionCreateParams::Limit.accounts` from `longInteger` to `emptyable(longInteger)`
* ⚠️  Remove support for `deactivation` on `GiftCardOperation`
* Add support for `pause` on `InvoiceCreatePreviewParams::SubscriptionDetail`
* Add support for `merchant_amount_exchange_rate` on `Issuing::Authorization` and `Issuing::Transaction`
* Add support for `device_id` on `Issuing::Authorization::TokenDetail::NetworkDatum::Device` and `Issuing::Token::NetworkDatum::Device`
* Add support for `program` on `Issuing::Card`
* Add support for `payment_method_details` on `PaymentAttemptRecordReportFailedParams` and `PaymentRecordReportPaymentAttemptFailedParams`
* Add support for `reason` on `PaymentAttemptRecordReportRefundParams` and `PaymentRecordReportRefundParams`
* ⚠️  Remove support for `stored_credential_usage` on `PaymentAttemptRecord::PaymentMethodDetail::Card` and `PaymentRecord::PaymentMethodDetail::Card`
* ⚠️  Change `PaymentAttemptRecord::PaymentMethodDetail::Card.description` and `PaymentRecord::PaymentMethodDetail::Card.description` to be optional
* ⚠️  Change `PaymentAttemptRecord::PaymentMethodDetail::Card.iin` and `PaymentRecord::PaymentMethodDetail::Card.iin` to be optional
* ⚠️  Change `PaymentAttemptRecord::PaymentMethodDetail::Card.issuer` and `PaymentRecord::PaymentMethodDetail::Card.issuer` to be optional
* Add support for `amount_reconciliation` on `PaymentIntent::PaymentMethodOption::Crypto`, `PaymentIntentConfirmParams::PaymentMethodOption::Crypto`, `PaymentIntentCreateParams::PaymentMethodOption::Crypto`, and `PaymentIntentUpdateParams::PaymentMethodOption::Crypto`
* Add support for `setup_future_usage` on `PaymentIntent::PaymentMethodOption::Satispay`, `PaymentIntentConfirmParams::PaymentMethodOption::Satispay`, `PaymentIntentCreateParams::PaymentMethodOption::Satispay`, and `PaymentIntentUpdateParams::PaymentMethodOption::Satispay`
* Add support for `release_details` on `Reserve::Hold`
* Add support for `satispay` on `SetupAttempt::PaymentMethodDetail`
* Add support for `custom_fields`, `description`, and `footer` on `Subscription::InvoiceSetting`, `SubscriptionCreateParams::InvoiceSetting`, and `SubscriptionUpdateParams::InvoiceSetting`
* Add support for `payment_method_options` and `payment_method` on `TopupCreateParams`
* Add support for `connect_permissions` and `permissions` on `V2::Iam::ApiKeyCreateParams`, `V2::Iam::ApiKeyUpdateParams`, and `V2::Iam::ApiKey`
* Add support for `credit` on `V2::MoneyManagement::FinancialAccount`
* Add support for `account`, `issuing_authorization`, `issuing_dispute`, and `issuing_transaction` on `V2::MoneyManagement::Transaction::Flow` and `V2::MoneyManagement::TransactionEntry::TransactionDetail::Flow`
* Change type of `V2::MoneyManagement::FinancialAccountCreateParams.type` from `literal('storage')` to `enum('credit'|'storage')`
* Add support for `expires_at` on `V2::Iam::ApiKeyCreateParams`
