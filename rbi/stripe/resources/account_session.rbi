# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # An AccountSession allows a Connect platform to grant access to a connected account in Connect embedded components.
  #
  # We recommend that you create an AccountSession each time you need to display an embedded component
  # to your user. Do not save AccountSessions to your database as they expire relatively
  # quickly, and cannot be used more than once.
  #
  # Related guide: [Connect embedded components](https://stripe.com/docs/connect/get-started-connect-embedded-components)
  class AccountSession < APIResource
    class Components < Stripe::StripeObject
      class AccountManagement < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
          sig { returns(T::Boolean) }
          def disable_stripe_user_authentication; end
          # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
          sig { returns(T::Boolean) }
          def external_account_collection; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        # Attribute for field features
        sig { returns(Features) }
        def features; end
        def self.inner_class_types
          @inner_class_types = {features: Features}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class AccountOnboarding < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
          sig { returns(T::Boolean) }
          def disable_stripe_user_authentication; end
          # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
          sig { returns(T::Boolean) }
          def external_account_collection; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        # Attribute for field features
        sig { returns(Features) }
        def features; end
        def self.inner_class_types
          @inner_class_types = {features: Features}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class BalanceReport < Stripe::StripeObject
        class Features < Stripe::StripeObject
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        # Attribute for field features
        sig { returns(Features) }
        def features; end
        def self.inner_class_types
          @inner_class_types = {features: Features}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Balances < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
          sig { returns(T::Boolean) }
          def disable_stripe_user_authentication; end
          # Whether to allow payout schedule to be changed. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
          sig { returns(T::Boolean) }
          def edit_payout_schedule; end
          # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
          sig { returns(T::Boolean) }
          def external_account_collection; end
          # Whether to allow creation of instant payouts. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
          sig { returns(T::Boolean) }
          def instant_payouts; end
          # Whether to allow creation of standard payouts. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
          sig { returns(T::Boolean) }
          def standard_payouts; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        # Attribute for field features
        sig { returns(Features) }
        def features; end
        def self.inner_class_types
          @inner_class_types = {features: Features}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class CapitalFinancing < Stripe::StripeObject
        class Features < Stripe::StripeObject; end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        # Attribute for field features
        sig { returns(Features) }
        def features; end
      end
      class CapitalFinancingApplication < Stripe::StripeObject
        class Features < Stripe::StripeObject; end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        # Attribute for field features
        sig { returns(Features) }
        def features; end
      end
      class CapitalFinancingPromotion < Stripe::StripeObject
        class Features < Stripe::StripeObject; end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        # Attribute for field features
        sig { returns(Features) }
        def features; end
      end
      class DisputesList < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Whether to allow capturing and cancelling payment intents. This is `true` by default.
          sig { returns(T::Boolean) }
          def capture_payments; end
          # Whether connected accounts can manage destination charges that are created on behalf of them. This is `false` by default.
          sig { returns(T::Boolean) }
          def destination_on_behalf_of_charge_management; end
          # Whether responding to disputes is enabled, including submitting evidence and accepting disputes. This is `true` by default.
          sig { returns(T::Boolean) }
          def dispute_management; end
          # Whether sending refunds is enabled. This is `true` by default.
          sig { returns(T::Boolean) }
          def refund_management; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        # Attribute for field features
        sig { returns(Features) }
        def features; end
        def self.inner_class_types
          @inner_class_types = {features: Features}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Documents < Stripe::StripeObject
        class Features < Stripe::StripeObject
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        # Attribute for field features
        sig { returns(Features) }
        def features; end
        def self.inner_class_types
          @inner_class_types = {features: Features}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class FinancialAccount < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
          sig { returns(T::Boolean) }
          def disable_stripe_user_authentication; end
          # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
          sig { returns(T::Boolean) }
          def external_account_collection; end
          # Whether to allow sending money.
          sig { returns(T::Boolean) }
          def send_money; end
          # Whether to allow transferring balance.
          sig { returns(T::Boolean) }
          def transfer_balance; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        # Attribute for field features
        sig { returns(Features) }
        def features; end
        def self.inner_class_types
          @inner_class_types = {features: Features}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class FinancialAccountTransactions < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Whether to allow card spend dispute management features.
          sig { returns(T::Boolean) }
          def card_spend_dispute_management; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        # Attribute for field features
        sig { returns(Features) }
        def features; end
        def self.inner_class_types
          @inner_class_types = {features: Features}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class InstantPayoutsPromotion < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
          sig { returns(T::Boolean) }
          def disable_stripe_user_authentication; end
          # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
          sig { returns(T::Boolean) }
          def external_account_collection; end
          # Whether to allow creation of instant payouts. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
          sig { returns(T::Boolean) }
          def instant_payouts; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        # Attribute for field features
        sig { returns(Features) }
        def features; end
        def self.inner_class_types
          @inner_class_types = {features: Features}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class IssuingCard < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Whether to allow card management features.
          sig { returns(T::Boolean) }
          def card_management; end
          # Whether to allow card spend dispute management features.
          sig { returns(T::Boolean) }
          def card_spend_dispute_management; end
          # Whether to allow cardholder management features.
          sig { returns(T::Boolean) }
          def cardholder_management; end
          # Whether to allow spend control management features.
          sig { returns(T::Boolean) }
          def spend_control_management; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        # Attribute for field features
        sig { returns(Features) }
        def features; end
        def self.inner_class_types
          @inner_class_types = {features: Features}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class IssuingCardsList < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Whether to allow card management features.
          sig { returns(T::Boolean) }
          def card_management; end
          # Whether to allow card spend dispute management features.
          sig { returns(T::Boolean) }
          def card_spend_dispute_management; end
          # Whether to allow cardholder management features.
          sig { returns(T::Boolean) }
          def cardholder_management; end
          # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
          sig { returns(T::Boolean) }
          def disable_stripe_user_authentication; end
          # Whether to allow spend control management features.
          sig { returns(T::Boolean) }
          def spend_control_management; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        # Attribute for field features
        sig { returns(Features) }
        def features; end
        def self.inner_class_types
          @inner_class_types = {features: Features}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class NotificationBanner < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
          sig { returns(T::Boolean) }
          def disable_stripe_user_authentication; end
          # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
          sig { returns(T::Boolean) }
          def external_account_collection; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        # Attribute for field features
        sig { returns(Features) }
        def features; end
        def self.inner_class_types
          @inner_class_types = {features: Features}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class PaymentDetails < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Whether to allow capturing and cancelling payment intents. This is `true` by default.
          sig { returns(T::Boolean) }
          def capture_payments; end
          # Whether connected accounts can manage destination charges that are created on behalf of them. This is `false` by default.
          sig { returns(T::Boolean) }
          def destination_on_behalf_of_charge_management; end
          # Whether responding to disputes is enabled, including submitting evidence and accepting disputes. This is `true` by default.
          sig { returns(T::Boolean) }
          def dispute_management; end
          # Whether sending refunds is enabled. This is `true` by default.
          sig { returns(T::Boolean) }
          def refund_management; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        # Attribute for field features
        sig { returns(Features) }
        def features; end
        def self.inner_class_types
          @inner_class_types = {features: Features}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class PaymentDisputes < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Whether connected accounts can manage destination charges that are created on behalf of them. This is `false` by default.
          sig { returns(T::Boolean) }
          def destination_on_behalf_of_charge_management; end
          # Whether responding to disputes is enabled, including submitting evidence and accepting disputes. This is `true` by default.
          sig { returns(T::Boolean) }
          def dispute_management; end
          # Whether sending refunds is enabled. This is `true` by default.
          sig { returns(T::Boolean) }
          def refund_management; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        # Attribute for field features
        sig { returns(Features) }
        def features; end
        def self.inner_class_types
          @inner_class_types = {features: Features}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Payments < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Whether to allow capturing and cancelling payment intents. This is `true` by default.
          sig { returns(T::Boolean) }
          def capture_payments; end
          # Whether connected accounts can manage destination charges that are created on behalf of them. This is `false` by default.
          sig { returns(T::Boolean) }
          def destination_on_behalf_of_charge_management; end
          # Whether responding to disputes is enabled, including submitting evidence and accepting disputes. This is `true` by default.
          sig { returns(T::Boolean) }
          def dispute_management; end
          # Whether sending refunds is enabled. This is `true` by default.
          sig { returns(T::Boolean) }
          def refund_management; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        # Attribute for field features
        sig { returns(Features) }
        def features; end
        def self.inner_class_types
          @inner_class_types = {features: Features}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class PayoutDetails < Stripe::StripeObject
        class Features < Stripe::StripeObject
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        # Attribute for field features
        sig { returns(Features) }
        def features; end
        def self.inner_class_types
          @inner_class_types = {features: Features}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class PayoutReconciliationReport < Stripe::StripeObject
        class Features < Stripe::StripeObject
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        # Attribute for field features
        sig { returns(Features) }
        def features; end
        def self.inner_class_types
          @inner_class_types = {features: Features}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Payouts < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
          sig { returns(T::Boolean) }
          def disable_stripe_user_authentication; end
          # Whether to allow payout schedule to be changed. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
          sig { returns(T::Boolean) }
          def edit_payout_schedule; end
          # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
          sig { returns(T::Boolean) }
          def external_account_collection; end
          # Whether to allow creation of instant payouts. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
          sig { returns(T::Boolean) }
          def instant_payouts; end
          # Whether to allow creation of standard payouts. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
          sig { returns(T::Boolean) }
          def standard_payouts; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        # Attribute for field features
        sig { returns(Features) }
        def features; end
        def self.inner_class_types
          @inner_class_types = {features: Features}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class PayoutsList < Stripe::StripeObject
        class Features < Stripe::StripeObject
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        # Attribute for field features
        sig { returns(Features) }
        def features; end
        def self.inner_class_types
          @inner_class_types = {features: Features}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class TaxRegistrations < Stripe::StripeObject
        class Features < Stripe::StripeObject
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        # Attribute for field features
        sig { returns(Features) }
        def features; end
        def self.inner_class_types
          @inner_class_types = {features: Features}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class TaxSettings < Stripe::StripeObject
        class Features < Stripe::StripeObject
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        # Attribute for field features
        sig { returns(Features) }
        def features; end
        def self.inner_class_types
          @inner_class_types = {features: Features}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Attribute for field account_management
      sig { returns(AccountManagement) }
      def account_management; end
      # Attribute for field account_onboarding
      sig { returns(AccountOnboarding) }
      def account_onboarding; end
      # Attribute for field balance_report
      sig { returns(BalanceReport) }
      def balance_report; end
      # Attribute for field balances
      sig { returns(Balances) }
      def balances; end
      # Attribute for field capital_financing
      sig { returns(T.nilable(CapitalFinancing)) }
      def capital_financing; end
      # Attribute for field capital_financing_application
      sig { returns(T.nilable(CapitalFinancingApplication)) }
      def capital_financing_application; end
      # Attribute for field capital_financing_promotion
      sig { returns(T.nilable(CapitalFinancingPromotion)) }
      def capital_financing_promotion; end
      # Attribute for field disputes_list
      sig { returns(DisputesList) }
      def disputes_list; end
      # Attribute for field documents
      sig { returns(Documents) }
      def documents; end
      # Attribute for field financial_account
      sig { returns(FinancialAccount) }
      def financial_account; end
      # Attribute for field financial_account_transactions
      sig { returns(FinancialAccountTransactions) }
      def financial_account_transactions; end
      # Attribute for field instant_payouts_promotion
      sig { returns(InstantPayoutsPromotion) }
      def instant_payouts_promotion; end
      # Attribute for field issuing_card
      sig { returns(IssuingCard) }
      def issuing_card; end
      # Attribute for field issuing_cards_list
      sig { returns(IssuingCardsList) }
      def issuing_cards_list; end
      # Attribute for field notification_banner
      sig { returns(NotificationBanner) }
      def notification_banner; end
      # Attribute for field payment_details
      sig { returns(PaymentDetails) }
      def payment_details; end
      # Attribute for field payment_disputes
      sig { returns(PaymentDisputes) }
      def payment_disputes; end
      # Attribute for field payments
      sig { returns(Payments) }
      def payments; end
      # Attribute for field payout_details
      sig { returns(PayoutDetails) }
      def payout_details; end
      # Attribute for field payout_reconciliation_report
      sig { returns(PayoutReconciliationReport) }
      def payout_reconciliation_report; end
      # Attribute for field payouts
      sig { returns(Payouts) }
      def payouts; end
      # Attribute for field payouts_list
      sig { returns(PayoutsList) }
      def payouts_list; end
      # Attribute for field tax_registrations
      sig { returns(TaxRegistrations) }
      def tax_registrations; end
      # Attribute for field tax_settings
      sig { returns(TaxSettings) }
      def tax_settings; end
      def self.inner_class_types
        @inner_class_types = {
          account_management: AccountManagement,
          account_onboarding: AccountOnboarding,
          balance_report: BalanceReport,
          balances: Balances,
          disputes_list: DisputesList,
          documents: Documents,
          financial_account: FinancialAccount,
          financial_account_transactions: FinancialAccountTransactions,
          instant_payouts_promotion: InstantPayoutsPromotion,
          issuing_card: IssuingCard,
          issuing_cards_list: IssuingCardsList,
          notification_banner: NotificationBanner,
          payment_details: PaymentDetails,
          payment_disputes: PaymentDisputes,
          payments: Payments,
          payout_details: PayoutDetails,
          payout_reconciliation_report: PayoutReconciliationReport,
          payouts: Payouts,
          payouts_list: PayoutsList,
          tax_registrations: TaxRegistrations,
          tax_settings: TaxSettings,
        }
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    # The ID of the account the AccountSession was created for
    sig { returns(String) }
    def account; end
    # The client secret of this AccountSession. Used on the client to set up secure access to the given `account`.
    #
    # The client secret can be used to provide access to `account` from your frontend. It should not be stored, logged, or exposed to anyone other than the connected account. Make sure that you have TLS enabled on any page that includes the client secret.
    #
    # Refer to our docs to [setup Connect embedded components](https://stripe.com/docs/connect/get-started-connect-embedded-components) and learn about how `client_secret` should be handled.
    sig { returns(String) }
    def client_secret; end
    # Attribute for field components
    sig { returns(Components) }
    def components; end
    # The timestamp at which this AccountSession will expire.
    sig { returns(Integer) }
    def expires_at; end
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    def livemode; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    class CreateParams < Stripe::RequestParams
      class Components < Stripe::RequestParams
        class AccountManagement < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            def disable_stripe_user_authentication; end
            sig {
              params(_disable_stripe_user_authentication: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def disable_stripe_user_authentication=(_disable_stripe_user_authentication); end
            # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
            sig { returns(T.nilable(T::Boolean)) }
            def external_account_collection; end
            sig {
              params(_external_account_collection: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def external_account_collection=(_external_account_collection); end
            sig {
              params(disable_stripe_user_authentication: T.nilable(T::Boolean), external_account_collection: T.nilable(T::Boolean)).void
             }
            def initialize(
              disable_stripe_user_authentication: nil,
              external_account_collection: nil
            ); end
          end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # The list of features enabled in the embedded component.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::AccountManagement::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSession::CreateParams::Components::AccountManagement::Features)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::AccountManagement::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::AccountManagement::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class AccountOnboarding < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            def disable_stripe_user_authentication; end
            sig {
              params(_disable_stripe_user_authentication: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def disable_stripe_user_authentication=(_disable_stripe_user_authentication); end
            # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
            sig { returns(T.nilable(T::Boolean)) }
            def external_account_collection; end
            sig {
              params(_external_account_collection: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def external_account_collection=(_external_account_collection); end
            sig {
              params(disable_stripe_user_authentication: T.nilable(T::Boolean), external_account_collection: T.nilable(T::Boolean)).void
             }
            def initialize(
              disable_stripe_user_authentication: nil,
              external_account_collection: nil
            ); end
          end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # The list of features enabled in the embedded component.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::AccountOnboarding::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSession::CreateParams::Components::AccountOnboarding::Features)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::AccountOnboarding::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::AccountOnboarding::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class AppInstall < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # The list of apps allowed to be enabled in the embedded component.
            sig { returns(T.nilable(T.any(String, T::Array[String]))) }
            def allowed_apps; end
            sig {
              params(_allowed_apps: T.nilable(T.any(String, T::Array[String]))).returns(T.nilable(T.any(String, T::Array[String])))
             }
            def allowed_apps=(_allowed_apps); end
            sig { params(allowed_apps: T.nilable(T.any(String, T::Array[String]))).void }
            def initialize(allowed_apps: nil); end
          end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # The list of features enabled in the embedded component.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::AppInstall::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSession::CreateParams::Components::AppInstall::Features)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::AppInstall::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::AppInstall::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class AppViewport < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # The list of apps allowed to be enabled in the embedded component.
            sig { returns(T.nilable(T.any(String, T::Array[String]))) }
            def allowed_apps; end
            sig {
              params(_allowed_apps: T.nilable(T.any(String, T::Array[String]))).returns(T.nilable(T.any(String, T::Array[String])))
             }
            def allowed_apps=(_allowed_apps); end
            sig { params(allowed_apps: T.nilable(T.any(String, T::Array[String]))).void }
            def initialize(allowed_apps: nil); end
          end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # The list of features enabled in the embedded component.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::AppViewport::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSession::CreateParams::Components::AppViewport::Features)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::AppViewport::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::AppViewport::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class BalanceReport < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # An empty list, because this embedded component has no features.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::BalanceReport::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSession::CreateParams::Components::BalanceReport::Features)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::BalanceReport::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::BalanceReport::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class Balances < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            def disable_stripe_user_authentication; end
            sig {
              params(_disable_stripe_user_authentication: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def disable_stripe_user_authentication=(_disable_stripe_user_authentication); end
            # Whether to allow payout schedule to be changed. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
            sig { returns(T.nilable(T::Boolean)) }
            def edit_payout_schedule; end
            sig {
              params(_edit_payout_schedule: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def edit_payout_schedule=(_edit_payout_schedule); end
            # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
            sig { returns(T.nilable(T::Boolean)) }
            def external_account_collection; end
            sig {
              params(_external_account_collection: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def external_account_collection=(_external_account_collection); end
            # Whether to allow creation of instant payouts. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
            sig { returns(T.nilable(T::Boolean)) }
            def instant_payouts; end
            sig { params(_instant_payouts: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def instant_payouts=(_instant_payouts); end
            # Whether to allow creation of standard payouts. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
            sig { returns(T.nilable(T::Boolean)) }
            def standard_payouts; end
            sig { params(_standard_payouts: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def standard_payouts=(_standard_payouts); end
            sig {
              params(disable_stripe_user_authentication: T.nilable(T::Boolean), edit_payout_schedule: T.nilable(T::Boolean), external_account_collection: T.nilable(T::Boolean), instant_payouts: T.nilable(T::Boolean), standard_payouts: T.nilable(T::Boolean)).void
             }
            def initialize(
              disable_stripe_user_authentication: nil,
              edit_payout_schedule: nil,
              external_account_collection: nil,
              instant_payouts: nil,
              standard_payouts: nil
            ); end
          end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # The list of features enabled in the embedded component.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::Balances::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSession::CreateParams::Components::Balances::Features)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::Balances::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::Balances::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class CapitalFinancing < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # An empty list, because this embedded component has no features.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::CapitalFinancing::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSession::CreateParams::Components::CapitalFinancing::Features)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::CapitalFinancing::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::CapitalFinancing::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class CapitalFinancingApplication < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # An empty list, because this embedded component has no features.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::CapitalFinancingApplication::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSession::CreateParams::Components::CapitalFinancingApplication::Features)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::CapitalFinancingApplication::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::CapitalFinancingApplication::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class CapitalFinancingPromotion < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # An empty list, because this embedded component has no features.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::CapitalFinancingPromotion::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSession::CreateParams::Components::CapitalFinancingPromotion::Features)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::CapitalFinancingPromotion::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::CapitalFinancingPromotion::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class CapitalOverview < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # An empty list, because this embedded component has no features.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::CapitalOverview::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSession::CreateParams::Components::CapitalOverview::Features)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::CapitalOverview::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::CapitalOverview::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class DisputesList < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether to allow capturing and cancelling payment intents. This is `true` by default.
            sig { returns(T.nilable(T::Boolean)) }
            def capture_payments; end
            sig { params(_capture_payments: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def capture_payments=(_capture_payments); end
            # Whether connected accounts can manage destination charges that are created on behalf of them. This is `false` by default.
            sig { returns(T.nilable(T::Boolean)) }
            def destination_on_behalf_of_charge_management; end
            sig {
              params(_destination_on_behalf_of_charge_management: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def destination_on_behalf_of_charge_management=(
              _destination_on_behalf_of_charge_management
            ); end
            # Whether responding to disputes is enabled, including submitting evidence and accepting disputes. This is `true` by default.
            sig { returns(T.nilable(T::Boolean)) }
            def dispute_management; end
            sig {
              params(_dispute_management: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def dispute_management=(_dispute_management); end
            # Whether sending refunds is enabled. This is `true` by default.
            sig { returns(T.nilable(T::Boolean)) }
            def refund_management; end
            sig { params(_refund_management: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def refund_management=(_refund_management); end
            sig {
              params(capture_payments: T.nilable(T::Boolean), destination_on_behalf_of_charge_management: T.nilable(T::Boolean), dispute_management: T.nilable(T::Boolean), refund_management: T.nilable(T::Boolean)).void
             }
            def initialize(
              capture_payments: nil,
              destination_on_behalf_of_charge_management: nil,
              dispute_management: nil,
              refund_management: nil
            ); end
          end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # The list of features enabled in the embedded component.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::DisputesList::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSession::CreateParams::Components::DisputesList::Features)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::DisputesList::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::DisputesList::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class Documents < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # An empty list, because this embedded component has no features.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::Documents::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSession::CreateParams::Components::Documents::Features)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::Documents::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::Documents::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class ExportTaxTransactions < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # An empty list, because this embedded component has no features.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::ExportTaxTransactions::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSession::CreateParams::Components::ExportTaxTransactions::Features)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::ExportTaxTransactions::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::ExportTaxTransactions::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class FinancialAccount < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            def disable_stripe_user_authentication; end
            sig {
              params(_disable_stripe_user_authentication: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def disable_stripe_user_authentication=(_disable_stripe_user_authentication); end
            # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
            sig { returns(T.nilable(T::Boolean)) }
            def external_account_collection; end
            sig {
              params(_external_account_collection: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def external_account_collection=(_external_account_collection); end
            # Whether to allow sending money.
            sig { returns(T.nilable(T::Boolean)) }
            def send_money; end
            sig { params(_send_money: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def send_money=(_send_money); end
            # Whether to allow transferring balance.
            sig { returns(T.nilable(T::Boolean)) }
            def transfer_balance; end
            sig { params(_transfer_balance: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def transfer_balance=(_transfer_balance); end
            sig {
              params(disable_stripe_user_authentication: T.nilable(T::Boolean), external_account_collection: T.nilable(T::Boolean), send_money: T.nilable(T::Boolean), transfer_balance: T.nilable(T::Boolean)).void
             }
            def initialize(
              disable_stripe_user_authentication: nil,
              external_account_collection: nil,
              send_money: nil,
              transfer_balance: nil
            ); end
          end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # The list of features enabled in the embedded component.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::FinancialAccount::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSession::CreateParams::Components::FinancialAccount::Features)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::FinancialAccount::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::FinancialAccount::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class FinancialAccountTransactions < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether to allow card spend dispute management features.
            sig { returns(T.nilable(T::Boolean)) }
            def card_spend_dispute_management; end
            sig {
              params(_card_spend_dispute_management: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def card_spend_dispute_management=(_card_spend_dispute_management); end
            sig { params(card_spend_dispute_management: T.nilable(T::Boolean)).void }
            def initialize(card_spend_dispute_management: nil); end
          end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # The list of features enabled in the embedded component.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::FinancialAccountTransactions::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSession::CreateParams::Components::FinancialAccountTransactions::Features)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::FinancialAccountTransactions::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::FinancialAccountTransactions::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class InstantPayoutsPromotion < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            def disable_stripe_user_authentication; end
            sig {
              params(_disable_stripe_user_authentication: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def disable_stripe_user_authentication=(_disable_stripe_user_authentication); end
            # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
            sig { returns(T.nilable(T::Boolean)) }
            def external_account_collection; end
            sig {
              params(_external_account_collection: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def external_account_collection=(_external_account_collection); end
            # Whether to allow creation of instant payouts. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
            sig { returns(T.nilable(T::Boolean)) }
            def instant_payouts; end
            sig { params(_instant_payouts: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def instant_payouts=(_instant_payouts); end
            sig {
              params(disable_stripe_user_authentication: T.nilable(T::Boolean), external_account_collection: T.nilable(T::Boolean), instant_payouts: T.nilable(T::Boolean)).void
             }
            def initialize(
              disable_stripe_user_authentication: nil,
              external_account_collection: nil,
              instant_payouts: nil
            ); end
          end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # The list of features enabled in the embedded component.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::InstantPayoutsPromotion::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSession::CreateParams::Components::InstantPayoutsPromotion::Features)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::InstantPayoutsPromotion::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::InstantPayoutsPromotion::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class IssuingCard < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether to allow card management features.
            sig { returns(T.nilable(T::Boolean)) }
            def card_management; end
            sig { params(_card_management: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def card_management=(_card_management); end
            # Whether to allow card spend dispute management features.
            sig { returns(T.nilable(T::Boolean)) }
            def card_spend_dispute_management; end
            sig {
              params(_card_spend_dispute_management: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def card_spend_dispute_management=(_card_spend_dispute_management); end
            # Whether to allow cardholder management features.
            sig { returns(T.nilable(T::Boolean)) }
            def cardholder_management; end
            sig {
              params(_cardholder_management: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def cardholder_management=(_cardholder_management); end
            # Whether to allow spend control management features.
            sig { returns(T.nilable(T::Boolean)) }
            def spend_control_management; end
            sig {
              params(_spend_control_management: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def spend_control_management=(_spend_control_management); end
            sig {
              params(card_management: T.nilable(T::Boolean), card_spend_dispute_management: T.nilable(T::Boolean), cardholder_management: T.nilable(T::Boolean), spend_control_management: T.nilable(T::Boolean)).void
             }
            def initialize(
              card_management: nil,
              card_spend_dispute_management: nil,
              cardholder_management: nil,
              spend_control_management: nil
            ); end
          end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # The list of features enabled in the embedded component.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::IssuingCard::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSession::CreateParams::Components::IssuingCard::Features)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::IssuingCard::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::IssuingCard::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class IssuingCardsList < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether to allow card management features.
            sig { returns(T.nilable(T::Boolean)) }
            def card_management; end
            sig { params(_card_management: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def card_management=(_card_management); end
            # Whether to allow card spend dispute management features.
            sig { returns(T.nilable(T::Boolean)) }
            def card_spend_dispute_management; end
            sig {
              params(_card_spend_dispute_management: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def card_spend_dispute_management=(_card_spend_dispute_management); end
            # Whether to allow cardholder management features.
            sig { returns(T.nilable(T::Boolean)) }
            def cardholder_management; end
            sig {
              params(_cardholder_management: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def cardholder_management=(_cardholder_management); end
            # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            def disable_stripe_user_authentication; end
            sig {
              params(_disable_stripe_user_authentication: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def disable_stripe_user_authentication=(_disable_stripe_user_authentication); end
            # Whether to allow spend control management features.
            sig { returns(T.nilable(T::Boolean)) }
            def spend_control_management; end
            sig {
              params(_spend_control_management: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def spend_control_management=(_spend_control_management); end
            sig {
              params(card_management: T.nilable(T::Boolean), card_spend_dispute_management: T.nilable(T::Boolean), cardholder_management: T.nilable(T::Boolean), disable_stripe_user_authentication: T.nilable(T::Boolean), spend_control_management: T.nilable(T::Boolean)).void
             }
            def initialize(
              card_management: nil,
              card_spend_dispute_management: nil,
              cardholder_management: nil,
              disable_stripe_user_authentication: nil,
              spend_control_management: nil
            ); end
          end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # The list of features enabled in the embedded component.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::IssuingCardsList::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSession::CreateParams::Components::IssuingCardsList::Features)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::IssuingCardsList::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::IssuingCardsList::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class NotificationBanner < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            def disable_stripe_user_authentication; end
            sig {
              params(_disable_stripe_user_authentication: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def disable_stripe_user_authentication=(_disable_stripe_user_authentication); end
            # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
            sig { returns(T.nilable(T::Boolean)) }
            def external_account_collection; end
            sig {
              params(_external_account_collection: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def external_account_collection=(_external_account_collection); end
            sig {
              params(disable_stripe_user_authentication: T.nilable(T::Boolean), external_account_collection: T.nilable(T::Boolean)).void
             }
            def initialize(
              disable_stripe_user_authentication: nil,
              external_account_collection: nil
            ); end
          end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # The list of features enabled in the embedded component.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::NotificationBanner::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSession::CreateParams::Components::NotificationBanner::Features)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::NotificationBanner::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::NotificationBanner::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class PaymentDetails < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether to allow capturing and cancelling payment intents. This is `true` by default.
            sig { returns(T.nilable(T::Boolean)) }
            def capture_payments; end
            sig { params(_capture_payments: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def capture_payments=(_capture_payments); end
            # Whether connected accounts can manage destination charges that are created on behalf of them. This is `false` by default.
            sig { returns(T.nilable(T::Boolean)) }
            def destination_on_behalf_of_charge_management; end
            sig {
              params(_destination_on_behalf_of_charge_management: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def destination_on_behalf_of_charge_management=(
              _destination_on_behalf_of_charge_management
            ); end
            # Whether responding to disputes is enabled, including submitting evidence and accepting disputes. This is `true` by default.
            sig { returns(T.nilable(T::Boolean)) }
            def dispute_management; end
            sig {
              params(_dispute_management: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def dispute_management=(_dispute_management); end
            # Whether sending refunds is enabled. This is `true` by default.
            sig { returns(T.nilable(T::Boolean)) }
            def refund_management; end
            sig { params(_refund_management: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def refund_management=(_refund_management); end
            sig {
              params(capture_payments: T.nilable(T::Boolean), destination_on_behalf_of_charge_management: T.nilable(T::Boolean), dispute_management: T.nilable(T::Boolean), refund_management: T.nilable(T::Boolean)).void
             }
            def initialize(
              capture_payments: nil,
              destination_on_behalf_of_charge_management: nil,
              dispute_management: nil,
              refund_management: nil
            ); end
          end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # The list of features enabled in the embedded component.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PaymentDetails::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSession::CreateParams::Components::PaymentDetails::Features)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PaymentDetails::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::PaymentDetails::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class PaymentDisputes < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether connected accounts can manage destination charges that are created on behalf of them. This is `false` by default.
            sig { returns(T.nilable(T::Boolean)) }
            def destination_on_behalf_of_charge_management; end
            sig {
              params(_destination_on_behalf_of_charge_management: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def destination_on_behalf_of_charge_management=(
              _destination_on_behalf_of_charge_management
            ); end
            # Whether responding to disputes is enabled, including submitting evidence and accepting disputes. This is `true` by default.
            sig { returns(T.nilable(T::Boolean)) }
            def dispute_management; end
            sig {
              params(_dispute_management: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def dispute_management=(_dispute_management); end
            # Whether sending refunds is enabled. This is `true` by default.
            sig { returns(T.nilable(T::Boolean)) }
            def refund_management; end
            sig { params(_refund_management: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def refund_management=(_refund_management); end
            sig {
              params(destination_on_behalf_of_charge_management: T.nilable(T::Boolean), dispute_management: T.nilable(T::Boolean), refund_management: T.nilable(T::Boolean)).void
             }
            def initialize(
              destination_on_behalf_of_charge_management: nil,
              dispute_management: nil,
              refund_management: nil
            ); end
          end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # The list of features enabled in the embedded component.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PaymentDisputes::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSession::CreateParams::Components::PaymentDisputes::Features)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PaymentDisputes::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::PaymentDisputes::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class PaymentMethodSettings < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # An empty list, because this embedded component has no features.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PaymentMethodSettings::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSession::CreateParams::Components::PaymentMethodSettings::Features)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PaymentMethodSettings::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::PaymentMethodSettings::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class Payments < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether to allow capturing and cancelling payment intents. This is `true` by default.
            sig { returns(T.nilable(T::Boolean)) }
            def capture_payments; end
            sig { params(_capture_payments: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def capture_payments=(_capture_payments); end
            # Whether connected accounts can manage destination charges that are created on behalf of them. This is `false` by default.
            sig { returns(T.nilable(T::Boolean)) }
            def destination_on_behalf_of_charge_management; end
            sig {
              params(_destination_on_behalf_of_charge_management: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def destination_on_behalf_of_charge_management=(
              _destination_on_behalf_of_charge_management
            ); end
            # Whether responding to disputes is enabled, including submitting evidence and accepting disputes. This is `true` by default.
            sig { returns(T.nilable(T::Boolean)) }
            def dispute_management; end
            sig {
              params(_dispute_management: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def dispute_management=(_dispute_management); end
            # Whether sending refunds is enabled. This is `true` by default.
            sig { returns(T.nilable(T::Boolean)) }
            def refund_management; end
            sig { params(_refund_management: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def refund_management=(_refund_management); end
            sig {
              params(capture_payments: T.nilable(T::Boolean), destination_on_behalf_of_charge_management: T.nilable(T::Boolean), dispute_management: T.nilable(T::Boolean), refund_management: T.nilable(T::Boolean)).void
             }
            def initialize(
              capture_payments: nil,
              destination_on_behalf_of_charge_management: nil,
              dispute_management: nil,
              refund_management: nil
            ); end
          end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # The list of features enabled in the embedded component.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::Payments::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSession::CreateParams::Components::Payments::Features)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::Payments::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::Payments::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class PayoutDetails < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # An empty list, because this embedded component has no features.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutDetails::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutDetails::Features)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutDetails::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutDetails::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class PayoutReconciliationReport < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # An empty list, because this embedded component has no features.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutReconciliationReport::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutReconciliationReport::Features)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutReconciliationReport::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutReconciliationReport::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class Payouts < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            def disable_stripe_user_authentication; end
            sig {
              params(_disable_stripe_user_authentication: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def disable_stripe_user_authentication=(_disable_stripe_user_authentication); end
            # Whether to allow payout schedule to be changed. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
            sig { returns(T.nilable(T::Boolean)) }
            def edit_payout_schedule; end
            sig {
              params(_edit_payout_schedule: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def edit_payout_schedule=(_edit_payout_schedule); end
            # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
            sig { returns(T.nilable(T::Boolean)) }
            def external_account_collection; end
            sig {
              params(_external_account_collection: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def external_account_collection=(_external_account_collection); end
            # Whether to allow creation of instant payouts. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
            sig { returns(T.nilable(T::Boolean)) }
            def instant_payouts; end
            sig { params(_instant_payouts: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def instant_payouts=(_instant_payouts); end
            # Whether to allow creation of standard payouts. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
            sig { returns(T.nilable(T::Boolean)) }
            def standard_payouts; end
            sig { params(_standard_payouts: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def standard_payouts=(_standard_payouts); end
            sig {
              params(disable_stripe_user_authentication: T.nilable(T::Boolean), edit_payout_schedule: T.nilable(T::Boolean), external_account_collection: T.nilable(T::Boolean), instant_payouts: T.nilable(T::Boolean), standard_payouts: T.nilable(T::Boolean)).void
             }
            def initialize(
              disable_stripe_user_authentication: nil,
              edit_payout_schedule: nil,
              external_account_collection: nil,
              instant_payouts: nil,
              standard_payouts: nil
            ); end
          end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # The list of features enabled in the embedded component.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::Payouts::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSession::CreateParams::Components::Payouts::Features)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::Payouts::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::Payouts::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class PayoutsList < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # An empty list, because this embedded component has no features.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutsList::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutsList::Features)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutsList::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutsList::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class ProductTaxCodeSelector < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # An empty list, because this embedded component has no features.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::ProductTaxCodeSelector::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSession::CreateParams::Components::ProductTaxCodeSelector::Features)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::ProductTaxCodeSelector::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::ProductTaxCodeSelector::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class Recipients < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether to allow sending money.
            sig { returns(T.nilable(T::Boolean)) }
            def send_money; end
            sig { params(_send_money: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def send_money=(_send_money); end
            sig { params(send_money: T.nilable(T::Boolean)).void }
            def initialize(send_money: nil); end
          end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # Attribute for param field features
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::Recipients::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSession::CreateParams::Components::Recipients::Features)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::Recipients::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::Recipients::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class ReportingChart < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # An empty list, because this embedded component has no features.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::ReportingChart::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSession::CreateParams::Components::ReportingChart::Features)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::ReportingChart::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::ReportingChart::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class TaxRegistrations < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # An empty list, because this embedded component has no features.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::TaxRegistrations::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSession::CreateParams::Components::TaxRegistrations::Features)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::TaxRegistrations::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::TaxRegistrations::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class TaxSettings < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # An empty list, because this embedded component has no features.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::TaxSettings::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSession::CreateParams::Components::TaxSettings::Features)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::TaxSettings::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::TaxSettings::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class TaxThresholdMonitoring < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # An empty list, because this embedded component has no features.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::TaxThresholdMonitoring::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSession::CreateParams::Components::TaxThresholdMonitoring::Features)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::TaxThresholdMonitoring::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::TaxThresholdMonitoring::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        # Configuration for the [account management](/connect/supported-embedded-components/account-management/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::AccountManagement))
         }
        def account_management; end
        sig {
          params(_account_management: T.nilable(::Stripe::AccountSession::CreateParams::Components::AccountManagement)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::AccountManagement))
         }
        def account_management=(_account_management); end
        # Configuration for the [account onboarding](/connect/supported-embedded-components/account-onboarding/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::AccountOnboarding))
         }
        def account_onboarding; end
        sig {
          params(_account_onboarding: T.nilable(::Stripe::AccountSession::CreateParams::Components::AccountOnboarding)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::AccountOnboarding))
         }
        def account_onboarding=(_account_onboarding); end
        # Configuration for the [app install](/connect/supported-embedded-components/app-install/) embedded component.
        sig { returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::AppInstall)) }
        def app_install; end
        sig {
          params(_app_install: T.nilable(::Stripe::AccountSession::CreateParams::Components::AppInstall)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::AppInstall))
         }
        def app_install=(_app_install); end
        # Configuration for the [app viewport](/connect/supported-embedded-components/app-viewport/) embedded component.
        sig { returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::AppViewport)) }
        def app_viewport; end
        sig {
          params(_app_viewport: T.nilable(::Stripe::AccountSession::CreateParams::Components::AppViewport)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::AppViewport))
         }
        def app_viewport=(_app_viewport); end
        # Configuration for the [balance report](/connect/supported-embedded-components/financial-reports#balance-report) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::BalanceReport))
         }
        def balance_report; end
        sig {
          params(_balance_report: T.nilable(::Stripe::AccountSession::CreateParams::Components::BalanceReport)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::BalanceReport))
         }
        def balance_report=(_balance_report); end
        # Configuration for the [balances](/connect/supported-embedded-components/balances/) embedded component.
        sig { returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::Balances)) }
        def balances; end
        sig {
          params(_balances: T.nilable(::Stripe::AccountSession::CreateParams::Components::Balances)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::Balances))
         }
        def balances=(_balances); end
        # Configuration for the [Capital financing](/connect/supported-embedded-components/capital-financing/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::CapitalFinancing))
         }
        def capital_financing; end
        sig {
          params(_capital_financing: T.nilable(::Stripe::AccountSession::CreateParams::Components::CapitalFinancing)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::CapitalFinancing))
         }
        def capital_financing=(_capital_financing); end
        # Configuration for the [Capital financing application](/connect/supported-embedded-components/capital-financing-application/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::CapitalFinancingApplication))
         }
        def capital_financing_application; end
        sig {
          params(_capital_financing_application: T.nilable(::Stripe::AccountSession::CreateParams::Components::CapitalFinancingApplication)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::CapitalFinancingApplication))
         }
        def capital_financing_application=(_capital_financing_application); end
        # Configuration for the [Capital financing promotion](/connect/supported-embedded-components/capital-financing-promotion/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::CapitalFinancingPromotion))
         }
        def capital_financing_promotion; end
        sig {
          params(_capital_financing_promotion: T.nilable(::Stripe::AccountSession::CreateParams::Components::CapitalFinancingPromotion)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::CapitalFinancingPromotion))
         }
        def capital_financing_promotion=(_capital_financing_promotion); end
        # Configuration for the [Capital overview](/connect/supported-embedded-components/capital-overview/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::CapitalOverview))
         }
        def capital_overview; end
        sig {
          params(_capital_overview: T.nilable(::Stripe::AccountSession::CreateParams::Components::CapitalOverview)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::CapitalOverview))
         }
        def capital_overview=(_capital_overview); end
        # Configuration for the [disputes list](/connect/supported-embedded-components/disputes-list/) embedded component.
        sig { returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::DisputesList)) }
        def disputes_list; end
        sig {
          params(_disputes_list: T.nilable(::Stripe::AccountSession::CreateParams::Components::DisputesList)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::DisputesList))
         }
        def disputes_list=(_disputes_list); end
        # Configuration for the [documents](/connect/supported-embedded-components/documents/) embedded component.
        sig { returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::Documents)) }
        def documents; end
        sig {
          params(_documents: T.nilable(::Stripe::AccountSession::CreateParams::Components::Documents)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::Documents))
         }
        def documents=(_documents); end
        # Configuration for the [export tax transactions](/connect/supported-embedded-components/export-tax-transactions/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::ExportTaxTransactions))
         }
        def export_tax_transactions; end
        sig {
          params(_export_tax_transactions: T.nilable(::Stripe::AccountSession::CreateParams::Components::ExportTaxTransactions)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::ExportTaxTransactions))
         }
        def export_tax_transactions=(_export_tax_transactions); end
        # Configuration for the [financial account](/connect/supported-embedded-components/financial-account/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::FinancialAccount))
         }
        def financial_account; end
        sig {
          params(_financial_account: T.nilable(::Stripe::AccountSession::CreateParams::Components::FinancialAccount)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::FinancialAccount))
         }
        def financial_account=(_financial_account); end
        # Configuration for the [financial account transactions](/connect/supported-embedded-components/financial-account-transactions/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::FinancialAccountTransactions))
         }
        def financial_account_transactions; end
        sig {
          params(_financial_account_transactions: T.nilable(::Stripe::AccountSession::CreateParams::Components::FinancialAccountTransactions)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::FinancialAccountTransactions))
         }
        def financial_account_transactions=(_financial_account_transactions); end
        # Configuration for the [instant payouts promotion](/connect/supported-embedded-components/instant-payouts-promotion/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::InstantPayoutsPromotion))
         }
        def instant_payouts_promotion; end
        sig {
          params(_instant_payouts_promotion: T.nilable(::Stripe::AccountSession::CreateParams::Components::InstantPayoutsPromotion)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::InstantPayoutsPromotion))
         }
        def instant_payouts_promotion=(_instant_payouts_promotion); end
        # Configuration for the [issuing card](/connect/supported-embedded-components/issuing-card/) embedded component.
        sig { returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::IssuingCard)) }
        def issuing_card; end
        sig {
          params(_issuing_card: T.nilable(::Stripe::AccountSession::CreateParams::Components::IssuingCard)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::IssuingCard))
         }
        def issuing_card=(_issuing_card); end
        # Configuration for the [issuing cards list](/connect/supported-embedded-components/issuing-cards-list/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::IssuingCardsList))
         }
        def issuing_cards_list; end
        sig {
          params(_issuing_cards_list: T.nilable(::Stripe::AccountSession::CreateParams::Components::IssuingCardsList)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::IssuingCardsList))
         }
        def issuing_cards_list=(_issuing_cards_list); end
        # Configuration for the [notification banner](/connect/supported-embedded-components/notification-banner/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::NotificationBanner))
         }
        def notification_banner; end
        sig {
          params(_notification_banner: T.nilable(::Stripe::AccountSession::CreateParams::Components::NotificationBanner)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::NotificationBanner))
         }
        def notification_banner=(_notification_banner); end
        # Configuration for the [payment details](/connect/supported-embedded-components/payment-details/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PaymentDetails))
         }
        def payment_details; end
        sig {
          params(_payment_details: T.nilable(::Stripe::AccountSession::CreateParams::Components::PaymentDetails)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PaymentDetails))
         }
        def payment_details=(_payment_details); end
        # Configuration for the [payment disputes](/connect/supported-embedded-components/payment-disputes/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PaymentDisputes))
         }
        def payment_disputes; end
        sig {
          params(_payment_disputes: T.nilable(::Stripe::AccountSession::CreateParams::Components::PaymentDisputes)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PaymentDisputes))
         }
        def payment_disputes=(_payment_disputes); end
        # Configuration for the [payment method settings](/connect/supported-embedded-components/payment-method-settings/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PaymentMethodSettings))
         }
        def payment_method_settings; end
        sig {
          params(_payment_method_settings: T.nilable(::Stripe::AccountSession::CreateParams::Components::PaymentMethodSettings)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PaymentMethodSettings))
         }
        def payment_method_settings=(_payment_method_settings); end
        # Configuration for the [payments](/connect/supported-embedded-components/payments/) embedded component.
        sig { returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::Payments)) }
        def payments; end
        sig {
          params(_payments: T.nilable(::Stripe::AccountSession::CreateParams::Components::Payments)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::Payments))
         }
        def payments=(_payments); end
        # Configuration for the [payout details](/connect/supported-embedded-components/payout-details/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutDetails))
         }
        def payout_details; end
        sig {
          params(_payout_details: T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutDetails)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutDetails))
         }
        def payout_details=(_payout_details); end
        # Configuration for the [payout reconciliation report](/connect/supported-embedded-components/financial-reports#payout-reconciliation-report) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutReconciliationReport))
         }
        def payout_reconciliation_report; end
        sig {
          params(_payout_reconciliation_report: T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutReconciliationReport)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutReconciliationReport))
         }
        def payout_reconciliation_report=(_payout_reconciliation_report); end
        # Configuration for the [payouts](/connect/supported-embedded-components/payouts/) embedded component.
        sig { returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::Payouts)) }
        def payouts; end
        sig {
          params(_payouts: T.nilable(::Stripe::AccountSession::CreateParams::Components::Payouts)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::Payouts))
         }
        def payouts=(_payouts); end
        # Configuration for the [payouts list](/connect/supported-embedded-components/payouts-list/) embedded component.
        sig { returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutsList)) }
        def payouts_list; end
        sig {
          params(_payouts_list: T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutsList)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutsList))
         }
        def payouts_list=(_payouts_list); end
        # Configuration for the [product tax code selector](/connect/supported-embedded-components/product-tax-code-selector/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::ProductTaxCodeSelector))
         }
        def product_tax_code_selector; end
        sig {
          params(_product_tax_code_selector: T.nilable(::Stripe::AccountSession::CreateParams::Components::ProductTaxCodeSelector)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::ProductTaxCodeSelector))
         }
        def product_tax_code_selector=(_product_tax_code_selector); end
        # Configuration for the [recipients](/connect/supported-embedded-components/recipients/) embedded component.
        sig { returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::Recipients)) }
        def recipients; end
        sig {
          params(_recipients: T.nilable(::Stripe::AccountSession::CreateParams::Components::Recipients)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::Recipients))
         }
        def recipients=(_recipients); end
        # Configuration for the [reporting chart](/connect/supported-embedded-components/reporting-chart/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::ReportingChart))
         }
        def reporting_chart; end
        sig {
          params(_reporting_chart: T.nilable(::Stripe::AccountSession::CreateParams::Components::ReportingChart)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::ReportingChart))
         }
        def reporting_chart=(_reporting_chart); end
        # Configuration for the [tax registrations](/connect/supported-embedded-components/tax-registrations/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::TaxRegistrations))
         }
        def tax_registrations; end
        sig {
          params(_tax_registrations: T.nilable(::Stripe::AccountSession::CreateParams::Components::TaxRegistrations)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::TaxRegistrations))
         }
        def tax_registrations=(_tax_registrations); end
        # Configuration for the [tax settings](/connect/supported-embedded-components/tax-settings/) embedded component.
        sig { returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::TaxSettings)) }
        def tax_settings; end
        sig {
          params(_tax_settings: T.nilable(::Stripe::AccountSession::CreateParams::Components::TaxSettings)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::TaxSettings))
         }
        def tax_settings=(_tax_settings); end
        # Configuration for the [tax threshold monitoring](/connect/supported-embedded-components/tax-threshold-monitoring/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::TaxThresholdMonitoring))
         }
        def tax_threshold_monitoring; end
        sig {
          params(_tax_threshold_monitoring: T.nilable(::Stripe::AccountSession::CreateParams::Components::TaxThresholdMonitoring)).returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::TaxThresholdMonitoring))
         }
        def tax_threshold_monitoring=(_tax_threshold_monitoring); end
        sig {
          params(account_management: T.nilable(::Stripe::AccountSession::CreateParams::Components::AccountManagement), account_onboarding: T.nilable(::Stripe::AccountSession::CreateParams::Components::AccountOnboarding), app_install: T.nilable(::Stripe::AccountSession::CreateParams::Components::AppInstall), app_viewport: T.nilable(::Stripe::AccountSession::CreateParams::Components::AppViewport), balance_report: T.nilable(::Stripe::AccountSession::CreateParams::Components::BalanceReport), balances: T.nilable(::Stripe::AccountSession::CreateParams::Components::Balances), capital_financing: T.nilable(::Stripe::AccountSession::CreateParams::Components::CapitalFinancing), capital_financing_application: T.nilable(::Stripe::AccountSession::CreateParams::Components::CapitalFinancingApplication), capital_financing_promotion: T.nilable(::Stripe::AccountSession::CreateParams::Components::CapitalFinancingPromotion), capital_overview: T.nilable(::Stripe::AccountSession::CreateParams::Components::CapitalOverview), disputes_list: T.nilable(::Stripe::AccountSession::CreateParams::Components::DisputesList), documents: T.nilable(::Stripe::AccountSession::CreateParams::Components::Documents), export_tax_transactions: T.nilable(::Stripe::AccountSession::CreateParams::Components::ExportTaxTransactions), financial_account: T.nilable(::Stripe::AccountSession::CreateParams::Components::FinancialAccount), financial_account_transactions: T.nilable(::Stripe::AccountSession::CreateParams::Components::FinancialAccountTransactions), instant_payouts_promotion: T.nilable(::Stripe::AccountSession::CreateParams::Components::InstantPayoutsPromotion), issuing_card: T.nilable(::Stripe::AccountSession::CreateParams::Components::IssuingCard), issuing_cards_list: T.nilable(::Stripe::AccountSession::CreateParams::Components::IssuingCardsList), notification_banner: T.nilable(::Stripe::AccountSession::CreateParams::Components::NotificationBanner), payment_details: T.nilable(::Stripe::AccountSession::CreateParams::Components::PaymentDetails), payment_disputes: T.nilable(::Stripe::AccountSession::CreateParams::Components::PaymentDisputes), payment_method_settings: T.nilable(::Stripe::AccountSession::CreateParams::Components::PaymentMethodSettings), payments: T.nilable(::Stripe::AccountSession::CreateParams::Components::Payments), payout_details: T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutDetails), payout_reconciliation_report: T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutReconciliationReport), payouts: T.nilable(::Stripe::AccountSession::CreateParams::Components::Payouts), payouts_list: T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutsList), product_tax_code_selector: T.nilable(::Stripe::AccountSession::CreateParams::Components::ProductTaxCodeSelector), recipients: T.nilable(::Stripe::AccountSession::CreateParams::Components::Recipients), reporting_chart: T.nilable(::Stripe::AccountSession::CreateParams::Components::ReportingChart), tax_registrations: T.nilable(::Stripe::AccountSession::CreateParams::Components::TaxRegistrations), tax_settings: T.nilable(::Stripe::AccountSession::CreateParams::Components::TaxSettings), tax_threshold_monitoring: T.nilable(::Stripe::AccountSession::CreateParams::Components::TaxThresholdMonitoring)).void
         }
        def initialize(
          account_management: nil,
          account_onboarding: nil,
          app_install: nil,
          app_viewport: nil,
          balance_report: nil,
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
          payout_details: nil,
          payout_reconciliation_report: nil,
          payouts: nil,
          payouts_list: nil,
          product_tax_code_selector: nil,
          recipients: nil,
          reporting_chart: nil,
          tax_registrations: nil,
          tax_settings: nil,
          tax_threshold_monitoring: nil
        ); end
      end
      # The identifier of the account to create an Account Session for.
      sig { returns(String) }
      def account; end
      sig { params(_account: String).returns(String) }
      def account=(_account); end
      # Each key of the dictionary represents an embedded component, and each embedded component maps to its configuration (e.g. whether it has been enabled or not).
      sig { returns(::Stripe::AccountSession::CreateParams::Components) }
      def components; end
      sig {
        params(_components: ::Stripe::AccountSession::CreateParams::Components).returns(::Stripe::AccountSession::CreateParams::Components)
       }
      def components=(_components); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      sig {
        params(account: String, components: ::Stripe::AccountSession::CreateParams::Components, expand: T.nilable(T::Array[String])).void
       }
      def initialize(account: nil, components: nil, expand: nil); end
    end
    # Creates a AccountSession object that includes a single-use token that the platform can use on their front-end to grant client-side API access.
    sig {
      params(params: T.any(::Stripe::AccountSession::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::AccountSession)
     }
    def self.create(params = {}, opts = {}); end
  end
end