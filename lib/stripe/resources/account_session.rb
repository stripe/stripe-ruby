# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # An AccountSession allows a Connect platform to grant access to a connected account in Connect embedded components.
  #
  # We recommend that you create an AccountSession each time you need to display an embedded component
  # to your user. Do not save AccountSessions to your database as they expire relatively
  # quickly, and cannot be used more than once.
  #
  # Related guide: [Connect embedded components](https://stripe.com/docs/connect/get-started-connect-embedded-components)
  class AccountSession < APIResource
    extend Stripe::APIOperations::Create

    OBJECT_NAME = "account_session"
    def self.object_name
      "account_session"
    end

    class Components < Stripe::StripeObject
      class AccountManagement < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Disables Stripe user authentication for this embedded component. This value can only be true for accounts where `controller.requirement_collection` is `application`. The default value is the opposite of the `external_account_collection` value. For example, if you don’t set `external_account_collection`, it defaults to true and `disable_stripe_user_authentication` defaults to false.
          attr_reader :disable_stripe_user_authentication
          # Whether to allow platforms to control bank account collection for their connected accounts. This feature can only be false for accounts where you’re responsible for collecting updated information when requirements are due or change, like custom accounts. Otherwise, bank account collection is determined by compliance requirements. The default value for this feature is `true`.
          attr_reader :external_account_collection
        end
        # Whether the embedded component is enabled.
        attr_reader :enabled
        # Attribute for field features
        attr_reader :features
      end

      class AccountOnboarding < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Disables Stripe user authentication for this embedded component. This value can only be true for accounts where `controller.requirement_collection` is `application`. The default value is the opposite of the `external_account_collection` value. For example, if you don’t set `external_account_collection`, it defaults to true and `disable_stripe_user_authentication` defaults to false.
          attr_reader :disable_stripe_user_authentication
          # Whether to allow platforms to control bank account collection for their connected accounts. This feature can only be false for accounts where you’re responsible for collecting updated information when requirements are due or change, like custom accounts. Otherwise, bank account collection is determined by compliance requirements. The default value for this feature is `true`.
          attr_reader :external_account_collection
        end
        # Whether the embedded component is enabled.
        attr_reader :enabled
        # Attribute for field features
        attr_reader :features
      end

      class Balances < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Disables Stripe user authentication for this embedded component. This value can only be true for accounts where `controller.requirement_collection` is `application`. The default value is the opposite of the `external_account_collection` value. For example, if you don’t set `external_account_collection`, it defaults to true and `disable_stripe_user_authentication` defaults to false.
          attr_reader :disable_stripe_user_authentication
          # Whether to allow payout schedule to be changed. Default `true` when Stripe owns Loss Liability, default `false` otherwise.
          attr_reader :edit_payout_schedule
          # Whether to allow platforms to control bank account collection for their connected accounts. This feature can only be false for accounts where you’re responsible for collecting updated information when requirements are due or change, like custom accounts. Otherwise, bank account collection is determined by compliance requirements. The default value for this feature is `true`.
          attr_reader :external_account_collection
          # Whether to allow creation of instant payouts. Default `true` when Stripe owns Loss Liability, default `false` otherwise.
          attr_reader :instant_payouts
          # Whether to allow creation of standard payouts. Default `true` when Stripe owns Loss Liability, default `false` otherwise.
          attr_reader :standard_payouts
        end
        # Whether the embedded component is enabled.
        attr_reader :enabled
        # Attribute for field features
        attr_reader :features
      end

      class Documents < Stripe::StripeObject
        class Features < Stripe::StripeObject; end
        # Whether the embedded component is enabled.
        attr_reader :enabled
        # Attribute for field features
        attr_reader :features
      end

      class FinancialAccount < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Disables Stripe user authentication for this embedded component. This value can only be true for accounts where `controller.requirement_collection` is `application`. The default value is the opposite of the `external_account_collection` value. For example, if you don’t set `external_account_collection`, it defaults to true and `disable_stripe_user_authentication` defaults to false.
          attr_reader :disable_stripe_user_authentication
          # Whether to allow external accounts to be linked for money transfer.
          attr_reader :external_account_collection
          # Whether to allow sending money.
          attr_reader :send_money
          # Whether to allow transferring balance.
          attr_reader :transfer_balance
        end
        # Whether the embedded component is enabled.
        attr_reader :enabled
        # Attribute for field features
        attr_reader :features
      end

      class FinancialAccountTransactions < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Whether to allow card spend dispute management features.
          attr_reader :card_spend_dispute_management
        end
        # Whether the embedded component is enabled.
        attr_reader :enabled
        # Attribute for field features
        attr_reader :features
      end

      class IssuingCard < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Whether to allow card management features.
          attr_reader :card_management
          # Whether to allow card spend dispute management features.
          attr_reader :card_spend_dispute_management
          # Whether to allow cardholder management features.
          attr_reader :cardholder_management
          # Whether to allow spend control management features.
          attr_reader :spend_control_management
        end
        # Whether the embedded component is enabled.
        attr_reader :enabled
        # Attribute for field features
        attr_reader :features
      end

      class IssuingCardsList < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Whether to allow card management features.
          attr_reader :card_management
          # Whether to allow card spend dispute management features.
          attr_reader :card_spend_dispute_management
          # Whether to allow cardholder management features.
          attr_reader :cardholder_management
          # Disables Stripe user authentication for this embedded component. This feature can only be false for accounts where you’re responsible for collecting updated information when requirements are due or change, like custom accounts.
          attr_reader :disable_stripe_user_authentication
          # Whether to allow spend control management features.
          attr_reader :spend_control_management
        end
        # Whether the embedded component is enabled.
        attr_reader :enabled
        # Attribute for field features
        attr_reader :features
      end

      class NotificationBanner < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Disables Stripe user authentication for this embedded component. This value can only be true for accounts where `controller.requirement_collection` is `application`. The default value is the opposite of the `external_account_collection` value. For example, if you don’t set `external_account_collection`, it defaults to true and `disable_stripe_user_authentication` defaults to false.
          attr_reader :disable_stripe_user_authentication
          # Whether to allow platforms to control bank account collection for their connected accounts. This feature can only be false for accounts where you’re responsible for collecting updated information when requirements are due or change, like custom accounts. Otherwise, bank account collection is determined by compliance requirements. The default value for this feature is `true`.
          attr_reader :external_account_collection
        end
        # Whether the embedded component is enabled.
        attr_reader :enabled
        # Attribute for field features
        attr_reader :features
      end

      class PaymentDetails < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Whether to allow capturing and cancelling payment intents. This is `true` by default.
          attr_reader :capture_payments
          # Whether to allow connected accounts to manage destination charges that are created on behalf of them. This is `false` by default.
          attr_reader :destination_on_behalf_of_charge_management
          # Whether to allow responding to disputes, including submitting evidence and accepting disputes. This is `true` by default.
          attr_reader :dispute_management
          # Whether to allow sending refunds. This is `true` by default.
          attr_reader :refund_management
        end
        # Whether the embedded component is enabled.
        attr_reader :enabled
        # Attribute for field features
        attr_reader :features
      end

      class Payments < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Whether to allow capturing and cancelling payment intents. This is `true` by default.
          attr_reader :capture_payments
          # Whether to allow connected accounts to manage destination charges that are created on behalf of them. This is `false` by default.
          attr_reader :destination_on_behalf_of_charge_management
          # Whether to allow responding to disputes, including submitting evidence and accepting disputes. This is `true` by default.
          attr_reader :dispute_management
          # Whether to allow sending refunds. This is `true` by default.
          attr_reader :refund_management
        end
        # Whether the embedded component is enabled.
        attr_reader :enabled
        # Attribute for field features
        attr_reader :features
      end

      class Payouts < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Disables Stripe user authentication for this embedded component. This value can only be true for accounts where `controller.requirement_collection` is `application`. The default value is the opposite of the `external_account_collection` value. For example, if you don’t set `external_account_collection`, it defaults to true and `disable_stripe_user_authentication` defaults to false.
          attr_reader :disable_stripe_user_authentication
          # Whether to allow payout schedule to be changed. Default `true` when Stripe owns Loss Liability, default `false` otherwise.
          attr_reader :edit_payout_schedule
          # Whether to allow platforms to control bank account collection for their connected accounts. This feature can only be false for accounts where you’re responsible for collecting updated information when requirements are due or change, like custom accounts. Otherwise, bank account collection is determined by compliance requirements. The default value for this feature is `true`.
          attr_reader :external_account_collection
          # Whether to allow creation of instant payouts. Default `true` when Stripe owns Loss Liability, default `false` otherwise.
          attr_reader :instant_payouts
          # Whether to allow creation of standard payouts. Default `true` when Stripe owns Loss Liability, default `false` otherwise.
          attr_reader :standard_payouts
        end
        # Whether the embedded component is enabled.
        attr_reader :enabled
        # Attribute for field features
        attr_reader :features
      end

      class PayoutsList < Stripe::StripeObject
        class Features < Stripe::StripeObject; end
        # Whether the embedded component is enabled.
        attr_reader :enabled
        # Attribute for field features
        attr_reader :features
      end

      class TaxRegistrations < Stripe::StripeObject
        class Features < Stripe::StripeObject; end
        # Whether the embedded component is enabled.
        attr_reader :enabled
        # Attribute for field features
        attr_reader :features
      end

      class TaxSettings < Stripe::StripeObject
        class Features < Stripe::StripeObject; end
        # Whether the embedded component is enabled.
        attr_reader :enabled
        # Attribute for field features
        attr_reader :features
      end
      # Attribute for field account_management
      attr_reader :account_management
      # Attribute for field account_onboarding
      attr_reader :account_onboarding
      # Attribute for field balances
      attr_reader :balances
      # Attribute for field documents
      attr_reader :documents
      # Attribute for field financial_account
      attr_reader :financial_account
      # Attribute for field financial_account_transactions
      attr_reader :financial_account_transactions
      # Attribute for field issuing_card
      attr_reader :issuing_card
      # Attribute for field issuing_cards_list
      attr_reader :issuing_cards_list
      # Attribute for field notification_banner
      attr_reader :notification_banner
      # Attribute for field payment_details
      attr_reader :payment_details
      # Attribute for field payments
      attr_reader :payments
      # Attribute for field payouts
      attr_reader :payouts
      # Attribute for field payouts_list
      attr_reader :payouts_list
      # Attribute for field tax_registrations
      attr_reader :tax_registrations
      # Attribute for field tax_settings
      attr_reader :tax_settings
    end

    class CreateParams < Stripe::RequestParams
      class Components < Stripe::RequestParams
        class AccountManagement < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Disables Stripe user authentication for this embedded component. This value can only be true for accounts where `controller.requirement_collection` is `application`. The default value is the opposite of the `external_account_collection` value. For example, if you don’t set `external_account_collection`, it defaults to true and `disable_stripe_user_authentication` defaults to false.
            attr_accessor :disable_stripe_user_authentication
            # Whether to allow platforms to control bank account collection for their connected accounts. This feature can only be false for accounts where you’re responsible for collecting updated information when requirements are due or change, like custom accounts. Otherwise, bank account collection is determined by compliance requirements. The default value for this feature is `true`.
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
            # Disables Stripe user authentication for this embedded component. This value can only be true for accounts where `controller.requirement_collection` is `application`. The default value is the opposite of the `external_account_collection` value. For example, if you don’t set `external_account_collection`, it defaults to true and `disable_stripe_user_authentication` defaults to false.
            attr_accessor :disable_stripe_user_authentication
            # Whether to allow platforms to control bank account collection for their connected accounts. This feature can only be false for accounts where you’re responsible for collecting updated information when requirements are due or change, like custom accounts. Otherwise, bank account collection is determined by compliance requirements. The default value for this feature is `true`.
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

        class Balances < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Disables Stripe user authentication for this embedded component. This value can only be true for accounts where `controller.requirement_collection` is `application`. The default value is the opposite of the `external_account_collection` value. For example, if you don’t set `external_account_collection`, it defaults to true and `disable_stripe_user_authentication` defaults to false.
            attr_accessor :disable_stripe_user_authentication
            # Whether to allow payout schedule to be changed. Default `true` when Stripe owns Loss Liability, default `false` otherwise.
            attr_accessor :edit_payout_schedule
            # Whether to allow platforms to control bank account collection for their connected accounts. This feature can only be false for accounts where you’re responsible for collecting updated information when requirements are due or change, like custom accounts. Otherwise, bank account collection is determined by compliance requirements. The default value for this feature is `true`.
            attr_accessor :external_account_collection
            # Whether to allow creation of instant payouts. Default `true` when Stripe owns Loss Liability, default `false` otherwise.
            attr_accessor :instant_payouts
            # Whether to allow creation of standard payouts. Default `true` when Stripe owns Loss Liability, default `false` otherwise.
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

        class Documents < Stripe::RequestParams
          class Features < Stripe::RequestParams
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

        class FinancialAccount < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Disables Stripe user authentication for this embedded component. This value can only be true for accounts where `controller.requirement_collection` is `application`. The default value is the opposite of the `external_account_collection` value. For example, if you don’t set `external_account_collection`, it defaults to true and `disable_stripe_user_authentication` defaults to false.
            attr_accessor :disable_stripe_user_authentication
            # Whether to allow external accounts to be linked for money transfer.
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
            # Disables Stripe user authentication for this embedded component. This feature can only be false for accounts where you’re responsible for collecting updated information when requirements are due or change, like custom accounts.
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
            # Disables Stripe user authentication for this embedded component. This value can only be true for accounts where `controller.requirement_collection` is `application`. The default value is the opposite of the `external_account_collection` value. For example, if you don’t set `external_account_collection`, it defaults to true and `disable_stripe_user_authentication` defaults to false.
            attr_accessor :disable_stripe_user_authentication
            # Whether to allow platforms to control bank account collection for their connected accounts. This feature can only be false for accounts where you’re responsible for collecting updated information when requirements are due or change, like custom accounts. Otherwise, bank account collection is determined by compliance requirements. The default value for this feature is `true`.
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
            # Whether to allow connected accounts to manage destination charges that are created on behalf of them. This is `false` by default.
            attr_accessor :destination_on_behalf_of_charge_management
            # Whether to allow responding to disputes, including submitting evidence and accepting disputes. This is `true` by default.
            attr_accessor :dispute_management
            # Whether to allow sending refunds. This is `true` by default.
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

        class Payments < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # Whether to allow capturing and cancelling payment intents. This is `true` by default.
            attr_accessor :capture_payments
            # Whether to allow connected accounts to manage destination charges that are created on behalf of them. This is `false` by default.
            attr_accessor :destination_on_behalf_of_charge_management
            # Whether to allow responding to disputes, including submitting evidence and accepting disputes. This is `true` by default.
            attr_accessor :dispute_management
            # Whether to allow sending refunds. This is `true` by default.
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
            # Disables Stripe user authentication for this embedded component. This value can only be true for accounts where `controller.requirement_collection` is `application`. The default value is the opposite of the `external_account_collection` value. For example, if you don’t set `external_account_collection`, it defaults to true and `disable_stripe_user_authentication` defaults to false.
            attr_accessor :disable_stripe_user_authentication
            # Whether to allow payout schedule to be changed. Default `true` when Stripe owns Loss Liability, default `false` otherwise.
            attr_accessor :edit_payout_schedule
            # Whether to allow platforms to control bank account collection for their connected accounts. This feature can only be false for accounts where you’re responsible for collecting updated information when requirements are due or change, like custom accounts. Otherwise, bank account collection is determined by compliance requirements. The default value for this feature is `true`.
            attr_accessor :external_account_collection
            # Whether to allow creation of instant payouts. Default `true` when Stripe owns Loss Liability, default `false` otherwise.
            attr_accessor :instant_payouts
            # Whether to allow creation of standard payouts. Default `true` when Stripe owns Loss Liability, default `false` otherwise.
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
          class Features < Stripe::RequestParams
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

        class TaxRegistrations < Stripe::RequestParams
          class Features < Stripe::RequestParams
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

        class TaxSettings < Stripe::RequestParams
          class Features < Stripe::RequestParams
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
        # Configuration for the account management embedded component.
        attr_accessor :account_management
        # Configuration for the account onboarding embedded component.
        attr_accessor :account_onboarding
        # Configuration for the balances embedded component.
        attr_accessor :balances
        # Configuration for the documents embedded component.
        attr_accessor :documents
        # Configuration for the financial account embedded component.
        attr_accessor :financial_account
        # Configuration for the financial account transactions embedded component.
        attr_accessor :financial_account_transactions
        # Configuration for the issuing card embedded component.
        attr_accessor :issuing_card
        # Configuration for the issuing cards list embedded component.
        attr_accessor :issuing_cards_list
        # Configuration for the notification banner embedded component.
        attr_accessor :notification_banner
        # Configuration for the payment details embedded component.
        attr_accessor :payment_details
        # Configuration for the payments embedded component.
        attr_accessor :payments
        # Configuration for the payouts embedded component.
        attr_accessor :payouts
        # Configuration for the payouts list embedded component.
        attr_accessor :payouts_list
        # Configuration for the tax registrations embedded component.
        attr_accessor :tax_registrations
        # Configuration for the tax settings embedded component.
        attr_accessor :tax_settings

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
        )
          @account_management = account_management
          @account_onboarding = account_onboarding
          @balances = balances
          @documents = documents
          @financial_account = financial_account
          @financial_account_transactions = financial_account_transactions
          @issuing_card = issuing_card
          @issuing_cards_list = issuing_cards_list
          @notification_banner = notification_banner
          @payment_details = payment_details
          @payments = payments
          @payouts = payouts
          @payouts_list = payouts_list
          @tax_registrations = tax_registrations
          @tax_settings = tax_settings
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
    # The ID of the account the AccountSession was created for
    attr_reader :account
    # The client secret of this AccountSession. Used on the client to set up secure access to the given `account`.
    #
    # The client secret can be used to provide access to `account` from your frontend. It should not be stored, logged, or exposed to anyone other than the connected account. Make sure that you have TLS enabled on any page that includes the client secret.
    #
    # Refer to our docs to [setup Connect embedded components](https://stripe.com/docs/connect/get-started-connect-embedded-components) and learn about how `client_secret` should be handled.
    attr_reader :client_secret
    # Attribute for field components
    attr_reader :components
    # The timestamp at which this AccountSession will expire.
    attr_reader :expires_at
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object

    # Creates a AccountSession object that includes a single-use token that the platform can use on their front-end to grant client-side API access.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/account_sessions", params: params, opts: opts)
    end
  end
end
