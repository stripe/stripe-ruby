# File generated from our OpenAPI spec
# frozen_string_literal: true

require "stripe/resources/account"
require "stripe/resources/account_link"
require "stripe/resources/account_notice"
require "stripe/resources/account_session"
require "stripe/resources/apple_pay_domain"
require "stripe/resources/application"
require "stripe/resources/application_fee"
require "stripe/resources/application_fee_refund"
require "stripe/resources/apps/secret"
require "stripe/resources/balance"
require "stripe/resources/balance_settings"
require "stripe/resources/balance_transaction"
require "stripe/resources/bank_account"
require "stripe/resources/billing/alert"
require "stripe/resources/billing/alert_triggered"
require "stripe/resources/billing/credit_balance_summary"
require "stripe/resources/billing/credit_balance_transaction"
require "stripe/resources/billing/credit_grant"
require "stripe/resources/billing/meter"
require "stripe/resources/billing/meter_error_report"
require "stripe/resources/billing/meter_event"
require "stripe/resources/billing/meter_event_adjustment"
require "stripe/resources/billing/meter_event_summary"
require "stripe/resources/billing_portal/configuration"
require "stripe/resources/billing_portal/session"
require "stripe/resources/capability"
require "stripe/resources/capital/financing_offer"
require "stripe/resources/capital/financing_summary"
require "stripe/resources/capital/financing_transaction"
require "stripe/resources/card"
require "stripe/resources/cash_balance"
require "stripe/resources/charge"
require "stripe/resources/checkout/session"
require "stripe/resources/climate/order"
require "stripe/resources/climate/product"
require "stripe/resources/climate/supplier"
require "stripe/resources/confirmation_token"
require "stripe/resources/connect_collection_transfer"
require "stripe/resources/country_spec"
require "stripe/resources/coupon"
require "stripe/resources/credit_note"
require "stripe/resources/credit_note_line_item"
require "stripe/resources/customer"
require "stripe/resources/customer_balance_transaction"
require "stripe/resources/customer_cash_balance_transaction"
require "stripe/resources/customer_session"
require "stripe/resources/discount"
require "stripe/resources/dispute"
require "stripe/resources/entitlements/active_entitlement"
require "stripe/resources/entitlements/active_entitlement_summary"
require "stripe/resources/entitlements/feature"
require "stripe/resources/ephemeral_key"
require "stripe/resources/event"
require "stripe/resources/exchange_rate"
require "stripe/resources/file"
require "stripe/resources/file_link"
require "stripe/resources/financial_connections/account"
require "stripe/resources/financial_connections/account_inferred_balance"
require "stripe/resources/financial_connections/account_owner"
require "stripe/resources/financial_connections/account_ownership"
require "stripe/resources/financial_connections/institution"
require "stripe/resources/financial_connections/session"
require "stripe/resources/financial_connections/transaction"
require "stripe/resources/forwarding/request"
require "stripe/resources/funding_instructions"
require "stripe/resources/gift_cards/card"
require "stripe/resources/gift_cards/transaction"
require "stripe/resources/identity/verification_report"
require "stripe/resources/identity/verification_session"
require "stripe/resources/invoice"
require "stripe/resources/invoice_item"
require "stripe/resources/invoice_line_item"
require "stripe/resources/invoice_payment"
require "stripe/resources/invoice_rendering_template"
require "stripe/resources/issuing/authorization"
require "stripe/resources/issuing/card"
require "stripe/resources/issuing/cardholder"
require "stripe/resources/issuing/credit_underwriting_record"
require "stripe/resources/issuing/dispute"
require "stripe/resources/issuing/dispute_settlement_detail"
require "stripe/resources/issuing/fraud_liability_debit"
require "stripe/resources/issuing/personalization_design"
require "stripe/resources/issuing/physical_bundle"
require "stripe/resources/issuing/settlement"
require "stripe/resources/issuing/token"
require "stripe/resources/issuing/transaction"
require "stripe/resources/line_item"
require "stripe/resources/login_link"
require "stripe/resources/mandate"
require "stripe/resources/margin"
require "stripe/resources/order"
require "stripe/resources/payment_attempt_record"
require "stripe/resources/payment_intent"
require "stripe/resources/payment_link"
require "stripe/resources/payment_method"
require "stripe/resources/payment_method_configuration"
require "stripe/resources/payment_method_domain"
require "stripe/resources/payment_record"
require "stripe/resources/payout"
require "stripe/resources/person"
require "stripe/resources/plan"
require "stripe/resources/price"
require "stripe/resources/product"
require "stripe/resources/product_feature"
require "stripe/resources/promotion_code"
require "stripe/resources/quote"
require "stripe/resources/quote_line"
require "stripe/resources/quote_preview_invoice"
require "stripe/resources/quote_preview_subscription_schedule"
require "stripe/resources/radar/early_fraud_warning"
require "stripe/resources/radar/value_list"
require "stripe/resources/radar/value_list_item"
require "stripe/resources/refund"
require "stripe/resources/reporting/report_run"
require "stripe/resources/reporting/report_type"
require "stripe/resources/reserve_transaction"
require "stripe/resources/reversal"
require "stripe/resources/review"
require "stripe/resources/setup_attempt"
require "stripe/resources/setup_intent"
require "stripe/resources/shipping_rate"
require "stripe/resources/sigma/scheduled_query_run"
require "stripe/resources/source"
require "stripe/resources/source_mandate_notification"
require "stripe/resources/source_transaction"
require "stripe/resources/subscription"
require "stripe/resources/subscription_item"
require "stripe/resources/subscription_schedule"
require "stripe/resources/tax/association"
require "stripe/resources/tax/calculation"
require "stripe/resources/tax/calculation_line_item"
require "stripe/resources/tax/form"
require "stripe/resources/tax/registration"
require "stripe/resources/tax/settings"
require "stripe/resources/tax/transaction"
require "stripe/resources/tax/transaction_line_item"
require "stripe/resources/tax_code"
require "stripe/resources/tax_deducted_at_source"
require "stripe/resources/tax_id"
require "stripe/resources/tax_rate"
require "stripe/resources/terminal/configuration"
require "stripe/resources/terminal/connection_token"
require "stripe/resources/terminal/location"
require "stripe/resources/terminal/reader"
require "stripe/resources/terminal/reader_collected_data"
require "stripe/resources/test_helpers/test_clock"
require "stripe/resources/token"
require "stripe/resources/topup"
require "stripe/resources/transfer"
require "stripe/resources/treasury/credit_reversal"
require "stripe/resources/treasury/debit_reversal"
require "stripe/resources/treasury/financial_account"
require "stripe/resources/treasury/financial_account_features"
require "stripe/resources/treasury/inbound_transfer"
require "stripe/resources/treasury/outbound_payment"
require "stripe/resources/treasury/outbound_transfer"
require "stripe/resources/treasury/received_credit"
require "stripe/resources/treasury/received_debit"
require "stripe/resources/treasury/transaction"
require "stripe/resources/treasury/transaction_entry"
require "stripe/resources/v2/billing/meter_event"
require "stripe/resources/v2/billing/meter_event_adjustment"
require "stripe/resources/v2/billing/meter_event_session"
require "stripe/resources/v2/core/account"
require "stripe/resources/v2/core/account_link"
require "stripe/resources/v2/core/person"
require "stripe/resources/v2/core/vault/gb_bank_account"
require "stripe/resources/v2/core/vault/us_bank_account"
require "stripe/resources/v2/event"
require "stripe/resources/v2/event_destination"
require "stripe/resources/v2/financial_address_credit_simulation"
require "stripe/resources/v2/financial_address_generated_microdeposits"
require "stripe/resources/v2/money_management/adjustment"
require "stripe/resources/v2/money_management/financial_account"
require "stripe/resources/v2/money_management/financial_address"
require "stripe/resources/v2/money_management/inbound_transfer"
require "stripe/resources/v2/money_management/outbound_payment"
require "stripe/resources/v2/money_management/outbound_payment_quote"
require "stripe/resources/v2/money_management/outbound_setup_intent"
require "stripe/resources/v2/money_management/outbound_transfer"
require "stripe/resources/v2/money_management/payout_method"
require "stripe/resources/v2/money_management/payout_methods_bank_account_spec"
require "stripe/resources/v2/money_management/received_credit"
require "stripe/resources/v2/money_management/received_debit"
require "stripe/resources/v2/money_management/transaction"
require "stripe/resources/v2/money_management/transaction_entry"
require "stripe/resources/webhook_endpoint"
require "stripe/events/v1_billing_meter_error_report_triggered_event"
require "stripe/events/v1_billing_meter_no_meter_found_event"
require "stripe/events/v2_core_account_including_configuration_customer_capability_status_updated_event"
require "stripe/events/v2_core_account_including_configuration_merchant_capability_status_updated_event"
require "stripe/events/v2_core_account_including_configuration_recipient_capability_status_updated_event"
require "stripe/events/v2_core_account_including_identity_updated_event"
require "stripe/events/v2_core_account_including_requirements_updated_event"
require "stripe/events/v2_core_account_link_completed_event"
require "stripe/events/v2_core_account_person_created_event"
require "stripe/events/v2_core_account_person_deleted_event"
require "stripe/events/v2_core_account_person_updated_event"
require "stripe/events/v2_money_management_financial_account_created_event"
require "stripe/events/v2_money_management_financial_address_activated_event"
require "stripe/events/v2_money_management_financial_address_failed_event"
require "stripe/events/v2_money_management_inbound_transfer_available_event"
require "stripe/events/v2_money_management_inbound_transfer_bank_debit_failed_event"
require "stripe/events/v2_money_management_inbound_transfer_bank_debit_processing_event"
require "stripe/events/v2_money_management_inbound_transfer_bank_debit_queued_event"
require "stripe/events/v2_money_management_inbound_transfer_bank_debit_returned_event"
require "stripe/events/v2_money_management_inbound_transfer_bank_debit_succeeded_event"
require "stripe/events/v2_money_management_outbound_payment_canceled_event"
require "stripe/events/v2_money_management_outbound_payment_created_event"
require "stripe/events/v2_money_management_outbound_payment_failed_event"
require "stripe/events/v2_money_management_outbound_payment_posted_event"
require "stripe/events/v2_money_management_outbound_payment_returned_event"
require "stripe/events/v2_money_management_outbound_transfer_canceled_event"
require "stripe/events/v2_money_management_outbound_transfer_created_event"
require "stripe/events/v2_money_management_outbound_transfer_failed_event"
require "stripe/events/v2_money_management_outbound_transfer_posted_event"
require "stripe/events/v2_money_management_outbound_transfer_returned_event"
require "stripe/events/v2_money_management_received_credit_available_event"
require "stripe/events/v2_money_management_received_credit_failed_event"
require "stripe/events/v2_money_management_received_credit_returned_event"
require "stripe/events/v2_money_management_received_credit_succeeded_event"
require "stripe/events/v2_money_management_received_debit_canceled_event"
require "stripe/events/v2_money_management_received_debit_failed_event"
require "stripe/events/v2_money_management_received_debit_pending_event"
require "stripe/events/v2_money_management_received_debit_succeeded_event"
require "stripe/events/v2_money_management_received_debit_updated_event"
