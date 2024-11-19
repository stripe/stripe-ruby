# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A dispute occurs when a customer questions your charge with their card issuer.
  # When this happens, you have the opportunity to respond to the dispute with
  # evidence that shows that the charge is legitimate.
  #
  # Related guide: [Disputes and fraud](https://stripe.com/docs/disputes)
  class Dispute < APIResource
    class Evidence < Stripe::StripeObject
      class EnhancedEvidence < Stripe::StripeObject
        class VisaCompellingEvidence3 < Stripe::StripeObject
          class DisputedTransaction < Stripe::StripeObject
            class ShippingAddress < Stripe::StripeObject
              sig { returns(T.nilable(String)) }
              attr_reader :city
              sig { returns(T.nilable(String)) }
              attr_reader :country
              sig { returns(T.nilable(String)) }
              attr_reader :line1
              sig { returns(T.nilable(String)) }
              attr_reader :line2
              sig { returns(T.nilable(String)) }
              attr_reader :postal_code
              sig { returns(T.nilable(String)) }
              attr_reader :state
            end
            sig { returns(T.nilable(String)) }
            attr_reader :customer_account_id
            sig { returns(T.nilable(String)) }
            attr_reader :customer_device_fingerprint
            sig { returns(T.nilable(String)) }
            attr_reader :customer_device_id
            sig { returns(T.nilable(String)) }
            attr_reader :customer_email_address
            sig { returns(T.nilable(String)) }
            attr_reader :customer_purchase_ip
            sig { returns(T.nilable(String)) }
            attr_reader :merchandise_or_services
            sig { returns(T.nilable(String)) }
            attr_reader :product_description
            sig { returns(T.nilable(ShippingAddress)) }
            attr_reader :shipping_address
          end
          class PriorUndisputedTransaction < Stripe::StripeObject
            class ShippingAddress < Stripe::StripeObject
              sig { returns(T.nilable(String)) }
              attr_reader :city
              sig { returns(T.nilable(String)) }
              attr_reader :country
              sig { returns(T.nilable(String)) }
              attr_reader :line1
              sig { returns(T.nilable(String)) }
              attr_reader :line2
              sig { returns(T.nilable(String)) }
              attr_reader :postal_code
              sig { returns(T.nilable(String)) }
              attr_reader :state
            end
            sig { returns(String) }
            attr_reader :charge
            sig { returns(T.nilable(String)) }
            attr_reader :customer_account_id
            sig { returns(T.nilable(String)) }
            attr_reader :customer_device_fingerprint
            sig { returns(T.nilable(String)) }
            attr_reader :customer_device_id
            sig { returns(T.nilable(String)) }
            attr_reader :customer_email_address
            sig { returns(T.nilable(String)) }
            attr_reader :customer_purchase_ip
            sig { returns(T.nilable(String)) }
            attr_reader :product_description
            sig { returns(T.nilable(ShippingAddress)) }
            attr_reader :shipping_address
          end
          sig { returns(T.nilable(DisputedTransaction)) }
          attr_reader :disputed_transaction
          sig { returns(T::Array[PriorUndisputedTransaction]) }
          attr_reader :prior_undisputed_transactions
        end
        sig { returns(VisaCompellingEvidence3) }
        attr_reader :visa_compelling_evidence_3
      end
      sig { returns(T.nilable(String)) }
      attr_reader :access_activity_log
      sig { returns(T.nilable(String)) }
      attr_reader :billing_address
      sig { returns(T.nilable(T.any(String, Stripe::File))) }
      attr_reader :cancellation_policy
      sig { returns(T.nilable(String)) }
      attr_reader :cancellation_policy_disclosure
      sig { returns(T.nilable(String)) }
      attr_reader :cancellation_rebuttal
      sig { returns(T.nilable(T.any(String, Stripe::File))) }
      attr_reader :customer_communication
      sig { returns(T.nilable(String)) }
      attr_reader :customer_email_address
      sig { returns(T.nilable(String)) }
      attr_reader :customer_name
      sig { returns(T.nilable(String)) }
      attr_reader :customer_purchase_ip
      sig { returns(T.nilable(T.any(String, Stripe::File))) }
      attr_reader :customer_signature
      sig { returns(T.nilable(T.any(String, Stripe::File))) }
      attr_reader :duplicate_charge_documentation
      sig { returns(T.nilable(String)) }
      attr_reader :duplicate_charge_explanation
      sig { returns(T.nilable(String)) }
      attr_reader :duplicate_charge_id
      sig { returns(EnhancedEvidence) }
      attr_reader :enhanced_evidence
      sig { returns(T.nilable(String)) }
      attr_reader :product_description
      sig { returns(T.nilable(T.any(String, Stripe::File))) }
      attr_reader :receipt
      sig { returns(T.nilable(T.any(String, Stripe::File))) }
      attr_reader :refund_policy
      sig { returns(T.nilable(String)) }
      attr_reader :refund_policy_disclosure
      sig { returns(T.nilable(String)) }
      attr_reader :refund_refusal_explanation
      sig { returns(T.nilable(String)) }
      attr_reader :service_date
      sig { returns(T.nilable(T.any(String, Stripe::File))) }
      attr_reader :service_documentation
      sig { returns(T.nilable(String)) }
      attr_reader :shipping_address
      sig { returns(T.nilable(String)) }
      attr_reader :shipping_carrier
      sig { returns(T.nilable(String)) }
      attr_reader :shipping_date
      sig { returns(T.nilable(T.any(String, Stripe::File))) }
      attr_reader :shipping_documentation
      sig { returns(T.nilable(String)) }
      attr_reader :shipping_tracking_number
      sig { returns(T.nilable(T.any(String, Stripe::File))) }
      attr_reader :uncategorized_file
      sig { returns(T.nilable(String)) }
      attr_reader :uncategorized_text
    end
    class EvidenceDetails < Stripe::StripeObject
      class EnhancedEligibility < Stripe::StripeObject
        class VisaCompellingEvidence3 < Stripe::StripeObject
          sig { returns(T::Array[String]) }
          attr_reader :required_actions
          sig { returns(String) }
          attr_reader :status
        end
        sig { returns(VisaCompellingEvidence3) }
        attr_reader :visa_compelling_evidence_3
      end
      sig { returns(T.nilable(Integer)) }
      attr_reader :due_by
      sig { returns(EnhancedEligibility) }
      attr_reader :enhanced_eligibility
      sig { returns(T::Boolean) }
      attr_reader :has_evidence
      sig { returns(T::Boolean) }
      attr_reader :past_due
      sig { returns(Integer) }
      attr_reader :submission_count
    end
    class PaymentMethodDetails < Stripe::StripeObject
      class AmazonPay < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :dispute_type
      end
      class Card < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :brand
        sig { returns(String) }
        attr_reader :case_type
        sig { returns(T.nilable(String)) }
        attr_reader :network_reason_code
      end
      class Klarna < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :reason_code
      end
      class Paypal < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :case_id
        sig { returns(T.nilable(String)) }
        attr_reader :reason_code
      end
      sig { returns(AmazonPay) }
      attr_reader :amazon_pay
      sig { returns(Card) }
      attr_reader :card
      sig { returns(Klarna) }
      attr_reader :klarna
      sig { returns(Paypal) }
      attr_reader :paypal
      sig { returns(String) }
      attr_reader :type
    end
    sig { returns(Integer) }
    # Disputed amount. Usually the amount of the charge, but it can differ (usually because of currency fluctuation or because only part of the order is disputed).
    attr_reader :amount
    sig { returns(T::Array[Stripe::BalanceTransaction]) }
    # List of zero, one, or two balance transactions that show funds withdrawn and reinstated to your Stripe account as a result of this dispute.
    attr_reader :balance_transactions
    sig { returns(T.any(String, Stripe::Charge)) }
    # ID of the charge that's disputed.
    attr_reader :charge
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(String) }
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    sig { returns(T::Array[String]) }
    # List of eligibility types that are included in `enhanced_evidence`.
    attr_reader :enhanced_eligibility_types
    sig { returns(Evidence) }
    # Attribute for field evidence
    attr_reader :evidence
    sig { returns(EvidenceDetails) }
    # Attribute for field evidence_details
    attr_reader :evidence_details
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T::Boolean) }
    # If true, it's still possible to refund the disputed payment. After the payment has been fully refunded, no further funds are withdrawn from your Stripe account as a result of this dispute.
    attr_reader :is_charge_refundable
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(T::Hash[String, String]) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(T.nilable(String)) }
    # Network-dependent reason code for the dispute.
    attr_reader :network_reason_code
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T.nilable(T.any(String, Stripe::PaymentIntent))) }
    # ID of the PaymentIntent that's disputed.
    attr_reader :payment_intent
    sig { returns(PaymentMethodDetails) }
    # Attribute for field payment_method_details
    attr_reader :payment_method_details
    sig { returns(String) }
    # Reason given by cardholder for dispute. Possible values are `bank_cannot_process`, `check_returned`, `credit_not_processed`, `customer_initiated`, `debit_not_authorized`, `duplicate`, `fraudulent`, `general`, `incorrect_account_details`, `insufficient_funds`, `product_not_received`, `product_unacceptable`, `subscription_canceled`, or `unrecognized`. Learn more about [dispute reasons](https://stripe.com/docs/disputes/categories).
    attr_reader :reason
    sig { returns(String) }
    # Current status of dispute. Possible values are `warning_needs_response`, `warning_under_review`, `warning_closed`, `needs_response`, `under_review`, `won`, or `lost`.
    attr_reader :status
  end
end