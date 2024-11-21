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
          # Disables Stripe user authentication for this embedded component. This feature can only be false for accounts where you’re responsible for collecting updated information when requirements are due or change, like custom accounts. The default value for this feature is `false` when `external_account_collection` is enabled and `true` otherwise.
          sig { returns(T::Boolean) }
          attr_reader :disable_stripe_user_authentication
          # Whether to allow platforms to control bank account collection for their connected accounts. This feature can only be false for accounts where you’re responsible for collecting updated information when requirements are due or change, like custom accounts. Otherwise, bank account collection is determined by compliance requirements. The default value for this feature is `true`.
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
          # Disables Stripe user authentication for this embedded component. This feature can only be false for accounts where you’re responsible for collecting updated information when requirements are due or change, like custom accounts. The default value for this feature is `false` when `external_account_collection` is enabled and `true` otherwise.
          sig { returns(T::Boolean) }
          attr_reader :disable_stripe_user_authentication
          # Whether to allow platforms to control bank account collection for their connected accounts. This feature can only be false for accounts where you’re responsible for collecting updated information when requirements are due or change, like custom accounts. Otherwise, bank account collection is determined by compliance requirements. The default value for this feature is `true`.
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
      class Balances < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Disables Stripe user authentication for this embedded component. This feature can only be false for accounts where you’re responsible for collecting updated information when requirements are due or change, like custom accounts. The default value for this feature is `false` when `external_account_collection` is enabled and `true` otherwise.
          sig { returns(T::Boolean) }
          attr_reader :disable_stripe_user_authentication
          # Whether to allow payout schedule to be changed. Default `true` when Stripe owns Loss Liability, default `false` otherwise.
          sig { returns(T::Boolean) }
          attr_reader :edit_payout_schedule
          # Whether to allow platforms to control bank account collection for their connected accounts. This feature can only be false for accounts where you’re responsible for collecting updated information when requirements are due or change, like custom accounts. Otherwise, bank account collection is determined by compliance requirements. The default value for this feature is `true`.
          sig { returns(T::Boolean) }
          attr_reader :external_account_collection
          # Whether to allow creation of instant payouts. Default `true` when Stripe owns Loss Liability, default `false` otherwise.
          sig { returns(T::Boolean) }
          attr_reader :instant_payouts
          # Whether to allow creation of standard payouts. Default `true` when Stripe owns Loss Liability, default `false` otherwise.
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
      class CapitalFinancing < Stripe::StripeObject
        class Features < Stripe::StripeObject; end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        attr_reader :enabled
        # Attribute for field features
        sig { returns(Features) }
        attr_reader :features
      end
      class CapitalFinancingApplication < Stripe::StripeObject
        class Features < Stripe::StripeObject; end
        # Whether the embedded component is enabled.
        sig { returns(T::Boolean) }
        attr_reader :enabled
        # Attribute for field features
        sig { returns(Features) }
        attr_reader :features
      end
      class CapitalFinancingPromotion < Stripe::StripeObject
        class Features < Stripe::StripeObject; end
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
      class NotificationBanner < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Disables Stripe user authentication for this embedded component. This feature can only be false for accounts where you’re responsible for collecting updated information when requirements are due or change, like custom accounts. The default value for this feature is `false` when `external_account_collection` is enabled and `true` otherwise.
          sig { returns(T::Boolean) }
          attr_reader :disable_stripe_user_authentication
          # Whether to allow platforms to control bank account collection for their connected accounts. This feature can only be false for accounts where you’re responsible for collecting updated information when requirements are due or change, like custom accounts. Otherwise, bank account collection is determined by compliance requirements. The default value for this feature is `true`.
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
          # Whether to allow connected accounts to manage destination charges that are created on behalf of them. This is `false` by default.
          sig { returns(T::Boolean) }
          attr_reader :destination_on_behalf_of_charge_management
          # Whether to allow responding to disputes, including submitting evidence and accepting disputes. This is `true` by default.
          sig { returns(T::Boolean) }
          attr_reader :dispute_management
          # Whether to allow sending refunds. This is `true` by default.
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
          # Whether to allow connected accounts to manage destination charges that are created on behalf of them. This is `false` by default.
          sig { returns(T::Boolean) }
          attr_reader :destination_on_behalf_of_charge_management
          # Whether to allow responding to disputes, including submitting evidence and accepting disputes. This is `true` by default.
          sig { returns(T::Boolean) }
          attr_reader :dispute_management
          # Whether to allow sending refunds. This is `true` by default.
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
      class Payouts < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # Disables Stripe user authentication for this embedded component. This feature can only be false for accounts where you’re responsible for collecting updated information when requirements are due or change, like custom accounts. The default value for this feature is `false` when `external_account_collection` is enabled and `true` otherwise.
          sig { returns(T::Boolean) }
          attr_reader :disable_stripe_user_authentication
          # Whether to allow payout schedule to be changed. Default `true` when Stripe owns Loss Liability, default `false` otherwise.
          sig { returns(T::Boolean) }
          attr_reader :edit_payout_schedule
          # Whether to allow platforms to control bank account collection for their connected accounts. This feature can only be false for accounts where you’re responsible for collecting updated information when requirements are due or change, like custom accounts. Otherwise, bank account collection is determined by compliance requirements. The default value for this feature is `true`.
          sig { returns(T::Boolean) }
          attr_reader :external_account_collection
          # Whether to allow creation of instant payouts. Default `true` when Stripe owns Loss Liability, default `false` otherwise.
          sig { returns(T::Boolean) }
          attr_reader :instant_payouts
          # Whether to allow creation of standard payouts. Default `true` when Stripe owns Loss Liability, default `false` otherwise.
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
      # Attribute for field balances
      sig { returns(Balances) }
      attr_reader :balances
      # Attribute for field capital_financing
      sig { returns(T.nilable(CapitalFinancing)) }
      attr_reader :capital_financing
      # Attribute for field capital_financing_application
      sig { returns(T.nilable(CapitalFinancingApplication)) }
      attr_reader :capital_financing_application
      # Attribute for field capital_financing_promotion
      sig { returns(T.nilable(CapitalFinancingPromotion)) }
      attr_reader :capital_financing_promotion
      # Attribute for field documents
      sig { returns(Documents) }
      attr_reader :documents
      # Attribute for field notification_banner
      sig { returns(NotificationBanner) }
      attr_reader :notification_banner
      # Attribute for field payment_details
      sig { returns(PaymentDetails) }
      attr_reader :payment_details
      # Attribute for field payments
      sig { returns(Payments) }
      attr_reader :payments
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
  end
end