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
          attr_reader :disable_stripe_user_authentication, :external_account_collection
        end
        attr_reader :enabled, :features
      end

      class AccountOnboarding < Stripe::StripeObject
        class Features < Stripe::StripeObject
          attr_reader :disable_stripe_user_authentication, :external_account_collection
        end
        attr_reader :enabled, :features
      end

      class Balances < Stripe::StripeObject
        class Features < Stripe::StripeObject
          attr_reader :disable_stripe_user_authentication, :edit_payout_schedule, :external_account_collection, :instant_payouts, :standard_payouts
        end
        attr_reader :enabled, :features
      end

      class CapitalFinancing < Stripe::StripeObject
        class Features < Stripe::StripeObject; end
        attr_reader :enabled, :features
      end

      class CapitalFinancingApplication < Stripe::StripeObject
        class Features < Stripe::StripeObject; end
        attr_reader :enabled, :features
      end

      class CapitalFinancingPromotion < Stripe::StripeObject
        class Features < Stripe::StripeObject; end
        attr_reader :enabled, :features
      end

      class Documents < Stripe::StripeObject
        class Features < Stripe::StripeObject; end
        attr_reader :enabled, :features
      end

      class NotificationBanner < Stripe::StripeObject
        class Features < Stripe::StripeObject
          attr_reader :disable_stripe_user_authentication, :external_account_collection
        end
        attr_reader :enabled, :features
      end

      class PaymentDetails < Stripe::StripeObject
        class Features < Stripe::StripeObject
          attr_reader :capture_payments, :destination_on_behalf_of_charge_management, :dispute_management, :refund_management
        end
        attr_reader :enabled, :features
      end

      class Payments < Stripe::StripeObject
        class Features < Stripe::StripeObject
          attr_reader :capture_payments, :destination_on_behalf_of_charge_management, :dispute_management, :refund_management
        end
        attr_reader :enabled, :features
      end

      class Payouts < Stripe::StripeObject
        class Features < Stripe::StripeObject
          attr_reader :disable_stripe_user_authentication, :edit_payout_schedule, :external_account_collection, :instant_payouts, :standard_payouts
        end
        attr_reader :enabled, :features
      end

      class PayoutsList < Stripe::StripeObject
        class Features < Stripe::StripeObject; end
        attr_reader :enabled, :features
      end

      class TaxRegistrations < Stripe::StripeObject
        class Features < Stripe::StripeObject; end
        attr_reader :enabled, :features
      end

      class TaxSettings < Stripe::StripeObject
        class Features < Stripe::StripeObject; end
        attr_reader :enabled, :features
      end
      attr_reader :account_management, :account_onboarding, :balances, :capital_financing, :capital_financing_application, :capital_financing_promotion, :documents, :notification_banner, :payment_details, :payments, :payouts, :payouts_list, :tax_registrations, :tax_settings
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
