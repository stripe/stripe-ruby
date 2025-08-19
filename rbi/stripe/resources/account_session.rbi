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
          attr_reader :disable_stripe_user_authentication
          # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
          sig { returns(T::Boolean) }
          attr_reader :external_account_collection
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        attr_reader :enabled
        # Attribute for field features
        sig { returns(Features) }
        attr_reader :features
      end
      class AccountOnboarding < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
          sig { returns(T::Boolean) }
          attr_reader :disable_stripe_user_authentication
          # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
          sig { returns(T::Boolean) }
          attr_reader :external_account_collection
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        attr_reader :enabled
        # Attribute for field features
        sig { returns(Features) }
        attr_reader :features
      end
      class BalanceReport < Stripe::StripeObject
        class Features < Stripe::StripeObject; end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        attr_reader :enabled
        # Attribute for field features
        sig { returns(Features) }
        attr_reader :features
      end
      class Balances < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
          sig { returns(T::Boolean) }
          attr_reader :disable_stripe_user_authentication
          # Whether to allow payout schedule to be changed. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
          sig { returns(T::Boolean) }
          attr_reader :edit_payout_schedule
          # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
          sig { returns(T::Boolean) }
          attr_reader :external_account_collection
          # Whether to allow creation of instant payouts. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
          sig { returns(T::Boolean) }
          attr_reader :instant_payouts
          # Whether to allow creation of standard payouts. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
          sig { returns(T::Boolean) }
          attr_reader :standard_payouts
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        attr_reader :enabled
        # Attribute for field features
        sig { returns(Features) }
        attr_reader :features
      end
      class DisputesList < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Whether to allow capturing and cancelling payment intents. This is `true` by default.
          sig { returns(T::Boolean) }
          attr_reader :capture_payments
          # Whether connected accounts can manage destination charges that are created on behalf of them. This is `false` by default.
          sig { returns(T::Boolean) }
          attr_reader :destination_on_behalf_of_charge_management
          # Whether responding to disputes is enabled, including submitting evidence and accepting disputes. This is `true` by default.
          sig { returns(T::Boolean) }
          attr_reader :dispute_management
          # Whether sending refunds is enabled. This is `true` by default.
          sig { returns(T::Boolean) }
          attr_reader :refund_management
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        attr_reader :enabled
        # Attribute for field features
        sig { returns(Features) }
        attr_reader :features
      end
      class Documents < Stripe::StripeObject
        class Features < Stripe::StripeObject; end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        attr_reader :enabled
        # Attribute for field features
        sig { returns(Features) }
        attr_reader :features
      end
      class FinancialAccount < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
          sig { returns(T::Boolean) }
          attr_reader :disable_stripe_user_authentication
          # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
          sig { returns(T::Boolean) }
          attr_reader :external_account_collection
          # Whether to allow sending money.
          sig { returns(T::Boolean) }
          attr_reader :send_money
          # Whether to allow transferring balance.
          sig { returns(T::Boolean) }
          attr_reader :transfer_balance
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        attr_reader :enabled
        # Attribute for field features
        sig { returns(Features) }
        attr_reader :features
      end
      class FinancialAccountTransactions < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Whether to allow card spend dispute management features.
          sig { returns(T::Boolean) }
          attr_reader :card_spend_dispute_management
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        attr_reader :enabled
        # Attribute for field features
        sig { returns(Features) }
        attr_reader :features
      end
      class InstantPayoutsPromotion < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
          sig { returns(T::Boolean) }
          attr_reader :disable_stripe_user_authentication
          # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
          sig { returns(T::Boolean) }
          attr_reader :external_account_collection
          # Whether to allow creation of instant payouts. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
          sig { returns(T::Boolean) }
          attr_reader :instant_payouts
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        attr_reader :enabled
        # Attribute for field features
        sig { returns(Features) }
        attr_reader :features
      end
      class IssuingCard < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Whether to allow card management features.
          sig { returns(T::Boolean) }
          attr_reader :card_management
          # Whether to allow card spend dispute management features.
          sig { returns(T::Boolean) }
          attr_reader :card_spend_dispute_management
          # Whether to allow cardholder management features.
          sig { returns(T::Boolean) }
          attr_reader :cardholder_management
          # Whether to allow spend control management features.
          sig { returns(T::Boolean) }
          attr_reader :spend_control_management
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        attr_reader :enabled
        # Attribute for field features
        sig { returns(Features) }
        attr_reader :features
      end
      class IssuingCardsList < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Whether to allow card management features.
          sig { returns(T::Boolean) }
          attr_reader :card_management
          # Whether to allow card spend dispute management features.
          sig { returns(T::Boolean) }
          attr_reader :card_spend_dispute_management
          # Whether to allow cardholder management features.
          sig { returns(T::Boolean) }
          attr_reader :cardholder_management
          # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
          sig { returns(T::Boolean) }
          attr_reader :disable_stripe_user_authentication
          # Whether to allow spend control management features.
          sig { returns(T::Boolean) }
          attr_reader :spend_control_management
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        attr_reader :enabled
        # Attribute for field features
        sig { returns(Features) }
        attr_reader :features
      end
      class NotificationBanner < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
          sig { returns(T::Boolean) }
          attr_reader :disable_stripe_user_authentication
          # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
          sig { returns(T::Boolean) }
          attr_reader :external_account_collection
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        attr_reader :enabled
        # Attribute for field features
        sig { returns(Features) }
        attr_reader :features
      end
      class PaymentDetails < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Whether to allow capturing and cancelling payment intents. This is `true` by default.
          sig { returns(T::Boolean) }
          attr_reader :capture_payments
          # Whether connected accounts can manage destination charges that are created on behalf of them. This is `false` by default.
          sig { returns(T::Boolean) }
          attr_reader :destination_on_behalf_of_charge_management
          # Whether responding to disputes is enabled, including submitting evidence and accepting disputes. This is `true` by default.
          sig { returns(T::Boolean) }
          attr_reader :dispute_management
          # Whether sending refunds is enabled. This is `true` by default.
          sig { returns(T::Boolean) }
          attr_reader :refund_management
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        attr_reader :enabled
        # Attribute for field features
        sig { returns(Features) }
        attr_reader :features
      end
      class PaymentDisputes < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Whether connected accounts can manage destination charges that are created on behalf of them. This is `false` by default.
          sig { returns(T::Boolean) }
          attr_reader :destination_on_behalf_of_charge_management
          # Whether responding to disputes is enabled, including submitting evidence and accepting disputes. This is `true` by default.
          sig { returns(T::Boolean) }
          attr_reader :dispute_management
          # Whether sending refunds is enabled. This is `true` by default.
          sig { returns(T::Boolean) }
          attr_reader :refund_management
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        attr_reader :enabled
        # Attribute for field features
        sig { returns(Features) }
        attr_reader :features
      end
      class Payments < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Whether to allow capturing and cancelling payment intents. This is `true` by default.
          sig { returns(T::Boolean) }
          attr_reader :capture_payments
          # Whether connected accounts can manage destination charges that are created on behalf of them. This is `false` by default.
          sig { returns(T::Boolean) }
          attr_reader :destination_on_behalf_of_charge_management
          # Whether responding to disputes is enabled, including submitting evidence and accepting disputes. This is `true` by default.
          sig { returns(T::Boolean) }
          attr_reader :dispute_management
          # Whether sending refunds is enabled. This is `true` by default.
          sig { returns(T::Boolean) }
          attr_reader :refund_management
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        attr_reader :enabled
        # Attribute for field features
        sig { returns(Features) }
        attr_reader :features
      end
      class PayoutDetails < Stripe::StripeObject
        class Features < Stripe::StripeObject; end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        attr_reader :enabled
        # Attribute for field features
        sig { returns(Features) }
        attr_reader :features
      end
      class PayoutReconciliationReport < Stripe::StripeObject
        class Features < Stripe::StripeObject; end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        attr_reader :enabled
        # Attribute for field features
        sig { returns(Features) }
        attr_reader :features
      end
      class Payouts < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
          sig { returns(T::Boolean) }
          attr_reader :disable_stripe_user_authentication
          # Whether to allow payout schedule to be changed. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
          sig { returns(T::Boolean) }
          attr_reader :edit_payout_schedule
          # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
          sig { returns(T::Boolean) }
          attr_reader :external_account_collection
          # Whether to allow creation of instant payouts. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
          sig { returns(T::Boolean) }
          attr_reader :instant_payouts
          # Whether to allow creation of standard payouts. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
          sig { returns(T::Boolean) }
          attr_reader :standard_payouts
        end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        attr_reader :enabled
        # Attribute for field features
        sig { returns(Features) }
        attr_reader :features
      end
      class PayoutsList < Stripe::StripeObject
        class Features < Stripe::StripeObject; end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        attr_reader :enabled
        # Attribute for field features
        sig { returns(Features) }
        attr_reader :features
      end
      class TaxRegistrations < Stripe::StripeObject
        class Features < Stripe::StripeObject; end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        attr_reader :enabled
        # Attribute for field features
        sig { returns(Features) }
        attr_reader :features
      end
      class TaxSettings < Stripe::StripeObject
        class Features < Stripe::StripeObject; end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        attr_reader :enabled
        # Attribute for field features
        sig { returns(Features) }
        attr_reader :features
      end
      # Attribute for field account_management
      sig { returns(AccountManagement) }
      attr_reader :account_management
      # Attribute for field account_onboarding
      sig { returns(AccountOnboarding) }
      attr_reader :account_onboarding
      # Attribute for field balance_report
      sig { returns(BalanceReport) }
      attr_reader :balance_report
      # Attribute for field balances
      sig { returns(Balances) }
      attr_reader :balances
      # Attribute for field disputes_list
      sig { returns(DisputesList) }
      attr_reader :disputes_list
      # Attribute for field documents
      sig { returns(Documents) }
      attr_reader :documents
      # Attribute for field financial_account
      sig { returns(FinancialAccount) }
      attr_reader :financial_account
      # Attribute for field financial_account_transactions
      sig { returns(FinancialAccountTransactions) }
      attr_reader :financial_account_transactions
      # Attribute for field instant_payouts_promotion
      sig { returns(InstantPayoutsPromotion) }
      attr_reader :instant_payouts_promotion
      # Attribute for field issuing_card
      sig { returns(IssuingCard) }
      attr_reader :issuing_card
      # Attribute for field issuing_cards_list
      sig { returns(IssuingCardsList) }
      attr_reader :issuing_cards_list
      # Attribute for field notification_banner
      sig { returns(NotificationBanner) }
      attr_reader :notification_banner
      # Attribute for field payment_details
      sig { returns(PaymentDetails) }
      attr_reader :payment_details
      # Attribute for field payment_disputes
      sig { returns(PaymentDisputes) }
      attr_reader :payment_disputes
      # Attribute for field payments
      sig { returns(Payments) }
      attr_reader :payments
      # Attribute for field payout_details
      sig { returns(PayoutDetails) }
      attr_reader :payout_details
      # Attribute for field payout_reconciliation_report
      sig { returns(PayoutReconciliationReport) }
      attr_reader :payout_reconciliation_report
      # Attribute for field payouts
      sig { returns(Payouts) }
      attr_reader :payouts
      # Attribute for field payouts_list
      sig { returns(PayoutsList) }
      attr_reader :payouts_list
      # Attribute for field tax_registrations
      sig { returns(TaxRegistrations) }
      attr_reader :tax_registrations
      # Attribute for field tax_settings
      sig { returns(TaxSettings) }
      attr_reader :tax_settings
    end
    # The ID of the account the AccountSession was created for
    sig { returns(String) }
    attr_reader :account
    # The client secret of this AccountSession. Used on the client to set up secure access to the given `account`.
    #
    # The client secret can be used to provide access to `account` from your frontend. It should not be stored, logged, or exposed to anyone other than the connected account. Make sure that you have TLS enabled on any page that includes the client secret.
    #
    # Refer to our docs to [setup Connect embedded components](https://stripe.com/docs/connect/get-started-connect-embedded-components) and learn about how `client_secret` should be handled.
    sig { returns(String) }
    attr_reader :client_secret
    # Attribute for field components
    sig { returns(Components) }
    attr_reader :components
    # The timestamp at which this AccountSession will expire.
    sig { returns(Integer) }
    attr_reader :expires_at
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    class CreateParams < Stripe::RequestParams
      class Components < Stripe::RequestParams
        class AccountManagement < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :disable_stripe_user_authentication
            # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :external_account_collection
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
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::AccountManagement::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::AccountManagement::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class AccountOnboarding < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :disable_stripe_user_authentication
            # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :external_account_collection
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
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::AccountOnboarding::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::AccountOnboarding::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class BalanceReport < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          # An empty list, because this embedded component has no features.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::BalanceReport::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::BalanceReport::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class Balances < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :disable_stripe_user_authentication
            # Whether to allow payout schedule to be changed. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :edit_payout_schedule
            # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :external_account_collection
            # Whether to allow creation of instant payouts. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :instant_payouts
            # Whether to allow creation of standard payouts. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :standard_payouts
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
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::Balances::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::Balances::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class DisputesList < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether to allow capturing and cancelling payment intents. This is `true` by default.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :capture_payments
            # Whether connected accounts can manage destination charges that are created on behalf of them. This is `false` by default.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :destination_on_behalf_of_charge_management
            # Whether responding to disputes is enabled, including submitting evidence and accepting disputes. This is `true` by default.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :dispute_management
            # Whether sending refunds is enabled. This is `true` by default.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :refund_management
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
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::DisputesList::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::DisputesList::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class Documents < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          # An empty list, because this embedded component has no features.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::Documents::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::Documents::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class FinancialAccount < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :disable_stripe_user_authentication
            # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :external_account_collection
            # Whether to allow sending money.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :send_money
            # Whether to allow transferring balance.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :transfer_balance
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
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::FinancialAccount::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::FinancialAccount::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class FinancialAccountTransactions < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether to allow card spend dispute management features.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :card_spend_dispute_management
            sig { params(card_spend_dispute_management: T.nilable(T::Boolean)).void }
            def initialize(card_spend_dispute_management: nil); end
          end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::FinancialAccountTransactions::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::FinancialAccountTransactions::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class InstantPayoutsPromotion < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :disable_stripe_user_authentication
            # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :external_account_collection
            # Whether to allow creation of instant payouts. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :instant_payouts
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
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::InstantPayoutsPromotion::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::InstantPayoutsPromotion::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class IssuingCard < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether to allow card management features.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :card_management
            # Whether to allow card spend dispute management features.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :card_spend_dispute_management
            # Whether to allow cardholder management features.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :cardholder_management
            # Whether to allow spend control management features.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :spend_control_management
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
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::IssuingCard::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::IssuingCard::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class IssuingCardsList < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether to allow card management features.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :card_management
            # Whether to allow card spend dispute management features.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :card_spend_dispute_management
            # Whether to allow cardholder management features.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :cardholder_management
            # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :disable_stripe_user_authentication
            # Whether to allow spend control management features.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :spend_control_management
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
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::IssuingCardsList::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::IssuingCardsList::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class NotificationBanner < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :disable_stripe_user_authentication
            # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :external_account_collection
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
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::NotificationBanner::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::NotificationBanner::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class PaymentDetails < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether to allow capturing and cancelling payment intents. This is `true` by default.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :capture_payments
            # Whether connected accounts can manage destination charges that are created on behalf of them. This is `false` by default.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :destination_on_behalf_of_charge_management
            # Whether responding to disputes is enabled, including submitting evidence and accepting disputes. This is `true` by default.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :dispute_management
            # Whether sending refunds is enabled. This is `true` by default.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :refund_management
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
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PaymentDetails::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::PaymentDetails::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class PaymentDisputes < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether connected accounts can manage destination charges that are created on behalf of them. This is `false` by default.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :destination_on_behalf_of_charge_management
            # Whether responding to disputes is enabled, including submitting evidence and accepting disputes. This is `true` by default.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :dispute_management
            # Whether sending refunds is enabled. This is `true` by default.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :refund_management
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
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PaymentDisputes::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::PaymentDisputes::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class Payments < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether to allow capturing and cancelling payment intents. This is `true` by default.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :capture_payments
            # Whether connected accounts can manage destination charges that are created on behalf of them. This is `false` by default.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :destination_on_behalf_of_charge_management
            # Whether responding to disputes is enabled, including submitting evidence and accepting disputes. This is `true` by default.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :dispute_management
            # Whether sending refunds is enabled. This is `true` by default.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :refund_management
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
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::Payments::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::Payments::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class PayoutDetails < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          # An empty list, because this embedded component has no features.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutDetails::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutDetails::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class PayoutReconciliationReport < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          # An empty list, because this embedded component has no features.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutReconciliationReport::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutReconciliationReport::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class Payouts < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :disable_stripe_user_authentication
            # Whether to allow payout schedule to be changed. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :edit_payout_schedule
            # Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :external_account_collection
            # Whether to allow creation of instant payouts. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :instant_payouts
            # Whether to allow creation of standard payouts. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :standard_payouts
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
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::Payouts::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::Payouts::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class PayoutsList < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          # An empty list, because this embedded component has no features.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutsList::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutsList::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class TaxRegistrations < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          # An empty list, because this embedded component has no features.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::TaxRegistrations::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::TaxRegistrations::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class TaxSettings < Stripe::RequestParams
          class Features < Stripe::RequestParams; end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          # An empty list, because this embedded component has no features.
          sig {
            returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::TaxSettings::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSession::CreateParams::Components::TaxSettings::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        # Configuration for the [account management](/connect/supported-embedded-components/account-management/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::AccountManagement))
         }
        attr_accessor :account_management
        # Configuration for the [account onboarding](/connect/supported-embedded-components/account-onboarding/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::AccountOnboarding))
         }
        attr_accessor :account_onboarding
        # Configuration for the [balance report](/connect/supported-embedded-components/financial-reports#balance-report) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::BalanceReport))
         }
        attr_accessor :balance_report
        # Configuration for the [balances](/connect/supported-embedded-components/balances/) embedded component.
        sig { returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::Balances)) }
        attr_accessor :balances
        # Configuration for the [disputes list](/connect/supported-embedded-components/disputes-list/) embedded component.
        sig { returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::DisputesList)) }
        attr_accessor :disputes_list
        # Configuration for the [documents](/connect/supported-embedded-components/documents/) embedded component.
        sig { returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::Documents)) }
        attr_accessor :documents
        # Configuration for the [financial account](/connect/supported-embedded-components/financial-account/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::FinancialAccount))
         }
        attr_accessor :financial_account
        # Configuration for the [financial account transactions](/connect/supported-embedded-components/financial-account-transactions/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::FinancialAccountTransactions))
         }
        attr_accessor :financial_account_transactions
        # Configuration for the [instant payouts promotion](/connect/supported-embedded-components/instant-payouts-promotion/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::InstantPayoutsPromotion))
         }
        attr_accessor :instant_payouts_promotion
        # Configuration for the [issuing card](/connect/supported-embedded-components/issuing-card/) embedded component.
        sig { returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::IssuingCard)) }
        attr_accessor :issuing_card
        # Configuration for the [issuing cards list](/connect/supported-embedded-components/issuing-cards-list/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::IssuingCardsList))
         }
        attr_accessor :issuing_cards_list
        # Configuration for the [notification banner](/connect/supported-embedded-components/notification-banner/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::NotificationBanner))
         }
        attr_accessor :notification_banner
        # Configuration for the [payment details](/connect/supported-embedded-components/payment-details/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PaymentDetails))
         }
        attr_accessor :payment_details
        # Configuration for the [payment disputes](/connect/supported-embedded-components/payment-disputes/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PaymentDisputes))
         }
        attr_accessor :payment_disputes
        # Configuration for the [payments](/connect/supported-embedded-components/payments/) embedded component.
        sig { returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::Payments)) }
        attr_accessor :payments
        # Configuration for the [payout details](/connect/supported-embedded-components/payout-details/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutDetails))
         }
        attr_accessor :payout_details
        # Configuration for the [payout reconciliation report](/connect/supported-embedded-components/financial-reports#payout-reconciliation-report) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutReconciliationReport))
         }
        attr_accessor :payout_reconciliation_report
        # Configuration for the [payouts](/connect/supported-embedded-components/payouts/) embedded component.
        sig { returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::Payouts)) }
        attr_accessor :payouts
        # Configuration for the [payouts list](/connect/supported-embedded-components/payouts-list/) embedded component.
        sig { returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutsList)) }
        attr_accessor :payouts_list
        # Configuration for the [tax registrations](/connect/supported-embedded-components/tax-registrations/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::TaxRegistrations))
         }
        attr_accessor :tax_registrations
        # Configuration for the [tax settings](/connect/supported-embedded-components/tax-settings/) embedded component.
        sig { returns(T.nilable(::Stripe::AccountSession::CreateParams::Components::TaxSettings)) }
        attr_accessor :tax_settings
        sig {
          params(account_management: T.nilable(::Stripe::AccountSession::CreateParams::Components::AccountManagement), account_onboarding: T.nilable(::Stripe::AccountSession::CreateParams::Components::AccountOnboarding), balance_report: T.nilable(::Stripe::AccountSession::CreateParams::Components::BalanceReport), balances: T.nilable(::Stripe::AccountSession::CreateParams::Components::Balances), disputes_list: T.nilable(::Stripe::AccountSession::CreateParams::Components::DisputesList), documents: T.nilable(::Stripe::AccountSession::CreateParams::Components::Documents), financial_account: T.nilable(::Stripe::AccountSession::CreateParams::Components::FinancialAccount), financial_account_transactions: T.nilable(::Stripe::AccountSession::CreateParams::Components::FinancialAccountTransactions), instant_payouts_promotion: T.nilable(::Stripe::AccountSession::CreateParams::Components::InstantPayoutsPromotion), issuing_card: T.nilable(::Stripe::AccountSession::CreateParams::Components::IssuingCard), issuing_cards_list: T.nilable(::Stripe::AccountSession::CreateParams::Components::IssuingCardsList), notification_banner: T.nilable(::Stripe::AccountSession::CreateParams::Components::NotificationBanner), payment_details: T.nilable(::Stripe::AccountSession::CreateParams::Components::PaymentDetails), payment_disputes: T.nilable(::Stripe::AccountSession::CreateParams::Components::PaymentDisputes), payments: T.nilable(::Stripe::AccountSession::CreateParams::Components::Payments), payout_details: T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutDetails), payout_reconciliation_report: T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutReconciliationReport), payouts: T.nilable(::Stripe::AccountSession::CreateParams::Components::Payouts), payouts_list: T.nilable(::Stripe::AccountSession::CreateParams::Components::PayoutsList), tax_registrations: T.nilable(::Stripe::AccountSession::CreateParams::Components::TaxRegistrations), tax_settings: T.nilable(::Stripe::AccountSession::CreateParams::Components::TaxSettings)).void
         }
        def initialize(
          account_management: nil,
          account_onboarding: nil,
          balance_report: nil,
          balances: nil,
          disputes_list: nil,
          documents: nil,
          financial_account: nil,
          financial_account_transactions: nil,
          instant_payouts_promotion: nil,
          issuing_card: nil,
          issuing_cards_list: nil,
          notification_banner: nil,
          payment_details: nil,
          payment_disputes: nil,
          payments: nil,
          payout_details: nil,
          payout_reconciliation_report: nil,
          payouts: nil,
          payouts_list: nil,
          tax_registrations: nil,
          tax_settings: nil
        ); end
      end
      # The identifier of the account to create an Account Session for.
      sig { returns(String) }
      attr_accessor :account
      # Each key of the dictionary represents an embedded component, and each embedded component maps to its configuration (e.g. whether it has been enabled or not).
      sig { returns(::Stripe::AccountSession::CreateParams::Components) }
      attr_accessor :components
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
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