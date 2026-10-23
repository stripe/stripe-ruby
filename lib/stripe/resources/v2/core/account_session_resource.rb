# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      # An Account Session grants access to an account through Connect embedded components for a limited time.
      class AccountSessionResource < APIResource
        OBJECT_NAME = "v2.core.account_session_resource"
        def self.object_name
          "v2.core.account_session_resource"
        end

        class Components < ::Stripe::StripeObject
          class AccountManagement < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Whether to disable Stripe user authentication in the enabled components.
              attr_reader :disable_stripe_user_authentication
              # Whether to allow managing payout methods.
              attr_reader :manage_payout_methods

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class AccountOnboarding < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Whether to disable Stripe user authentication in the enabled components.
              attr_reader :disable_stripe_user_authentication
              # Whether to allow managing payout methods.
              attr_reader :manage_payout_methods

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class AgenticCommerceSettings < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class AppInstall < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # The Stripe App IDs allowed in the enabled app components.
              attr_reader :allowed_stripe_app_ids

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class AppViewport < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # The Stripe App IDs allowed in the enabled app components.
              attr_reader :allowed_stripe_app_ids

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class BalanceReport < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Balances < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Controls whether creating instant payouts is enabled, disabled, or determined by Dashboard rules.
              attr_reader :create_instant_payouts
              # Whether to allow changing the payout schedule.
              attr_reader :create_payout_schedule
              # Whether to allow creating standard payouts.
              attr_reader :create_standard_payouts
              # Whether to disable Stripe user authentication in the enabled components.
              attr_reader :disable_stripe_user_authentication
              # Whether to allow managing payout methods.
              attr_reader :manage_payout_methods

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Bills < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Whether to allow creating outbound payments.
              attr_reader :create_outbound_payments
              # Whether to disable Stripe user authentication in the enabled components.
              attr_reader :disable_stripe_user_authentication
              # Whether to allow managing bills.
              attr_reader :manage_bills

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class CapitalFinancing < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class CapitalFinancingApplication < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class CapitalFinancingPromotion < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class CheckScanning < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Whether to allow creating US paper checks on the application.
              attr_reader :create_us_paper_check_on_application

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class DisputesList < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Whether to allow capturing payments.
              attr_reader :capture_payments
              # Whether to allow managing destination and on-behalf-of charges.
              attr_reader :manage_destination_on_behalf_of_charges
              # Whether to allow managing payment disputes.
              attr_reader :manage_payment_disputes
              # Whether to allow refunding payments.
              attr_reader :manage_refund_payments
              # Whether to allow managing Smart Disputes.
              attr_reader :manage_smart_disputes

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Documents < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class ExportTaxTransactions < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class FinancialAccountRewards < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class FinancialAccounts < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Whether to allow creating outbound payments.
              attr_reader :create_outbound_payments
              # Whether to allow changing the payout schedule.
              attr_reader :create_payout_schedule
              # Whether to disable Stripe user authentication in the enabled components.
              attr_reader :disable_stripe_user_authentication
              # Whether to allow managing bills.
              attr_reader :manage_bills
              # Whether to allow managing Issuing cards.
              attr_reader :manage_issuing_cards
              # Whether to allow managing payout methods.
              attr_reader :manage_payout_methods

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class FinancialAccountsTransactions < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Whether to allow capturing payments.
              attr_reader :capture_payments
              # Whether to allow managing destination and on-behalf-of charges.
              attr_reader :manage_destination_on_behalf_of_charges
              # Whether to allow managing Issuing cards.
              attr_reader :manage_issuing_cards
              # Whether to allow managing Issuing disputes.
              attr_reader :manage_issuing_disputes
              # Whether to allow managing payment disputes.
              attr_reader :manage_payment_disputes
              # Whether to allow refunding payments.
              attr_reader :manage_refund_payments

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class InstantPayoutsPromotion < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Controls whether creating instant payouts is enabled, disabled, or determined by Dashboard rules.
              attr_reader :create_instant_payouts
              # Whether to disable Stripe user authentication in the enabled components.
              attr_reader :disable_stripe_user_authentication
              # Whether to allow managing payout methods.
              attr_reader :manage_payout_methods

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class InvoiceHistory < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class IssuingCard < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Whether to allow managing Issuing cardholders.
              attr_reader :manage_issuing_cardholders
              # Whether to allow managing Issuing cards.
              attr_reader :manage_issuing_cards
              # Whether to allow managing Issuing disputes.
              attr_reader :manage_issuing_disputes
              # Whether to allow managing Issuing spending controls.
              attr_reader :manage_issuing_spending_controls

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class IssuingCardsList < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Whether to disable Stripe user authentication in the enabled components.
              attr_reader :disable_stripe_user_authentication
              # Whether to allow managing Issuing cardholders.
              attr_reader :manage_issuing_cardholders
              # Whether to allow managing Issuing cards.
              attr_reader :manage_issuing_cards
              # Whether to allow managing Issuing disputes.
              attr_reader :manage_issuing_disputes
              # Whether to allow managing Issuing spending controls.
              attr_reader :manage_issuing_spending_controls

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class NetworkCostPassthroughReport < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class NotificationBanner < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Whether to disable Stripe user authentication in the enabled components.
              attr_reader :disable_stripe_user_authentication
              # Whether to allow managing payout methods.
              attr_reader :manage_payout_methods

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class PaymentDetails < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Whether to allow capturing payments.
              attr_reader :capture_payments
              # Whether to allow managing destination and on-behalf-of charges.
              attr_reader :manage_destination_on_behalf_of_charges
              # Whether to allow managing payment disputes.
              attr_reader :manage_payment_disputes
              # Whether to allow refunding payments.
              attr_reader :manage_refund_payments
              # Whether to allow managing Smart Disputes.
              attr_reader :manage_smart_disputes

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class PaymentDisputes < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Whether to allow managing destination and on-behalf-of charges.
              attr_reader :manage_destination_on_behalf_of_charges
              # Whether to allow managing payment disputes.
              attr_reader :manage_payment_disputes
              # Whether to allow refunding payments.
              attr_reader :manage_refund_payments
              # Whether to allow managing Smart Disputes.
              attr_reader :manage_smart_disputes

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class PaymentMethodSettings < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Whether to disable Stripe user authentication in the enabled components.
              attr_reader :disable_stripe_user_authentication

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Payments < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Whether to allow capturing payments.
              attr_reader :capture_payments
              # Whether to allow managing destination and on-behalf-of charges.
              attr_reader :manage_destination_on_behalf_of_charges
              # Whether to allow managing payment disputes.
              attr_reader :manage_payment_disputes
              # Whether to allow refunding payments.
              attr_reader :manage_refund_payments
              # Whether to allow managing Smart Disputes.
              attr_reader :manage_smart_disputes

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class PayoutDetails < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class PayoutReconciliationReport < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Payouts < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Controls whether creating instant payouts is enabled, disabled, or determined by Dashboard rules.
              attr_reader :create_instant_payouts
              # Whether to allow changing the payout schedule.
              attr_reader :create_payout_schedule
              # Whether to allow creating standard payouts.
              attr_reader :create_standard_payouts
              # Whether to disable Stripe user authentication in the enabled components.
              attr_reader :disable_stripe_user_authentication
              # Whether to allow managing payout methods.
              attr_reader :manage_payout_methods

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class PayoutsList < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class ProductTaxCodeSelector < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class ReportingChart < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class TaxRegistrations < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class TaxSettings < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class TaxThresholdMonitoring < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class TerminalHardwareOrders < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class TerminalHardwareShop < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            attr_reader :enabled
            # The scopes available to this embedded component.
            attr_reader :scopes

            def self.inner_class_types
              @inner_class_types = { scopes: Scopes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Settings for the Account Management embedded component.
          attr_reader :account_management
          # Settings for the Account Onboarding embedded component.
          attr_reader :account_onboarding
          # Settings for the Agentic Commerce Settings embedded component.
          attr_reader :agentic_commerce_settings
          # Settings for the App Install embedded component.
          attr_reader :app_install
          # Settings for the App Viewport embedded component.
          attr_reader :app_viewport
          # Settings for the Balance Report embedded component.
          attr_reader :balance_report
          # Settings for the Balances embedded component.
          attr_reader :balances
          # Settings for the Bills embedded component.
          attr_reader :bills
          # Settings for the Capital Financing embedded component.
          attr_reader :capital_financing
          # Settings for the Capital Financing Application embedded component.
          attr_reader :capital_financing_application
          # Settings for the Capital Financing Promotion embedded component.
          attr_reader :capital_financing_promotion
          # Settings for the Check Scanning embedded component.
          attr_reader :check_scanning
          # Settings for the Disputes List embedded component.
          attr_reader :disputes_list
          # Settings for the Documents embedded component.
          attr_reader :documents
          # Settings for the Export Tax Transactions embedded component.
          attr_reader :export_tax_transactions
          # Settings for the Financial Account Rewards embedded component.
          attr_reader :financial_account_rewards
          # Settings for the Financial Accounts embedded component.
          attr_reader :financial_accounts
          # Settings for the Financial Accounts Transactions embedded component.
          attr_reader :financial_accounts_transactions
          # Settings for the Instant Payouts Promotion embedded component.
          attr_reader :instant_payouts_promotion
          # Settings for the Invoice History embedded component.
          attr_reader :invoice_history
          # Settings for the Issuing Card embedded component.
          attr_reader :issuing_card
          # Settings for the Issuing Cards List embedded component.
          attr_reader :issuing_cards_list
          # Settings for the Network Cost Passthrough Report embedded component.
          attr_reader :network_cost_passthrough_report
          # Settings for the Notification Banner embedded component.
          attr_reader :notification_banner
          # Settings for the Payment Details embedded component.
          attr_reader :payment_details
          # Settings for the Payment Disputes embedded component.
          attr_reader :payment_disputes
          # Settings for the Payment Method Settings embedded component.
          attr_reader :payment_method_settings
          # Settings for the Payments embedded component.
          attr_reader :payments
          # Settings for the Payout Details embedded component.
          attr_reader :payout_details
          # Settings for the Payout Reconciliation Report embedded component.
          attr_reader :payout_reconciliation_report
          # Settings for the Payouts embedded component.
          attr_reader :payouts
          # Settings for the Payouts List embedded component.
          attr_reader :payouts_list
          # Settings for the Product Tax Code Selector embedded component.
          attr_reader :product_tax_code_selector
          # Settings for the Reporting Chart embedded component.
          attr_reader :reporting_chart
          # Settings for the Tax Registrations embedded component.
          attr_reader :tax_registrations
          # Settings for the Tax Settings embedded component.
          attr_reader :tax_settings
          # Settings for the Tax Threshold Monitoring embedded component.
          attr_reader :tax_threshold_monitoring
          # Settings for the Terminal Hardware Orders embedded component.
          attr_reader :terminal_hardware_orders
          # Settings for the Terminal Hardware Shop embedded component.
          attr_reader :terminal_hardware_shop

          def self.inner_class_types
            @inner_class_types = {
              account_management: AccountManagement,
              account_onboarding: AccountOnboarding,
              agentic_commerce_settings: AgenticCommerceSettings,
              app_install: AppInstall,
              app_viewport: AppViewport,
              balance_report: BalanceReport,
              balances: Balances,
              bills: Bills,
              capital_financing: CapitalFinancing,
              capital_financing_application: CapitalFinancingApplication,
              capital_financing_promotion: CapitalFinancingPromotion,
              check_scanning: CheckScanning,
              disputes_list: DisputesList,
              documents: Documents,
              export_tax_transactions: ExportTaxTransactions,
              financial_account_rewards: FinancialAccountRewards,
              financial_accounts: FinancialAccounts,
              financial_accounts_transactions: FinancialAccountsTransactions,
              instant_payouts_promotion: InstantPayoutsPromotion,
              invoice_history: InvoiceHistory,
              issuing_card: IssuingCard,
              issuing_cards_list: IssuingCardsList,
              network_cost_passthrough_report: NetworkCostPassthroughReport,
              notification_banner: NotificationBanner,
              payment_details: PaymentDetails,
              payment_disputes: PaymentDisputes,
              payment_method_settings: PaymentMethodSettings,
              payments: Payments,
              payout_details: PayoutDetails,
              payout_reconciliation_report: PayoutReconciliationReport,
              payouts: Payouts,
              payouts_list: PayoutsList,
              product_tax_code_selector: ProductTaxCodeSelector,
              reporting_chart: ReportingChart,
              tax_registrations: TaxRegistrations,
              tax_settings: TaxSettings,
              tax_threshold_monitoring: TaxThresholdMonitoring,
              terminal_hardware_orders: TerminalHardwareOrders,
              terminal_hardware_shop: TerminalHardwareShop,
            }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The ID of the account this Account Session grants access to.
        attr_reader :account
        # The client secret used to initialize Connect embedded components. Do not log it or expose it to
        # anyone other than the intended user.
        attr_reader :client_secret
        # Settings and scopes for each embedded component in this Account Session.
        attr_reader :components
        # The time at which the Account Session was created.
        attr_reader :created
        # The time at which the Account Session expires.
        attr_reader :expires_at
        # Unique identifier for the Account Session.
        attr_reader :id
        # Has the value true if the object exists in live mode or false if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object

        def self.inner_class_types
          @inner_class_types = { components: Components }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
