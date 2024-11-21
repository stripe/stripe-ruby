# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
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
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(String)) }
              attr_reader :city
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(T.nilable(String)) }
              attr_reader :country
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(T.nilable(String)) }
              attr_reader :line1
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(T.nilable(String)) }
              attr_reader :line2
              # ZIP or postal code.
              sig { returns(T.nilable(String)) }
              attr_reader :postal_code
              # State, county, province, or region.
              sig { returns(T.nilable(String)) }
              attr_reader :state
            end
            # User Account ID used to log into business platform. Must be recognizable by the user.
            sig { returns(T.nilable(String)) }
            attr_reader :customer_account_id
            # Unique identifier of the cardholder’s device derived from a combination of at least two hardware and software attributes. Must be at least 20 characters.
            sig { returns(T.nilable(String)) }
            attr_reader :customer_device_fingerprint
            # Unique identifier of the cardholder’s device such as a device serial number (e.g., International Mobile Equipment Identity [IMEI]). Must be at least 15 characters.
            sig { returns(T.nilable(String)) }
            attr_reader :customer_device_id
            # The email address of the customer.
            sig { returns(T.nilable(String)) }
            attr_reader :customer_email_address
            # The IP address that the customer used when making the purchase.
            sig { returns(T.nilable(String)) }
            attr_reader :customer_purchase_ip
            # Categorization of disputed payment.
            sig { returns(T.nilable(String)) }
            attr_reader :merchandise_or_services
            # A description of the product or service that was sold.
            sig { returns(T.nilable(String)) }
            attr_reader :product_description
            # The address to which a physical product was shipped. All fields are required for Visa Compelling Evidence 3.0 evidence submission.
            sig { returns(T.nilable(ShippingAddress)) }
            attr_reader :shipping_address
          end
          class PriorUndisputedTransaction < Stripe::StripeObject
            class ShippingAddress < Stripe::StripeObject
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(String)) }
              attr_reader :city
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(T.nilable(String)) }
              attr_reader :country
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(T.nilable(String)) }
              attr_reader :line1
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(T.nilable(String)) }
              attr_reader :line2
              # ZIP or postal code.
              sig { returns(T.nilable(String)) }
              attr_reader :postal_code
              # State, county, province, or region.
              sig { returns(T.nilable(String)) }
              attr_reader :state
            end
            # Stripe charge ID for the Visa Compelling Evidence 3.0 eligible prior charge.
            sig { returns(String) }
            attr_reader :charge
            # User Account ID used to log into business platform. Must be recognizable by the user.
            sig { returns(T.nilable(String)) }
            attr_reader :customer_account_id
            # Unique identifier of the cardholder’s device derived from a combination of at least two hardware and software attributes. Must be at least 20 characters.
            sig { returns(T.nilable(String)) }
            attr_reader :customer_device_fingerprint
            # Unique identifier of the cardholder’s device such as a device serial number (e.g., International Mobile Equipment Identity [IMEI]). Must be at least 15 characters.
            sig { returns(T.nilable(String)) }
            attr_reader :customer_device_id
            # The email address of the customer.
            sig { returns(T.nilable(String)) }
            attr_reader :customer_email_address
            # The IP address that the customer used when making the purchase.
            sig { returns(T.nilable(String)) }
            attr_reader :customer_purchase_ip
            # A description of the product or service that was sold.
            sig { returns(T.nilable(String)) }
            attr_reader :product_description
            # The address to which a physical product was shipped. All fields are required for Visa Compelling Evidence 3.0 evidence submission.
            sig { returns(T.nilable(ShippingAddress)) }
            attr_reader :shipping_address
          end
          # Disputed transaction details for Visa Compelling Evidence 3.0 evidence submission.
          sig { returns(T.nilable(DisputedTransaction)) }
          attr_reader :disputed_transaction
          # List of exactly two prior undisputed transaction objects for Visa Compelling Evidence 3.0 evidence submission.
          sig { returns(T::Array[PriorUndisputedTransaction]) }
          attr_reader :prior_undisputed_transactions
        end
        # Attribute for field visa_compelling_evidence_3
        sig { returns(VisaCompellingEvidence3) }
        attr_reader :visa_compelling_evidence_3
      end
      # Any server or activity logs showing proof that the customer accessed or downloaded the purchased digital product. This information should include IP addresses, corresponding timestamps, and any detailed recorded activity.
      sig { returns(T.nilable(String)) }
      attr_reader :access_activity_log
      # The billing address provided by the customer.
      sig { returns(T.nilable(String)) }
      attr_reader :billing_address
      # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Your subscription cancellation policy, as shown to the customer.
      sig { returns(T.nilable(T.any(String, Stripe::File))) }
      attr_reader :cancellation_policy
      # An explanation of how and when the customer was shown your refund policy prior to purchase.
      sig { returns(T.nilable(String)) }
      attr_reader :cancellation_policy_disclosure
      # A justification for why the customer's subscription was not canceled.
      sig { returns(T.nilable(String)) }
      attr_reader :cancellation_rebuttal
      # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Any communication with the customer that you feel is relevant to your case. Examples include emails proving that the customer received the product or service, or demonstrating their use of or satisfaction with the product or service.
      sig { returns(T.nilable(T.any(String, Stripe::File))) }
      attr_reader :customer_communication
      # The email address of the customer.
      sig { returns(T.nilable(String)) }
      attr_reader :customer_email_address
      # The name of the customer.
      sig { returns(T.nilable(String)) }
      attr_reader :customer_name
      # The IP address that the customer used when making the purchase.
      sig { returns(T.nilable(String)) }
      attr_reader :customer_purchase_ip
      # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) A relevant document or contract showing the customer's signature.
      sig { returns(T.nilable(T.any(String, Stripe::File))) }
      attr_reader :customer_signature
      # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Documentation for the prior charge that can uniquely identify the charge, such as a receipt, shipping label, work order, etc. This document should be paired with a similar document from the disputed payment that proves the two payments are separate.
      sig { returns(T.nilable(T.any(String, Stripe::File))) }
      attr_reader :duplicate_charge_documentation
      # An explanation of the difference between the disputed charge versus the prior charge that appears to be a duplicate.
      sig { returns(T.nilable(String)) }
      attr_reader :duplicate_charge_explanation
      # The Stripe ID for the prior charge which appears to be a duplicate of the disputed charge.
      sig { returns(T.nilable(String)) }
      attr_reader :duplicate_charge_id
      # Attribute for field enhanced_evidence
      sig { returns(EnhancedEvidence) }
      attr_reader :enhanced_evidence
      # A description of the product or service that was sold.
      sig { returns(T.nilable(String)) }
      attr_reader :product_description
      # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Any receipt or message sent to the customer notifying them of the charge.
      sig { returns(T.nilable(T.any(String, Stripe::File))) }
      attr_reader :receipt
      # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Your refund policy, as shown to the customer.
      sig { returns(T.nilable(T.any(String, Stripe::File))) }
      attr_reader :refund_policy
      # Documentation demonstrating that the customer was shown your refund policy prior to purchase.
      sig { returns(T.nilable(String)) }
      attr_reader :refund_policy_disclosure
      # A justification for why the customer is not entitled to a refund.
      sig { returns(T.nilable(String)) }
      attr_reader :refund_refusal_explanation
      # The date on which the customer received or began receiving the purchased service, in a clear human-readable format.
      sig { returns(T.nilable(String)) }
      attr_reader :service_date
      # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Documentation showing proof that a service was provided to the customer. This could include a copy of a signed contract, work order, or other form of written agreement.
      sig { returns(T.nilable(T.any(String, Stripe::File))) }
      attr_reader :service_documentation
      # The address to which a physical product was shipped. You should try to include as complete address information as possible.
      sig { returns(T.nilable(String)) }
      attr_reader :shipping_address
      # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc. If multiple carriers were used for this purchase, please separate them with commas.
      sig { returns(T.nilable(String)) }
      attr_reader :shipping_carrier
      # The date on which a physical product began its route to the shipping address, in a clear human-readable format.
      sig { returns(T.nilable(String)) }
      attr_reader :shipping_date
      # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Documentation showing proof that a product was shipped to the customer at the same address the customer provided to you. This could include a copy of the shipment receipt, shipping label, etc. It should show the customer's full shipping address, if possible.
      sig { returns(T.nilable(T.any(String, Stripe::File))) }
      attr_reader :shipping_documentation
      # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
      sig { returns(T.nilable(String)) }
      attr_reader :shipping_tracking_number
      # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Any additional evidence or statements.
      sig { returns(T.nilable(T.any(String, Stripe::File))) }
      attr_reader :uncategorized_file
      # Any additional evidence or statements.
      sig { returns(T.nilable(String)) }
      attr_reader :uncategorized_text
    end
    class EvidenceDetails < Stripe::StripeObject
      class EnhancedEligibility < Stripe::StripeObject
        class VisaCompellingEvidence3 < Stripe::StripeObject
          # List of actions required to qualify dispute for Visa Compelling Evidence 3.0 evidence submission.
          sig { returns(T::Array[String]) }
          attr_reader :required_actions
          # Visa Compelling Evidence 3.0 eligibility status.
          sig { returns(String) }
          attr_reader :status
        end
        # Attribute for field visa_compelling_evidence_3
        sig { returns(VisaCompellingEvidence3) }
        attr_reader :visa_compelling_evidence_3
      end
      # Date by which evidence must be submitted in order to successfully challenge dispute. Will be 0 if the customer's bank or credit card company doesn't allow a response for this particular dispute.
      sig { returns(T.nilable(Integer)) }
      attr_reader :due_by
      # Attribute for field enhanced_eligibility
      sig { returns(EnhancedEligibility) }
      attr_reader :enhanced_eligibility
      # Whether evidence has been staged for this dispute.
      sig { returns(T::Boolean) }
      attr_reader :has_evidence
      # Whether the last evidence submission was submitted past the due date. Defaults to `false` if no evidence submissions have occurred. If `true`, then delivery of the latest evidence is *not* guaranteed.
      sig { returns(T::Boolean) }
      attr_reader :past_due
      # The number of times evidence has been submitted. Typically, you may only submit evidence once.
      sig { returns(Integer) }
      attr_reader :submission_count
    end
    class PaymentMethodDetails < Stripe::StripeObject
      class AmazonPay < Stripe::StripeObject
        # The AmazonPay dispute type, chargeback or claim
        sig { returns(T.nilable(String)) }
        attr_reader :dispute_type
      end
      class Card < Stripe::StripeObject
        # Card brand. Can be `amex`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
        sig { returns(String) }
        attr_reader :brand
        # The type of dispute opened. Different case types may have varying fees and financial impact.
        sig { returns(String) }
        attr_reader :case_type
        # The card network's specific dispute reason code, which maps to one of Stripe's primary dispute categories to simplify response guidance. The [Network code map](https://stripe.com/docs/disputes/categories#network-code-map) lists all available dispute reason codes by network.
        sig { returns(T.nilable(String)) }
        attr_reader :network_reason_code
      end
      class Klarna < Stripe::StripeObject
        # The reason for the dispute as defined by Klarna
        sig { returns(T.nilable(String)) }
        attr_reader :reason_code
      end
      class Paypal < Stripe::StripeObject
        # The ID of the dispute in PayPal.
        sig { returns(T.nilable(String)) }
        attr_reader :case_id
        # The reason for the dispute as defined by PayPal
        sig { returns(T.nilable(String)) }
        attr_reader :reason_code
      end
      # Attribute for field amazon_pay
      sig { returns(AmazonPay) }
      attr_reader :amazon_pay
      # Attribute for field card
      sig { returns(Card) }
      attr_reader :card
      # Attribute for field klarna
      sig { returns(Klarna) }
      attr_reader :klarna
      # Attribute for field paypal
      sig { returns(Paypal) }
      attr_reader :paypal
      # Payment method type.
      sig { returns(String) }
      attr_reader :type
    end
    # Disputed amount. Usually the amount of the charge, but it can differ (usually because of currency fluctuation or because only part of the order is disputed).
    sig { returns(Integer) }
    attr_reader :amount

    # List of zero, one, or two balance transactions that show funds withdrawn and reinstated to your Stripe account as a result of this dispute.
    sig { returns(T::Array[Stripe::BalanceTransaction]) }
    attr_reader :balance_transactions

    # ID of the charge that's disputed.
    sig { returns(T.any(String, Stripe::Charge)) }
    attr_reader :charge

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    attr_reader :currency

    # List of eligibility types that are included in `enhanced_evidence`.
    sig { returns(T::Array[String]) }
    attr_reader :enhanced_eligibility_types

    # Attribute for field evidence
    sig { returns(Evidence) }
    attr_reader :evidence

    # Attribute for field evidence_details
    sig { returns(EvidenceDetails) }
    attr_reader :evidence_details

    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id

    # If true, it's still possible to refund the disputed payment. After the payment has been fully refunded, no further funds are withdrawn from your Stripe account as a result of this dispute.
    sig { returns(T::Boolean) }
    attr_reader :is_charge_refundable

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata

    # Network-dependent reason code for the dispute.
    sig { returns(T.nilable(String)) }
    attr_reader :network_reason_code

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object

    # ID of the PaymentIntent that's disputed.
    sig { returns(T.nilable(T.any(String, Stripe::PaymentIntent))) }
    attr_reader :payment_intent

    # Attribute for field payment_method_details
    sig { returns(PaymentMethodDetails) }
    attr_reader :payment_method_details

    # Reason given by cardholder for dispute. Possible values are `bank_cannot_process`, `check_returned`, `credit_not_processed`, `customer_initiated`, `debit_not_authorized`, `duplicate`, `fraudulent`, `general`, `incorrect_account_details`, `insufficient_funds`, `product_not_received`, `product_unacceptable`, `subscription_canceled`, or `unrecognized`. Learn more about [dispute reasons](https://stripe.com/docs/disputes/categories).
    sig { returns(String) }
    attr_reader :reason

    # Current status of dispute. Possible values are `warning_needs_response`, `warning_under_review`, `warning_closed`, `needs_response`, `under_review`, `won`, or `lost`.
    sig { returns(String) }
    attr_reader :status
  end
end