# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class AccountSessionCreateParams < ::Stripe::RequestParams
        class Components < ::Stripe::RequestParams
          class AccountManagement < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class AccountOnboarding < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class AgenticCommerceSettings < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class AppInstall < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class AppViewport < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class BalanceReport < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class Balances < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class Bills < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class CapitalFinancing < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class CapitalFinancingApplication < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class CapitalFinancingPromotion < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class CheckScanning < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class DisputesList < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class Documents < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class ExportTaxTransactions < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class FinancialAccountRewards < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class FinancialAccounts < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class FinancialAccountsTransactions < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class InstantPayoutsPromotion < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class InvoiceHistory < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class IssuingCard < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class IssuingCardsList < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class NetworkCostPassthroughReport < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class NotificationBanner < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class PaymentDetails < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class PaymentDisputes < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class PaymentMethodSettings < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class Payments < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class PayoutDetails < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class PayoutReconciliationReport < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class Payouts < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class PayoutsList < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class ProductTaxCodeSelector < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class ReportingChart < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class TaxRegistrations < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class TaxSettings < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class TaxThresholdMonitoring < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class TerminalHardwareOrders < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          class TerminalHardwareShop < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            sig { params(_enabled: T::Boolean).returns(T::Boolean) }
            def enabled=(_enabled); end
            sig { params(enabled: T::Boolean).void }
            def initialize(enabled: nil); end
          end
          # Settings for the Account Management embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::AccountManagement))
           }
          def account_management; end
          sig {
            params(_account_management: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::AccountManagement)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::AccountManagement))
           }
          def account_management=(_account_management); end
          # Settings for the Account Onboarding embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::AccountOnboarding))
           }
          def account_onboarding; end
          sig {
            params(_account_onboarding: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::AccountOnboarding)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::AccountOnboarding))
           }
          def account_onboarding=(_account_onboarding); end
          # Settings for the Agentic Commerce Settings embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::AgenticCommerceSettings))
           }
          def agentic_commerce_settings; end
          sig {
            params(_agentic_commerce_settings: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::AgenticCommerceSettings)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::AgenticCommerceSettings))
           }
          def agentic_commerce_settings=(_agentic_commerce_settings); end
          # Settings for the App Install embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::AppInstall))
           }
          def app_install; end
          sig {
            params(_app_install: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::AppInstall)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::AppInstall))
           }
          def app_install=(_app_install); end
          # Settings for the App Viewport embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::AppViewport))
           }
          def app_viewport; end
          sig {
            params(_app_viewport: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::AppViewport)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::AppViewport))
           }
          def app_viewport=(_app_viewport); end
          # Settings for the Balance Report embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::BalanceReport))
           }
          def balance_report; end
          sig {
            params(_balance_report: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::BalanceReport)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::BalanceReport))
           }
          def balance_report=(_balance_report); end
          # Settings for the Balances embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::Balances))
           }
          def balances; end
          sig {
            params(_balances: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::Balances)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::Balances))
           }
          def balances=(_balances); end
          # Settings for the Bills embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::Bills))
           }
          def bills; end
          sig {
            params(_bills: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::Bills)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::Bills))
           }
          def bills=(_bills); end
          # Settings for the Capital Financing embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::CapitalFinancing))
           }
          def capital_financing; end
          sig {
            params(_capital_financing: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::CapitalFinancing)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::CapitalFinancing))
           }
          def capital_financing=(_capital_financing); end
          # Settings for the Capital Financing Application embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::CapitalFinancingApplication))
           }
          def capital_financing_application; end
          sig {
            params(_capital_financing_application: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::CapitalFinancingApplication)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::CapitalFinancingApplication))
           }
          def capital_financing_application=(_capital_financing_application); end
          # Settings for the Capital Financing Promotion embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::CapitalFinancingPromotion))
           }
          def capital_financing_promotion; end
          sig {
            params(_capital_financing_promotion: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::CapitalFinancingPromotion)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::CapitalFinancingPromotion))
           }
          def capital_financing_promotion=(_capital_financing_promotion); end
          # Settings for the Check Scanning embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::CheckScanning))
           }
          def check_scanning; end
          sig {
            params(_check_scanning: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::CheckScanning)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::CheckScanning))
           }
          def check_scanning=(_check_scanning); end
          # Settings for the Disputes List embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::DisputesList))
           }
          def disputes_list; end
          sig {
            params(_disputes_list: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::DisputesList)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::DisputesList))
           }
          def disputes_list=(_disputes_list); end
          # Settings for the Documents embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::Documents))
           }
          def documents; end
          sig {
            params(_documents: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::Documents)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::Documents))
           }
          def documents=(_documents); end
          # Settings for the Export Tax Transactions embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::ExportTaxTransactions))
           }
          def export_tax_transactions; end
          sig {
            params(_export_tax_transactions: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::ExportTaxTransactions)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::ExportTaxTransactions))
           }
          def export_tax_transactions=(_export_tax_transactions); end
          # Settings for the Financial Account Rewards embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::FinancialAccountRewards))
           }
          def financial_account_rewards; end
          sig {
            params(_financial_account_rewards: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::FinancialAccountRewards)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::FinancialAccountRewards))
           }
          def financial_account_rewards=(_financial_account_rewards); end
          # Settings for the Financial Accounts embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::FinancialAccounts))
           }
          def financial_accounts; end
          sig {
            params(_financial_accounts: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::FinancialAccounts)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::FinancialAccounts))
           }
          def financial_accounts=(_financial_accounts); end
          # Settings for the Financial Accounts Transactions embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::FinancialAccountsTransactions))
           }
          def financial_accounts_transactions; end
          sig {
            params(_financial_accounts_transactions: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::FinancialAccountsTransactions)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::FinancialAccountsTransactions))
           }
          def financial_accounts_transactions=(_financial_accounts_transactions); end
          # Settings for the Instant Payouts Promotion embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::InstantPayoutsPromotion))
           }
          def instant_payouts_promotion; end
          sig {
            params(_instant_payouts_promotion: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::InstantPayoutsPromotion)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::InstantPayoutsPromotion))
           }
          def instant_payouts_promotion=(_instant_payouts_promotion); end
          # Settings for the Invoice History embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::InvoiceHistory))
           }
          def invoice_history; end
          sig {
            params(_invoice_history: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::InvoiceHistory)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::InvoiceHistory))
           }
          def invoice_history=(_invoice_history); end
          # Settings for the Issuing Card embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::IssuingCard))
           }
          def issuing_card; end
          sig {
            params(_issuing_card: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::IssuingCard)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::IssuingCard))
           }
          def issuing_card=(_issuing_card); end
          # Settings for the Issuing Cards List embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::IssuingCardsList))
           }
          def issuing_cards_list; end
          sig {
            params(_issuing_cards_list: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::IssuingCardsList)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::IssuingCardsList))
           }
          def issuing_cards_list=(_issuing_cards_list); end
          # Settings for the Network Cost Passthrough Report embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::NetworkCostPassthroughReport))
           }
          def network_cost_passthrough_report; end
          sig {
            params(_network_cost_passthrough_report: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::NetworkCostPassthroughReport)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::NetworkCostPassthroughReport))
           }
          def network_cost_passthrough_report=(_network_cost_passthrough_report); end
          # Settings for the Notification Banner embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::NotificationBanner))
           }
          def notification_banner; end
          sig {
            params(_notification_banner: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::NotificationBanner)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::NotificationBanner))
           }
          def notification_banner=(_notification_banner); end
          # Settings for the Payment Details embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::PaymentDetails))
           }
          def payment_details; end
          sig {
            params(_payment_details: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::PaymentDetails)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::PaymentDetails))
           }
          def payment_details=(_payment_details); end
          # Settings for the Payment Disputes embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::PaymentDisputes))
           }
          def payment_disputes; end
          sig {
            params(_payment_disputes: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::PaymentDisputes)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::PaymentDisputes))
           }
          def payment_disputes=(_payment_disputes); end
          # Settings for the Payment Method Settings embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::PaymentMethodSettings))
           }
          def payment_method_settings; end
          sig {
            params(_payment_method_settings: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::PaymentMethodSettings)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::PaymentMethodSettings))
           }
          def payment_method_settings=(_payment_method_settings); end
          # Settings for the Payments embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::Payments))
           }
          def payments; end
          sig {
            params(_payments: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::Payments)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::Payments))
           }
          def payments=(_payments); end
          # Settings for the Payout Details embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::PayoutDetails))
           }
          def payout_details; end
          sig {
            params(_payout_details: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::PayoutDetails)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::PayoutDetails))
           }
          def payout_details=(_payout_details); end
          # Settings for the Payout Reconciliation Report embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::PayoutReconciliationReport))
           }
          def payout_reconciliation_report; end
          sig {
            params(_payout_reconciliation_report: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::PayoutReconciliationReport)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::PayoutReconciliationReport))
           }
          def payout_reconciliation_report=(_payout_reconciliation_report); end
          # Settings for the Payouts embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::Payouts))
           }
          def payouts; end
          sig {
            params(_payouts: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::Payouts)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::Payouts))
           }
          def payouts=(_payouts); end
          # Settings for the Payouts List embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::PayoutsList))
           }
          def payouts_list; end
          sig {
            params(_payouts_list: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::PayoutsList)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::PayoutsList))
           }
          def payouts_list=(_payouts_list); end
          # Settings for the Product Tax Code Selector embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::ProductTaxCodeSelector))
           }
          def product_tax_code_selector; end
          sig {
            params(_product_tax_code_selector: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::ProductTaxCodeSelector)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::ProductTaxCodeSelector))
           }
          def product_tax_code_selector=(_product_tax_code_selector); end
          # Settings for the Reporting Chart embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::ReportingChart))
           }
          def reporting_chart; end
          sig {
            params(_reporting_chart: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::ReportingChart)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::ReportingChart))
           }
          def reporting_chart=(_reporting_chart); end
          # Settings for the Tax Registrations embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::TaxRegistrations))
           }
          def tax_registrations; end
          sig {
            params(_tax_registrations: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::TaxRegistrations)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::TaxRegistrations))
           }
          def tax_registrations=(_tax_registrations); end
          # Settings for the Tax Settings embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::TaxSettings))
           }
          def tax_settings; end
          sig {
            params(_tax_settings: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::TaxSettings)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::TaxSettings))
           }
          def tax_settings=(_tax_settings); end
          # Settings for the Tax Threshold Monitoring embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::TaxThresholdMonitoring))
           }
          def tax_threshold_monitoring; end
          sig {
            params(_tax_threshold_monitoring: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::TaxThresholdMonitoring)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::TaxThresholdMonitoring))
           }
          def tax_threshold_monitoring=(_tax_threshold_monitoring); end
          # Settings for the Terminal Hardware Orders embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::TerminalHardwareOrders))
           }
          def terminal_hardware_orders; end
          sig {
            params(_terminal_hardware_orders: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::TerminalHardwareOrders)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::TerminalHardwareOrders))
           }
          def terminal_hardware_orders=(_terminal_hardware_orders); end
          # Settings for the Terminal Hardware Shop embedded component.
          sig {
            returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::TerminalHardwareShop))
           }
          def terminal_hardware_shop; end
          sig {
            params(_terminal_hardware_shop: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::TerminalHardwareShop)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::TerminalHardwareShop))
           }
          def terminal_hardware_shop=(_terminal_hardware_shop); end
          sig {
            params(account_management: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::AccountManagement), account_onboarding: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::AccountOnboarding), agentic_commerce_settings: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::AgenticCommerceSettings), app_install: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::AppInstall), app_viewport: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::AppViewport), balance_report: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::BalanceReport), balances: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::Balances), bills: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::Bills), capital_financing: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::CapitalFinancing), capital_financing_application: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::CapitalFinancingApplication), capital_financing_promotion: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::CapitalFinancingPromotion), check_scanning: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::CheckScanning), disputes_list: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::DisputesList), documents: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::Documents), export_tax_transactions: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::ExportTaxTransactions), financial_account_rewards: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::FinancialAccountRewards), financial_accounts: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::FinancialAccounts), financial_accounts_transactions: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::FinancialAccountsTransactions), instant_payouts_promotion: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::InstantPayoutsPromotion), invoice_history: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::InvoiceHistory), issuing_card: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::IssuingCard), issuing_cards_list: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::IssuingCardsList), network_cost_passthrough_report: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::NetworkCostPassthroughReport), notification_banner: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::NotificationBanner), payment_details: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::PaymentDetails), payment_disputes: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::PaymentDisputes), payment_method_settings: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::PaymentMethodSettings), payments: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::Payments), payout_details: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::PayoutDetails), payout_reconciliation_report: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::PayoutReconciliationReport), payouts: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::Payouts), payouts_list: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::PayoutsList), product_tax_code_selector: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::ProductTaxCodeSelector), reporting_chart: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::ReportingChart), tax_registrations: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::TaxRegistrations), tax_settings: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::TaxSettings), tax_threshold_monitoring: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::TaxThresholdMonitoring), terminal_hardware_orders: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::TerminalHardwareOrders), terminal_hardware_shop: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Components::TerminalHardwareShop)).void
           }
          def initialize(
            account_management: nil,
            account_onboarding: nil,
            agentic_commerce_settings: nil,
            app_install: nil,
            app_viewport: nil,
            balance_report: nil,
            balances: nil,
            bills: nil,
            capital_financing: nil,
            capital_financing_application: nil,
            capital_financing_promotion: nil,
            check_scanning: nil,
            disputes_list: nil,
            documents: nil,
            export_tax_transactions: nil,
            financial_account_rewards: nil,
            financial_accounts: nil,
            financial_accounts_transactions: nil,
            instant_payouts_promotion: nil,
            invoice_history: nil,
            issuing_card: nil,
            issuing_cards_list: nil,
            network_cost_passthrough_report: nil,
            notification_banner: nil,
            payment_details: nil,
            payment_disputes: nil,
            payment_method_settings: nil,
            payments: nil,
            payout_details: nil,
            payout_reconciliation_report: nil,
            payouts: nil,
            payouts_list: nil,
            product_tax_code_selector: nil,
            reporting_chart: nil,
            tax_registrations: nil,
            tax_settings: nil,
            tax_threshold_monitoring: nil,
            terminal_hardware_orders: nil,
            terminal_hardware_shop: nil
          ); end
        end
        class Scopes < ::Stripe::RequestParams
          # The Stripe App IDs allowed in the enabled app components.
          sig { returns(T.nilable(T::Array[String])) }
          def allowed_stripe_app_ids; end
          sig {
            params(_allowed_stripe_app_ids: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def allowed_stripe_app_ids=(_allowed_stripe_app_ids); end
          # Whether to allow capturing payments.
          sig { returns(T.nilable(String)) }
          def capture_payments; end
          sig { params(_capture_payments: T.nilable(String)).returns(T.nilable(String)) }
          def capture_payments=(_capture_payments); end
          # Controls whether creating instant payouts is enabled, disabled, or determined by Dashboard rules.
          sig { returns(T.nilable(String)) }
          def create_instant_payouts; end
          sig { params(_create_instant_payouts: T.nilable(String)).returns(T.nilable(String)) }
          def create_instant_payouts=(_create_instant_payouts); end
          # Whether to allow creating outbound payments.
          sig { returns(T.nilable(String)) }
          def create_outbound_payments; end
          sig { params(_create_outbound_payments: T.nilable(String)).returns(T.nilable(String)) }
          def create_outbound_payments=(_create_outbound_payments); end
          # Whether to allow changing the payout schedule.
          sig { returns(T.nilable(String)) }
          def create_payout_schedule; end
          sig { params(_create_payout_schedule: T.nilable(String)).returns(T.nilable(String)) }
          def create_payout_schedule=(_create_payout_schedule); end
          # Whether to allow creating standard payouts.
          sig { returns(T.nilable(String)) }
          def create_standard_payouts; end
          sig { params(_create_standard_payouts: T.nilable(String)).returns(T.nilable(String)) }
          def create_standard_payouts=(_create_standard_payouts); end
          # Whether to allow creating US paper checks on the application.
          sig { returns(T.nilable(String)) }
          def create_us_paper_check_on_application; end
          sig {
            params(_create_us_paper_check_on_application: T.nilable(String)).returns(T.nilable(String))
           }
          def create_us_paper_check_on_application=(_create_us_paper_check_on_application); end
          # Whether to disable Stripe user authentication in the enabled components.
          sig { returns(T.nilable(String)) }
          def disable_stripe_user_authentication; end
          sig {
            params(_disable_stripe_user_authentication: T.nilable(String)).returns(T.nilable(String))
           }
          def disable_stripe_user_authentication=(_disable_stripe_user_authentication); end
          # Whether to allow managing bills.
          sig { returns(T.nilable(String)) }
          def manage_bills; end
          sig { params(_manage_bills: T.nilable(String)).returns(T.nilable(String)) }
          def manage_bills=(_manage_bills); end
          # Whether to allow managing destination and on-behalf-of charges.
          sig { returns(T.nilable(String)) }
          def manage_destination_on_behalf_of_charges; end
          sig {
            params(_manage_destination_on_behalf_of_charges: T.nilable(String)).returns(T.nilable(String))
           }
          def manage_destination_on_behalf_of_charges=(
            _manage_destination_on_behalf_of_charges
          ); end
          # Whether to allow managing Issuing cardholders.
          sig { returns(T.nilable(String)) }
          def manage_issuing_cardholders; end
          sig { params(_manage_issuing_cardholders: T.nilable(String)).returns(T.nilable(String)) }
          def manage_issuing_cardholders=(_manage_issuing_cardholders); end
          # Whether to allow managing Issuing cards.
          sig { returns(T.nilable(String)) }
          def manage_issuing_cards; end
          sig { params(_manage_issuing_cards: T.nilable(String)).returns(T.nilable(String)) }
          def manage_issuing_cards=(_manage_issuing_cards); end
          # Whether to allow managing Issuing disputes.
          sig { returns(T.nilable(String)) }
          def manage_issuing_disputes; end
          sig { params(_manage_issuing_disputes: T.nilable(String)).returns(T.nilable(String)) }
          def manage_issuing_disputes=(_manage_issuing_disputes); end
          # Whether to allow managing Issuing spending controls.
          sig { returns(T.nilable(String)) }
          def manage_issuing_spending_controls; end
          sig {
            params(_manage_issuing_spending_controls: T.nilable(String)).returns(T.nilable(String))
           }
          def manage_issuing_spending_controls=(_manage_issuing_spending_controls); end
          # Whether to allow managing payment disputes.
          sig { returns(T.nilable(String)) }
          def manage_payment_disputes; end
          sig { params(_manage_payment_disputes: T.nilable(String)).returns(T.nilable(String)) }
          def manage_payment_disputes=(_manage_payment_disputes); end
          # Whether to allow managing payout methods.
          sig { returns(T.nilable(String)) }
          def manage_payout_methods; end
          sig { params(_manage_payout_methods: T.nilable(String)).returns(T.nilable(String)) }
          def manage_payout_methods=(_manage_payout_methods); end
          # Whether to allow refunding payments.
          sig { returns(T.nilable(String)) }
          def manage_refund_payments; end
          sig { params(_manage_refund_payments: T.nilable(String)).returns(T.nilable(String)) }
          def manage_refund_payments=(_manage_refund_payments); end
          # Whether to allow managing Smart Disputes.
          sig { returns(T.nilable(String)) }
          def manage_smart_disputes; end
          sig { params(_manage_smart_disputes: T.nilable(String)).returns(T.nilable(String)) }
          def manage_smart_disputes=(_manage_smart_disputes); end
          sig {
            params(allowed_stripe_app_ids: T.nilable(T::Array[String]), capture_payments: T.nilable(String), create_instant_payouts: T.nilable(String), create_outbound_payments: T.nilable(String), create_payout_schedule: T.nilable(String), create_standard_payouts: T.nilable(String), create_us_paper_check_on_application: T.nilable(String), disable_stripe_user_authentication: T.nilable(String), manage_bills: T.nilable(String), manage_destination_on_behalf_of_charges: T.nilable(String), manage_issuing_cardholders: T.nilable(String), manage_issuing_cards: T.nilable(String), manage_issuing_disputes: T.nilable(String), manage_issuing_spending_controls: T.nilable(String), manage_payment_disputes: T.nilable(String), manage_payout_methods: T.nilable(String), manage_refund_payments: T.nilable(String), manage_smart_disputes: T.nilable(String)).void
           }
          def initialize(
            allowed_stripe_app_ids: nil,
            capture_payments: nil,
            create_instant_payouts: nil,
            create_outbound_payments: nil,
            create_payout_schedule: nil,
            create_standard_payouts: nil,
            create_us_paper_check_on_application: nil,
            disable_stripe_user_authentication: nil,
            manage_bills: nil,
            manage_destination_on_behalf_of_charges: nil,
            manage_issuing_cardholders: nil,
            manage_issuing_cards: nil,
            manage_issuing_disputes: nil,
            manage_issuing_spending_controls: nil,
            manage_payment_disputes: nil,
            manage_payout_methods: nil,
            manage_refund_payments: nil,
            manage_smart_disputes: nil
          ); end
        end
        # The ID of the account to create an Account Session for.
        sig { returns(String) }
        def account; end
        sig { params(_account: String).returns(String) }
        def account=(_account); end
        # The embedded components to enable for this Account Session.
        sig { returns(::Stripe::V2::Core::AccountSessionCreateParams::Components) }
        def components; end
        sig {
          params(_components: ::Stripe::V2::Core::AccountSessionCreateParams::Components).returns(::Stripe::V2::Core::AccountSessionCreateParams::Components)
         }
        def components=(_components); end
        # Permissions to grant across the enabled components.
        sig { returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Scopes)) }
        def scopes; end
        sig {
          params(_scopes: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Scopes)).returns(T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Scopes))
         }
        def scopes=(_scopes); end
        sig {
          params(account: String, components: ::Stripe::V2::Core::AccountSessionCreateParams::Components, scopes: T.nilable(::Stripe::V2::Core::AccountSessionCreateParams::Scopes)).void
         }
        def initialize(account: nil, components: nil, scopes: nil); end
      end
    end
  end
end