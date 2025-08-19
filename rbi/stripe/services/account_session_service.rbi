# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class AccountSessionService < StripeService
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::AccountManagement::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::AccountManagement::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::AccountOnboarding::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::AccountOnboarding::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::BalanceReport::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::BalanceReport::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Balances::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Balances::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::DisputesList::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::DisputesList::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Documents::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Documents::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::FinancialAccount::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::FinancialAccount::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::FinancialAccountTransactions::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::FinancialAccountTransactions::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::InstantPayoutsPromotion::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::InstantPayoutsPromotion::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::IssuingCard::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::IssuingCard::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::IssuingCardsList::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::IssuingCardsList::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::NotificationBanner::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::NotificationBanner::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PaymentDetails::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PaymentDetails::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PaymentDisputes::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PaymentDisputes::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Payments::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Payments::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutDetails::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutDetails::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutReconciliationReport::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutReconciliationReport::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Payouts::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Payouts::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutsList::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutsList::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::TaxRegistrations::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::TaxRegistrations::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::TaxSettings::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::TaxSettings::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        # Configuration for the [account management](/connect/supported-embedded-components/account-management/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::AccountManagement))
         }
        attr_accessor :account_management
        # Configuration for the [account onboarding](/connect/supported-embedded-components/account-onboarding/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::AccountOnboarding))
         }
        attr_accessor :account_onboarding
        # Configuration for the [balance report](/connect/supported-embedded-components/financial-reports#balance-report) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::BalanceReport))
         }
        attr_accessor :balance_report
        # Configuration for the [balances](/connect/supported-embedded-components/balances/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Balances))
         }
        attr_accessor :balances
        # Configuration for the [disputes list](/connect/supported-embedded-components/disputes-list/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::DisputesList))
         }
        attr_accessor :disputes_list
        # Configuration for the [documents](/connect/supported-embedded-components/documents/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Documents))
         }
        attr_accessor :documents
        # Configuration for the [financial account](/connect/supported-embedded-components/financial-account/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::FinancialAccount))
         }
        attr_accessor :financial_account
        # Configuration for the [financial account transactions](/connect/supported-embedded-components/financial-account-transactions/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::FinancialAccountTransactions))
         }
        attr_accessor :financial_account_transactions
        # Configuration for the [instant payouts promotion](/connect/supported-embedded-components/instant-payouts-promotion/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::InstantPayoutsPromotion))
         }
        attr_accessor :instant_payouts_promotion
        # Configuration for the [issuing card](/connect/supported-embedded-components/issuing-card/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::IssuingCard))
         }
        attr_accessor :issuing_card
        # Configuration for the [issuing cards list](/connect/supported-embedded-components/issuing-cards-list/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::IssuingCardsList))
         }
        attr_accessor :issuing_cards_list
        # Configuration for the [notification banner](/connect/supported-embedded-components/notification-banner/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::NotificationBanner))
         }
        attr_accessor :notification_banner
        # Configuration for the [payment details](/connect/supported-embedded-components/payment-details/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PaymentDetails))
         }
        attr_accessor :payment_details
        # Configuration for the [payment disputes](/connect/supported-embedded-components/payment-disputes/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PaymentDisputes))
         }
        attr_accessor :payment_disputes
        # Configuration for the [payments](/connect/supported-embedded-components/payments/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Payments))
         }
        attr_accessor :payments
        # Configuration for the [payout details](/connect/supported-embedded-components/payout-details/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutDetails))
         }
        attr_accessor :payout_details
        # Configuration for the [payout reconciliation report](/connect/supported-embedded-components/financial-reports#payout-reconciliation-report) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutReconciliationReport))
         }
        attr_accessor :payout_reconciliation_report
        # Configuration for the [payouts](/connect/supported-embedded-components/payouts/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Payouts))
         }
        attr_accessor :payouts
        # Configuration for the [payouts list](/connect/supported-embedded-components/payouts-list/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutsList))
         }
        attr_accessor :payouts_list
        # Configuration for the [tax registrations](/connect/supported-embedded-components/tax-registrations/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::TaxRegistrations))
         }
        attr_accessor :tax_registrations
        # Configuration for the [tax settings](/connect/supported-embedded-components/tax-settings/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::TaxSettings))
         }
        attr_accessor :tax_settings
        sig {
          params(account_management: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::AccountManagement), account_onboarding: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::AccountOnboarding), balance_report: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::BalanceReport), balances: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Balances), disputes_list: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::DisputesList), documents: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Documents), financial_account: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::FinancialAccount), financial_account_transactions: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::FinancialAccountTransactions), instant_payouts_promotion: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::InstantPayoutsPromotion), issuing_card: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::IssuingCard), issuing_cards_list: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::IssuingCardsList), notification_banner: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::NotificationBanner), payment_details: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PaymentDetails), payment_disputes: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PaymentDisputes), payments: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Payments), payout_details: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutDetails), payout_reconciliation_report: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutReconciliationReport), payouts: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Payouts), payouts_list: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutsList), tax_registrations: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::TaxRegistrations), tax_settings: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::TaxSettings)).void
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
      sig { returns(::Stripe::AccountSessionService::CreateParams::Components) }
      attr_accessor :components
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig {
        params(account: String, components: ::Stripe::AccountSessionService::CreateParams::Components, expand: T.nilable(T::Array[String])).void
       }
      def initialize(account: nil, components: nil, expand: nil); end
    end
    # Creates a AccountSession object that includes a single-use token that the platform can use on their front-end to grant client-side API access.
    sig {
      params(params: T.any(::Stripe::AccountSessionService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::AccountSession)
     }
    def create(params = {}, opts = {}); end
  end
end