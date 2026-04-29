# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  autoload :Account, "stripe/resources/account"
  autoload :AccountLink, "stripe/resources/account_link"
  autoload :AccountSession, "stripe/resources/account_session"
  autoload :ApplePayDomain, "stripe/resources/apple_pay_domain"
  autoload :Application, "stripe/resources/application"
  autoload :ApplicationFee, "stripe/resources/application_fee"
  autoload :ApplicationFeeRefund, "stripe/resources/application_fee_refund"
  autoload :Balance, "stripe/resources/balance"
  autoload :BalanceSettings, "stripe/resources/balance_settings"
  autoload :BalanceTransaction, "stripe/resources/balance_transaction"
  autoload :BankAccount, "stripe/resources/bank_account"
  autoload :Capability, "stripe/resources/capability"
  autoload :Card, "stripe/resources/card"
  autoload :CashBalance, "stripe/resources/cash_balance"
  autoload :Charge, "stripe/resources/charge"
  autoload :ConfirmationToken, "stripe/resources/confirmation_token"
  autoload :ConnectCollectionTransfer, "stripe/resources/connect_collection_transfer"
  autoload :CountrySpec, "stripe/resources/country_spec"
  autoload :Coupon, "stripe/resources/coupon"
  autoload :CreditNote, "stripe/resources/credit_note"
  autoload :CreditNoteLineItem, "stripe/resources/credit_note_line_item"
  autoload :Customer, "stripe/resources/customer"
  autoload :CustomerBalanceTransaction, "stripe/resources/customer_balance_transaction"
  autoload :CustomerCashBalanceTransaction, "stripe/resources/customer_cash_balance_transaction"
  autoload :CustomerSession, "stripe/resources/customer_session"
  autoload :Discount, "stripe/resources/discount"
  autoload :Dispute, "stripe/resources/dispute"
  autoload :EphemeralKey, "stripe/resources/ephemeral_key"
  autoload :Event, "stripe/resources/event"
  autoload :ExchangeRate, "stripe/resources/exchange_rate"
  autoload :File, "stripe/resources/file"
  autoload :FileLink, "stripe/resources/file_link"
  autoload :FundingInstructions, "stripe/resources/funding_instructions"
  autoload :Invoice, "stripe/resources/invoice"
  autoload :InvoiceItem, "stripe/resources/invoice_item"
  autoload :InvoiceLineItem, "stripe/resources/invoice_line_item"
  autoload :InvoicePayment, "stripe/resources/invoice_payment"
  autoload :InvoiceRenderingTemplate, "stripe/resources/invoice_rendering_template"
  autoload :LineItem, "stripe/resources/line_item"
  autoload :LoginLink, "stripe/resources/login_link"
  autoload :Mandate, "stripe/resources/mandate"
  autoload :PaymentAttemptRecord, "stripe/resources/payment_attempt_record"
  autoload :PaymentIntent, "stripe/resources/payment_intent"
  autoload :PaymentIntentAmountDetailsLineItem, "stripe/resources/payment_intent_amount_details_line_item"
  autoload :PaymentLink, "stripe/resources/payment_link"
  autoload :PaymentMethod, "stripe/resources/payment_method"
  autoload :PaymentMethodConfiguration, "stripe/resources/payment_method_configuration"
  autoload :PaymentMethodDomain, "stripe/resources/payment_method_domain"
  autoload :PaymentRecord, "stripe/resources/payment_record"
  autoload :Payout, "stripe/resources/payout"
  autoload :Person, "stripe/resources/person"
  autoload :Plan, "stripe/resources/plan"
  autoload :Price, "stripe/resources/price"
  autoload :Product, "stripe/resources/product"
  autoload :ProductFeature, "stripe/resources/product_feature"
  autoload :PromotionCode, "stripe/resources/promotion_code"
  autoload :Quote, "stripe/resources/quote"
  autoload :Refund, "stripe/resources/refund"
  autoload :ReserveTransaction, "stripe/resources/reserve_transaction"
  autoload :Reversal, "stripe/resources/reversal"
  autoload :Review, "stripe/resources/review"
  autoload :SetupAttempt, "stripe/resources/setup_attempt"
  autoload :SetupIntent, "stripe/resources/setup_intent"
  autoload :ShippingRate, "stripe/resources/shipping_rate"
  autoload :Source, "stripe/resources/source"
  autoload :SourceMandateNotification, "stripe/resources/source_mandate_notification"
  autoload :SourceTransaction, "stripe/resources/source_transaction"
  autoload :Subscription, "stripe/resources/subscription"
  autoload :SubscriptionItem, "stripe/resources/subscription_item"
  autoload :SubscriptionSchedule, "stripe/resources/subscription_schedule"
  autoload :TaxCode, "stripe/resources/tax_code"
  autoload :TaxDeductedAtSource, "stripe/resources/tax_deducted_at_source"
  autoload :TaxId, "stripe/resources/tax_id"
  autoload :TaxRate, "stripe/resources/tax_rate"
  autoload :Token, "stripe/resources/token"
  autoload :Topup, "stripe/resources/topup"
  autoload :Transfer, "stripe/resources/transfer"
  autoload :WebhookEndpoint, "stripe/resources/webhook_endpoint"

  module Apps
    autoload :Secret, "stripe/resources/apps/secret"
  end

  module Billing
    autoload :Alert, "stripe/resources/billing/alert"
    autoload :AlertTriggered, "stripe/resources/billing/alert_triggered"
    autoload :CreditBalanceSummary, "stripe/resources/billing/credit_balance_summary"
    autoload :CreditBalanceTransaction, "stripe/resources/billing/credit_balance_transaction"
    autoload :CreditGrant, "stripe/resources/billing/credit_grant"
    autoload :Meter, "stripe/resources/billing/meter"
    autoload :MeterEvent, "stripe/resources/billing/meter_event"
    autoload :MeterEventAdjustment, "stripe/resources/billing/meter_event_adjustment"
    autoload :MeterEventSummary, "stripe/resources/billing/meter_event_summary"
  end

  module BillingPortal
    autoload :Configuration, "stripe/resources/billing_portal/configuration"
    autoload :Session, "stripe/resources/billing_portal/session"
  end

  module Checkout
    autoload :Session, "stripe/resources/checkout/session"
  end

  module Climate
    autoload :Order, "stripe/resources/climate/order"
    autoload :Product, "stripe/resources/climate/product"
    autoload :Supplier, "stripe/resources/climate/supplier"
  end

  module Entitlements
    autoload :ActiveEntitlement, "stripe/resources/entitlements/active_entitlement"
    autoload :ActiveEntitlementSummary, "stripe/resources/entitlements/active_entitlement_summary"
    autoload :Feature, "stripe/resources/entitlements/feature"
  end

  module Events
    autoload :V1BillingMeterErrorReportTriggeredEvent, "stripe/events/v1_billing_meter_error_report_triggered_event"
    autoload :V1BillingMeterErrorReportTriggeredEventNotification, "stripe/events/v1_billing_meter_error_report_triggered_event"
    autoload :V1BillingMeterNoMeterFoundEvent, "stripe/events/v1_billing_meter_no_meter_found_event"
    autoload :V1BillingMeterNoMeterFoundEventNotification, "stripe/events/v1_billing_meter_no_meter_found_event"
    autoload :V2CoreAccountClosedEvent, "stripe/events/v2_core_account_closed_event"
    autoload :V2CoreAccountClosedEventNotification, "stripe/events/v2_core_account_closed_event"
    autoload :V2CoreAccountCreatedEvent, "stripe/events/v2_core_account_created_event"
    autoload :V2CoreAccountCreatedEventNotification, "stripe/events/v2_core_account_created_event"
    autoload :V2CoreAccountIncludingConfigurationCustomerCapabilityStatusUpdatedEvent, "stripe/events/v2_core_account_including_configuration_customer_capability_status_updated_event"
    autoload :V2CoreAccountIncludingConfigurationCustomerCapabilityStatusUpdatedEventNotification, "stripe/events/v2_core_account_including_configuration_customer_capability_status_updated_event"
    autoload :V2CoreAccountIncludingConfigurationCustomerUpdatedEvent, "stripe/events/v2_core_account_including_configuration_customer_updated_event"
    autoload :V2CoreAccountIncludingConfigurationCustomerUpdatedEventNotification, "stripe/events/v2_core_account_including_configuration_customer_updated_event"
    autoload :V2CoreAccountIncludingConfigurationMerchantCapabilityStatusUpdatedEvent, "stripe/events/v2_core_account_including_configuration_merchant_capability_status_updated_event"
    autoload :V2CoreAccountIncludingConfigurationMerchantCapabilityStatusUpdatedEventNotification, "stripe/events/v2_core_account_including_configuration_merchant_capability_status_updated_event"
    autoload :V2CoreAccountIncludingConfigurationMerchantUpdatedEvent, "stripe/events/v2_core_account_including_configuration_merchant_updated_event"
    autoload :V2CoreAccountIncludingConfigurationMerchantUpdatedEventNotification, "stripe/events/v2_core_account_including_configuration_merchant_updated_event"
    autoload :V2CoreAccountIncludingConfigurationRecipientCapabilityStatusUpdatedEvent, "stripe/events/v2_core_account_including_configuration_recipient_capability_status_updated_event"
    autoload :V2CoreAccountIncludingConfigurationRecipientCapabilityStatusUpdatedEventNotification, "stripe/events/v2_core_account_including_configuration_recipient_capability_status_updated_event"
    autoload :V2CoreAccountIncludingConfigurationRecipientUpdatedEvent, "stripe/events/v2_core_account_including_configuration_recipient_updated_event"
    autoload :V2CoreAccountIncludingConfigurationRecipientUpdatedEventNotification, "stripe/events/v2_core_account_including_configuration_recipient_updated_event"
    autoload :V2CoreAccountIncludingDefaultsUpdatedEvent, "stripe/events/v2_core_account_including_defaults_updated_event"
    autoload :V2CoreAccountIncludingDefaultsUpdatedEventNotification, "stripe/events/v2_core_account_including_defaults_updated_event"
    autoload :V2CoreAccountIncludingFutureRequirementsUpdatedEvent, "stripe/events/v2_core_account_including_future_requirements_updated_event"
    autoload :V2CoreAccountIncludingFutureRequirementsUpdatedEventNotification, "stripe/events/v2_core_account_including_future_requirements_updated_event"
    autoload :V2CoreAccountIncludingIdentityUpdatedEvent, "stripe/events/v2_core_account_including_identity_updated_event"
    autoload :V2CoreAccountIncludingIdentityUpdatedEventNotification, "stripe/events/v2_core_account_including_identity_updated_event"
    autoload :V2CoreAccountIncludingRequirementsUpdatedEvent, "stripe/events/v2_core_account_including_requirements_updated_event"
    autoload :V2CoreAccountIncludingRequirementsUpdatedEventNotification, "stripe/events/v2_core_account_including_requirements_updated_event"
    autoload :V2CoreAccountLinkReturnedEvent, "stripe/events/v2_core_account_link_returned_event"
    autoload :V2CoreAccountLinkReturnedEventNotification, "stripe/events/v2_core_account_link_returned_event"
    autoload :V2CoreAccountPersonCreatedEvent, "stripe/events/v2_core_account_person_created_event"
    autoload :V2CoreAccountPersonCreatedEventNotification, "stripe/events/v2_core_account_person_created_event"
    autoload :V2CoreAccountPersonDeletedEvent, "stripe/events/v2_core_account_person_deleted_event"
    autoload :V2CoreAccountPersonDeletedEventNotification, "stripe/events/v2_core_account_person_deleted_event"
    autoload :V2CoreAccountPersonUpdatedEvent, "stripe/events/v2_core_account_person_updated_event"
    autoload :V2CoreAccountPersonUpdatedEventNotification, "stripe/events/v2_core_account_person_updated_event"
    autoload :V2CoreAccountUpdatedEvent, "stripe/events/v2_core_account_updated_event"
    autoload :V2CoreAccountUpdatedEventNotification, "stripe/events/v2_core_account_updated_event"
    autoload :V2CoreEventDestinationPingEvent, "stripe/events/v2_core_event_destination_ping_event"
    autoload :V2CoreEventDestinationPingEventNotification, "stripe/events/v2_core_event_destination_ping_event"
  end

  module FinancialConnections
    autoload :Account, "stripe/resources/financial_connections/account"
    autoload :AccountOwner, "stripe/resources/financial_connections/account_owner"
    autoload :AccountOwnership, "stripe/resources/financial_connections/account_ownership"
    autoload :Session, "stripe/resources/financial_connections/session"
    autoload :Transaction, "stripe/resources/financial_connections/transaction"
  end

  module Forwarding
    autoload :Request, "stripe/resources/forwarding/request"
  end

  module Identity
    autoload :VerificationReport, "stripe/resources/identity/verification_report"
    autoload :VerificationSession, "stripe/resources/identity/verification_session"
  end

  module Issuing
    autoload :Authorization, "stripe/resources/issuing/authorization"
    autoload :Card, "stripe/resources/issuing/card"
    autoload :Cardholder, "stripe/resources/issuing/cardholder"
    autoload :Dispute, "stripe/resources/issuing/dispute"
    autoload :PersonalizationDesign, "stripe/resources/issuing/personalization_design"
    autoload :PhysicalBundle, "stripe/resources/issuing/physical_bundle"
    autoload :Token, "stripe/resources/issuing/token"
    autoload :Transaction, "stripe/resources/issuing/transaction"
  end

  module Radar
    autoload :EarlyFraudWarning, "stripe/resources/radar/early_fraud_warning"
    autoload :PaymentEvaluation, "stripe/resources/radar/payment_evaluation"
    autoload :ValueList, "stripe/resources/radar/value_list"
    autoload :ValueListItem, "stripe/resources/radar/value_list_item"
  end

  module Reporting
    autoload :ReportRun, "stripe/resources/reporting/report_run"
    autoload :ReportType, "stripe/resources/reporting/report_type"
  end

  module Reserve
    autoload :Hold, "stripe/resources/reserve/hold"
    autoload :Plan, "stripe/resources/reserve/plan"
    autoload :Release, "stripe/resources/reserve/release"
  end

  module Sigma
    autoload :ScheduledQueryRun, "stripe/resources/sigma/scheduled_query_run"
  end

  module Tax
    autoload :Association, "stripe/resources/tax/association"
    autoload :Calculation, "stripe/resources/tax/calculation"
    autoload :CalculationLineItem, "stripe/resources/tax/calculation_line_item"
    autoload :Registration, "stripe/resources/tax/registration"
    autoload :Settings, "stripe/resources/tax/settings"
    autoload :Transaction, "stripe/resources/tax/transaction"
    autoload :TransactionLineItem, "stripe/resources/tax/transaction_line_item"
  end

  module Terminal
    autoload :Configuration, "stripe/resources/terminal/configuration"
    autoload :ConnectionToken, "stripe/resources/terminal/connection_token"
    autoload :Location, "stripe/resources/terminal/location"
    autoload :OnboardingLink, "stripe/resources/terminal/onboarding_link"
    autoload :Reader, "stripe/resources/terminal/reader"
  end

  module TestHelpers
    autoload :TestClock, "stripe/resources/test_helpers/test_clock"
  end

  module Treasury
    autoload :CreditReversal, "stripe/resources/treasury/credit_reversal"
    autoload :DebitReversal, "stripe/resources/treasury/debit_reversal"
    autoload :FinancialAccount, "stripe/resources/treasury/financial_account"
    autoload :FinancialAccountFeatures, "stripe/resources/treasury/financial_account_features"
    autoload :InboundTransfer, "stripe/resources/treasury/inbound_transfer"
    autoload :OutboundPayment, "stripe/resources/treasury/outbound_payment"
    autoload :OutboundTransfer, "stripe/resources/treasury/outbound_transfer"
    autoload :ReceivedCredit, "stripe/resources/treasury/received_credit"
    autoload :ReceivedDebit, "stripe/resources/treasury/received_debit"
    autoload :Transaction, "stripe/resources/treasury/transaction"
    autoload :TransactionEntry, "stripe/resources/treasury/transaction_entry"
  end

  module V2
    autoload :Amount, "stripe/resources/v2/amount"
    autoload :DeletedObject, "stripe/resources/v2/deleted_object"

    module Billing
      autoload :MeterEvent, "stripe/resources/v2/billing/meter_event"
      autoload :MeterEventAdjustment, "stripe/resources/v2/billing/meter_event_adjustment"
      autoload :MeterEventSession, "stripe/resources/v2/billing/meter_event_session"
    end

    module Core
      autoload :Account, "stripe/resources/v2/core/account"
      autoload :AccountLink, "stripe/resources/v2/core/account_link"
      autoload :AccountPerson, "stripe/resources/v2/core/account_person"
      autoload :AccountPersonToken, "stripe/resources/v2/core/account_person_token"
      autoload :AccountToken, "stripe/resources/v2/core/account_token"
      autoload :Event, "stripe/resources/v2/core/event"
      autoload :EventDestination, "stripe/resources/v2/core/event_destination"
      autoload :EventNotification, "stripe/resources/v2/core/event_notification"
      autoload :EventReason, "stripe/resources/v2/core/event_notification"
      autoload :EventReasonRequest, "stripe/resources/v2/core/event_notification"
      autoload :RelatedObject, "stripe/resources/v2/core/event_notification"
    end
  end

  # Ordered list for Stripe.eager_load! — same order as the original
  # require calls so eager loading has no load-order surprises.
  RESOURCE_FILES = %w[
    stripe/resources/v2/amount
    stripe/resources/v2/deleted_object
    stripe/resources/v2/core/event_notification
    stripe/resources/account
    stripe/resources/account_link
    stripe/resources/account_session
    stripe/resources/apple_pay_domain
    stripe/resources/application
    stripe/resources/application_fee
    stripe/resources/application_fee_refund
    stripe/resources/apps/secret
    stripe/resources/balance
    stripe/resources/balance_settings
    stripe/resources/balance_transaction
    stripe/resources/bank_account
    stripe/resources/billing/alert
    stripe/resources/billing/alert_triggered
    stripe/resources/billing/credit_balance_summary
    stripe/resources/billing/credit_balance_transaction
    stripe/resources/billing/credit_grant
    stripe/resources/billing/meter
    stripe/resources/billing/meter_event
    stripe/resources/billing/meter_event_adjustment
    stripe/resources/billing/meter_event_summary
    stripe/resources/billing_portal/configuration
    stripe/resources/billing_portal/session
    stripe/resources/capability
    stripe/resources/card
    stripe/resources/cash_balance
    stripe/resources/charge
    stripe/resources/checkout/session
    stripe/resources/climate/order
    stripe/resources/climate/product
    stripe/resources/climate/supplier
    stripe/resources/confirmation_token
    stripe/resources/connect_collection_transfer
    stripe/resources/country_spec
    stripe/resources/coupon
    stripe/resources/credit_note
    stripe/resources/credit_note_line_item
    stripe/resources/customer
    stripe/resources/customer_balance_transaction
    stripe/resources/customer_cash_balance_transaction
    stripe/resources/customer_session
    stripe/resources/discount
    stripe/resources/dispute
    stripe/resources/entitlements/active_entitlement
    stripe/resources/entitlements/active_entitlement_summary
    stripe/resources/entitlements/feature
    stripe/resources/ephemeral_key
    stripe/resources/event
    stripe/resources/exchange_rate
    stripe/resources/file
    stripe/resources/file_link
    stripe/resources/financial_connections/account
    stripe/resources/financial_connections/account_owner
    stripe/resources/financial_connections/account_ownership
    stripe/resources/financial_connections/session
    stripe/resources/financial_connections/transaction
    stripe/resources/forwarding/request
    stripe/resources/funding_instructions
    stripe/resources/identity/verification_report
    stripe/resources/identity/verification_session
    stripe/resources/invoice
    stripe/resources/invoice_item
    stripe/resources/invoice_line_item
    stripe/resources/invoice_payment
    stripe/resources/invoice_rendering_template
    stripe/resources/issuing/authorization
    stripe/resources/issuing/card
    stripe/resources/issuing/cardholder
    stripe/resources/issuing/dispute
    stripe/resources/issuing/personalization_design
    stripe/resources/issuing/physical_bundle
    stripe/resources/issuing/token
    stripe/resources/issuing/transaction
    stripe/resources/line_item
    stripe/resources/login_link
    stripe/resources/mandate
    stripe/resources/payment_attempt_record
    stripe/resources/payment_intent
    stripe/resources/payment_intent_amount_details_line_item
    stripe/resources/payment_link
    stripe/resources/payment_method
    stripe/resources/payment_method_configuration
    stripe/resources/payment_method_domain
    stripe/resources/payment_record
    stripe/resources/payout
    stripe/resources/person
    stripe/resources/plan
    stripe/resources/price
    stripe/resources/product
    stripe/resources/product_feature
    stripe/resources/promotion_code
    stripe/resources/quote
    stripe/resources/radar/early_fraud_warning
    stripe/resources/radar/payment_evaluation
    stripe/resources/radar/value_list
    stripe/resources/radar/value_list_item
    stripe/resources/refund
    stripe/resources/reporting/report_run
    stripe/resources/reporting/report_type
    stripe/resources/reserve/hold
    stripe/resources/reserve/plan
    stripe/resources/reserve/release
    stripe/resources/reserve_transaction
    stripe/resources/reversal
    stripe/resources/review
    stripe/resources/setup_attempt
    stripe/resources/setup_intent
    stripe/resources/shipping_rate
    stripe/resources/sigma/scheduled_query_run
    stripe/resources/source
    stripe/resources/source_mandate_notification
    stripe/resources/source_transaction
    stripe/resources/subscription
    stripe/resources/subscription_item
    stripe/resources/subscription_schedule
    stripe/resources/tax/association
    stripe/resources/tax/calculation
    stripe/resources/tax/calculation_line_item
    stripe/resources/tax/registration
    stripe/resources/tax/settings
    stripe/resources/tax/transaction
    stripe/resources/tax/transaction_line_item
    stripe/resources/tax_code
    stripe/resources/tax_deducted_at_source
    stripe/resources/tax_id
    stripe/resources/tax_rate
    stripe/resources/terminal/configuration
    stripe/resources/terminal/connection_token
    stripe/resources/terminal/location
    stripe/resources/terminal/onboarding_link
    stripe/resources/terminal/reader
    stripe/resources/test_helpers/test_clock
    stripe/resources/token
    stripe/resources/topup
    stripe/resources/transfer
    stripe/resources/treasury/credit_reversal
    stripe/resources/treasury/debit_reversal
    stripe/resources/treasury/financial_account
    stripe/resources/treasury/financial_account_features
    stripe/resources/treasury/inbound_transfer
    stripe/resources/treasury/outbound_payment
    stripe/resources/treasury/outbound_transfer
    stripe/resources/treasury/received_credit
    stripe/resources/treasury/received_debit
    stripe/resources/treasury/transaction
    stripe/resources/treasury/transaction_entry
    stripe/resources/v2/billing/meter_event
    stripe/resources/v2/billing/meter_event_adjustment
    stripe/resources/v2/billing/meter_event_session
    stripe/resources/v2/core/account
    stripe/resources/v2/core/account_link
    stripe/resources/v2/core/account_person
    stripe/resources/v2/core/account_person_token
    stripe/resources/v2/core/account_token
    stripe/resources/v2/core/event
    stripe/resources/v2/core/event_destination
    stripe/resources/webhook_endpoint
    stripe/events/v1_billing_meter_error_report_triggered_event
    stripe/events/v1_billing_meter_no_meter_found_event
    stripe/events/v2_core_account_closed_event
    stripe/events/v2_core_account_created_event
    stripe/events/v2_core_account_including_configuration_customer_capability_status_updated_event
    stripe/events/v2_core_account_including_configuration_customer_updated_event
    stripe/events/v2_core_account_including_configuration_merchant_capability_status_updated_event
    stripe/events/v2_core_account_including_configuration_merchant_updated_event
    stripe/events/v2_core_account_including_configuration_recipient_capability_status_updated_event
    stripe/events/v2_core_account_including_configuration_recipient_updated_event
    stripe/events/v2_core_account_including_defaults_updated_event
    stripe/events/v2_core_account_including_future_requirements_updated_event
    stripe/events/v2_core_account_including_identity_updated_event
    stripe/events/v2_core_account_including_requirements_updated_event
    stripe/events/v2_core_account_link_returned_event
    stripe/events/v2_core_account_person_created_event
    stripe/events/v2_core_account_person_deleted_event
    stripe/events/v2_core_account_person_updated_event
    stripe/events/v2_core_account_updated_event
    stripe/events/v2_core_event_destination_ping_event
  ].freeze
end
