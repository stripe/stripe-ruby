# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class AccountSessionService < StripeService
    class CreateParams < Stripe::RequestParams
      class Components < Stripe::RequestParams
        class AccountManagement < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
            attr_accessor :disable_stripe_user_authentication
            # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
            attr_accessor :external_account_collection

            def initialize(
              disable_stripe_user_authentication: nil,
              external_account_collection: nil
            )
              @disable_stripe_user_authentication = disable_stripe_user_authentication
              @external_account_collection = external_account_collection
            end
          end
          # Whether the embedded component is enabled.
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          attr_accessor :features

          def initialize(enabled: nil, features: nil)
            @enabled = enabled
            @features = features
          end
        end

        class AccountOnboarding < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
            attr_accessor :disable_stripe_user_authentication
            # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
            attr_accessor :external_account_collection

            def initialize(
              disable_stripe_user_authentication: nil,
              external_account_collection: nil
            )
              @disable_stripe_user_authentication = disable_stripe_user_authentication
              @external_account_collection = external_account_collection
            end
          end
          # Whether the embedded component is enabled.
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          attr_accessor :features

          def initialize(enabled: nil, features: nil)
            @enabled = enabled
            @features = features
          end
        end

        class AppInstall < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # The list of apps allowed to be enabled in the embedded component.
            attr_accessor :allowed_apps

            def initialize(allowed_apps: nil)
              @allowed_apps = allowed_apps
            end
          end
          # Whether the embedded component is enabled.
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          attr_accessor :features

          def initialize(enabled: nil, features: nil)
            @enabled = enabled
            @features = features
          end
        end

        class AppViewport < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # The list of apps allowed to be enabled in the embedded component.
            attr_accessor :allowed_apps

            def initialize(allowed_apps: nil)
              @allowed_apps = allowed_apps
            end
          end
          # Whether the embedded component is enabled.
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          attr_accessor :features

          def initialize(enabled: nil, features: nil)
            @enabled = enabled
            @features = features
          end
        end

        class Balances < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
            attr_accessor :disable_stripe_user_authentication
            # Whether to allow payout schedule to be changed. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
            attr_accessor :edit_payout_schedule
            # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
            attr_accessor :external_account_collection
            # Whether to allow creation of instant payouts. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
            attr_accessor :instant_payouts
            # Whether to allow creation of standard payouts. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
            attr_accessor :standard_payouts

            def initialize(
              disable_stripe_user_authentication: nil,
              edit_payout_schedule: nil,
              external_account_collection: nil,
              instant_payouts: nil,
              standard_payouts: nil
            )
              @disable_stripe_user_authentication = disable_stripe_user_authentication
              @edit_payout_schedule = edit_payout_schedule
              @external_account_collection = external_account_collection
              @instant_payouts = instant_payouts
              @standard_payouts = standard_payouts
            end
          end
          # Whether the embedded component is enabled.
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          attr_accessor :features

          def initialize(enabled: nil, features: nil)
            @enabled = enabled
            @features = features
          end
        end

        class CapitalFinancing < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          attr_accessor :features

          def initialize(enabled: nil, features: nil)
            @enabled = enabled
            @features = features
          end
        end

        class CapitalFinancingApplication < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          attr_accessor :features

          def initialize(enabled: nil, features: nil)
            @enabled = enabled
            @features = features
          end
        end

        class CapitalFinancingPromotion < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          attr_accessor :features

          def initialize(enabled: nil, features: nil)
            @enabled = enabled
            @features = features
          end
        end

        class CapitalOverview < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          attr_accessor :features

          def initialize(enabled: nil, features: nil)
            @enabled = enabled
            @features = features
          end
        end

        class DisputesList < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether to allow capturing and cancelling payment intents. This is `true` by default.
            attr_accessor :capture_payments
            # Whether connected accounts can manage destination charges that are created on behalf of them. This is `false` by default.
            attr_accessor :destination_on_behalf_of_charge_management
            # Whether responding to disputes is enabled, including submitting evidence and accepting disputes. This is `true` by default.
            attr_accessor :dispute_management
            # Whether sending refunds is enabled. This is `true` by default.
            attr_accessor :refund_management

            def initialize(
              capture_payments: nil,
              destination_on_behalf_of_charge_management: nil,
              dispute_management: nil,
              refund_management: nil
            )
              @capture_payments = capture_payments
              @destination_on_behalf_of_charge_management = destination_on_behalf_of_charge_management
              @dispute_management = dispute_management
              @refund_management = refund_management
            end
          end
          # Whether the embedded component is enabled.
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          attr_accessor :features

          def initialize(enabled: nil, features: nil)
            @enabled = enabled
            @features = features
          end
        end

        class Documents < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          attr_accessor :features

          def initialize(enabled: nil, features: nil)
            @enabled = enabled
            @features = features
          end
        end

        class ExportTaxTransactions < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          attr_accessor :features

          def initialize(enabled: nil, features: nil)
            @enabled = enabled
            @features = features
          end
        end

        class FinancialAccount < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
            attr_accessor :disable_stripe_user_authentication
            # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
            attr_accessor :external_account_collection
            # Whether to allow sending money.
            attr_accessor :send_money
            # Whether to allow transferring balance.
            attr_accessor :transfer_balance

            def initialize(
              disable_stripe_user_authentication: nil,
              external_account_collection: nil,
              send_money: nil,
              transfer_balance: nil
            )
              @disable_stripe_user_authentication = disable_stripe_user_authentication
              @external_account_collection = external_account_collection
              @send_money = send_money
              @transfer_balance = transfer_balance
            end
          end
          # Whether the embedded component is enabled.
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          attr_accessor :features

          def initialize(enabled: nil, features: nil)
            @enabled = enabled
            @features = features
          end
        end

        class FinancialAccountTransactions < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether to allow card spend dispute management features.
            attr_accessor :card_spend_dispute_management

            def initialize(card_spend_dispute_management: nil)
              @card_spend_dispute_management = card_spend_dispute_management
            end
          end
          # Whether the embedded component is enabled.
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          attr_accessor :features

          def initialize(enabled: nil, features: nil)
            @enabled = enabled
            @features = features
          end
        end

        class InstantPayoutsPromotion < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
            attr_accessor :disable_stripe_user_authentication
            # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
            attr_accessor :external_account_collection
            # Whether to allow creation of instant payouts. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
            attr_accessor :instant_payouts

            def initialize(
              disable_stripe_user_authentication: nil,
              external_account_collection: nil,
              instant_payouts: nil
            )
              @disable_stripe_user_authentication = disable_stripe_user_authentication
              @external_account_collection = external_account_collection
              @instant_payouts = instant_payouts
            end
          end
          # Whether the embedded component is enabled.
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          attr_accessor :features

          def initialize(enabled: nil, features: nil)
            @enabled = enabled
            @features = features
          end
        end

        class IssuingCard < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether to allow card management features.
            attr_accessor :card_management
            # Whether to allow card spend dispute management features.
            attr_accessor :card_spend_dispute_management
            # Whether to allow cardholder management features.
            attr_accessor :cardholder_management
            # Whether to allow spend control management features.
            attr_accessor :spend_control_management

            def initialize(
              card_management: nil,
              card_spend_dispute_management: nil,
              cardholder_management: nil,
              spend_control_management: nil
            )
              @card_management = card_management
              @card_spend_dispute_management = card_spend_dispute_management
              @cardholder_management = cardholder_management
              @spend_control_management = spend_control_management
            end
          end
          # Whether the embedded component is enabled.
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          attr_accessor :features

          def initialize(enabled: nil, features: nil)
            @enabled = enabled
            @features = features
          end
        end

        class IssuingCardsList < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether to allow card management features.
            attr_accessor :card_management
            # Whether to allow card spend dispute management features.
            attr_accessor :card_spend_dispute_management
            # Whether to allow cardholder management features.
            attr_accessor :cardholder_management
            # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
            attr_accessor :disable_stripe_user_authentication
            # Whether to allow spend control management features.
            attr_accessor :spend_control_management

            def initialize(
              card_management: nil,
              card_spend_dispute_management: nil,
              cardholder_management: nil,
              disable_stripe_user_authentication: nil,
              spend_control_management: nil
            )
              @card_management = card_management
              @card_spend_dispute_management = card_spend_dispute_management
              @cardholder_management = cardholder_management
              @disable_stripe_user_authentication = disable_stripe_user_authentication
              @spend_control_management = spend_control_management
            end
          end
          # Whether the embedded component is enabled.
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          attr_accessor :features

          def initialize(enabled: nil, features: nil)
            @enabled = enabled
            @features = features
          end
        end

        class NotificationBanner < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
            attr_accessor :disable_stripe_user_authentication
            # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
            attr_accessor :external_account_collection

            def initialize(
              disable_stripe_user_authentication: nil,
              external_account_collection: nil
            )
              @disable_stripe_user_authentication = disable_stripe_user_authentication
              @external_account_collection = external_account_collection
            end
          end
          # Whether the embedded component is enabled.
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          attr_accessor :features

          def initialize(enabled: nil, features: nil)
            @enabled = enabled
            @features = features
          end
        end

        class PaymentDetails < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether to allow capturing and cancelling payment intents. This is `true` by default.
            attr_accessor :capture_payments
            # Whether connected accounts can manage destination charges that are created on behalf of them. This is `false` by default.
            attr_accessor :destination_on_behalf_of_charge_management
            # Whether responding to disputes is enabled, including submitting evidence and accepting disputes. This is `true` by default.
            attr_accessor :dispute_management
            # Whether sending refunds is enabled. This is `true` by default.
            attr_accessor :refund_management

            def initialize(
              capture_payments: nil,
              destination_on_behalf_of_charge_management: nil,
              dispute_management: nil,
              refund_management: nil
            )
              @capture_payments = capture_payments
              @destination_on_behalf_of_charge_management = destination_on_behalf_of_charge_management
              @dispute_management = dispute_management
              @refund_management = refund_management
            end
          end
          # Whether the embedded component is enabled.
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          attr_accessor :features

          def initialize(enabled: nil, features: nil)
            @enabled = enabled
            @features = features
          end
        end

        class PaymentDisputes < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether connected accounts can manage destination charges that are created on behalf of them. This is `false` by default.
            attr_accessor :destination_on_behalf_of_charge_management
            # Whether responding to disputes is enabled, including submitting evidence and accepting disputes. This is `true` by default.
            attr_accessor :dispute_management
            # Whether sending refunds is enabled. This is `true` by default.
            attr_accessor :refund_management

            def initialize(
              destination_on_behalf_of_charge_management: nil,
              dispute_management: nil,
              refund_management: nil
            )
              @destination_on_behalf_of_charge_management = destination_on_behalf_of_charge_management
              @dispute_management = dispute_management
              @refund_management = refund_management
            end
          end
          # Whether the embedded component is enabled.
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          attr_accessor :features

          def initialize(enabled: nil, features: nil)
            @enabled = enabled
            @features = features
          end
        end

        class PaymentMethodSettings < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          attr_accessor :features

          def initialize(enabled: nil, features: nil)
            @enabled = enabled
            @features = features
          end
        end

        class Payments < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether to allow capturing and cancelling payment intents. This is `true` by default.
            attr_accessor :capture_payments
            # Whether connected accounts can manage destination charges that are created on behalf of them. This is `false` by default.
            attr_accessor :destination_on_behalf_of_charge_management
            # Whether responding to disputes is enabled, including submitting evidence and accepting disputes. This is `true` by default.
            attr_accessor :dispute_management
            # Whether sending refunds is enabled. This is `true` by default.
            attr_accessor :refund_management

            def initialize(
              capture_payments: nil,
              destination_on_behalf_of_charge_management: nil,
              dispute_management: nil,
              refund_management: nil
            )
              @capture_payments = capture_payments
              @destination_on_behalf_of_charge_management = destination_on_behalf_of_charge_management
              @dispute_management = dispute_management
              @refund_management = refund_management
            end
          end
          # Whether the embedded component is enabled.
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          attr_accessor :features

          def initialize(enabled: nil, features: nil)
            @enabled = enabled
            @features = features
          end
        end

        class Payouts < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
            attr_accessor :disable_stripe_user_authentication
            # Whether to allow payout schedule to be changed. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
            attr_accessor :edit_payout_schedule
            # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
            attr_accessor :external_account_collection
            # Whether to allow creation of instant payouts. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
            attr_accessor :instant_payouts
            # Whether to allow creation of standard payouts. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
            attr_accessor :standard_payouts

            def initialize(
              disable_stripe_user_authentication: nil,
              edit_payout_schedule: nil,
              external_account_collection: nil,
              instant_payouts: nil,
              standard_payouts: nil
            )
              @disable_stripe_user_authentication = disable_stripe_user_authentication
              @edit_payout_schedule = edit_payout_schedule
              @external_account_collection = external_account_collection
              @instant_payouts = instant_payouts
              @standard_payouts = standard_payouts
            end
          end
          # Whether the embedded component is enabled.
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          attr_accessor :features

          def initialize(enabled: nil, features: nil)
            @enabled = enabled
            @features = features
          end
        end

        class PayoutsList < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          attr_accessor :features

          def initialize(enabled: nil, features: nil)
            @enabled = enabled
            @features = features
          end
        end

        class ProductTaxCodeSelector < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          attr_accessor :features

          def initialize(enabled: nil, features: nil)
            @enabled = enabled
            @features = features
          end
        end

        class Recipients < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether to allow sending money.
            attr_accessor :send_money

            def initialize(send_money: nil)
              @send_money = send_money
            end
          end
          # Whether the embedded component is enabled.
          attr_accessor :enabled
          # Attribute for param field features
          attr_accessor :features

          def initialize(enabled: nil, features: nil)
            @enabled = enabled
            @features = features
          end
        end

        class ReportingChart < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          attr_accessor :features

          def initialize(enabled: nil, features: nil)
            @enabled = enabled
            @features = features
          end
        end

        class TaxRegistrations < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          attr_accessor :features

          def initialize(enabled: nil, features: nil)
            @enabled = enabled
            @features = features
          end
        end

        class TaxSettings < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          attr_accessor :features

          def initialize(enabled: nil, features: nil)
            @enabled = enabled
            @features = features
          end
        end

        class TaxThresholdMonitoring < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          attr_accessor :features

          def initialize(enabled: nil, features: nil)
            @enabled = enabled
            @features = features
          end
        end
        # Configuration for the [account management](/connect/supported-embedded-components/account-management/) embedded component.
        attr_accessor :account_management
        # Configuration for the [account onboarding](/connect/supported-embedded-components/account-onboarding/) embedded component.
        attr_accessor :account_onboarding
        # Configuration for the [app install](/connect/supported-embedded-components/app-install/) embedded component.
        attr_accessor :app_install
        # Configuration for the [app viewport](/connect/supported-embedded-components/app-viewport/) embedded component.
        attr_accessor :app_viewport
        # Configuration for the [balances](/connect/supported-embedded-components/balances/) embedded component.
        attr_accessor :balances
        # Configuration for the [Capital financing](/connect/supported-embedded-components/capital-financing/) embedded component.
        attr_accessor :capital_financing
        # Configuration for the [Capital financing application](/connect/supported-embedded-components/capital-financing-application/) embedded component.
        attr_accessor :capital_financing_application
        # Configuration for the [Capital financing promotion](/connect/supported-embedded-components/capital-financing-promotion/) embedded component.
        attr_accessor :capital_financing_promotion
        # Configuration for the [Capital overview](/connect/supported-embedded-components/capital-overview/) embedded component.
        attr_accessor :capital_overview
        # Configuration for the [disputes list](/connect/supported-embedded-components/disputes-list/) embedded component.
        attr_accessor :disputes_list
        # Configuration for the [documents](/connect/supported-embedded-components/documents/) embedded component.
        attr_accessor :documents
        # Configuration for the [export tax transactions](/connect/supported-embedded-components/export-tax-transactions/) embedded component.
        attr_accessor :export_tax_transactions
        # Configuration for the [financial account](/connect/supported-embedded-components/financial-account/) embedded component.
        attr_accessor :financial_account
        # Configuration for the [financial account transactions](/connect/supported-embedded-components/financial-account-transactions/) embedded component.
        attr_accessor :financial_account_transactions
        # Configuration for the [instant payouts promotion](/connect/supported-embedded-components/instant-payouts-promotion/) embedded component.
        attr_accessor :instant_payouts_promotion
        # Configuration for the [issuing card](/connect/supported-embedded-components/issuing-card/) embedded component.
        attr_accessor :issuing_card
        # Configuration for the [issuing cards list](/connect/supported-embedded-components/issuing-cards-list/) embedded component.
        attr_accessor :issuing_cards_list
        # Configuration for the [notification banner](/connect/supported-embedded-components/notification-banner/) embedded component.
        attr_accessor :notification_banner
        # Configuration for the [payment details](/connect/supported-embedded-components/payment-details/) embedded component.
        attr_accessor :payment_details
        # Configuration for the [payment disputes](/connect/supported-embedded-components/payment-disputes/) embedded component.
        attr_accessor :payment_disputes
        # Configuration for the [payment method settings](/connect/supported-embedded-components/payment-method-settings/) embedded component.
        attr_accessor :payment_method_settings
        # Configuration for the [payments](/connect/supported-embedded-components/payments/) embedded component.
        attr_accessor :payments
        # Configuration for the [payouts](/connect/supported-embedded-components/payouts/) embedded component.
        attr_accessor :payouts
        # Configuration for the [payouts list](/connect/supported-embedded-components/payouts-list/) embedded component.
        attr_accessor :payouts_list
        # Configuration for the [product tax code selector](/connect/supported-embedded-components/product-tax-code-selector/) embedded component.
        attr_accessor :product_tax_code_selector
        # Configuration for the [recipients](/connect/supported-embedded-components/recipients/) embedded component.
        attr_accessor :recipients
        # Configuration for the [reporting chart](/connect/supported-embedded-components/reporting-chart/) embedded component.
        attr_accessor :reporting_chart
        # Configuration for the [tax registrations](/connect/supported-embedded-components/tax-registrations/) embedded component.
        attr_accessor :tax_registrations
        # Configuration for the [tax settings](/connect/supported-embedded-components/tax-settings/) embedded component.
        attr_accessor :tax_settings
        # Configuration for the [tax threshold monitoring](/connect/supported-embedded-components/tax-threshold-monitoring/) embedded component.
        attr_accessor :tax_threshold_monitoring

        def initialize(
          account_management: nil,
          account_onboarding: nil,
          app_install: nil,
          app_viewport: nil,
          balances: nil,
          capital_financing: nil,
          capital_financing_application: nil,
          capital_financing_promotion: nil,
          capital_overview: nil,
          disputes_list: nil,
          documents: nil,
          export_tax_transactions: nil,
          financial_account: nil,
          financial_account_transactions: nil,
          instant_payouts_promotion: nil,
          issuing_card: nil,
          issuing_cards_list: nil,
          notification_banner: nil,
          payment_details: nil,
          payment_disputes: nil,
          payment_method_settings: nil,
          payments: nil,
          payouts: nil,
          payouts_list: nil,
          product_tax_code_selector: nil,
          recipients: nil,
          reporting_chart: nil,
          tax_registrations: nil,
          tax_settings: nil,
          tax_threshold_monitoring: nil
        )
          @account_management = account_management
          @account_onboarding = account_onboarding
          @app_install = app_install
          @app_viewport = app_viewport
          @balances = balances
          @capital_financing = capital_financing
          @capital_financing_application = capital_financing_application
          @capital_financing_promotion = capital_financing_promotion
          @capital_overview = capital_overview
          @disputes_list = disputes_list
          @documents = documents
          @export_tax_transactions = export_tax_transactions
          @financial_account = financial_account
          @financial_account_transactions = financial_account_transactions
          @instant_payouts_promotion = instant_payouts_promotion
          @issuing_card = issuing_card
          @issuing_cards_list = issuing_cards_list
          @notification_banner = notification_banner
          @payment_details = payment_details
          @payment_disputes = payment_disputes
          @payment_method_settings = payment_method_settings
          @payments = payments
          @payouts = payouts
          @payouts_list = payouts_list
          @product_tax_code_selector = product_tax_code_selector
          @recipients = recipients
          @reporting_chart = reporting_chart
          @tax_registrations = tax_registrations
          @tax_settings = tax_settings
          @tax_threshold_monitoring = tax_threshold_monitoring
        end
      end
      # The identifier of the account to create an Account Session for.
      attr_accessor :account
      # Each key of the dictionary represents an embedded component, and each embedded component maps to its configuration (e.g. whether it has been enabled or not).
      attr_accessor :components
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(account: nil, components: nil, expand: nil)
        @account = account
        @components = components
        @expand = expand
      end
    end

    # Creates a AccountSession object that includes a single-use token that the platform can use on their front-end to grant client-side API access.
    def create(params = {}, opts = {})
      request(
        method: :post,
        path: "/v1/account_sessions",
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
