# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      # An Account Session grants access to an account through Connect embedded components for a limited time.
      class AccountSession < APIResource
        class Components < ::Stripe::StripeObject
          class AccountManagement < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Whether to disable Stripe user authentication in the enabled components.
              sig { returns(String) }
              def disable_stripe_user_authentication; end
              # Whether to allow managing payout methods.
              sig { returns(String) }
              def manage_payout_methods; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class AccountOnboarding < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Whether to disable Stripe user authentication in the enabled components.
              sig { returns(String) }
              def disable_stripe_user_authentication; end
              # Whether to allow managing payout methods.
              sig { returns(String) }
              def manage_payout_methods; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
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
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class AppInstall < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # The Stripe App IDs allowed in the enabled app components.
              sig { returns(T::Array[String]) }
              def allowed_stripe_app_ids; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class AppViewport < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # The Stripe App IDs allowed in the enabled app components.
              sig { returns(T::Array[String]) }
              def allowed_stripe_app_ids; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
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
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Balances < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Controls whether creating instant payouts is enabled, disabled, or determined by Dashboard rules.
              sig { returns(T.nilable(String)) }
              def create_instant_payouts; end
              # Whether to allow changing the payout schedule.
              sig { returns(String) }
              def create_payout_schedule; end
              # Whether to allow creating standard payouts.
              sig { returns(String) }
              def create_standard_payouts; end
              # Whether to disable Stripe user authentication in the enabled components.
              sig { returns(String) }
              def disable_stripe_user_authentication; end
              # Whether to allow managing payout methods.
              sig { returns(String) }
              def manage_payout_methods; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Bills < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Whether to allow creating outbound payments.
              sig { returns(String) }
              def create_outbound_payments; end
              # Whether to disable Stripe user authentication in the enabled components.
              sig { returns(String) }
              def disable_stripe_user_authentication; end
              # Whether to allow managing bills.
              sig { returns(String) }
              def manage_bills; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class BusinessProfileManagement < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
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
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
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
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
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
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class CheckScanning < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Whether to allow creating US paper checks on the application.
              sig { returns(String) }
              def create_us_paper_check_on_application; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class DisputesList < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Whether to allow capturing payments.
              sig { returns(String) }
              def capture_payments; end
              # Whether to allow managing destination and on-behalf-of charges.
              sig { returns(String) }
              def manage_destination_on_behalf_of_charges; end
              # Whether to allow managing payment disputes.
              sig { returns(String) }
              def manage_payment_disputes; end
              # Whether to allow refunding payments.
              sig { returns(String) }
              def manage_refund_payments; end
              # Whether to allow managing Smart Disputes.
              sig { returns(String) }
              def manage_smart_disputes; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
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
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
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
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
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
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class FinancialAccounts < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Whether to allow creating outbound payments.
              sig { returns(String) }
              def create_outbound_payments; end
              # Whether to allow changing the payout schedule.
              sig { returns(String) }
              def create_payout_schedule; end
              # Whether to disable Stripe user authentication in the enabled components.
              sig { returns(String) }
              def disable_stripe_user_authentication; end
              # Whether to allow managing bills.
              sig { returns(String) }
              def manage_bills; end
              # Whether to allow managing Issuing cards.
              sig { returns(String) }
              def manage_issuing_cards; end
              # Whether to allow managing payout methods.
              sig { returns(String) }
              def manage_payout_methods; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class FinancialAccountsTransactions < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Whether to allow capturing payments.
              sig { returns(String) }
              def capture_payments; end
              # Whether to allow managing destination and on-behalf-of charges.
              sig { returns(String) }
              def manage_destination_on_behalf_of_charges; end
              # Whether to allow managing Issuing cards.
              sig { returns(String) }
              def manage_issuing_cards; end
              # Whether to allow managing Issuing disputes.
              sig { returns(String) }
              def manage_issuing_disputes; end
              # Whether to allow managing payment disputes.
              sig { returns(String) }
              def manage_payment_disputes; end
              # Whether to allow refunding payments.
              sig { returns(String) }
              def manage_refund_payments; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class InstantPayoutsPromotion < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Controls whether creating instant payouts is enabled, disabled, or determined by Dashboard rules.
              sig { returns(T.nilable(String)) }
              def create_instant_payouts; end
              # Whether to disable Stripe user authentication in the enabled components.
              sig { returns(String) }
              def disable_stripe_user_authentication; end
              # Whether to allow managing payout methods.
              sig { returns(String) }
              def manage_payout_methods; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
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
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class IssuingCard < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Whether to allow managing Issuing cardholders.
              sig { returns(String) }
              def manage_issuing_cardholders; end
              # Whether to allow managing Issuing cards.
              sig { returns(String) }
              def manage_issuing_cards; end
              # Whether to allow managing Issuing disputes.
              sig { returns(String) }
              def manage_issuing_disputes; end
              # Whether to allow managing Issuing spending controls.
              sig { returns(String) }
              def manage_issuing_spending_controls; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class IssuingCardsList < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Whether to disable Stripe user authentication in the enabled components.
              sig { returns(String) }
              def disable_stripe_user_authentication; end
              # Whether to allow managing Issuing cardholders.
              sig { returns(String) }
              def manage_issuing_cardholders; end
              # Whether to allow managing Issuing cards.
              sig { returns(String) }
              def manage_issuing_cards; end
              # Whether to allow managing Issuing disputes.
              sig { returns(String) }
              def manage_issuing_disputes; end
              # Whether to allow managing Issuing spending controls.
              sig { returns(String) }
              def manage_issuing_spending_controls; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
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
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class NotificationBanner < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Whether to disable Stripe user authentication in the enabled components.
              sig { returns(String) }
              def disable_stripe_user_authentication; end
              # Whether to allow managing payout methods.
              sig { returns(String) }
              def manage_payout_methods; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class PaymentDetails < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Whether to allow capturing payments.
              sig { returns(String) }
              def capture_payments; end
              # Whether to allow managing destination and on-behalf-of charges.
              sig { returns(String) }
              def manage_destination_on_behalf_of_charges; end
              # Whether to allow managing payment disputes.
              sig { returns(String) }
              def manage_payment_disputes; end
              # Whether to allow refunding payments.
              sig { returns(String) }
              def manage_refund_payments; end
              # Whether to allow managing Smart Disputes.
              sig { returns(String) }
              def manage_smart_disputes; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class PaymentDisputes < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Whether to allow managing destination and on-behalf-of charges.
              sig { returns(String) }
              def manage_destination_on_behalf_of_charges; end
              # Whether to allow managing payment disputes.
              sig { returns(String) }
              def manage_payment_disputes; end
              # Whether to allow refunding payments.
              sig { returns(String) }
              def manage_refund_payments; end
              # Whether to allow managing Smart Disputes.
              sig { returns(String) }
              def manage_smart_disputes; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class PaymentMethodSettings < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Whether to disable Stripe user authentication in the enabled components.
              sig { returns(String) }
              def disable_stripe_user_authentication; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Payments < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Whether to allow capturing payments.
              sig { returns(String) }
              def capture_payments; end
              # Whether to allow managing destination and on-behalf-of charges.
              sig { returns(String) }
              def manage_destination_on_behalf_of_charges; end
              # Whether to allow managing payment disputes.
              sig { returns(String) }
              def manage_payment_disputes; end
              # Whether to allow refunding payments.
              sig { returns(String) }
              def manage_refund_payments; end
              # Whether to allow managing Smart Disputes.
              sig { returns(String) }
              def manage_smart_disputes; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
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
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
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
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Payouts < ::Stripe::StripeObject
            class Scopes < ::Stripe::StripeObject
              # Controls whether creating instant payouts is enabled, disabled, or determined by Dashboard rules.
              sig { returns(T.nilable(String)) }
              def create_instant_payouts; end
              # Whether to allow changing the payout schedule.
              sig { returns(String) }
              def create_payout_schedule; end
              # Whether to allow creating standard payouts.
              sig { returns(String) }
              def create_standard_payouts; end
              # Whether to disable Stripe user authentication in the enabled components.
              sig { returns(String) }
              def disable_stripe_user_authentication; end
              # Whether to allow managing payout methods.
              sig { returns(String) }
              def manage_payout_methods; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether this embedded component is enabled.
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
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
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
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
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
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
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
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
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
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
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
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
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
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
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
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
            sig { returns(T::Boolean) }
            def enabled; end
            # The scopes available to this embedded component.
            sig { returns(Scopes) }
            def scopes; end
            def self.inner_class_types
              @inner_class_types = {scopes: Scopes}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Settings for the Account Management embedded component.
          sig { returns(AccountManagement) }
          def account_management; end
          # Settings for the Account Onboarding embedded component.
          sig { returns(AccountOnboarding) }
          def account_onboarding; end
          # Settings for the Agentic Commerce Settings embedded component.
          sig { returns(AgenticCommerceSettings) }
          def agentic_commerce_settings; end
          # Settings for the App Install embedded component.
          sig { returns(AppInstall) }
          def app_install; end
          # Settings for the App Viewport embedded component.
          sig { returns(AppViewport) }
          def app_viewport; end
          # Settings for the Balance Report embedded component.
          sig { returns(BalanceReport) }
          def balance_report; end
          # Settings for the Balances embedded component.
          sig { returns(Balances) }
          def balances; end
          # Settings for the Bills embedded component.
          sig { returns(Bills) }
          def bills; end
          # Settings for the Business Profile Management embedded component.
          sig { returns(BusinessProfileManagement) }
          def business_profile_management; end
          # Settings for the Capital Financing embedded component.
          sig { returns(CapitalFinancing) }
          def capital_financing; end
          # Settings for the Capital Financing Application embedded component.
          sig { returns(CapitalFinancingApplication) }
          def capital_financing_application; end
          # Settings for the Capital Financing Promotion embedded component.
          sig { returns(CapitalFinancingPromotion) }
          def capital_financing_promotion; end
          # Settings for the Check Scanning embedded component.
          sig { returns(CheckScanning) }
          def check_scanning; end
          # Settings for the Disputes List embedded component.
          sig { returns(DisputesList) }
          def disputes_list; end
          # Settings for the Documents embedded component.
          sig { returns(Documents) }
          def documents; end
          # Settings for the Export Tax Transactions embedded component.
          sig { returns(ExportTaxTransactions) }
          def export_tax_transactions; end
          # Settings for the Financial Account Rewards embedded component.
          sig { returns(FinancialAccountRewards) }
          def financial_account_rewards; end
          # Settings for the Financial Accounts embedded component.
          sig { returns(FinancialAccounts) }
          def financial_accounts; end
          # Settings for the Financial Accounts Transactions embedded component.
          sig { returns(FinancialAccountsTransactions) }
          def financial_accounts_transactions; end
          # Settings for the Instant Payouts Promotion embedded component.
          sig { returns(InstantPayoutsPromotion) }
          def instant_payouts_promotion; end
          # Settings for the Invoice History embedded component.
          sig { returns(InvoiceHistory) }
          def invoice_history; end
          # Settings for the Issuing Card embedded component.
          sig { returns(IssuingCard) }
          def issuing_card; end
          # Settings for the Issuing Cards List embedded component.
          sig { returns(IssuingCardsList) }
          def issuing_cards_list; end
          # Settings for the Network Cost Passthrough Report embedded component.
          sig { returns(NetworkCostPassthroughReport) }
          def network_cost_passthrough_report; end
          # Settings for the Notification Banner embedded component.
          sig { returns(NotificationBanner) }
          def notification_banner; end
          # Settings for the Payment Details embedded component.
          sig { returns(PaymentDetails) }
          def payment_details; end
          # Settings for the Payment Disputes embedded component.
          sig { returns(PaymentDisputes) }
          def payment_disputes; end
          # Settings for the Payment Method Settings embedded component.
          sig { returns(PaymentMethodSettings) }
          def payment_method_settings; end
          # Settings for the Payments embedded component.
          sig { returns(Payments) }
          def payments; end
          # Settings for the Payout Details embedded component.
          sig { returns(PayoutDetails) }
          def payout_details; end
          # Settings for the Payout Reconciliation Report embedded component.
          sig { returns(PayoutReconciliationReport) }
          def payout_reconciliation_report; end
          # Settings for the Payouts embedded component.
          sig { returns(Payouts) }
          def payouts; end
          # Settings for the Payouts List embedded component.
          sig { returns(PayoutsList) }
          def payouts_list; end
          # Settings for the Product Tax Code Selector embedded component.
          sig { returns(ProductTaxCodeSelector) }
          def product_tax_code_selector; end
          # Settings for the Reporting Chart embedded component.
          sig { returns(ReportingChart) }
          def reporting_chart; end
          # Settings for the Tax Registrations embedded component.
          sig { returns(TaxRegistrations) }
          def tax_registrations; end
          # Settings for the Tax Settings embedded component.
          sig { returns(TaxSettings) }
          def tax_settings; end
          # Settings for the Tax Threshold Monitoring embedded component.
          sig { returns(TaxThresholdMonitoring) }
          def tax_threshold_monitoring; end
          # Settings for the Terminal Hardware Orders embedded component.
          sig { returns(TerminalHardwareOrders) }
          def terminal_hardware_orders; end
          # Settings for the Terminal Hardware Shop embedded component.
          sig { returns(TerminalHardwareShop) }
          def terminal_hardware_shop; end
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
              business_profile_management: BusinessProfileManagement,
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
        sig { returns(String) }
        def account; end
        # The client secret used to initialize Connect embedded components. Do not log it or expose it to
        # anyone other than the intended user.
        sig { returns(String) }
        def client_secret; end
        # Settings and scopes for each embedded component in this Account Session.
        sig { returns(Components) }
        def components; end
        # The time at which the Account Session was created.
        sig { returns(String) }
        def created; end
        # The time at which the Account Session expires.
        sig { returns(String) }
        def expires_at; end
        # Unique identifier for the Account Session.
        sig { returns(String) }
        def id; end
        # Has the value true if the object exists in live mode or false if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
      end
    end
  end
end