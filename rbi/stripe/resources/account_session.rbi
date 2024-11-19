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
          sig { returns(T::Boolean) }
          attr_reader :disable_stripe_user_authentication
          sig { returns(T::Boolean) }
          attr_reader :external_account_collection
        end
        sig { returns(T::Boolean) }
        attr_reader :enabled
        sig { returns(Features) }
        attr_reader :features
      end
      class AccountOnboarding < Stripe::StripeObject
        class Features < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :disable_stripe_user_authentication
          sig { returns(T::Boolean) }
          attr_reader :external_account_collection
        end
        sig { returns(T::Boolean) }
        attr_reader :enabled
        sig { returns(Features) }
        attr_reader :features
      end
      class Balances < Stripe::StripeObject
        class Features < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :disable_stripe_user_authentication
          sig { returns(T::Boolean) }
          attr_reader :edit_payout_schedule
          sig { returns(T::Boolean) }
          attr_reader :external_account_collection
          sig { returns(T::Boolean) }
          attr_reader :instant_payouts
          sig { returns(T::Boolean) }
          attr_reader :standard_payouts
        end
        sig { returns(T::Boolean) }
        attr_reader :enabled
        sig { returns(Features) }
        attr_reader :features
      end
      class CapitalFinancing < Stripe::StripeObject
        class Features < Stripe::StripeObject; end
        sig { returns(T::Boolean) }
        attr_reader :enabled
        sig { returns(Features) }
        attr_reader :features
      end
      class CapitalFinancingApplication < Stripe::StripeObject
        class Features < Stripe::StripeObject; end
        sig { returns(T::Boolean) }
        attr_reader :enabled
        sig { returns(Features) }
        attr_reader :features
      end
      class CapitalFinancingPromotion < Stripe::StripeObject
        class Features < Stripe::StripeObject; end
        sig { returns(T::Boolean) }
        attr_reader :enabled
        sig { returns(Features) }
        attr_reader :features
      end
      class Documents < Stripe::StripeObject
        class Features < Stripe::StripeObject; end
        sig { returns(T::Boolean) }
        attr_reader :enabled
        sig { returns(Features) }
        attr_reader :features
      end
      class NotificationBanner < Stripe::StripeObject
        class Features < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :disable_stripe_user_authentication
          sig { returns(T::Boolean) }
          attr_reader :external_account_collection
        end
        sig { returns(T::Boolean) }
        attr_reader :enabled
        sig { returns(Features) }
        attr_reader :features
      end
      class PaymentDetails < Stripe::StripeObject
        class Features < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :capture_payments
          sig { returns(T::Boolean) }
          attr_reader :destination_on_behalf_of_charge_management
          sig { returns(T::Boolean) }
          attr_reader :dispute_management
          sig { returns(T::Boolean) }
          attr_reader :refund_management
        end
        sig { returns(T::Boolean) }
        attr_reader :enabled
        sig { returns(Features) }
        attr_reader :features
      end
      class Payments < Stripe::StripeObject
        class Features < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :capture_payments
          sig { returns(T::Boolean) }
          attr_reader :destination_on_behalf_of_charge_management
          sig { returns(T::Boolean) }
          attr_reader :dispute_management
          sig { returns(T::Boolean) }
          attr_reader :refund_management
        end
        sig { returns(T::Boolean) }
        attr_reader :enabled
        sig { returns(Features) }
        attr_reader :features
      end
      class Payouts < Stripe::StripeObject
        class Features < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :disable_stripe_user_authentication
          sig { returns(T::Boolean) }
          attr_reader :edit_payout_schedule
          sig { returns(T::Boolean) }
          attr_reader :external_account_collection
          sig { returns(T::Boolean) }
          attr_reader :instant_payouts
          sig { returns(T::Boolean) }
          attr_reader :standard_payouts
        end
        sig { returns(T::Boolean) }
        attr_reader :enabled
        sig { returns(Features) }
        attr_reader :features
      end
      class PayoutsList < Stripe::StripeObject
        class Features < Stripe::StripeObject; end
        sig { returns(T::Boolean) }
        attr_reader :enabled
        sig { returns(Features) }
        attr_reader :features
      end
      class TaxRegistrations < Stripe::StripeObject
        class Features < Stripe::StripeObject; end
        sig { returns(T::Boolean) }
        attr_reader :enabled
        sig { returns(Features) }
        attr_reader :features
      end
      class TaxSettings < Stripe::StripeObject
        class Features < Stripe::StripeObject; end
        sig { returns(T::Boolean) }
        attr_reader :enabled
        sig { returns(Features) }
        attr_reader :features
      end
      sig { returns(AccountManagement) }
      attr_reader :account_management
      sig { returns(AccountOnboarding) }
      attr_reader :account_onboarding
      sig { returns(Balances) }
      attr_reader :balances
      sig { returns(T.nilable(CapitalFinancing)) }
      attr_reader :capital_financing
      sig { returns(T.nilable(CapitalFinancingApplication)) }
      attr_reader :capital_financing_application
      sig { returns(T.nilable(CapitalFinancingPromotion)) }
      attr_reader :capital_financing_promotion
      sig { returns(Documents) }
      attr_reader :documents
      sig { returns(NotificationBanner) }
      attr_reader :notification_banner
      sig { returns(PaymentDetails) }
      attr_reader :payment_details
      sig { returns(Payments) }
      attr_reader :payments
      sig { returns(Payouts) }
      attr_reader :payouts
      sig { returns(PayoutsList) }
      attr_reader :payouts_list
      sig { returns(TaxRegistrations) }
      attr_reader :tax_registrations
      sig { returns(TaxSettings) }
      attr_reader :tax_settings
    end
    sig { returns(String) }
    # The ID of the account the AccountSession was created for
    attr_reader :account
    sig { returns(String) }
    # The client secret of this AccountSession. Used on the client to set up secure access to the given `account`.
    #
    # The client secret can be used to provide access to `account` from your frontend. It should not be stored, logged, or exposed to anyone other than the connected account. Make sure that you have TLS enabled on any page that includes the client secret.
    #
    # Refer to our docs to [setup Connect embedded components](https://stripe.com/docs/connect/get-started-connect-embedded-components) and learn about how `client_secret` should be handled.
    attr_reader :client_secret
    sig { returns(Components) }
    # Attribute for field components
    attr_reader :components
    sig { returns(Integer) }
    # The timestamp at which this AccountSession will expire.
    attr_reader :expires_at
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
  end
end