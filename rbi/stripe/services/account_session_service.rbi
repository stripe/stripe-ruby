# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class AccountSessionService < StripeService
    class CreateParams < Stripe::RequestParams
      class Components < Stripe::RequestParams
        class AccountManagement < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Disables Stripe user authentication for this embedded component. This value can only be true for accounts where `controller.requirement_collection` is `application`. The default value is the opposite of the `external_account_collection` value. For example, if you don’t set `external_account_collection`, it defaults to true and `disable_stripe_user_authentication` defaults to false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :disable_stripe_user_authentication
            # Whether to allow platforms to control bank account collection for their connected accounts. This feature can only be false for accounts where you’re responsible for collecting updated information when requirements are due or change, like custom accounts. Otherwise, bank account collection is determined by compliance requirements. The default value for this feature is `true`.
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
            # Disables Stripe user authentication for this embedded component. This value can only be true for accounts where `controller.requirement_collection` is `application`. The default value is the opposite of the `external_account_collection` value. For example, if you don’t set `external_account_collection`, it defaults to true and `disable_stripe_user_authentication` defaults to false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :disable_stripe_user_authentication
            # Whether to allow platforms to control bank account collection for their connected accounts. This feature can only be false for accounts where you’re responsible for collecting updated information when requirements are due or change, like custom accounts. Otherwise, bank account collection is determined by compliance requirements. The default value for this feature is `true`.
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
        class Balances < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Disables Stripe user authentication for this embedded component. This value can only be true for accounts where `controller.requirement_collection` is `application`. The default value is the opposite of the `external_account_collection` value. For example, if you don’t set `external_account_collection`, it defaults to true and `disable_stripe_user_authentication` defaults to false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :disable_stripe_user_authentication
            # Whether to allow payout schedule to be changed. Default `true` when Stripe owns Loss Liability, default `false` otherwise.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :edit_payout_schedule
            # Whether to allow platforms to control bank account collection for their connected accounts. This feature can only be false for accounts where you’re responsible for collecting updated information when requirements are due or change, like custom accounts. Otherwise, bank account collection is determined by compliance requirements. The default value for this feature is `true`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :external_account_collection
            # Whether to allow creation of instant payouts. Default `true` when Stripe owns Loss Liability, default `false` otherwise.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :instant_payouts
            # Whether to allow creation of standard payouts. Default `true` when Stripe owns Loss Liability, default `false` otherwise.
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
        class Documents < Stripe::RequestParams
          class Features < Stripe::RequestParams

          end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
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
            # Disables Stripe user authentication for this embedded component. This value can only be true for accounts where `controller.requirement_collection` is `application`. The default value is the opposite of the `external_account_collection` value. For example, if you don’t set `external_account_collection`, it defaults to true and `disable_stripe_user_authentication` defaults to false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :disable_stripe_user_authentication
            # Whether to allow external accounts to be linked for money transfer.
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
            # Disables Stripe user authentication for this embedded component. This feature can only be false for accounts where you’re responsible for collecting updated information when requirements are due or change, like custom accounts.
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
            # Disables Stripe user authentication for this embedded component. This value can only be true for accounts where `controller.requirement_collection` is `application`. The default value is the opposite of the `external_account_collection` value. For example, if you don’t set `external_account_collection`, it defaults to true and `disable_stripe_user_authentication` defaults to false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :disable_stripe_user_authentication
            # Whether to allow platforms to control bank account collection for their connected accounts. This feature can only be false for accounts where you’re responsible for collecting updated information when requirements are due or change, like custom accounts. Otherwise, bank account collection is determined by compliance requirements. The default value for this feature is `true`.
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
            # Whether to allow connected accounts to manage destination charges that are created on behalf of them. This is `false` by default.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :destination_on_behalf_of_charge_management
            # Whether to allow responding to disputes, including submitting evidence and accepting disputes. This is `true` by default.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :dispute_management
            # Whether to allow sending refunds. This is `true` by default.
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
        class Payments < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether to allow capturing and cancelling payment intents. This is `true` by default.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :capture_payments
            # Whether to allow connected accounts to manage destination charges that are created on behalf of them. This is `false` by default.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :destination_on_behalf_of_charge_management
            # Whether to allow responding to disputes, including submitting evidence and accepting disputes. This is `true` by default.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :dispute_management
            # Whether to allow sending refunds. This is `true` by default.
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
        class Payouts < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Disables Stripe user authentication for this embedded component. This value can only be true for accounts where `controller.requirement_collection` is `application`. The default value is the opposite of the `external_account_collection` value. For example, if you don’t set `external_account_collection`, it defaults to true and `disable_stripe_user_authentication` defaults to false.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :disable_stripe_user_authentication
            # Whether to allow payout schedule to be changed. Default `true` when Stripe owns Loss Liability, default `false` otherwise.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :edit_payout_schedule
            # Whether to allow platforms to control bank account collection for their connected accounts. This feature can only be false for accounts where you’re responsible for collecting updated information when requirements are due or change, like custom accounts. Otherwise, bank account collection is determined by compliance requirements. The default value for this feature is `true`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :external_account_collection
            # Whether to allow creation of instant payouts. Default `true` when Stripe owns Loss Liability, default `false` otherwise.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :instant_payouts
            # Whether to allow creation of standard payouts. Default `true` when Stripe owns Loss Liability, default `false` otherwise.
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
          class Features < Stripe::RequestParams

          end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
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
          class Features < Stripe::RequestParams

          end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
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
          class Features < Stripe::RequestParams

          end
          # Whether the embedded component is enabled.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          # The list of features enabled in the embedded component.
          sig {
            returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::TaxSettings::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::TaxSettings::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        # Configuration for the account management embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::AccountManagement))
         }
        attr_accessor :account_management
        # Configuration for the account onboarding embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::AccountOnboarding))
         }
        attr_accessor :account_onboarding
        # Configuration for the balances embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Balances))
         }
        attr_accessor :balances
        # Configuration for the documents embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Documents))
         }
        attr_accessor :documents
        # Configuration for the financial account embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::FinancialAccount))
         }
        attr_accessor :financial_account
        # Configuration for the financial account transactions embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::FinancialAccountTransactions))
         }
        attr_accessor :financial_account_transactions
        # Configuration for the issuing card embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::IssuingCard))
         }
        attr_accessor :issuing_card
        # Configuration for the issuing cards list embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::IssuingCardsList))
         }
        attr_accessor :issuing_cards_list
        # Configuration for the notification banner embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::NotificationBanner))
         }
        attr_accessor :notification_banner
        # Configuration for the payment details embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PaymentDetails))
         }
        attr_accessor :payment_details
        # Configuration for the payments embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Payments))
         }
        attr_accessor :payments
        # Configuration for the payouts embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Payouts))
         }
        attr_accessor :payouts
        # Configuration for the payouts list embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutsList))
         }
        attr_accessor :payouts_list
        # Configuration for the tax registrations embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::TaxRegistrations))
         }
        attr_accessor :tax_registrations
        # Configuration for the tax settings embedded component.
        sig {
          returns(T.nilable(::Stripe::AccountSessionService::CreateParams::Components::TaxSettings))
         }
        attr_accessor :tax_settings
        sig {
          params(account_management: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::AccountManagement), account_onboarding: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::AccountOnboarding), balances: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Balances), documents: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Documents), financial_account: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::FinancialAccount), financial_account_transactions: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::FinancialAccountTransactions), issuing_card: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::IssuingCard), issuing_cards_list: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::IssuingCardsList), notification_banner: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::NotificationBanner), payment_details: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PaymentDetails), payments: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Payments), payouts: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::Payouts), payouts_list: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::PayoutsList), tax_registrations: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::TaxRegistrations), tax_settings: T.nilable(::Stripe::AccountSessionService::CreateParams::Components::TaxSettings)).void
         }
        def initialize(
          account_management: nil,
          account_onboarding: nil,
          balances: nil,
          documents: nil,
          financial_account: nil,
          financial_account_transactions: nil,
          issuing_card: nil,
          issuing_cards_list: nil,
          notification_banner: nil,
          payment_details: nil,
          payments: nil,
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