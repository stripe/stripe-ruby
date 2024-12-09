# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A dispute occurs when a customer questions your charge with their card issuer.
  # When this happens, you have the opportunity to respond to the dispute with
  # evidence that shows that the charge is legitimate.
  #
  # Related guide: [Disputes and fraud](https://stripe.com/docs/disputes)
  class Dispute < APIResource
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "dispute"
    def self.object_name
      "dispute"
    end

    class Evidence < Stripe::StripeObject
      class EnhancedEvidence < Stripe::StripeObject
        class VisaCompellingEvidence3 < Stripe::StripeObject
          class DisputedTransaction < Stripe::StripeObject
            class ShippingAddress < Stripe::StripeObject
              attr_reader :city, :country, :line1, :line2, :postal_code, :state
            end
            attr_reader :customer_account_id, :customer_device_fingerprint, :customer_device_id, :customer_email_address, :customer_purchase_ip, :merchandise_or_services, :product_description, :shipping_address
          end

          class PriorUndisputedTransaction < Stripe::StripeObject
            class ShippingAddress < Stripe::StripeObject
              attr_reader :city, :country, :line1, :line2, :postal_code, :state
            end
            attr_reader :charge, :customer_account_id, :customer_device_fingerprint, :customer_device_id, :customer_email_address, :customer_purchase_ip, :product_description, :shipping_address
          end
          attr_reader :disputed_transaction, :prior_undisputed_transactions
        end

        class VisaCompliance < Stripe::StripeObject
          attr_reader :fee_acknowledged
        end
        attr_reader :visa_compelling_evidence_3, :visa_compliance
      end
      attr_reader :access_activity_log, :billing_address, :cancellation_policy, :cancellation_policy_disclosure, :cancellation_rebuttal, :customer_communication, :customer_email_address, :customer_name, :customer_purchase_ip, :customer_signature, :duplicate_charge_documentation, :duplicate_charge_explanation, :duplicate_charge_id, :enhanced_evidence, :product_description, :receipt, :refund_policy, :refund_policy_disclosure, :refund_refusal_explanation, :service_date, :service_documentation, :shipping_address, :shipping_carrier, :shipping_date, :shipping_documentation, :shipping_tracking_number, :uncategorized_file, :uncategorized_text
    end

    class EvidenceDetails < Stripe::StripeObject
      class EnhancedEligibility < Stripe::StripeObject
        class VisaCompellingEvidence3 < Stripe::StripeObject
          attr_reader :required_actions, :status
        end

        class VisaCompliance < Stripe::StripeObject
          attr_reader :status
        end
        attr_reader :visa_compelling_evidence_3, :visa_compliance
      end
      attr_reader :due_by, :enhanced_eligibility, :has_evidence, :past_due, :submission_count
    end

    class PaymentMethodDetails < Stripe::StripeObject
      class AmazonPay < Stripe::StripeObject
        attr_reader :dispute_type
      end

      class Card < Stripe::StripeObject
        attr_reader :brand, :case_type, :network_reason_code
      end

      class Klarna < Stripe::StripeObject
        attr_reader :reason_code
      end

      class Paypal < Stripe::StripeObject
        attr_reader :case_id, :reason_code
      end
      attr_reader :amazon_pay, :card, :klarna, :paypal, :type
    end
    # Disputed amount. Usually the amount of the charge, but it can differ (usually because of currency fluctuation or because only part of the order is disputed).
    attr_reader :amount
    # List of zero, one, or two balance transactions that show funds withdrawn and reinstated to your Stripe account as a result of this dispute.
    attr_reader :balance_transactions
    # ID of the charge that's disputed.
    attr_reader :charge
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    # List of eligibility types that are included in `enhanced_evidence`.
    attr_reader :enhanced_eligibility_types
    # Attribute for field evidence
    attr_reader :evidence
    # Attribute for field evidence_details
    attr_reader :evidence_details
    # Unique identifier for the object.
    attr_reader :id
    # If true, it's still possible to refund the disputed payment. After the payment has been fully refunded, no further funds are withdrawn from your Stripe account as a result of this dispute.
    attr_reader :is_charge_refundable
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # Network-dependent reason code for the dispute.
    attr_reader :network_reason_code
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # ID of the PaymentIntent that's disputed.
    attr_reader :payment_intent
    # Attribute for field payment_method_details
    attr_reader :payment_method_details
    # Reason given by cardholder for dispute. Possible values are `bank_cannot_process`, `check_returned`, `credit_not_processed`, `customer_initiated`, `debit_not_authorized`, `duplicate`, `fraudulent`, `general`, `incorrect_account_details`, `insufficient_funds`, `product_not_received`, `product_unacceptable`, `subscription_canceled`, or `unrecognized`. Learn more about [dispute reasons](https://stripe.com/docs/disputes/categories).
    attr_reader :reason
    # Current status of dispute. Possible values are `warning_needs_response`, `warning_under_review`, `warning_closed`, `needs_response`, `under_review`, `won`, or `lost`.
    attr_reader :status

    # Closing the dispute for a charge indicates that you do not have any evidence to submit and are essentially dismissing the dispute, acknowledging it as lost.
    #
    # The status of the dispute will change from needs_response to lost. Closing a dispute is irreversible.
    def close(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/disputes/%<dispute>s/close", { dispute: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Closing the dispute for a charge indicates that you do not have any evidence to submit and are essentially dismissing the dispute, acknowledging it as lost.
    #
    # The status of the dispute will change from needs_response to lost. Closing a dispute is irreversible.
    def self.close(dispute, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/disputes/%<dispute>s/close", { dispute: CGI.escape(dispute) }),
        params: params,
        opts: opts
      )
    end

    # Returns a list of your disputes.
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/disputes", params: filters, opts: opts)
    end

    # When you get a dispute, contacting your customer is always the best first step. If that doesn't work, you can submit evidence to help us resolve the dispute in your favor. You can do this in your [dashboard](https://dashboard.stripe.com/disputes), but if you prefer, you can use the API to submit evidence programmatically.
    #
    # Depending on your dispute type, different evidence fields will give you a better chance of winning your dispute. To figure out which evidence fields to provide, see our [guide to dispute types](https://stripe.com/docs/disputes/categories).
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/disputes/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
