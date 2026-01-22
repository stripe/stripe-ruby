# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class AccountSessionCreateParams < ::Stripe::RequestParams
    class Components < ::Stripe::RequestParams
      class AccountManagement < ::Stripe::RequestParams
        class Features < ::Stripe::RequestParams
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
          returns(T.nilable(AccountSessionCreateParams::Components::AccountManagement::Features))
         }
        def features; end
        sig {
          params(_features: T.nilable(AccountSessionCreateParams::Components::AccountManagement::Features)).returns(T.nilable(AccountSessionCreateParams::Components::AccountManagement::Features))
         }
        def features=(_features); end
        sig {
          params(enabled: T::Boolean, features: T.nilable(AccountSessionCreateParams::Components::AccountManagement::Features)).void
         }
        def initialize(enabled: nil, features: nil); end
      end
      class AccountOnboarding < ::Stripe::RequestParams
        class Features < ::Stripe::RequestParams
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
          returns(T.nilable(AccountSessionCreateParams::Components::AccountOnboarding::Features))
         }
        def features; end
        sig {
          params(_features: T.nilable(AccountSessionCreateParams::Components::AccountOnboarding::Features)).returns(T.nilable(AccountSessionCreateParams::Components::AccountOnboarding::Features))
         }
        def features=(_features); end
        sig {
          params(enabled: T::Boolean, features: T.nilable(AccountSessionCreateParams::Components::AccountOnboarding::Features)).void
         }
        def initialize(enabled: nil, features: nil); end
      end
      class AppInstall < ::Stripe::RequestParams
        class Features < ::Stripe::RequestParams
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
        sig { returns(T.nilable(AccountSessionCreateParams::Components::AppInstall::Features)) }
        def features; end
        sig {
          params(_features: T.nilable(AccountSessionCreateParams::Components::AppInstall::Features)).returns(T.nilable(AccountSessionCreateParams::Components::AppInstall::Features))
         }
        def features=(_features); end
        sig {
          params(enabled: T::Boolean, features: T.nilable(AccountSessionCreateParams::Components::AppInstall::Features)).void
         }
        def initialize(enabled: nil, features: nil); end
      end
      class AppViewport < ::Stripe::RequestParams
        class Features < ::Stripe::RequestParams
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
        sig { returns(T.nilable(AccountSessionCreateParams::Components::AppViewport::Features)) }
        def features; end
        sig {
          params(_features: T.nilable(AccountSessionCreateParams::Components::AppViewport::Features)).returns(T.nilable(AccountSessionCreateParams::Components::AppViewport::Features))
         }
        def features=(_features); end
        sig {
          params(enabled: T::Boolean, features: T.nilable(AccountSessionCreateParams::Components::AppViewport::Features)).void
         }
        def initialize(enabled: nil, features: nil); end
      end
      class Balances < ::Stripe::RequestParams
        class Features < ::Stripe::RequestParams
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
          # Whether instant payouts are enabled for this component.
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
        sig { returns(T.nilable(AccountSessionCreateParams::Components::Balances::Features)) }
        def features; end
        sig {
          params(_features: T.nilable(AccountSessionCreateParams::Components::Balances::Features)).returns(T.nilable(AccountSessionCreateParams::Components::Balances::Features))
         }
        def features=(_features); end
        sig {
          params(enabled: T::Boolean, features: T.nilable(AccountSessionCreateParams::Components::Balances::Features)).void
         }
        def initialize(enabled: nil, features: nil); end
      end
      class CapitalFinancing < ::Stripe::RequestParams
        class Features < ::Stripe::RequestParams; end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        sig { params(_enabled: T::Boolean).returns(T::Boolean) }
        def enabled=(_enabled); end
        # An empty list, because this embedded component has no features.
        sig {
          returns(T.nilable(AccountSessionCreateParams::Components::CapitalFinancing::Features))
         }
        def features; end
        sig {
          params(_features: T.nilable(AccountSessionCreateParams::Components::CapitalFinancing::Features)).returns(T.nilable(AccountSessionCreateParams::Components::CapitalFinancing::Features))
         }
        def features=(_features); end
        sig {
          params(enabled: T::Boolean, features: T.nilable(AccountSessionCreateParams::Components::CapitalFinancing::Features)).void
         }
        def initialize(enabled: nil, features: nil); end
      end
      class CapitalFinancingApplication < ::Stripe::RequestParams
        class Features < ::Stripe::RequestParams; end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        sig { params(_enabled: T::Boolean).returns(T::Boolean) }
        def enabled=(_enabled); end
        # An empty list, because this embedded component has no features.
        sig {
          returns(T.nilable(AccountSessionCreateParams::Components::CapitalFinancingApplication::Features))
         }
        def features; end
        sig {
          params(_features: T.nilable(AccountSessionCreateParams::Components::CapitalFinancingApplication::Features)).returns(T.nilable(AccountSessionCreateParams::Components::CapitalFinancingApplication::Features))
         }
        def features=(_features); end
        sig {
          params(enabled: T::Boolean, features: T.nilable(AccountSessionCreateParams::Components::CapitalFinancingApplication::Features)).void
         }
        def initialize(enabled: nil, features: nil); end
      end
      class CapitalFinancingPromotion < ::Stripe::RequestParams
        class Features < ::Stripe::RequestParams; end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        sig { params(_enabled: T::Boolean).returns(T::Boolean) }
        def enabled=(_enabled); end
        # An empty list, because this embedded component has no features.
        sig {
          returns(T.nilable(AccountSessionCreateParams::Components::CapitalFinancingPromotion::Features))
         }
        def features; end
        sig {
          params(_features: T.nilable(AccountSessionCreateParams::Components::CapitalFinancingPromotion::Features)).returns(T.nilable(AccountSessionCreateParams::Components::CapitalFinancingPromotion::Features))
         }
        def features=(_features); end
        sig {
          params(enabled: T::Boolean, features: T.nilable(AccountSessionCreateParams::Components::CapitalFinancingPromotion::Features)).void
         }
        def initialize(enabled: nil, features: nil); end
      end
      class CapitalOverview < ::Stripe::RequestParams
        class Features < ::Stripe::RequestParams; end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        sig { params(_enabled: T::Boolean).returns(T::Boolean) }
        def enabled=(_enabled); end
        # An empty list, because this embedded component has no features.
        sig {
          returns(T.nilable(AccountSessionCreateParams::Components::CapitalOverview::Features))
         }
        def features; end
        sig {
          params(_features: T.nilable(AccountSessionCreateParams::Components::CapitalOverview::Features)).returns(T.nilable(AccountSessionCreateParams::Components::CapitalOverview::Features))
         }
        def features=(_features); end
        sig {
          params(enabled: T::Boolean, features: T.nilable(AccountSessionCreateParams::Components::CapitalOverview::Features)).void
         }
        def initialize(enabled: nil, features: nil); end
      end
      class DisputesList < ::Stripe::RequestParams
        class Features < ::Stripe::RequestParams
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
          sig { params(_dispute_management: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
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
        sig { returns(T.nilable(AccountSessionCreateParams::Components::DisputesList::Features)) }
        def features; end
        sig {
          params(_features: T.nilable(AccountSessionCreateParams::Components::DisputesList::Features)).returns(T.nilable(AccountSessionCreateParams::Components::DisputesList::Features))
         }
        def features=(_features); end
        sig {
          params(enabled: T::Boolean, features: T.nilable(AccountSessionCreateParams::Components::DisputesList::Features)).void
         }
        def initialize(enabled: nil, features: nil); end
      end
      class Documents < ::Stripe::RequestParams
        class Features < ::Stripe::RequestParams; end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        sig { params(_enabled: T::Boolean).returns(T::Boolean) }
        def enabled=(_enabled); end
        # An empty list, because this embedded component has no features.
        sig { returns(T.nilable(AccountSessionCreateParams::Components::Documents::Features)) }
        def features; end
        sig {
          params(_features: T.nilable(AccountSessionCreateParams::Components::Documents::Features)).returns(T.nilable(AccountSessionCreateParams::Components::Documents::Features))
         }
        def features=(_features); end
        sig {
          params(enabled: T::Boolean, features: T.nilable(AccountSessionCreateParams::Components::Documents::Features)).void
         }
        def initialize(enabled: nil, features: nil); end
      end
      class ExportTaxTransactions < ::Stripe::RequestParams
        class Features < ::Stripe::RequestParams; end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        sig { params(_enabled: T::Boolean).returns(T::Boolean) }
        def enabled=(_enabled); end
        # An empty list, because this embedded component has no features.
        sig {
          returns(T.nilable(AccountSessionCreateParams::Components::ExportTaxTransactions::Features))
         }
        def features; end
        sig {
          params(_features: T.nilable(AccountSessionCreateParams::Components::ExportTaxTransactions::Features)).returns(T.nilable(AccountSessionCreateParams::Components::ExportTaxTransactions::Features))
         }
        def features=(_features); end
        sig {
          params(enabled: T::Boolean, features: T.nilable(AccountSessionCreateParams::Components::ExportTaxTransactions::Features)).void
         }
        def initialize(enabled: nil, features: nil); end
      end
      class FinancialAccount < ::Stripe::RequestParams
        class Features < ::Stripe::RequestParams
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
          returns(T.nilable(AccountSessionCreateParams::Components::FinancialAccount::Features))
         }
        def features; end
        sig {
          params(_features: T.nilable(AccountSessionCreateParams::Components::FinancialAccount::Features)).returns(T.nilable(AccountSessionCreateParams::Components::FinancialAccount::Features))
         }
        def features=(_features); end
        sig {
          params(enabled: T::Boolean, features: T.nilable(AccountSessionCreateParams::Components::FinancialAccount::Features)).void
         }
        def initialize(enabled: nil, features: nil); end
      end
      class FinancialAccountTransactions < ::Stripe::RequestParams
        class Features < ::Stripe::RequestParams
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
          returns(T.nilable(AccountSessionCreateParams::Components::FinancialAccountTransactions::Features))
         }
        def features; end
        sig {
          params(_features: T.nilable(AccountSessionCreateParams::Components::FinancialAccountTransactions::Features)).returns(T.nilable(AccountSessionCreateParams::Components::FinancialAccountTransactions::Features))
         }
        def features=(_features); end
        sig {
          params(enabled: T::Boolean, features: T.nilable(AccountSessionCreateParams::Components::FinancialAccountTransactions::Features)).void
         }
        def initialize(enabled: nil, features: nil); end
      end
      class InstantPayoutsPromotion < ::Stripe::RequestParams
        class Features < ::Stripe::RequestParams
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
          # Whether instant payouts are enabled for this component.
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
          returns(T.nilable(AccountSessionCreateParams::Components::InstantPayoutsPromotion::Features))
         }
        def features; end
        sig {
          params(_features: T.nilable(AccountSessionCreateParams::Components::InstantPayoutsPromotion::Features)).returns(T.nilable(AccountSessionCreateParams::Components::InstantPayoutsPromotion::Features))
         }
        def features=(_features); end
        sig {
          params(enabled: T::Boolean, features: T.nilable(AccountSessionCreateParams::Components::InstantPayoutsPromotion::Features)).void
         }
        def initialize(enabled: nil, features: nil); end
      end
      class IssuingCard < ::Stripe::RequestParams
        class Features < ::Stripe::RequestParams
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
        sig { returns(T.nilable(AccountSessionCreateParams::Components::IssuingCard::Features)) }
        def features; end
        sig {
          params(_features: T.nilable(AccountSessionCreateParams::Components::IssuingCard::Features)).returns(T.nilable(AccountSessionCreateParams::Components::IssuingCard::Features))
         }
        def features=(_features); end
        sig {
          params(enabled: T::Boolean, features: T.nilable(AccountSessionCreateParams::Components::IssuingCard::Features)).void
         }
        def initialize(enabled: nil, features: nil); end
      end
      class IssuingCardsList < ::Stripe::RequestParams
        class Features < ::Stripe::RequestParams
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
          returns(T.nilable(AccountSessionCreateParams::Components::IssuingCardsList::Features))
         }
        def features; end
        sig {
          params(_features: T.nilable(AccountSessionCreateParams::Components::IssuingCardsList::Features)).returns(T.nilable(AccountSessionCreateParams::Components::IssuingCardsList::Features))
         }
        def features=(_features); end
        sig {
          params(enabled: T::Boolean, features: T.nilable(AccountSessionCreateParams::Components::IssuingCardsList::Features)).void
         }
        def initialize(enabled: nil, features: nil); end
      end
      class NotificationBanner < ::Stripe::RequestParams
        class Features < ::Stripe::RequestParams
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
          returns(T.nilable(AccountSessionCreateParams::Components::NotificationBanner::Features))
         }
        def features; end
        sig {
          params(_features: T.nilable(AccountSessionCreateParams::Components::NotificationBanner::Features)).returns(T.nilable(AccountSessionCreateParams::Components::NotificationBanner::Features))
         }
        def features=(_features); end
        sig {
          params(enabled: T::Boolean, features: T.nilable(AccountSessionCreateParams::Components::NotificationBanner::Features)).void
         }
        def initialize(enabled: nil, features: nil); end
      end
      class PaymentDetails < ::Stripe::RequestParams
        class Features < ::Stripe::RequestParams
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
          sig { params(_dispute_management: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
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
        sig { returns(T.nilable(AccountSessionCreateParams::Components::PaymentDetails::Features)) }
        def features; end
        sig {
          params(_features: T.nilable(AccountSessionCreateParams::Components::PaymentDetails::Features)).returns(T.nilable(AccountSessionCreateParams::Components::PaymentDetails::Features))
         }
        def features=(_features); end
        sig {
          params(enabled: T::Boolean, features: T.nilable(AccountSessionCreateParams::Components::PaymentDetails::Features)).void
         }
        def initialize(enabled: nil, features: nil); end
      end
      class PaymentDisputes < ::Stripe::RequestParams
        class Features < ::Stripe::RequestParams
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
          sig { params(_dispute_management: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
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
          returns(T.nilable(AccountSessionCreateParams::Components::PaymentDisputes::Features))
         }
        def features; end
        sig {
          params(_features: T.nilable(AccountSessionCreateParams::Components::PaymentDisputes::Features)).returns(T.nilable(AccountSessionCreateParams::Components::PaymentDisputes::Features))
         }
        def features=(_features); end
        sig {
          params(enabled: T::Boolean, features: T.nilable(AccountSessionCreateParams::Components::PaymentDisputes::Features)).void
         }
        def initialize(enabled: nil, features: nil); end
      end
      class PaymentMethodSettings < ::Stripe::RequestParams
        class Features < ::Stripe::RequestParams; end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        sig { params(_enabled: T::Boolean).returns(T::Boolean) }
        def enabled=(_enabled); end
        # An empty list, because this embedded component has no features.
        sig {
          returns(T.nilable(AccountSessionCreateParams::Components::PaymentMethodSettings::Features))
         }
        def features; end
        sig {
          params(_features: T.nilable(AccountSessionCreateParams::Components::PaymentMethodSettings::Features)).returns(T.nilable(AccountSessionCreateParams::Components::PaymentMethodSettings::Features))
         }
        def features=(_features); end
        sig {
          params(enabled: T::Boolean, features: T.nilable(AccountSessionCreateParams::Components::PaymentMethodSettings::Features)).void
         }
        def initialize(enabled: nil, features: nil); end
      end
      class Payments < ::Stripe::RequestParams
        class Features < ::Stripe::RequestParams
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
          sig { params(_dispute_management: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
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
        sig { returns(T.nilable(AccountSessionCreateParams::Components::Payments::Features)) }
        def features; end
        sig {
          params(_features: T.nilable(AccountSessionCreateParams::Components::Payments::Features)).returns(T.nilable(AccountSessionCreateParams::Components::Payments::Features))
         }
        def features=(_features); end
        sig {
          params(enabled: T::Boolean, features: T.nilable(AccountSessionCreateParams::Components::Payments::Features)).void
         }
        def initialize(enabled: nil, features: nil); end
      end
      class PayoutDetails < ::Stripe::RequestParams
        class Features < ::Stripe::RequestParams; end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        sig { params(_enabled: T::Boolean).returns(T::Boolean) }
        def enabled=(_enabled); end
        # An empty list, because this embedded component has no features.
        sig { returns(T.nilable(AccountSessionCreateParams::Components::PayoutDetails::Features)) }
        def features; end
        sig {
          params(_features: T.nilable(AccountSessionCreateParams::Components::PayoutDetails::Features)).returns(T.nilable(AccountSessionCreateParams::Components::PayoutDetails::Features))
         }
        def features=(_features); end
        sig {
          params(enabled: T::Boolean, features: T.nilable(AccountSessionCreateParams::Components::PayoutDetails::Features)).void
         }
        def initialize(enabled: nil, features: nil); end
      end
      class Payouts < ::Stripe::RequestParams
        class Features < ::Stripe::RequestParams
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
          # Whether instant payouts are enabled for this component.
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
        sig { returns(T.nilable(AccountSessionCreateParams::Components::Payouts::Features)) }
        def features; end
        sig {
          params(_features: T.nilable(AccountSessionCreateParams::Components::Payouts::Features)).returns(T.nilable(AccountSessionCreateParams::Components::Payouts::Features))
         }
        def features=(_features); end
        sig {
          params(enabled: T::Boolean, features: T.nilable(AccountSessionCreateParams::Components::Payouts::Features)).void
         }
        def initialize(enabled: nil, features: nil); end
      end
      class PayoutsList < ::Stripe::RequestParams
        class Features < ::Stripe::RequestParams; end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        sig { params(_enabled: T::Boolean).returns(T::Boolean) }
        def enabled=(_enabled); end
        # An empty list, because this embedded component has no features.
        sig { returns(T.nilable(AccountSessionCreateParams::Components::PayoutsList::Features)) }
        def features; end
        sig {
          params(_features: T.nilable(AccountSessionCreateParams::Components::PayoutsList::Features)).returns(T.nilable(AccountSessionCreateParams::Components::PayoutsList::Features))
         }
        def features=(_features); end
        sig {
          params(enabled: T::Boolean, features: T.nilable(AccountSessionCreateParams::Components::PayoutsList::Features)).void
         }
        def initialize(enabled: nil, features: nil); end
      end
      class ProductTaxCodeSelector < ::Stripe::RequestParams
        class Features < ::Stripe::RequestParams; end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        sig { params(_enabled: T::Boolean).returns(T::Boolean) }
        def enabled=(_enabled); end
        # An empty list, because this embedded component has no features.
        sig {
          returns(T.nilable(AccountSessionCreateParams::Components::ProductTaxCodeSelector::Features))
         }
        def features; end
        sig {
          params(_features: T.nilable(AccountSessionCreateParams::Components::ProductTaxCodeSelector::Features)).returns(T.nilable(AccountSessionCreateParams::Components::ProductTaxCodeSelector::Features))
         }
        def features=(_features); end
        sig {
          params(enabled: T::Boolean, features: T.nilable(AccountSessionCreateParams::Components::ProductTaxCodeSelector::Features)).void
         }
        def initialize(enabled: nil, features: nil); end
      end
      class Recipients < ::Stripe::RequestParams
        class Features < ::Stripe::RequestParams
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
        sig { returns(T.nilable(AccountSessionCreateParams::Components::Recipients::Features)) }
        def features; end
        sig {
          params(_features: T.nilable(AccountSessionCreateParams::Components::Recipients::Features)).returns(T.nilable(AccountSessionCreateParams::Components::Recipients::Features))
         }
        def features=(_features); end
        sig {
          params(enabled: T::Boolean, features: T.nilable(AccountSessionCreateParams::Components::Recipients::Features)).void
         }
        def initialize(enabled: nil, features: nil); end
      end
      class ReportingChart < ::Stripe::RequestParams
        class Features < ::Stripe::RequestParams; end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        sig { params(_enabled: T::Boolean).returns(T::Boolean) }
        def enabled=(_enabled); end
        # An empty list, because this embedded component has no features.
        sig { returns(T.nilable(AccountSessionCreateParams::Components::ReportingChart::Features)) }
        def features; end
        sig {
          params(_features: T.nilable(AccountSessionCreateParams::Components::ReportingChart::Features)).returns(T.nilable(AccountSessionCreateParams::Components::ReportingChart::Features))
         }
        def features=(_features); end
        sig {
          params(enabled: T::Boolean, features: T.nilable(AccountSessionCreateParams::Components::ReportingChart::Features)).void
         }
        def initialize(enabled: nil, features: nil); end
      end
      class TaxRegistrations < ::Stripe::RequestParams
        class Features < ::Stripe::RequestParams; end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        sig { params(_enabled: T::Boolean).returns(T::Boolean) }
        def enabled=(_enabled); end
        # An empty list, because this embedded component has no features.
        sig {
          returns(T.nilable(AccountSessionCreateParams::Components::TaxRegistrations::Features))
         }
        def features; end
        sig {
          params(_features: T.nilable(AccountSessionCreateParams::Components::TaxRegistrations::Features)).returns(T.nilable(AccountSessionCreateParams::Components::TaxRegistrations::Features))
         }
        def features=(_features); end
        sig {
          params(enabled: T::Boolean, features: T.nilable(AccountSessionCreateParams::Components::TaxRegistrations::Features)).void
         }
        def initialize(enabled: nil, features: nil); end
      end
      class TaxSettings < ::Stripe::RequestParams
        class Features < ::Stripe::RequestParams; end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        sig { params(_enabled: T::Boolean).returns(T::Boolean) }
        def enabled=(_enabled); end
        # An empty list, because this embedded component has no features.
        sig { returns(T.nilable(AccountSessionCreateParams::Components::TaxSettings::Features)) }
        def features; end
        sig {
          params(_features: T.nilable(AccountSessionCreateParams::Components::TaxSettings::Features)).returns(T.nilable(AccountSessionCreateParams::Components::TaxSettings::Features))
         }
        def features=(_features); end
        sig {
          params(enabled: T::Boolean, features: T.nilable(AccountSessionCreateParams::Components::TaxSettings::Features)).void
         }
        def initialize(enabled: nil, features: nil); end
      end
      class TaxThresholdMonitoring < ::Stripe::RequestParams
        class Features < ::Stripe::RequestParams; end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        sig { params(_enabled: T::Boolean).returns(T::Boolean) }
        def enabled=(_enabled); end
        # An empty list, because this embedded component has no features.
        sig {
          returns(T.nilable(AccountSessionCreateParams::Components::TaxThresholdMonitoring::Features))
         }
        def features; end
        sig {
          params(_features: T.nilable(AccountSessionCreateParams::Components::TaxThresholdMonitoring::Features)).returns(T.nilable(AccountSessionCreateParams::Components::TaxThresholdMonitoring::Features))
         }
        def features=(_features); end
        sig {
          params(enabled: T::Boolean, features: T.nilable(AccountSessionCreateParams::Components::TaxThresholdMonitoring::Features)).void
         }
        def initialize(enabled: nil, features: nil); end
      end
      # Configuration for the [account management](/connect/supported-embedded-components/account-management/) embedded component.
      sig { returns(T.nilable(AccountSessionCreateParams::Components::AccountManagement)) }
      def account_management; end
      sig {
        params(_account_management: T.nilable(AccountSessionCreateParams::Components::AccountManagement)).returns(T.nilable(AccountSessionCreateParams::Components::AccountManagement))
       }
      def account_management=(_account_management); end
      # Configuration for the [account onboarding](/connect/supported-embedded-components/account-onboarding/) embedded component.
      sig { returns(T.nilable(AccountSessionCreateParams::Components::AccountOnboarding)) }
      def account_onboarding; end
      sig {
        params(_account_onboarding: T.nilable(AccountSessionCreateParams::Components::AccountOnboarding)).returns(T.nilable(AccountSessionCreateParams::Components::AccountOnboarding))
       }
      def account_onboarding=(_account_onboarding); end
      # Configuration for the [app install](/connect/supported-embedded-components/app-install/) embedded component.
      sig { returns(T.nilable(AccountSessionCreateParams::Components::AppInstall)) }
      def app_install; end
      sig {
        params(_app_install: T.nilable(AccountSessionCreateParams::Components::AppInstall)).returns(T.nilable(AccountSessionCreateParams::Components::AppInstall))
       }
      def app_install=(_app_install); end
      # Configuration for the [app viewport](/connect/supported-embedded-components/app-viewport/) embedded component.
      sig { returns(T.nilable(AccountSessionCreateParams::Components::AppViewport)) }
      def app_viewport; end
      sig {
        params(_app_viewport: T.nilable(AccountSessionCreateParams::Components::AppViewport)).returns(T.nilable(AccountSessionCreateParams::Components::AppViewport))
       }
      def app_viewport=(_app_viewport); end
      # Configuration for the [balances](/connect/supported-embedded-components/balances/) embedded component.
      sig { returns(T.nilable(AccountSessionCreateParams::Components::Balances)) }
      def balances; end
      sig {
        params(_balances: T.nilable(AccountSessionCreateParams::Components::Balances)).returns(T.nilable(AccountSessionCreateParams::Components::Balances))
       }
      def balances=(_balances); end
      # Configuration for the [Capital financing](/connect/supported-embedded-components/capital-financing/) embedded component.
      sig { returns(T.nilable(AccountSessionCreateParams::Components::CapitalFinancing)) }
      def capital_financing; end
      sig {
        params(_capital_financing: T.nilable(AccountSessionCreateParams::Components::CapitalFinancing)).returns(T.nilable(AccountSessionCreateParams::Components::CapitalFinancing))
       }
      def capital_financing=(_capital_financing); end
      # Configuration for the [Capital financing application](/connect/supported-embedded-components/capital-financing-application/) embedded component.
      sig {
        returns(T.nilable(AccountSessionCreateParams::Components::CapitalFinancingApplication))
       }
      def capital_financing_application; end
      sig {
        params(_capital_financing_application: T.nilable(AccountSessionCreateParams::Components::CapitalFinancingApplication)).returns(T.nilable(AccountSessionCreateParams::Components::CapitalFinancingApplication))
       }
      def capital_financing_application=(_capital_financing_application); end
      # Configuration for the [Capital financing promotion](/connect/supported-embedded-components/capital-financing-promotion/) embedded component.
      sig { returns(T.nilable(AccountSessionCreateParams::Components::CapitalFinancingPromotion)) }
      def capital_financing_promotion; end
      sig {
        params(_capital_financing_promotion: T.nilable(AccountSessionCreateParams::Components::CapitalFinancingPromotion)).returns(T.nilable(AccountSessionCreateParams::Components::CapitalFinancingPromotion))
       }
      def capital_financing_promotion=(_capital_financing_promotion); end
      # Configuration for the [Capital overview](/connect/supported-embedded-components/capital-overview/) embedded component.
      sig { returns(T.nilable(AccountSessionCreateParams::Components::CapitalOverview)) }
      def capital_overview; end
      sig {
        params(_capital_overview: T.nilable(AccountSessionCreateParams::Components::CapitalOverview)).returns(T.nilable(AccountSessionCreateParams::Components::CapitalOverview))
       }
      def capital_overview=(_capital_overview); end
      # Configuration for the [disputes list](/connect/supported-embedded-components/disputes-list/) embedded component.
      sig { returns(T.nilable(AccountSessionCreateParams::Components::DisputesList)) }
      def disputes_list; end
      sig {
        params(_disputes_list: T.nilable(AccountSessionCreateParams::Components::DisputesList)).returns(T.nilable(AccountSessionCreateParams::Components::DisputesList))
       }
      def disputes_list=(_disputes_list); end
      # Configuration for the [documents](/connect/supported-embedded-components/documents/) embedded component.
      sig { returns(T.nilable(AccountSessionCreateParams::Components::Documents)) }
      def documents; end
      sig {
        params(_documents: T.nilable(AccountSessionCreateParams::Components::Documents)).returns(T.nilable(AccountSessionCreateParams::Components::Documents))
       }
      def documents=(_documents); end
      # Configuration for the [export tax transactions](/connect/supported-embedded-components/export-tax-transactions/) embedded component.
      sig { returns(T.nilable(AccountSessionCreateParams::Components::ExportTaxTransactions)) }
      def export_tax_transactions; end
      sig {
        params(_export_tax_transactions: T.nilable(AccountSessionCreateParams::Components::ExportTaxTransactions)).returns(T.nilable(AccountSessionCreateParams::Components::ExportTaxTransactions))
       }
      def export_tax_transactions=(_export_tax_transactions); end
      # Configuration for the [financial account](/connect/supported-embedded-components/financial-account/) embedded component.
      sig { returns(T.nilable(AccountSessionCreateParams::Components::FinancialAccount)) }
      def financial_account; end
      sig {
        params(_financial_account: T.nilable(AccountSessionCreateParams::Components::FinancialAccount)).returns(T.nilable(AccountSessionCreateParams::Components::FinancialAccount))
       }
      def financial_account=(_financial_account); end
      # Configuration for the [financial account transactions](/connect/supported-embedded-components/financial-account-transactions/) embedded component.
      sig {
        returns(T.nilable(AccountSessionCreateParams::Components::FinancialAccountTransactions))
       }
      def financial_account_transactions; end
      sig {
        params(_financial_account_transactions: T.nilable(AccountSessionCreateParams::Components::FinancialAccountTransactions)).returns(T.nilable(AccountSessionCreateParams::Components::FinancialAccountTransactions))
       }
      def financial_account_transactions=(_financial_account_transactions); end
      # Configuration for the [instant payouts promotion](/connect/supported-embedded-components/instant-payouts-promotion/) embedded component.
      sig { returns(T.nilable(AccountSessionCreateParams::Components::InstantPayoutsPromotion)) }
      def instant_payouts_promotion; end
      sig {
        params(_instant_payouts_promotion: T.nilable(AccountSessionCreateParams::Components::InstantPayoutsPromotion)).returns(T.nilable(AccountSessionCreateParams::Components::InstantPayoutsPromotion))
       }
      def instant_payouts_promotion=(_instant_payouts_promotion); end
      # Configuration for the [issuing card](/connect/supported-embedded-components/issuing-card/) embedded component.
      sig { returns(T.nilable(AccountSessionCreateParams::Components::IssuingCard)) }
      def issuing_card; end
      sig {
        params(_issuing_card: T.nilable(AccountSessionCreateParams::Components::IssuingCard)).returns(T.nilable(AccountSessionCreateParams::Components::IssuingCard))
       }
      def issuing_card=(_issuing_card); end
      # Configuration for the [issuing cards list](/connect/supported-embedded-components/issuing-cards-list/) embedded component.
      sig { returns(T.nilable(AccountSessionCreateParams::Components::IssuingCardsList)) }
      def issuing_cards_list; end
      sig {
        params(_issuing_cards_list: T.nilable(AccountSessionCreateParams::Components::IssuingCardsList)).returns(T.nilable(AccountSessionCreateParams::Components::IssuingCardsList))
       }
      def issuing_cards_list=(_issuing_cards_list); end
      # Configuration for the [notification banner](/connect/supported-embedded-components/notification-banner/) embedded component.
      sig { returns(T.nilable(AccountSessionCreateParams::Components::NotificationBanner)) }
      def notification_banner; end
      sig {
        params(_notification_banner: T.nilable(AccountSessionCreateParams::Components::NotificationBanner)).returns(T.nilable(AccountSessionCreateParams::Components::NotificationBanner))
       }
      def notification_banner=(_notification_banner); end
      # Configuration for the [payment details](/connect/supported-embedded-components/payment-details/) embedded component.
      sig { returns(T.nilable(AccountSessionCreateParams::Components::PaymentDetails)) }
      def payment_details; end
      sig {
        params(_payment_details: T.nilable(AccountSessionCreateParams::Components::PaymentDetails)).returns(T.nilable(AccountSessionCreateParams::Components::PaymentDetails))
       }
      def payment_details=(_payment_details); end
      # Configuration for the [payment disputes](/connect/supported-embedded-components/payment-disputes/) embedded component.
      sig { returns(T.nilable(AccountSessionCreateParams::Components::PaymentDisputes)) }
      def payment_disputes; end
      sig {
        params(_payment_disputes: T.nilable(AccountSessionCreateParams::Components::PaymentDisputes)).returns(T.nilable(AccountSessionCreateParams::Components::PaymentDisputes))
       }
      def payment_disputes=(_payment_disputes); end
      # Configuration for the [payment method settings](/connect/supported-embedded-components/payment-method-settings/) embedded component.
      sig { returns(T.nilable(AccountSessionCreateParams::Components::PaymentMethodSettings)) }
      def payment_method_settings; end
      sig {
        params(_payment_method_settings: T.nilable(AccountSessionCreateParams::Components::PaymentMethodSettings)).returns(T.nilable(AccountSessionCreateParams::Components::PaymentMethodSettings))
       }
      def payment_method_settings=(_payment_method_settings); end
      # Configuration for the [payments](/connect/supported-embedded-components/payments/) embedded component.
      sig { returns(T.nilable(AccountSessionCreateParams::Components::Payments)) }
      def payments; end
      sig {
        params(_payments: T.nilable(AccountSessionCreateParams::Components::Payments)).returns(T.nilable(AccountSessionCreateParams::Components::Payments))
       }
      def payments=(_payments); end
      # Configuration for the [payout details](/connect/supported-embedded-components/payout-details/) embedded component.
      sig { returns(T.nilable(AccountSessionCreateParams::Components::PayoutDetails)) }
      def payout_details; end
      sig {
        params(_payout_details: T.nilable(AccountSessionCreateParams::Components::PayoutDetails)).returns(T.nilable(AccountSessionCreateParams::Components::PayoutDetails))
       }
      def payout_details=(_payout_details); end
      # Configuration for the [payouts](/connect/supported-embedded-components/payouts/) embedded component.
      sig { returns(T.nilable(AccountSessionCreateParams::Components::Payouts)) }
      def payouts; end
      sig {
        params(_payouts: T.nilable(AccountSessionCreateParams::Components::Payouts)).returns(T.nilable(AccountSessionCreateParams::Components::Payouts))
       }
      def payouts=(_payouts); end
      # Configuration for the [payouts list](/connect/supported-embedded-components/payouts-list/) embedded component.
      sig { returns(T.nilable(AccountSessionCreateParams::Components::PayoutsList)) }
      def payouts_list; end
      sig {
        params(_payouts_list: T.nilable(AccountSessionCreateParams::Components::PayoutsList)).returns(T.nilable(AccountSessionCreateParams::Components::PayoutsList))
       }
      def payouts_list=(_payouts_list); end
      # Configuration for the [product tax code selector](/connect/supported-embedded-components/product-tax-code-selector/) embedded component.
      sig { returns(T.nilable(AccountSessionCreateParams::Components::ProductTaxCodeSelector)) }
      def product_tax_code_selector; end
      sig {
        params(_product_tax_code_selector: T.nilable(AccountSessionCreateParams::Components::ProductTaxCodeSelector)).returns(T.nilable(AccountSessionCreateParams::Components::ProductTaxCodeSelector))
       }
      def product_tax_code_selector=(_product_tax_code_selector); end
      # Configuration for the [recipients](/connect/supported-embedded-components/recipients/) embedded component.
      sig { returns(T.nilable(AccountSessionCreateParams::Components::Recipients)) }
      def recipients; end
      sig {
        params(_recipients: T.nilable(AccountSessionCreateParams::Components::Recipients)).returns(T.nilable(AccountSessionCreateParams::Components::Recipients))
       }
      def recipients=(_recipients); end
      # Configuration for the [reporting chart](/connect/supported-embedded-components/reporting-chart/) embedded component.
      sig { returns(T.nilable(AccountSessionCreateParams::Components::ReportingChart)) }
      def reporting_chart; end
      sig {
        params(_reporting_chart: T.nilable(AccountSessionCreateParams::Components::ReportingChart)).returns(T.nilable(AccountSessionCreateParams::Components::ReportingChart))
       }
      def reporting_chart=(_reporting_chart); end
      # Configuration for the [tax registrations](/connect/supported-embedded-components/tax-registrations/) embedded component.
      sig { returns(T.nilable(AccountSessionCreateParams::Components::TaxRegistrations)) }
      def tax_registrations; end
      sig {
        params(_tax_registrations: T.nilable(AccountSessionCreateParams::Components::TaxRegistrations)).returns(T.nilable(AccountSessionCreateParams::Components::TaxRegistrations))
       }
      def tax_registrations=(_tax_registrations); end
      # Configuration for the [tax settings](/connect/supported-embedded-components/tax-settings/) embedded component.
      sig { returns(T.nilable(AccountSessionCreateParams::Components::TaxSettings)) }
      def tax_settings; end
      sig {
        params(_tax_settings: T.nilable(AccountSessionCreateParams::Components::TaxSettings)).returns(T.nilable(AccountSessionCreateParams::Components::TaxSettings))
       }
      def tax_settings=(_tax_settings); end
      # Configuration for the [tax threshold monitoring](/connect/supported-embedded-components/tax-threshold-monitoring/) embedded component.
      sig { returns(T.nilable(AccountSessionCreateParams::Components::TaxThresholdMonitoring)) }
      def tax_threshold_monitoring; end
      sig {
        params(_tax_threshold_monitoring: T.nilable(AccountSessionCreateParams::Components::TaxThresholdMonitoring)).returns(T.nilable(AccountSessionCreateParams::Components::TaxThresholdMonitoring))
       }
      def tax_threshold_monitoring=(_tax_threshold_monitoring); end
      sig {
        params(account_management: T.nilable(AccountSessionCreateParams::Components::AccountManagement), account_onboarding: T.nilable(AccountSessionCreateParams::Components::AccountOnboarding), app_install: T.nilable(AccountSessionCreateParams::Components::AppInstall), app_viewport: T.nilable(AccountSessionCreateParams::Components::AppViewport), balances: T.nilable(AccountSessionCreateParams::Components::Balances), capital_financing: T.nilable(AccountSessionCreateParams::Components::CapitalFinancing), capital_financing_application: T.nilable(AccountSessionCreateParams::Components::CapitalFinancingApplication), capital_financing_promotion: T.nilable(AccountSessionCreateParams::Components::CapitalFinancingPromotion), capital_overview: T.nilable(AccountSessionCreateParams::Components::CapitalOverview), disputes_list: T.nilable(AccountSessionCreateParams::Components::DisputesList), documents: T.nilable(AccountSessionCreateParams::Components::Documents), export_tax_transactions: T.nilable(AccountSessionCreateParams::Components::ExportTaxTransactions), financial_account: T.nilable(AccountSessionCreateParams::Components::FinancialAccount), financial_account_transactions: T.nilable(AccountSessionCreateParams::Components::FinancialAccountTransactions), instant_payouts_promotion: T.nilable(AccountSessionCreateParams::Components::InstantPayoutsPromotion), issuing_card: T.nilable(AccountSessionCreateParams::Components::IssuingCard), issuing_cards_list: T.nilable(AccountSessionCreateParams::Components::IssuingCardsList), notification_banner: T.nilable(AccountSessionCreateParams::Components::NotificationBanner), payment_details: T.nilable(AccountSessionCreateParams::Components::PaymentDetails), payment_disputes: T.nilable(AccountSessionCreateParams::Components::PaymentDisputes), payment_method_settings: T.nilable(AccountSessionCreateParams::Components::PaymentMethodSettings), payments: T.nilable(AccountSessionCreateParams::Components::Payments), payout_details: T.nilable(AccountSessionCreateParams::Components::PayoutDetails), payouts: T.nilable(AccountSessionCreateParams::Components::Payouts), payouts_list: T.nilable(AccountSessionCreateParams::Components::PayoutsList), product_tax_code_selector: T.nilable(AccountSessionCreateParams::Components::ProductTaxCodeSelector), recipients: T.nilable(AccountSessionCreateParams::Components::Recipients), reporting_chart: T.nilable(AccountSessionCreateParams::Components::ReportingChart), tax_registrations: T.nilable(AccountSessionCreateParams::Components::TaxRegistrations), tax_settings: T.nilable(AccountSessionCreateParams::Components::TaxSettings), tax_threshold_monitoring: T.nilable(AccountSessionCreateParams::Components::TaxThresholdMonitoring)).void
       }
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
        payout_details: nil,
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
    sig { returns(AccountSessionCreateParams::Components) }
    def components; end
    sig {
      params(_components: AccountSessionCreateParams::Components).returns(AccountSessionCreateParams::Components)
     }
    def components=(_components); end
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    sig {
      params(account: String, components: AccountSessionCreateParams::Components, expand: T.nilable(T::Array[String])).void
     }
    def initialize(account: nil, components: nil, expand: nil); end
  end
end