# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A Mandate is a record of the permission that your customer gives you to debit their payment method.
  class Mandate < APIResource
    class CustomerAcceptance < Stripe::StripeObject
      class Offline < Stripe::StripeObject; end
      class Online < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :ip_address
        sig { returns(T.nilable(String)) }
        attr_reader :user_agent
      end
      sig { returns(T.nilable(Integer)) }
      attr_reader :accepted_at
      sig { returns(Offline) }
      attr_reader :offline
      sig { returns(Online) }
      attr_reader :online
      sig { returns(String) }
      attr_reader :type
    end
    class MultiUse < Stripe::StripeObject; end
    class PaymentMethodDetails < Stripe::StripeObject
      class AcssDebit < Stripe::StripeObject
        sig { returns(T::Array[String]) }
        attr_reader :default_for
        sig { returns(T.nilable(String)) }
        attr_reader :interval_description
        sig { returns(String) }
        attr_reader :payment_schedule
        sig { returns(String) }
        attr_reader :transaction_type
      end
      class AmazonPay < Stripe::StripeObject; end
      class AuBecsDebit < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :url
      end
      class BacsDebit < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :network_status
        sig { returns(String) }
        attr_reader :reference
        sig { returns(T.nilable(String)) }
        attr_reader :revocation_reason
        sig { returns(String) }
        attr_reader :url
      end
      class Card < Stripe::StripeObject; end
      class Cashapp < Stripe::StripeObject; end
      class KakaoPay < Stripe::StripeObject; end
      class KrCard < Stripe::StripeObject; end
      class Link < Stripe::StripeObject; end
      class Paypal < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :billing_agreement_id
        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint
        sig { returns(T.nilable(String)) }
        attr_reader :payer_id
        sig { returns(T.nilable(String)) }
        attr_reader :verified_email
      end
      class Payto < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :amount
        sig { returns(String) }
        attr_reader :amount_type
        sig { returns(T.nilable(String)) }
        attr_reader :end_date
        sig { returns(String) }
        attr_reader :payment_schedule
        sig { returns(T.nilable(Integer)) }
        attr_reader :payments_per_period
        sig { returns(T.nilable(String)) }
        attr_reader :purpose
        sig { returns(T.nilable(String)) }
        attr_reader :start_date
      end
      class RevolutPay < Stripe::StripeObject; end
      class SepaDebit < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :reference
        sig { returns(String) }
        attr_reader :url
      end
      class UsBankAccount < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :collection_method
      end
      sig { returns(AcssDebit) }
      attr_reader :acss_debit
      sig { returns(AmazonPay) }
      attr_reader :amazon_pay
      sig { returns(AuBecsDebit) }
      attr_reader :au_becs_debit
      sig { returns(BacsDebit) }
      attr_reader :bacs_debit
      sig { returns(Card) }
      attr_reader :card
      sig { returns(Cashapp) }
      attr_reader :cashapp
      sig { returns(KakaoPay) }
      attr_reader :kakao_pay
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
      sig { returns(String) }
      attr_reader :type
      sig { returns(UsBankAccount) }
      attr_reader :us_bank_account
    end
    class SingleUse < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount
      sig { returns(String) }
      attr_reader :currency
    end
    sig { returns(CustomerAcceptance) }
    # Attribute for field customer_acceptance
    attr_reader :customer_acceptance
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(MultiUse) }
    # Attribute for field multi_use
    attr_reader :multi_use
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(String) }
    # The account (if any) that the mandate is intended for.
    attr_reader :on_behalf_of
    sig { returns(T.any(String, Stripe::PaymentMethod)) }
    # ID of the payment method associated with this mandate.
    attr_reader :payment_method
    sig { returns(PaymentMethodDetails) }
    # Attribute for field payment_method_details
    attr_reader :payment_method_details
    sig { returns(SingleUse) }
    # Attribute for field single_use
    attr_reader :single_use
    sig { returns(String) }
    # The mandate status indicates whether or not you can use it to initiate a payment.
    attr_reader :status
    sig { returns(String) }
    # The type of the mandate.
    attr_reader :type
  end
end