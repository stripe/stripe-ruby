# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A SetupAttempt describes one attempted confirmation of a SetupIntent,
  # whether that confirmation is successful or unsuccessful. You can use
  # SetupAttempts to inspect details of a specific attempt at setting up a
  # payment method using a SetupIntent.
  class SetupAttempt < APIResource
    class PaymentMethodDetails < Stripe::StripeObject
      class AcssDebit < Stripe::StripeObject; end
      class AmazonPay < Stripe::StripeObject; end
      class AuBecsDebit < Stripe::StripeObject; end
      class BacsDebit < Stripe::StripeObject; end
      class Bancontact < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :bank_code
        sig { returns(T.nilable(String)) }
        attr_reader :bank_name
        sig { returns(T.nilable(String)) }
        attr_reader :bic
        sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
        attr_reader :generated_sepa_debit
        sig { returns(T.nilable(T.any(String, Stripe::Mandate))) }
        attr_reader :generated_sepa_debit_mandate
        sig { returns(T.nilable(String)) }
        attr_reader :iban_last4
        sig { returns(T.nilable(String)) }
        attr_reader :preferred_language
        sig { returns(T.nilable(String)) }
        attr_reader :verified_name
      end
      class Boleto < Stripe::StripeObject; end
      class Card < Stripe::StripeObject
        class Checks < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :address_line1_check
          sig { returns(T.nilable(String)) }
          attr_reader :address_postal_code_check
          sig { returns(T.nilable(String)) }
          attr_reader :cvc_check
        end
        class ThreeDSecure < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :authentication_flow
          sig { returns(T.nilable(String)) }
          attr_reader :electronic_commerce_indicator
          sig { returns(T.nilable(String)) }
          attr_reader :result
          sig { returns(T.nilable(String)) }
          attr_reader :result_reason
          sig { returns(T.nilable(String)) }
          attr_reader :transaction_id
          sig { returns(T.nilable(String)) }
          attr_reader :version
        end
        class Wallet < Stripe::StripeObject
          class ApplePay < Stripe::StripeObject; end
          class GooglePay < Stripe::StripeObject; end
          sig { returns(ApplePay) }
          attr_reader :apple_pay
          sig { returns(GooglePay) }
          attr_reader :google_pay
          sig { returns(String) }
          attr_reader :type
        end
        sig { returns(T.nilable(String)) }
        attr_reader :brand
        sig { returns(T.nilable(Checks)) }
        attr_reader :checks
        sig { returns(T.nilable(String)) }
        attr_reader :country
        sig { returns(T.nilable(String)) }
        attr_reader :description
        sig { returns(T.nilable(Integer)) }
        attr_reader :exp_month
        sig { returns(T.nilable(Integer)) }
        attr_reader :exp_year
        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint
        sig { returns(T.nilable(String)) }
        attr_reader :funding
        sig { returns(T.nilable(String)) }
        attr_reader :iin
        sig { returns(T.nilable(String)) }
        attr_reader :issuer
        sig { returns(T.nilable(String)) }
        attr_reader :last4
        sig { returns(T.nilable(String)) }
        attr_reader :network
        sig { returns(T.nilable(ThreeDSecure)) }
        attr_reader :three_d_secure
        sig { returns(T.nilable(Wallet)) }
        attr_reader :wallet
      end
      class CardPresent < Stripe::StripeObject
        class Offline < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :stored_at
          sig { returns(T.nilable(String)) }
          attr_reader :type
        end
        sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
        attr_reader :generated_card
        sig { returns(T.nilable(Offline)) }
        attr_reader :offline
      end
      class Cashapp < Stripe::StripeObject; end
      class IdBankTransfer < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :bank
        sig { returns(T.nilable(String)) }
        attr_reader :bank_code
        sig { returns(T.nilable(String)) }
        attr_reader :bank_name
        sig { returns(T.nilable(String)) }
        attr_reader :display_name
      end
      class Ideal < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :bank
        sig { returns(T.nilable(String)) }
        attr_reader :bic
        sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
        attr_reader :generated_sepa_debit
        sig { returns(T.nilable(T.any(String, Stripe::Mandate))) }
        attr_reader :generated_sepa_debit_mandate
        sig { returns(T.nilable(String)) }
        attr_reader :iban_last4
        sig { returns(T.nilable(String)) }
        attr_reader :verified_name
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
        sig { returns(T.nilable(String)) }
        attr_reader :bank_code
        sig { returns(T.nilable(String)) }
        attr_reader :bank_name
        sig { returns(T.nilable(String)) }
        attr_reader :bic
        sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
        attr_reader :generated_sepa_debit
        sig { returns(T.nilable(T.any(String, Stripe::Mandate))) }
        attr_reader :generated_sepa_debit_mandate
        sig { returns(T.nilable(String)) }
        attr_reader :iban_last4
        sig { returns(T.nilable(String)) }
        attr_reader :preferred_language
        sig { returns(T.nilable(String)) }
        attr_reader :verified_name
      end
      class UsBankAccount < Stripe::StripeObject; end
      sig { returns(AcssDebit) }
      attr_reader :acss_debit
      sig { returns(AmazonPay) }
      attr_reader :amazon_pay
      sig { returns(AuBecsDebit) }
      attr_reader :au_becs_debit
      sig { returns(BacsDebit) }
      attr_reader :bacs_debit
      sig { returns(Bancontact) }
      attr_reader :bancontact
      sig { returns(Boleto) }
      attr_reader :boleto
      sig { returns(Card) }
      attr_reader :card
      sig { returns(CardPresent) }
      attr_reader :card_present
      sig { returns(Cashapp) }
      attr_reader :cashapp
      sig { returns(IdBankTransfer) }
      attr_reader :id_bank_transfer
      sig { returns(Ideal) }
      attr_reader :ideal
      sig { returns(KakaoPay) }
      attr_reader :kakao_pay
      sig { returns(Klarna) }
      attr_reader :klarna
      sig { returns(KrCard) }
      attr_reader :kr_card
      sig { returns(Link) }
      attr_reader :link
      sig { returns(Paypal) }
      attr_reader :paypal
      sig { returns(Payto) }
      attr_reader :payto
      sig { returns(RevolutPay) }
      attr_reader :revolut_pay
      sig { returns(SepaDebit) }
      attr_reader :sepa_debit
      sig { returns(Sofort) }
      attr_reader :sofort
      sig { returns(String) }
      attr_reader :type
      sig { returns(UsBankAccount) }
      attr_reader :us_bank_account
    end
    class SetupError < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :charge
      sig { returns(String) }
      attr_reader :code
      sig { returns(String) }
      attr_reader :decline_code
      sig { returns(String) }
      attr_reader :doc_url
      sig { returns(String) }
      attr_reader :message
      sig { returns(String) }
      attr_reader :param
      sig { returns(Stripe::PaymentIntent) }
      attr_reader :payment_intent
      sig { returns(Stripe::PaymentMethod) }
      attr_reader :payment_method
      sig { returns(String) }
      attr_reader :payment_method_type
      sig { returns(String) }
      attr_reader :request_log_url
      sig { returns(Stripe::SetupIntent) }
      attr_reader :setup_intent
      sig { returns(T.any(Stripe::Account, Stripe::BankAccount, Stripe::Card, Stripe::Source)) }
      attr_reader :source
      sig { returns(String) }
      attr_reader :type
    end
    sig { returns(T.nilable(T.any(String, Stripe::Application))) }
    # The value of [application](https://stripe.com/docs/api/setup_intents/object#setup_intent_object-application) on the SetupIntent at the time of this confirmation.
    attr_reader :application
    sig { returns(T::Boolean) }
    # If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.
    #
    # It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
    attr_reader :attach_to_self
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    # The value of [customer](https://stripe.com/docs/api/setup_intents/object#setup_intent_object-customer) on the SetupIntent at the time of this confirmation.
    attr_reader :customer
    sig { returns(T.nilable(T::Array[String])) }
    # Indicates the directions of money movement for which this payment method is intended to be used.
    #
    # Include `inbound` if you intend to use the payment method as the origin to pull funds from. Include `outbound` if you intend to use the payment method as the destination to send funds to. You can include both if you intend to use the payment method for both purposes.
    attr_reader :flow_directions
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    # The value of [on_behalf_of](https://stripe.com/docs/api/setup_intents/object#setup_intent_object-on_behalf_of) on the SetupIntent at the time of this confirmation.
    attr_reader :on_behalf_of
    sig { returns(T.any(String, Stripe::PaymentMethod)) }
    # ID of the payment method used with this SetupAttempt.
    attr_reader :payment_method
    sig { returns(PaymentMethodDetails) }
    # Attribute for field payment_method_details
    attr_reader :payment_method_details
    sig { returns(T.nilable(SetupError)) }
    # The error encountered during this attempt to confirm the SetupIntent, if any.
    attr_reader :setup_error
    sig { returns(T.any(String, Stripe::SetupIntent)) }
    # ID of the SetupIntent that this attempt belongs to.
    attr_reader :setup_intent
    sig { returns(String) }
    # Status of this SetupAttempt, one of `requires_confirmation`, `requires_action`, `processing`, `succeeded`, `failed`, or `abandoned`.
    attr_reader :status
    sig { returns(String) }
    # The value of [usage](https://stripe.com/docs/api/setup_intents/object#setup_intent_object-usage) on the SetupIntent at the time of this confirmation, one of `off_session` or `on_session`.
    attr_reader :usage
  end
end