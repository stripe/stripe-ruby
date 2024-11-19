# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A Mandate is a record of the permission that your customer gives you to debit their payment method.
  class Mandate < APIResource
    OBJECT_NAME = "mandate"
    def self.object_name
      "mandate"
    end

    class CustomerAcceptance < Stripe::StripeObject
      class Offline < Stripe::StripeObject; end

      class Online < Stripe::StripeObject
        attr_reader :ip_address, :user_agent
      end
      attr_reader :accepted_at, :offline, :online, :type
    end

    class MultiUse < Stripe::StripeObject; end

    class PaymentMethodDetails < Stripe::StripeObject
      class AcssDebit < Stripe::StripeObject
        attr_reader :default_for, :interval_description, :payment_schedule, :transaction_type
      end

      class AmazonPay < Stripe::StripeObject; end

      class AuBecsDebit < Stripe::StripeObject
        attr_reader :url
      end

      class BacsDebit < Stripe::StripeObject
        attr_reader :network_status, :reference, :revocation_reason, :url
      end

      class Card < Stripe::StripeObject; end
      class Cashapp < Stripe::StripeObject; end
      class KakaoPay < Stripe::StripeObject; end
      class KrCard < Stripe::StripeObject; end
      class Link < Stripe::StripeObject; end

      class Paypal < Stripe::StripeObject
        attr_reader :billing_agreement_id, :fingerprint, :payer_id, :verified_email
      end

      class Payto < Stripe::StripeObject
        attr_reader :amount, :amount_type, :end_date, :payment_schedule, :payments_per_period, :purpose, :start_date
      end

      class RevolutPay < Stripe::StripeObject; end

      class SepaDebit < Stripe::StripeObject
        attr_reader :reference, :url
      end

      class UsBankAccount < Stripe::StripeObject
        attr_reader :collection_method
      end
      attr_reader :acss_debit, :amazon_pay, :au_becs_debit, :bacs_debit, :card, :cashapp, :kakao_pay, :kr_card, :link, :paypal, :payto, :revolut_pay, :sepa_debit, :type, :us_bank_account
    end

    class SingleUse < Stripe::StripeObject
      attr_reader :amount, :currency
    end
    # Attribute for field customer_acceptance
    attr_reader :customer_acceptance
    # Unique identifier for the object.
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Attribute for field multi_use
    attr_reader :multi_use
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # The account (if any) that the mandate is intended for.
    attr_reader :on_behalf_of
    # ID of the payment method associated with this mandate.
    attr_reader :payment_method
    # Attribute for field payment_method_details
    attr_reader :payment_method_details
    # Attribute for field single_use
    attr_reader :single_use
    # The mandate status indicates whether or not you can use it to initiate a payment.
    attr_reader :status
    # The type of the mandate.
    attr_reader :type
  end
end
