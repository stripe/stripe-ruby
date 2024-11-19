# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A SetupAttempt describes one attempted confirmation of a SetupIntent,
  # whether that confirmation is successful or unsuccessful. You can use
  # SetupAttempts to inspect details of a specific attempt at setting up a
  # payment method using a SetupIntent.
  class SetupAttempt < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = "setup_attempt"
    def self.object_name
      "setup_attempt"
    end

    class PaymentMethodDetails < Stripe::StripeObject
      class AcssDebit < Stripe::StripeObject; end
      class AmazonPay < Stripe::StripeObject; end
      class AuBecsDebit < Stripe::StripeObject; end
      class BacsDebit < Stripe::StripeObject; end

      class Bancontact < Stripe::StripeObject
        attr_reader :bank_code, :bank_name, :bic, :generated_sepa_debit, :generated_sepa_debit_mandate, :iban_last4, :preferred_language, :verified_name
      end

      class Boleto < Stripe::StripeObject; end

      class Card < Stripe::StripeObject
        class Checks < Stripe::StripeObject
          attr_reader :address_line1_check, :address_postal_code_check, :cvc_check
        end

        class ThreeDSecure < Stripe::StripeObject
          attr_reader :authentication_flow, :electronic_commerce_indicator, :result, :result_reason, :transaction_id, :version
        end

        class Wallet < Stripe::StripeObject
          class ApplePay < Stripe::StripeObject; end
          class GooglePay < Stripe::StripeObject; end
          attr_reader :apple_pay, :google_pay, :type
        end
        attr_reader :brand, :checks, :country, :description, :exp_month, :exp_year, :fingerprint, :funding, :iin, :issuer, :last4, :network, :three_d_secure, :wallet
      end

      class CardPresent < Stripe::StripeObject
        class Offline < Stripe::StripeObject
          attr_reader :stored_at, :type
        end
        attr_reader :generated_card, :offline
      end

      class Cashapp < Stripe::StripeObject; end

      class IdBankTransfer < Stripe::StripeObject
        attr_reader :bank, :bank_code, :bank_name, :display_name
      end

      class Ideal < Stripe::StripeObject
        attr_reader :bank, :bic, :generated_sepa_debit, :generated_sepa_debit_mandate, :iban_last4, :verified_name
      end

      class KakaoPay < Stripe::StripeObject; end
      class Klarna < Stripe::StripeObject; end
      class KrCard < Stripe::StripeObject; end
      class Link < Stripe::StripeObject; end
      class Paypal < Stripe::StripeObject; end
      class Payto < Stripe::StripeObject; end
      class RevolutPay < Stripe::StripeObject; end
      class SepaDebit < Stripe::StripeObject; end

      class Sofort < Stripe::StripeObject
        attr_reader :bank_code, :bank_name, :bic, :generated_sepa_debit, :generated_sepa_debit_mandate, :iban_last4, :preferred_language, :verified_name
      end

      class UsBankAccount < Stripe::StripeObject; end
      attr_reader :acss_debit, :amazon_pay, :au_becs_debit, :bacs_debit, :bancontact, :boleto, :card, :card_present, :cashapp, :id_bank_transfer, :ideal, :kakao_pay, :klarna, :kr_card, :link, :paypal, :payto, :revolut_pay, :sepa_debit, :sofort, :type, :us_bank_account
    end

    class SetupError < Stripe::StripeObject
      attr_reader :charge, :code, :decline_code, :doc_url, :message, :param, :payment_intent, :payment_method, :payment_method_type, :request_log_url, :setup_intent, :source, :type
    end
    # The value of [application](https://stripe.com/docs/api/setup_intents/object#setup_intent_object-application) on the SetupIntent at the time of this confirmation.
    attr_reader :application
    # If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.
    #
    # It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
    attr_reader :attach_to_self
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # The value of [customer](https://stripe.com/docs/api/setup_intents/object#setup_intent_object-customer) on the SetupIntent at the time of this confirmation.
    attr_reader :customer
    # Indicates the directions of money movement for which this payment method is intended to be used.
    #
    # Include `inbound` if you intend to use the payment method as the origin to pull funds from. Include `outbound` if you intend to use the payment method as the destination to send funds to. You can include both if you intend to use the payment method for both purposes.
    attr_reader :flow_directions
    # Unique identifier for the object.
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # The value of [on_behalf_of](https://stripe.com/docs/api/setup_intents/object#setup_intent_object-on_behalf_of) on the SetupIntent at the time of this confirmation.
    attr_reader :on_behalf_of
    # ID of the payment method used with this SetupAttempt.
    attr_reader :payment_method
    # Attribute for field payment_method_details
    attr_reader :payment_method_details
    # The error encountered during this attempt to confirm the SetupIntent, if any.
    attr_reader :setup_error
    # ID of the SetupIntent that this attempt belongs to.
    attr_reader :setup_intent
    # Status of this SetupAttempt, one of `requires_confirmation`, `requires_action`, `processing`, `succeeded`, `failed`, or `abandoned`.
    attr_reader :status
    # The value of [usage](https://stripe.com/docs/api/setup_intents/object#setup_intent_object-usage) on the SetupIntent at the time of this confirmation, one of `off_session` or `on_session`.
    attr_reader :usage

    # Returns a list of SetupAttempts that associate with a provided SetupIntent.
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/setup_attempts", params: filters, opts: opts)
    end
  end
end
