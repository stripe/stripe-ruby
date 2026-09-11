---
title: Update generated code
pr_link: https://github.com/stripe/stripe-ruby/pull/1864
is_breaking: true
is_stripe_api_change: true
released_in_version: 19.2.0
---

* Add support for new resource `V2::Commerce::ProductCatalogImport`
* Add support for `create` and `retrieve` methods on resource `V2::Commerce::ProductCatalogImport`
* Add support for `bizum_payments` and `scalapay_payments` on `Account::Capability`, `AccountCreateParams::Capability`, and `AccountUpdateParams::Capability`
* Add support for `automatic_transfer_rules_by_currency` on `BalanceSettings::Payment::Payout` and `BalanceSettingsUpdateParams::Payment::Payout`
* Add support for `start_of_day` on `BalanceSettings::Payment::SettlementTiming` and `BalanceSettingsUpdateParams::Payment::SettlementTiming`
* Add support for `description` on `ChargeCreateParams::TransferDatum`, `PaymentIntent::TransferDatum`, `PaymentIntentCreateParams::TransferDatum`, and `PaymentIntentUpdateParams::TransferDatum`
* Add support for `bizum` on `Charge::PaymentMethodDetail`, `ConfirmationToken::PaymentMethodPreview`, `ConfirmationTokenCreateParams::PaymentMethodDatum`, `PaymentAttemptRecord::PaymentMethodDetail`, `PaymentIntent::PaymentMethodOption`, `PaymentIntentConfirmParams::PaymentMethodDatum`, `PaymentIntentConfirmParams::PaymentMethodOption`, `PaymentIntentCreateParams::PaymentMethodDatum`, `PaymentIntentCreateParams::PaymentMethodOption`, `PaymentIntentUpdateParams::PaymentMethodDatum`, `PaymentIntentUpdateParams::PaymentMethodOption`, `PaymentMethodConfigurationCreateParams`, `PaymentMethodConfigurationUpdateParams`, `PaymentMethodConfiguration`, `PaymentMethodCreateParams`, `PaymentMethod`, `PaymentRecord::PaymentMethodDetail`, `SetupIntent::PaymentMethodOption`, `SetupIntentConfirmParams::PaymentMethodDatum`, `SetupIntentConfirmParams::PaymentMethodOption`, `SetupIntentCreateParams::PaymentMethodDatum`, `SetupIntentCreateParams::PaymentMethodOption`, `SetupIntentUpdateParams::PaymentMethodDatum`, and `SetupIntentUpdateParams::PaymentMethodOption`
* Add support for `scalapay` on `Charge::PaymentMethodDetail`, `Checkout::Session::PaymentMethodOption`, `Checkout::SessionCreateParams::PaymentMethodOption`, `ConfirmationToken::PaymentMethodPreview`, `ConfirmationTokenCreateParams::PaymentMethodDatum`, `PaymentAttemptRecord::PaymentMethodDetail`, `PaymentIntent::PaymentMethodOption`, `PaymentIntentConfirmParams::PaymentMethodDatum`, `PaymentIntentConfirmParams::PaymentMethodOption`, `PaymentIntentCreateParams::PaymentMethodDatum`, `PaymentIntentCreateParams::PaymentMethodOption`, `PaymentIntentUpdateParams::PaymentMethodDatum`, `PaymentIntentUpdateParams::PaymentMethodOption`, `PaymentMethodConfigurationCreateParams`, `PaymentMethodConfigurationUpdateParams`, `PaymentMethodConfiguration`, `PaymentMethodCreateParams`, `PaymentMethod`, `PaymentRecord::PaymentMethodDetail`, `Refund::DestinationDetail`, `SetupIntentConfirmParams::PaymentMethodDatum`, `SetupIntentCreateParams::PaymentMethodDatum`, and `SetupIntentUpdateParams::PaymentMethodDatum`
* Add support for `mandate` on `Charge::PaymentMethodDetail::Twint`, `PaymentAttemptRecord::PaymentMethodDetail::Twint`, and `PaymentRecord::PaymentMethodDetail::Twint`
* Change type of `Checkout::SessionCreateParams::PaymentMethodOption::Twint.setup_future_usage`, `PaymentIntentConfirmParams::PaymentMethodOption::Twint.setup_future_usage`, `PaymentIntentCreateParams::PaymentMethodOption::Twint.setup_future_usage`, and `PaymentIntentUpdateParams::PaymentMethodOption::Twint.setup_future_usage` from `literal('none')` to `enum('none'|'off_session')`
* ⚠️ Change type of `Checkout::Session::PaymentMethodOption::Twint.setup_future_usage` and `PaymentIntent::PaymentMethodOption::Twint.setup_future_usage` from `literal('none')` to `enum('none'|'off_session')`
* Add support for `credited_items` on `InvoiceItem::ProrationDetail`
* Add support for `discountable` on `InvoiceCreatePreviewParams::ScheduleDetail::Phase::AddInvoiceItem`, `SubscriptionCreateParams::AddInvoiceItem`, `SubscriptionSchedule::Phase::AddInvoiceItem`, `SubscriptionScheduleCreateParams::Phase::AddInvoiceItem`, `SubscriptionScheduleUpdateParams::Phase::AddInvoiceItem`, and `SubscriptionUpdateParams::AddInvoiceItem`
* Add support for `billing_schedules` on `InvoiceCreatePreviewParams::SubscriptionDetail`, `SubscriptionCreateParams`, `SubscriptionUpdateParams`, and `Subscription`
* Add support for `amount_paid_off_stripe` on `Invoice`
* Add support for `twint` on `Mandate::PaymentMethodDetail` and `SetupAttempt::PaymentMethodDetail`
* Add support for `metadata` on `PaymentIntent::TransferDatum`, `PaymentIntentCreateParams::TransferDatum`, `PaymentIntentUpdateParams::TransferDatum`, and `Subscription::PendingUpdate`
* Add support for `payment_data` on `PaymentIntent::TransferDatum`, `PaymentIntentCreateParams::TransferDatum`, and `PaymentIntentUpdateParams::TransferDatum`
* Add support for `blik_authorize` on `PaymentIntent::NextAction` and `SetupIntent::NextAction`
* Add support for `payment_method_options` on `PaymentLinkCreateParams`, `PaymentLinkUpdateParams`, and `PaymentLink`
* Add support for `active` on `PaymentMethodConfigurationListParams`
* Add support for `billed_until` on `SubscriptionItem`
* Add support for `discount` and `discounts` on `Subscription::PendingUpdate`
* Add support for `verifone_m425`, `verifone_p630`, `verifone_ux700`, and `verifone_v660p` on `Terminal::ConfigurationCreateParams`, `Terminal::ConfigurationUpdateParams`, and `Terminal::Configuration`
* Add support for `api_error` and `print_content` on `Terminal::Reader::Action`
* Add support for `customer` on `TestHelpers::TestClockCreateParams`
* Add support for `signer` on `V2::Core::Account::Identity::BusinessDetail::Document::ProofOfRegistration`, `V2::Core::Account::Identity::BusinessDetail::Document::ProofOfUltimateBeneficialOwnership`, `V2::Core::AccountCreateParams::Identity::BusinessDetail::Document::ProofOfRegistration`, `V2::Core::AccountCreateParams::Identity::BusinessDetail::Document::ProofOfUltimateBeneficialOwnership`, `V2::Core::AccountTokenCreateParams::Identity::BusinessDetail::Document::ProofOfRegistration`, `V2::Core::AccountTokenCreateParams::Identity::BusinessDetail::Document::ProofOfUltimateBeneficialOwnership`, `V2::Core::AccountUpdateParams::Identity::BusinessDetail::Document::ProofOfRegistration`, and `V2::Core::AccountUpdateParams::Identity::BusinessDetail::Document::ProofOfUltimateBeneficialOwnership`
* Add support for `azure_event_grid` on `V2::Core::EventDestinationCreateParams` and `V2::Core::EventDestination`
* Add support for event notifications `V2CommerceProductCatalogImportsFailedEvent`, `V2CommerceProductCatalogImportsProcessingEvent`, `V2CommerceProductCatalogImportsSucceededEvent`, and `V2CommerceProductCatalogImportsSucceededWithErrorsEvent` with related object `V2::Commerce::ProductCatalogImport`
