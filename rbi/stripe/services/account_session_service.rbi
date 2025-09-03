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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::AccountManagement::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::AccountManagement::Features)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::AccountManagement::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::AccountManagement::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::AccountOnboarding::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::AccountOnboarding::Features)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::AccountOnboarding::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::AccountOnboarding::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::BalanceReport::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::BalanceReport::Features)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::BalanceReport::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::BalanceReport::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Balances::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Balances::Features)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Balances::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Balances::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::DisputesList::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::DisputesList::Features)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::DisputesList::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::DisputesList::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Documents::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Documents::Features)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Documents::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Documents::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::FinancialAccount::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::FinancialAccount::Features)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::FinancialAccount::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::FinancialAccount::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::FinancialAccountTransactions::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::FinancialAccountTransactions::Features)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::FinancialAccountTransactions::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::FinancialAccountTransactions::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::InstantPayoutsPromotion::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::InstantPayoutsPromotion::Features)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::InstantPayoutsPromotion::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::InstantPayoutsPromotion::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::IssuingCard::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::IssuingCard::Features)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::IssuingCard::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::IssuingCard::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::IssuingCardsList::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::IssuingCardsList::Features)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::IssuingCardsList::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::IssuingCardsList::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::NotificationBanner::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::NotificationBanner::Features)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::NotificationBanner::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::NotificationBanner::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PaymentDetails::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PaymentDetails::Features)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PaymentDetails::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PaymentDetails::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PaymentDisputes::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PaymentDisputes::Features)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PaymentDisputes::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PaymentDisputes::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Payments::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Payments::Features)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Payments::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Payments::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutDetails::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutDetails::Features)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutDetails::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutDetails::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutReconciliationReport::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutReconciliationReport::Features)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutReconciliationReport::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutReconciliationReport::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Payouts::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Payouts::Features)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Payouts::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Payouts::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutsList::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutsList::Features)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutsList::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutsList::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::TaxRegistrations::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::TaxRegistrations::Features)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::TaxRegistrations::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::TaxRegistrations::Features)).void
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
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::TaxSettings::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::TaxSettings::Features)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::TaxSettings::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::TaxSettings::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        # Configuration for the [account management](/connect/supported-embedded-components/account-management/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::AccountManagement))
         }
        def account_management; end
        sig {
          params(_account_management: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::AccountManagement)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::AccountManagement))
         }
        def account_management=(_account_management); end
        # Configuration for the [account onboarding](/connect/supported-embedded-components/account-onboarding/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::AccountOnboarding))
         }
        def account_onboarding; end
        sig {
          params(_account_onboarding: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::AccountOnboarding)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::AccountOnboarding))
         }
        def account_onboarding=(_account_onboarding); end
        # Configuration for the [balance report](/connect/supported-embedded-components/financial-reports#balance-report) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::BalanceReport))
         }
        def balance_report; end
        sig {
          params(_balance_report: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::BalanceReport)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::BalanceReport))
         }
        def balance_report=(_balance_report); end
        # Configuration for the [balances](/connect/supported-embedded-components/balances/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Balances))
         }
        def balances; end
        sig {
          params(_balances: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Balances)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Balances))
         }
        def balances=(_balances); end
        # Configuration for the [disputes list](/connect/supported-embedded-components/disputes-list/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::DisputesList))
         }
        def disputes_list; end
        sig {
          params(_disputes_list: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::DisputesList)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::DisputesList))
         }
        def disputes_list=(_disputes_list); end
        # Configuration for the [documents](/connect/supported-embedded-components/documents/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Documents))
         }
        def documents; end
        sig {
          params(_documents: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Documents)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Documents))
         }
        def documents=(_documents); end
        # Configuration for the [financial account](/connect/supported-embedded-components/financial-account/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::FinancialAccount))
         }
        def financial_account; end
        sig {
          params(_financial_account: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::FinancialAccount)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::FinancialAccount))
         }
        def financial_account=(_financial_account); end
        # Configuration for the [financial account transactions](/connect/supported-embedded-components/financial-account-transactions/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::FinancialAccountTransactions))
         }
        def financial_account_transactions; end
        sig {
          params(_financial_account_transactions: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::FinancialAccountTransactions)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::FinancialAccountTransactions))
         }
        def financial_account_transactions=(_financial_account_transactions); end
        # Configuration for the [instant payouts promotion](/connect/supported-embedded-components/instant-payouts-promotion/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::InstantPayoutsPromotion))
         }
        def instant_payouts_promotion; end
        sig {
          params(_instant_payouts_promotion: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::InstantPayoutsPromotion)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::InstantPayoutsPromotion))
         }
        def instant_payouts_promotion=(_instant_payouts_promotion); end
        # Configuration for the [issuing card](/connect/supported-embedded-components/issuing-card/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::IssuingCard))
         }
        def issuing_card; end
        sig {
          params(_issuing_card: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::IssuingCard)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::IssuingCard))
         }
        def issuing_card=(_issuing_card); end
        # Configuration for the [issuing cards list](/connect/supported-embedded-components/issuing-cards-list/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::IssuingCardsList))
         }
        def issuing_cards_list; end
        sig {
          params(_issuing_cards_list: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::IssuingCardsList)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::IssuingCardsList))
         }
        def issuing_cards_list=(_issuing_cards_list); end
        # Configuration for the [notification banner](/connect/supported-embedded-components/notification-banner/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::NotificationBanner))
         }
        def notification_banner; end
        sig {
          params(_notification_banner: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::NotificationBanner)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::NotificationBanner))
         }
        def notification_banner=(_notification_banner); end
        # Configuration for the [payment details](/connect/supported-embedded-components/payment-details/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PaymentDetails))
         }
        def payment_details; end
        sig {
          params(_payment_details: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PaymentDetails)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PaymentDetails))
         }
        def payment_details=(_payment_details); end
        # Configuration for the [payment disputes](/connect/supported-embedded-components/payment-disputes/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PaymentDisputes))
         }
        def payment_disputes; end
        sig {
          params(_payment_disputes: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PaymentDisputes)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PaymentDisputes))
         }
        def payment_disputes=(_payment_disputes); end
        # Configuration for the [payments](/connect/supported-embedded-components/payments/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Payments))
         }
        def payments; end
        sig {
          params(_payments: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Payments)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Payments))
         }
        def payments=(_payments); end
        # Configuration for the [payout details](/connect/supported-embedded-components/payout-details/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutDetails))
         }
        def payout_details; end
        sig {
          params(_payout_details: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutDetails)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutDetails))
         }
        def payout_details=(_payout_details); end
        # Configuration for the [payout reconciliation report](/connect/supported-embedded-components/financial-reports#payout-reconciliation-report) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutReconciliationReport))
         }
        def payout_reconciliation_report; end
        sig {
          params(_payout_reconciliation_report: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutReconciliationReport)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutReconciliationReport))
         }
        def payout_reconciliation_report=(_payout_reconciliation_report); end
        # Configuration for the [payouts](/connect/supported-embedded-components/payouts/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Payouts))
         }
        def payouts; end
        sig {
          params(_payouts: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Payouts)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Payouts))
         }
        def payouts=(_payouts); end
        # Configuration for the [payouts list](/connect/supported-embedded-components/payouts-list/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutsList))
         }
        def payouts_list; end
        sig {
          params(_payouts_list: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutsList)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutsList))
         }
        def payouts_list=(_payouts_list); end
        # Configuration for the [tax registrations](/connect/supported-embedded-components/tax-registrations/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::TaxRegistrations))
         }
        def tax_registrations; end
        sig {
          params(_tax_registrations: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::TaxRegistrations)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::TaxRegistrations))
         }
        def tax_registrations=(_tax_registrations); end
        # Configuration for the [tax settings](/connect/supported-embedded-components/tax-settings/) embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::TaxSettings))
         }
        def tax_settings; end
        sig {
          params(_tax_settings: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::TaxSettings)).returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::TaxSettings))
         }
        def tax_settings=(_tax_settings); end
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
      def account; end
      sig { params(_account: String).returns(String) }
      def account=(_account); end
      # Each key of the dictionary represents an embedded component, and each embedded component maps to its configuration (e.g. whether it has been enabled or not).
      sig { returns(::Stripe::AccountSessionService::CreateParams::Components) }
      def components; end
      sig {
        params(_components: ::Stripe::AccountSessionService::CreateParams::Components).returns(::Stripe::AccountSessionService::CreateParams::Components)
       }
      def components=(_components); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
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