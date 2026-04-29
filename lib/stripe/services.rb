# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  autoload :AccountCapabilityService, "stripe/services/account_capability_service"
  autoload :AccountExternalAccountService, "stripe/services/account_external_account_service"
  autoload :AccountLinkService, "stripe/services/account_link_service"
  autoload :AccountLoginLinkService, "stripe/services/account_login_link_service"
  autoload :AccountPersonService, "stripe/services/account_person_service"
  autoload :AccountService, "stripe/services/account_service"
  autoload :AccountSessionService, "stripe/services/account_session_service"
  autoload :ApplePayDomainService, "stripe/services/apple_pay_domain_service"
  autoload :ApplicationFeeRefundService, "stripe/services/application_fee_refund_service"
  autoload :ApplicationFeeService, "stripe/services/application_fee_service"
  autoload :AppsService, "stripe/services/apps_service"
  autoload :BalanceService, "stripe/services/balance_service"
  autoload :BalanceSettingsService, "stripe/services/balance_settings_service"
  autoload :BalanceTransactionService, "stripe/services/balance_transaction_service"
  autoload :BillingPortalService, "stripe/services/billing_portal_service"
  autoload :BillingService, "stripe/services/billing_service"
  autoload :ChargeService, "stripe/services/charge_service"
  autoload :CheckoutService, "stripe/services/checkout_service"
  autoload :ClimateService, "stripe/services/climate_service"
  autoload :ConfirmationTokenService, "stripe/services/confirmation_token_service"
  autoload :CountrySpecService, "stripe/services/country_spec_service"
  autoload :CouponService, "stripe/services/coupon_service"
  autoload :CreditNoteLineItemService, "stripe/services/credit_note_line_item_service"
  autoload :CreditNotePreviewLinesService, "stripe/services/credit_note_preview_lines_service"
  autoload :CreditNoteService, "stripe/services/credit_note_service"
  autoload :CustomerBalanceTransactionService, "stripe/services/customer_balance_transaction_service"
  autoload :CustomerCashBalanceService, "stripe/services/customer_cash_balance_service"
  autoload :CustomerCashBalanceTransactionService, "stripe/services/customer_cash_balance_transaction_service"
  autoload :CustomerFundingInstructionsService, "stripe/services/customer_funding_instructions_service"
  autoload :CustomerPaymentMethodService, "stripe/services/customer_payment_method_service"
  autoload :CustomerPaymentSourceService, "stripe/services/customer_payment_source_service"
  autoload :CustomerService, "stripe/services/customer_service"
  autoload :CustomerSessionService, "stripe/services/customer_session_service"
  autoload :CustomerTaxIdService, "stripe/services/customer_tax_id_service"
  autoload :DisputeService, "stripe/services/dispute_service"
  autoload :EntitlementsService, "stripe/services/entitlements_service"
  autoload :EphemeralKeyService, "stripe/services/ephemeral_key_service"
  autoload :EventService, "stripe/services/event_service"
  autoload :ExchangeRateService, "stripe/services/exchange_rate_service"
  autoload :FileLinkService, "stripe/services/file_link_service"
  autoload :FileService, "stripe/services/file_service"
  autoload :FinancialConnectionsService, "stripe/services/financial_connections_service"
  autoload :ForwardingService, "stripe/services/forwarding_service"
  autoload :IdentityService, "stripe/services/identity_service"
  autoload :InvoiceItemService, "stripe/services/invoice_item_service"
  autoload :InvoiceLineItemService, "stripe/services/invoice_line_item_service"
  autoload :InvoicePaymentService, "stripe/services/invoice_payment_service"
  autoload :InvoiceRenderingTemplateService, "stripe/services/invoice_rendering_template_service"
  autoload :InvoiceService, "stripe/services/invoice_service"
  autoload :IssuingService, "stripe/services/issuing_service"
  autoload :MandateService, "stripe/services/mandate_service"
  autoload :PaymentAttemptRecordService, "stripe/services/payment_attempt_record_service"
  autoload :PaymentIntentAmountDetailsLineItemService, "stripe/services/payment_intent_amount_details_line_item_service"
  autoload :PaymentIntentService, "stripe/services/payment_intent_service"
  autoload :PaymentLinkLineItemService, "stripe/services/payment_link_line_item_service"
  autoload :PaymentLinkService, "stripe/services/payment_link_service"
  autoload :PaymentMethodConfigurationService, "stripe/services/payment_method_configuration_service"
  autoload :PaymentMethodDomainService, "stripe/services/payment_method_domain_service"
  autoload :PaymentMethodService, "stripe/services/payment_method_service"
  autoload :PaymentRecordService, "stripe/services/payment_record_service"
  autoload :PayoutService, "stripe/services/payout_service"
  autoload :PlanService, "stripe/services/plan_service"
  autoload :PriceService, "stripe/services/price_service"
  autoload :ProductFeatureService, "stripe/services/product_feature_service"
  autoload :ProductService, "stripe/services/product_service"
  autoload :PromotionCodeService, "stripe/services/promotion_code_service"
  autoload :QuoteComputedUpfrontLineItemsService, "stripe/services/quote_computed_upfront_line_items_service"
  autoload :QuoteLineItemService, "stripe/services/quote_line_item_service"
  autoload :QuoteService, "stripe/services/quote_service"
  autoload :RadarService, "stripe/services/radar_service"
  autoload :RefundService, "stripe/services/refund_service"
  autoload :ReportingService, "stripe/services/reporting_service"
  autoload :ReviewService, "stripe/services/review_service"
  autoload :SetupAttemptService, "stripe/services/setup_attempt_service"
  autoload :SetupIntentService, "stripe/services/setup_intent_service"
  autoload :ShippingRateService, "stripe/services/shipping_rate_service"
  autoload :SigmaService, "stripe/services/sigma_service"
  autoload :SourceService, "stripe/services/source_service"
  autoload :SourceTransactionService, "stripe/services/source_transaction_service"
  autoload :SubscriptionItemService, "stripe/services/subscription_item_service"
  autoload :SubscriptionScheduleService, "stripe/services/subscription_schedule_service"
  autoload :SubscriptionService, "stripe/services/subscription_service"
  autoload :TaxCodeService, "stripe/services/tax_code_service"
  autoload :TaxIdService, "stripe/services/tax_id_service"
  autoload :TaxRateService, "stripe/services/tax_rate_service"
  autoload :TaxService, "stripe/services/tax_service"
  autoload :TerminalService, "stripe/services/terminal_service"
  autoload :TestHelpersService, "stripe/services/test_helpers_service"
  autoload :TokenService, "stripe/services/token_service"
  autoload :TopupService, "stripe/services/topup_service"
  autoload :TransferReversalService, "stripe/services/transfer_reversal_service"
  autoload :TransferService, "stripe/services/transfer_service"
  autoload :TreasuryService, "stripe/services/treasury_service"
  autoload :V1Services, "stripe/services/v1_services"
  autoload :V2Services, "stripe/services/v2_services"
  autoload :WebhookEndpointService, "stripe/services/webhook_endpoint_service"

  module Apps
    autoload :SecretService, "stripe/services/apps/secret_service"
  end

  module Billing
    autoload :AlertService, "stripe/services/billing/alert_service"
    autoload :CreditBalanceSummaryService, "stripe/services/billing/credit_balance_summary_service"
    autoload :CreditBalanceTransactionService, "stripe/services/billing/credit_balance_transaction_service"
    autoload :CreditGrantService, "stripe/services/billing/credit_grant_service"
    autoload :MeterEventAdjustmentService, "stripe/services/billing/meter_event_adjustment_service"
    autoload :MeterEventService, "stripe/services/billing/meter_event_service"
    autoload :MeterEventSummaryService, "stripe/services/billing/meter_event_summary_service"
    autoload :MeterService, "stripe/services/billing/meter_service"
  end

  module BillingPortal
    autoload :ConfigurationService, "stripe/services/billing_portal/configuration_service"
    autoload :SessionService, "stripe/services/billing_portal/session_service"
  end

  module Checkout
    autoload :SessionLineItemService, "stripe/services/checkout/session_line_item_service"
    autoload :SessionService, "stripe/services/checkout/session_service"
  end

  module Climate
    autoload :OrderService, "stripe/services/climate/order_service"
    autoload :ProductService, "stripe/services/climate/product_service"
    autoload :SupplierService, "stripe/services/climate/supplier_service"
  end

  module Entitlements
    autoload :ActiveEntitlementService, "stripe/services/entitlements/active_entitlement_service"
    autoload :FeatureService, "stripe/services/entitlements/feature_service"
  end

  module FinancialConnections
    autoload :AccountOwnerService, "stripe/services/financial_connections/account_owner_service"
    autoload :AccountService, "stripe/services/financial_connections/account_service"
    autoload :SessionService, "stripe/services/financial_connections/session_service"
    autoload :TransactionService, "stripe/services/financial_connections/transaction_service"
  end

  module Forwarding
    autoload :RequestService, "stripe/services/forwarding/request_service"
  end

  module Identity
    autoload :VerificationReportService, "stripe/services/identity/verification_report_service"
    autoload :VerificationSessionService, "stripe/services/identity/verification_session_service"
  end

  module Issuing
    autoload :AuthorizationService, "stripe/services/issuing/authorization_service"
    autoload :CardService, "stripe/services/issuing/card_service"
    autoload :CardholderService, "stripe/services/issuing/cardholder_service"
    autoload :DisputeService, "stripe/services/issuing/dispute_service"
    autoload :PersonalizationDesignService, "stripe/services/issuing/personalization_design_service"
    autoload :PhysicalBundleService, "stripe/services/issuing/physical_bundle_service"
    autoload :TokenService, "stripe/services/issuing/token_service"
    autoload :TransactionService, "stripe/services/issuing/transaction_service"
  end

  module Radar
    autoload :EarlyFraudWarningService, "stripe/services/radar/early_fraud_warning_service"
    autoload :PaymentEvaluationService, "stripe/services/radar/payment_evaluation_service"
    autoload :ValueListItemService, "stripe/services/radar/value_list_item_service"
    autoload :ValueListService, "stripe/services/radar/value_list_service"
  end

  module Reporting
    autoload :ReportRunService, "stripe/services/reporting/report_run_service"
    autoload :ReportTypeService, "stripe/services/reporting/report_type_service"
  end

  module Sigma
    autoload :ScheduledQueryRunService, "stripe/services/sigma/scheduled_query_run_service"
  end

  module Tax
    autoload :AssociationService, "stripe/services/tax/association_service"
    autoload :CalculationLineItemService, "stripe/services/tax/calculation_line_item_service"
    autoload :CalculationService, "stripe/services/tax/calculation_service"
    autoload :RegistrationService, "stripe/services/tax/registration_service"
    autoload :SettingsService, "stripe/services/tax/settings_service"
    autoload :TransactionLineItemService, "stripe/services/tax/transaction_line_item_service"
    autoload :TransactionService, "stripe/services/tax/transaction_service"
  end

  module Terminal
    autoload :ConfigurationService, "stripe/services/terminal/configuration_service"
    autoload :ConnectionTokenService, "stripe/services/terminal/connection_token_service"
    autoload :LocationService, "stripe/services/terminal/location_service"
    autoload :OnboardingLinkService, "stripe/services/terminal/onboarding_link_service"
    autoload :ReaderService, "stripe/services/terminal/reader_service"
  end

  module TestHelpers
    autoload :ConfirmationTokenService, "stripe/services/test_helpers/confirmation_token_service"
    autoload :CustomerService, "stripe/services/test_helpers/customer_service"
    autoload :IssuingService, "stripe/services/test_helpers/issuing_service"
    autoload :RefundService, "stripe/services/test_helpers/refund_service"
    autoload :TerminalService, "stripe/services/test_helpers/terminal_service"
    autoload :TestClockService, "stripe/services/test_helpers/test_clock_service"
    autoload :TreasuryService, "stripe/services/test_helpers/treasury_service"

    module Issuing
      autoload :AuthorizationService, "stripe/services/test_helpers/issuing/authorization_service"
      autoload :CardService, "stripe/services/test_helpers/issuing/card_service"
      autoload :PersonalizationDesignService, "stripe/services/test_helpers/issuing/personalization_design_service"
      autoload :TransactionService, "stripe/services/test_helpers/issuing/transaction_service"
    end

    module Terminal
      autoload :ReaderService, "stripe/services/test_helpers/terminal/reader_service"
    end

    module Treasury
      autoload :InboundTransferService, "stripe/services/test_helpers/treasury/inbound_transfer_service"
      autoload :OutboundPaymentService, "stripe/services/test_helpers/treasury/outbound_payment_service"
      autoload :OutboundTransferService, "stripe/services/test_helpers/treasury/outbound_transfer_service"
      autoload :ReceivedCreditService, "stripe/services/test_helpers/treasury/received_credit_service"
      autoload :ReceivedDebitService, "stripe/services/test_helpers/treasury/received_debit_service"
    end
  end

  module Treasury
    autoload :CreditReversalService, "stripe/services/treasury/credit_reversal_service"
    autoload :DebitReversalService, "stripe/services/treasury/debit_reversal_service"
    autoload :FinancialAccountFeaturesService, "stripe/services/treasury/financial_account_features_service"
    autoload :FinancialAccountService, "stripe/services/treasury/financial_account_service"
    autoload :InboundTransferService, "stripe/services/treasury/inbound_transfer_service"
    autoload :OutboundPaymentService, "stripe/services/treasury/outbound_payment_service"
    autoload :OutboundTransferService, "stripe/services/treasury/outbound_transfer_service"
    autoload :ReceivedCreditService, "stripe/services/treasury/received_credit_service"
    autoload :ReceivedDebitService, "stripe/services/treasury/received_debit_service"
    autoload :TransactionEntryService, "stripe/services/treasury/transaction_entry_service"
    autoload :TransactionService, "stripe/services/treasury/transaction_service"
  end

  module V2
    autoload :BillingService, "stripe/services/v2/billing_service"
    autoload :CoreService, "stripe/services/v2/core_service"

    module Billing
      autoload :MeterEventAdjustmentService, "stripe/services/v2/billing/meter_event_adjustment_service"
      autoload :MeterEventService, "stripe/services/v2/billing/meter_event_service"
      autoload :MeterEventSessionService, "stripe/services/v2/billing/meter_event_session_service"
      autoload :MeterEventStreamService, "stripe/services/v2/billing/meter_event_stream_service"
    end

    module Core
      autoload :AccountLinkService, "stripe/services/v2/core/account_link_service"
      autoload :AccountService, "stripe/services/v2/core/account_service"
      autoload :AccountTokenService, "stripe/services/v2/core/account_token_service"
      autoload :EventDestinationService, "stripe/services/v2/core/event_destination_service"
      autoload :EventService, "stripe/services/v2/core/event_service"

      module Accounts
        autoload :PersonService, "stripe/services/v2/core/accounts/person_service"
        autoload :PersonTokenService, "stripe/services/v2/core/accounts/person_token_service"
      end
    end
  end

  # Ordered list for Stripe.eager_load! — same order as the original
  # require calls so eager loading has no load-order surprises.
  SERVICE_FILES = %w[
    stripe/services/account_capability_service
    stripe/services/account_external_account_service
    stripe/services/account_link_service
    stripe/services/account_login_link_service
    stripe/services/account_person_service
    stripe/services/account_service
    stripe/services/account_session_service
    stripe/services/apple_pay_domain_service
    stripe/services/application_fee_refund_service
    stripe/services/application_fee_service
    stripe/services/apps/secret_service
    stripe/services/apps_service
    stripe/services/balance_service
    stripe/services/balance_settings_service
    stripe/services/balance_transaction_service
    stripe/services/billing/alert_service
    stripe/services/billing/credit_balance_summary_service
    stripe/services/billing/credit_balance_transaction_service
    stripe/services/billing/credit_grant_service
    stripe/services/billing/meter_event_adjustment_service
    stripe/services/billing/meter_event_service
    stripe/services/billing/meter_event_summary_service
    stripe/services/billing/meter_service
    stripe/services/billing_portal/configuration_service
    stripe/services/billing_portal/session_service
    stripe/services/billing_portal_service
    stripe/services/billing_service
    stripe/services/charge_service
    stripe/services/checkout/session_line_item_service
    stripe/services/checkout/session_service
    stripe/services/checkout_service
    stripe/services/climate/order_service
    stripe/services/climate/product_service
    stripe/services/climate/supplier_service
    stripe/services/climate_service
    stripe/services/confirmation_token_service
    stripe/services/country_spec_service
    stripe/services/coupon_service
    stripe/services/credit_note_line_item_service
    stripe/services/credit_note_preview_lines_service
    stripe/services/credit_note_service
    stripe/services/customer_balance_transaction_service
    stripe/services/customer_cash_balance_service
    stripe/services/customer_cash_balance_transaction_service
    stripe/services/customer_funding_instructions_service
    stripe/services/customer_payment_method_service
    stripe/services/customer_payment_source_service
    stripe/services/customer_service
    stripe/services/customer_session_service
    stripe/services/customer_tax_id_service
    stripe/services/dispute_service
    stripe/services/entitlements/active_entitlement_service
    stripe/services/entitlements/feature_service
    stripe/services/entitlements_service
    stripe/services/ephemeral_key_service
    stripe/services/event_service
    stripe/services/exchange_rate_service
    stripe/services/file_link_service
    stripe/services/file_service
    stripe/services/financial_connections/account_owner_service
    stripe/services/financial_connections/account_service
    stripe/services/financial_connections/session_service
    stripe/services/financial_connections/transaction_service
    stripe/services/financial_connections_service
    stripe/services/forwarding/request_service
    stripe/services/forwarding_service
    stripe/services/identity/verification_report_service
    stripe/services/identity/verification_session_service
    stripe/services/identity_service
    stripe/services/invoice_item_service
    stripe/services/invoice_line_item_service
    stripe/services/invoice_payment_service
    stripe/services/invoice_rendering_template_service
    stripe/services/invoice_service
    stripe/services/issuing/authorization_service
    stripe/services/issuing/card_service
    stripe/services/issuing/cardholder_service
    stripe/services/issuing/dispute_service
    stripe/services/issuing/personalization_design_service
    stripe/services/issuing/physical_bundle_service
    stripe/services/issuing/token_service
    stripe/services/issuing/transaction_service
    stripe/services/issuing_service
    stripe/services/mandate_service
    stripe/services/payment_attempt_record_service
    stripe/services/payment_intent_amount_details_line_item_service
    stripe/services/payment_intent_service
    stripe/services/payment_link_line_item_service
    stripe/services/payment_link_service
    stripe/services/payment_method_configuration_service
    stripe/services/payment_method_domain_service
    stripe/services/payment_method_service
    stripe/services/payment_record_service
    stripe/services/payout_service
    stripe/services/plan_service
    stripe/services/price_service
    stripe/services/product_feature_service
    stripe/services/product_service
    stripe/services/promotion_code_service
    stripe/services/quote_computed_upfront_line_items_service
    stripe/services/quote_line_item_service
    stripe/services/quote_service
    stripe/services/radar/early_fraud_warning_service
    stripe/services/radar/payment_evaluation_service
    stripe/services/radar/value_list_item_service
    stripe/services/radar/value_list_service
    stripe/services/radar_service
    stripe/services/refund_service
    stripe/services/reporting/report_run_service
    stripe/services/reporting/report_type_service
    stripe/services/reporting_service
    stripe/services/review_service
    stripe/services/setup_attempt_service
    stripe/services/setup_intent_service
    stripe/services/shipping_rate_service
    stripe/services/sigma/scheduled_query_run_service
    stripe/services/sigma_service
    stripe/services/source_service
    stripe/services/source_transaction_service
    stripe/services/subscription_item_service
    stripe/services/subscription_schedule_service
    stripe/services/subscription_service
    stripe/services/tax/association_service
    stripe/services/tax/calculation_line_item_service
    stripe/services/tax/calculation_service
    stripe/services/tax/registration_service
    stripe/services/tax/settings_service
    stripe/services/tax/transaction_line_item_service
    stripe/services/tax/transaction_service
    stripe/services/tax_code_service
    stripe/services/tax_id_service
    stripe/services/tax_rate_service
    stripe/services/tax_service
    stripe/services/terminal/configuration_service
    stripe/services/terminal/connection_token_service
    stripe/services/terminal/location_service
    stripe/services/terminal/onboarding_link_service
    stripe/services/terminal/reader_service
    stripe/services/terminal_service
    stripe/services/test_helpers/confirmation_token_service
    stripe/services/test_helpers/customer_service
    stripe/services/test_helpers/issuing/authorization_service
    stripe/services/test_helpers/issuing/card_service
    stripe/services/test_helpers/issuing/personalization_design_service
    stripe/services/test_helpers/issuing/transaction_service
    stripe/services/test_helpers/issuing_service
    stripe/services/test_helpers/refund_service
    stripe/services/test_helpers/terminal/reader_service
    stripe/services/test_helpers/terminal_service
    stripe/services/test_helpers/test_clock_service
    stripe/services/test_helpers/treasury/inbound_transfer_service
    stripe/services/test_helpers/treasury/outbound_payment_service
    stripe/services/test_helpers/treasury/outbound_transfer_service
    stripe/services/test_helpers/treasury/received_credit_service
    stripe/services/test_helpers/treasury/received_debit_service
    stripe/services/test_helpers/treasury_service
    stripe/services/test_helpers_service
    stripe/services/token_service
    stripe/services/topup_service
    stripe/services/transfer_reversal_service
    stripe/services/transfer_service
    stripe/services/treasury/credit_reversal_service
    stripe/services/treasury/debit_reversal_service
    stripe/services/treasury/financial_account_features_service
    stripe/services/treasury/financial_account_service
    stripe/services/treasury/inbound_transfer_service
    stripe/services/treasury/outbound_payment_service
    stripe/services/treasury/outbound_transfer_service
    stripe/services/treasury/received_credit_service
    stripe/services/treasury/received_debit_service
    stripe/services/treasury/transaction_entry_service
    stripe/services/treasury/transaction_service
    stripe/services/treasury_service
    stripe/services/v1_services
    stripe/services/v2/billing/meter_event_adjustment_service
    stripe/services/v2/billing/meter_event_service
    stripe/services/v2/billing/meter_event_session_service
    stripe/services/v2/billing/meter_event_stream_service
    stripe/services/v2/billing_service
    stripe/services/v2/core/account_link_service
    stripe/services/v2/core/account_service
    stripe/services/v2/core/account_token_service
    stripe/services/v2/core/accounts/person_service
    stripe/services/v2/core/accounts/person_token_service
    stripe/services/v2/core/event_destination_service
    stripe/services/v2/core/event_service
    stripe/services/v2/core_service
    stripe/services/v2_services
    stripe/services/webhook_endpoint_service
  ].freeze
end
