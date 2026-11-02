# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class AccountSessionCreateParams < ::Stripe::RequestParams
        class Components < ::Stripe::RequestParams
          class AccountManagement < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class AccountOnboarding < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class AgenticCommerceSettings < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class AppInstall < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class AppViewport < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class BalanceReport < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class Balances < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class Bills < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class CapitalFinancing < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class CapitalFinancingApplication < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class CapitalFinancingPromotion < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class CheckScanning < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class DisputesList < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class Documents < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class ExportTaxTransactions < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class FinancialAccountRewards < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class FinancialAccounts < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class FinancialAccountsTransactions < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class InstantPayoutsPromotion < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class InvoiceHistory < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class IssuingCard < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class IssuingCardsList < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class NetworkCostPassthroughReport < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class NotificationBanner < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class PaymentDetails < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class PaymentDisputes < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class PaymentMethodSettings < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class Payments < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class PayoutDetails < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class PayoutReconciliationReport < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class Payouts < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class PayoutsList < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class ProductTaxCodeSelector < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class ReportingChart < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class TaxRegistrations < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class TaxSettings < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class TaxThresholdMonitoring < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class TerminalHardwareOrders < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end

          class TerminalHardwareShop < ::Stripe::RequestParams
            # Whether this embedded component is enabled.
            attr_accessor :enabled

            def initialize(enabled: nil)
              @enabled = enabled
            end
          end
          # Settings for the Account Management embedded component.
          attr_accessor :account_management
          # Settings for the Account Onboarding embedded component.
          attr_accessor :account_onboarding
          # Settings for the Agentic Commerce Settings embedded component.
          attr_accessor :agentic_commerce_settings
          # Settings for the App Install embedded component.
          attr_accessor :app_install
          # Settings for the App Viewport embedded component.
          attr_accessor :app_viewport
          # Settings for the Balance Report embedded component.
          attr_accessor :balance_report
          # Settings for the Balances embedded component.
          attr_accessor :balances
          # Settings for the Bills embedded component.
          attr_accessor :bills
          # Settings for the Capital Financing embedded component.
          attr_accessor :capital_financing
          # Settings for the Capital Financing Application embedded component.
          attr_accessor :capital_financing_application
          # Settings for the Capital Financing Promotion embedded component.
          attr_accessor :capital_financing_promotion
          # Settings for the Check Scanning embedded component.
          attr_accessor :check_scanning
          # Settings for the Disputes List embedded component.
          attr_accessor :disputes_list
          # Settings for the Documents embedded component.
          attr_accessor :documents
          # Settings for the Export Tax Transactions embedded component.
          attr_accessor :export_tax_transactions
          # Settings for the Financial Account Rewards embedded component.
          attr_accessor :financial_account_rewards
          # Settings for the Financial Accounts embedded component.
          attr_accessor :financial_accounts
          # Settings for the Financial Accounts Transactions embedded component.
          attr_accessor :financial_accounts_transactions
          # Settings for the Instant Payouts Promotion embedded component.
          attr_accessor :instant_payouts_promotion
          # Settings for the Invoice History embedded component.
          attr_accessor :invoice_history
          # Settings for the Issuing Card embedded component.
          attr_accessor :issuing_card
          # Settings for the Issuing Cards List embedded component.
          attr_accessor :issuing_cards_list
          # Settings for the Network Cost Passthrough Report embedded component.
          attr_accessor :network_cost_passthrough_report
          # Settings for the Notification Banner embedded component.
          attr_accessor :notification_banner
          # Settings for the Payment Details embedded component.
          attr_accessor :payment_details
          # Settings for the Payment Disputes embedded component.
          attr_accessor :payment_disputes
          # Settings for the Payment Method Settings embedded component.
          attr_accessor :payment_method_settings
          # Settings for the Payments embedded component.
          attr_accessor :payments
          # Settings for the Payout Details embedded component.
          attr_accessor :payout_details
          # Settings for the Payout Reconciliation Report embedded component.
          attr_accessor :payout_reconciliation_report
          # Settings for the Payouts embedded component.
          attr_accessor :payouts
          # Settings for the Payouts List embedded component.
          attr_accessor :payouts_list
          # Settings for the Product Tax Code Selector embedded component.
          attr_accessor :product_tax_code_selector
          # Settings for the Reporting Chart embedded component.
          attr_accessor :reporting_chart
          # Settings for the Tax Registrations embedded component.
          attr_accessor :tax_registrations
          # Settings for the Tax Settings embedded component.
          attr_accessor :tax_settings
          # Settings for the Tax Threshold Monitoring embedded component.
          attr_accessor :tax_threshold_monitoring
          # Settings for the Terminal Hardware Orders embedded component.
          attr_accessor :terminal_hardware_orders
          # Settings for the Terminal Hardware Shop embedded component.
          attr_accessor :terminal_hardware_shop

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
          )
            @account_management = account_management
            @account_onboarding = account_onboarding
            @agentic_commerce_settings = agentic_commerce_settings
            @app_install = app_install
            @app_viewport = app_viewport
            @balance_report = balance_report
            @balances = balances
            @bills = bills
            @capital_financing = capital_financing
            @capital_financing_application = capital_financing_application
            @capital_financing_promotion = capital_financing_promotion
            @check_scanning = check_scanning
            @disputes_list = disputes_list
            @documents = documents
            @export_tax_transactions = export_tax_transactions
            @financial_account_rewards = financial_account_rewards
            @financial_accounts = financial_accounts
            @financial_accounts_transactions = financial_accounts_transactions
            @instant_payouts_promotion = instant_payouts_promotion
            @invoice_history = invoice_history
            @issuing_card = issuing_card
            @issuing_cards_list = issuing_cards_list
            @network_cost_passthrough_report = network_cost_passthrough_report
            @notification_banner = notification_banner
            @payment_details = payment_details
            @payment_disputes = payment_disputes
            @payment_method_settings = payment_method_settings
            @payments = payments
            @payout_details = payout_details
            @payout_reconciliation_report = payout_reconciliation_report
            @payouts = payouts
            @payouts_list = payouts_list
            @product_tax_code_selector = product_tax_code_selector
            @reporting_chart = reporting_chart
            @tax_registrations = tax_registrations
            @tax_settings = tax_settings
            @tax_threshold_monitoring = tax_threshold_monitoring
            @terminal_hardware_orders = terminal_hardware_orders
            @terminal_hardware_shop = terminal_hardware_shop
          end
        end

        class Scopes < ::Stripe::RequestParams
          # The Stripe App IDs allowed in the enabled app components.
          attr_accessor :allowed_stripe_app_ids
          # Whether to allow capturing payments.
          attr_accessor :capture_payments
          # Controls whether creating instant payouts is enabled, disabled, or determined by Dashboard rules.
          attr_accessor :create_instant_payouts
          # Whether to allow creating outbound payments.
          attr_accessor :create_outbound_payments
          # Whether to allow changing the payout schedule.
          attr_accessor :create_payout_schedule
          # Whether to allow creating standard payouts.
          attr_accessor :create_standard_payouts
          # Whether to allow creating US paper checks on the application.
          attr_accessor :create_us_paper_check_on_application
          # Whether to disable Stripe user authentication in the enabled components.
          attr_accessor :disable_stripe_user_authentication
          # Whether to allow managing bills.
          attr_accessor :manage_bills
          # Whether to allow managing destination and on-behalf-of charges.
          attr_accessor :manage_destination_on_behalf_of_charges
          # Whether to allow managing Issuing cardholders.
          attr_accessor :manage_issuing_cardholders
          # Whether to allow managing Issuing cards.
          attr_accessor :manage_issuing_cards
          # Whether to allow managing Issuing disputes.
          attr_accessor :manage_issuing_disputes
          # Whether to allow managing Issuing spending controls.
          attr_accessor :manage_issuing_spending_controls
          # Whether to allow managing payment disputes.
          attr_accessor :manage_payment_disputes
          # Whether to allow managing payout methods.
          attr_accessor :manage_payout_methods
          # Whether to allow refunding payments.
          attr_accessor :manage_refund_payments
          # Whether to allow managing Smart Disputes.
          attr_accessor :manage_smart_disputes

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
          )
            @allowed_stripe_app_ids = allowed_stripe_app_ids
            @capture_payments = capture_payments
            @create_instant_payouts = create_instant_payouts
            @create_outbound_payments = create_outbound_payments
            @create_payout_schedule = create_payout_schedule
            @create_standard_payouts = create_standard_payouts
            @create_us_paper_check_on_application = create_us_paper_check_on_application
            @disable_stripe_user_authentication = disable_stripe_user_authentication
            @manage_bills = manage_bills
            @manage_destination_on_behalf_of_charges = manage_destination_on_behalf_of_charges
            @manage_issuing_cardholders = manage_issuing_cardholders
            @manage_issuing_cards = manage_issuing_cards
            @manage_issuing_disputes = manage_issuing_disputes
            @manage_issuing_spending_controls = manage_issuing_spending_controls
            @manage_payment_disputes = manage_payment_disputes
            @manage_payout_methods = manage_payout_methods
            @manage_refund_payments = manage_refund_payments
            @manage_smart_disputes = manage_smart_disputes
          end
        end
        # The ID of the account to create an Account Session for.
        attr_accessor :account
        # The embedded components to enable for this Account Session.
        attr_accessor :components
        # Permissions to grant across the enabled components.
        attr_accessor :scopes

        def initialize(account: nil, components: nil, scopes: nil)
          @account = account
          @components = components
          @scopes = scopes
        end
      end
    end
  end
end
