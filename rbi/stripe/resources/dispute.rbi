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
        class VisaCompliance < Stripe::StripeObject
          # A field acknowledging the fee incurred when countering a Visa compliance dispute. If this field is set to true, evidence can be submitted for the compliance dispute. Stripe collects a 500 USD (or local equivalent) amount to cover the network costs associated with resolving compliance disputes. Stripe refunds the 500 USD network fee if you win the dispute.
          sig { returns(T::Boolean) }
          attr_reader :fee_acknowledged
        end
        # Attribute for field visa_compelling_evidence_3
        sig { returns(VisaCompellingEvidence3) }
        attr_reader :visa_compelling_evidence_3
        # Attribute for field visa_compliance
        sig { returns(VisaCompliance) }
        attr_reader :visa_compliance
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
        class VisaCompliance < Stripe::StripeObject
          # Visa compliance eligibility status.
          sig { returns(String) }
          attr_reader :status
        end
        # Attribute for field visa_compelling_evidence_3
        sig { returns(VisaCompellingEvidence3) }
        attr_reader :visa_compelling_evidence_3
        # Attribute for field visa_compliance
        sig { returns(VisaCompliance) }
        attr_reader :visa_compliance
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
        # Card brand. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa` or `unknown`.
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
    # Reason given by cardholder for dispute. Possible values are `bank_cannot_process`, `check_returned`, `credit_not_processed`, `customer_initiated`, `debit_not_authorized`, `duplicate`, `fraudulent`, `general`, `incorrect_account_details`, `insufficient_funds`, `noncompliant`, `product_not_received`, `product_unacceptable`, `subscription_canceled`, or `unrecognized`. Learn more about [dispute reasons](https://stripe.com/docs/disputes/categories).
    sig { returns(String) }
    attr_reader :reason
    # The current status of a dispute. Possible values include:`warning_needs_response`, `warning_under_review`, `warning_closed`, `needs_response`, `under_review`, `won`, `lost`, or `prevented`.
    sig { returns(String) }
    attr_reader :status
    class ListParams < Stripe::RequestParams
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :lte
        sig {
          params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
         }
        def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
      end
      # Only return disputes associated to the charge specified by this charge ID.
      sig { returns(T.nilable(String)) }
      attr_accessor :charge
      # Only return disputes that were created during the given date interval.
      sig { returns(T.nilable(T.any(::Stripe::Dispute::ListParams::Created, Integer))) }
      attr_accessor :created
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # Only return disputes associated to the PaymentIntent specified by this PaymentIntent ID.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_intent
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      sig {
        params(charge: T.nilable(String), created: T.nilable(T.any(::Stripe::Dispute::ListParams::Created, Integer)), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), payment_intent: T.nilable(String), starting_after: T.nilable(String)).void
       }
      def initialize(
        charge: nil,
        created: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        payment_intent: nil,
        starting_after: nil
      ); end
    end
    class UpdateParams < Stripe::RequestParams
      class Evidence < Stripe::RequestParams
        class EnhancedEvidence < Stripe::RequestParams
          class VisaCompellingEvidence3 < Stripe::RequestParams
            class DisputedTransaction < Stripe::RequestParams
              class ShippingAddress < Stripe::RequestParams
                # City, district, suburb, town, or village.
                sig { returns(T.nilable(String)) }
                attr_accessor :city
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                sig { returns(T.nilable(String)) }
                attr_accessor :country
                # Address line 1 (e.g., street, PO Box, or company name).
                sig { returns(T.nilable(String)) }
                attr_accessor :line1
                # Address line 2 (e.g., apartment, suite, unit, or building).
                sig { returns(T.nilable(String)) }
                attr_accessor :line2
                # ZIP or postal code.
                sig { returns(T.nilable(String)) }
                attr_accessor :postal_code
                # State, county, province, or region.
                sig { returns(T.nilable(String)) }
                attr_accessor :state
                sig {
                  params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
                 }
                def initialize(
                  city: nil,
                  country: nil,
                  line1: nil,
                  line2: nil,
                  postal_code: nil,
                  state: nil
                ); end
              end
              # User Account ID used to log into business platform. Must be recognizable by the user.
              sig { returns(T.nilable(String)) }
              attr_accessor :customer_account_id
              # Unique identifier of the cardholder’s device derived from a combination of at least two hardware and software attributes. Must be at least 20 characters.
              sig { returns(T.nilable(String)) }
              attr_accessor :customer_device_fingerprint
              # Unique identifier of the cardholder’s device such as a device serial number (e.g., International Mobile Equipment Identity [IMEI]). Must be at least 15 characters.
              sig { returns(T.nilable(String)) }
              attr_accessor :customer_device_id
              # The email address of the customer.
              sig { returns(T.nilable(String)) }
              attr_accessor :customer_email_address
              # The IP address that the customer used when making the purchase.
              sig { returns(T.nilable(String)) }
              attr_accessor :customer_purchase_ip
              # Categorization of disputed payment.
              sig { returns(T.nilable(String)) }
              attr_accessor :merchandise_or_services
              # A description of the product or service that was sold.
              sig { returns(T.nilable(String)) }
              attr_accessor :product_description
              # The address to which a physical product was shipped. All fields are required for Visa Compelling Evidence 3.0 evidence submission.
              sig {
                returns(T.nilable(::Stripe::Dispute::UpdateParams::Evidence::EnhancedEvidence::VisaCompellingEvidence3::DisputedTransaction::ShippingAddress))
               }
              attr_accessor :shipping_address
              sig {
                params(customer_account_id: T.nilable(String), customer_device_fingerprint: T.nilable(String), customer_device_id: T.nilable(String), customer_email_address: T.nilable(String), customer_purchase_ip: T.nilable(String), merchandise_or_services: T.nilable(String), product_description: T.nilable(String), shipping_address: T.nilable(::Stripe::Dispute::UpdateParams::Evidence::EnhancedEvidence::VisaCompellingEvidence3::DisputedTransaction::ShippingAddress)).void
               }
              def initialize(
                customer_account_id: nil,
                customer_device_fingerprint: nil,
                customer_device_id: nil,
                customer_email_address: nil,
                customer_purchase_ip: nil,
                merchandise_or_services: nil,
                product_description: nil,
                shipping_address: nil
              ); end
            end
            class PriorUndisputedTransaction < Stripe::RequestParams
              class ShippingAddress < Stripe::RequestParams
                # City, district, suburb, town, or village.
                sig { returns(T.nilable(String)) }
                attr_accessor :city
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                sig { returns(T.nilable(String)) }
                attr_accessor :country
                # Address line 1 (e.g., street, PO Box, or company name).
                sig { returns(T.nilable(String)) }
                attr_accessor :line1
                # Address line 2 (e.g., apartment, suite, unit, or building).
                sig { returns(T.nilable(String)) }
                attr_accessor :line2
                # ZIP or postal code.
                sig { returns(T.nilable(String)) }
                attr_accessor :postal_code
                # State, county, province, or region.
                sig { returns(T.nilable(String)) }
                attr_accessor :state
                sig {
                  params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
                 }
                def initialize(
                  city: nil,
                  country: nil,
                  line1: nil,
                  line2: nil,
                  postal_code: nil,
                  state: nil
                ); end
              end
              # Stripe charge ID for the Visa Compelling Evidence 3.0 eligible prior charge.
              sig { returns(String) }
              attr_accessor :charge
              # User Account ID used to log into business platform. Must be recognizable by the user.
              sig { returns(T.nilable(String)) }
              attr_accessor :customer_account_id
              # Unique identifier of the cardholder’s device derived from a combination of at least two hardware and software attributes. Must be at least 20 characters.
              sig { returns(T.nilable(String)) }
              attr_accessor :customer_device_fingerprint
              # Unique identifier of the cardholder’s device such as a device serial number (e.g., International Mobile Equipment Identity [IMEI]). Must be at least 15 characters.
              sig { returns(T.nilable(String)) }
              attr_accessor :customer_device_id
              # The email address of the customer.
              sig { returns(T.nilable(String)) }
              attr_accessor :customer_email_address
              # The IP address that the customer used when making the purchase.
              sig { returns(T.nilable(String)) }
              attr_accessor :customer_purchase_ip
              # A description of the product or service that was sold.
              sig { returns(T.nilable(String)) }
              attr_accessor :product_description
              # The address to which a physical product was shipped. All fields are required for Visa Compelling Evidence 3.0 evidence submission.
              sig {
                returns(T.nilable(::Stripe::Dispute::UpdateParams::Evidence::EnhancedEvidence::VisaCompellingEvidence3::PriorUndisputedTransaction::ShippingAddress))
               }
              attr_accessor :shipping_address
              sig {
                params(charge: String, customer_account_id: T.nilable(String), customer_device_fingerprint: T.nilable(String), customer_device_id: T.nilable(String), customer_email_address: T.nilable(String), customer_purchase_ip: T.nilable(String), product_description: T.nilable(String), shipping_address: T.nilable(::Stripe::Dispute::UpdateParams::Evidence::EnhancedEvidence::VisaCompellingEvidence3::PriorUndisputedTransaction::ShippingAddress)).void
               }
              def initialize(
                charge: nil,
                customer_account_id: nil,
                customer_device_fingerprint: nil,
                customer_device_id: nil,
                customer_email_address: nil,
                customer_purchase_ip: nil,
                product_description: nil,
                shipping_address: nil
              ); end
            end
            # Disputed transaction details for Visa Compelling Evidence 3.0 evidence submission.
            sig {
              returns(T.nilable(::Stripe::Dispute::UpdateParams::Evidence::EnhancedEvidence::VisaCompellingEvidence3::DisputedTransaction))
             }
            attr_accessor :disputed_transaction
            # List of exactly two prior undisputed transaction objects for Visa Compelling Evidence 3.0 evidence submission.
            sig {
              returns(T.nilable(T::Array[::Stripe::Dispute::UpdateParams::Evidence::EnhancedEvidence::VisaCompellingEvidence3::PriorUndisputedTransaction]))
             }
            attr_accessor :prior_undisputed_transactions
            sig {
              params(disputed_transaction: T.nilable(::Stripe::Dispute::UpdateParams::Evidence::EnhancedEvidence::VisaCompellingEvidence3::DisputedTransaction), prior_undisputed_transactions: T.nilable(T::Array[::Stripe::Dispute::UpdateParams::Evidence::EnhancedEvidence::VisaCompellingEvidence3::PriorUndisputedTransaction])).void
             }
            def initialize(disputed_transaction: nil, prior_undisputed_transactions: nil); end
          end
          class VisaCompliance < Stripe::RequestParams
            # A field acknowledging the fee incurred when countering a Visa compliance dispute. If this field is set to true, evidence can be submitted for the compliance dispute. Stripe collects a 500 USD (or local equivalent) amount to cover the network costs associated with resolving compliance disputes. Stripe refunds the 500 USD network fee if you win the dispute.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :fee_acknowledged
            sig { params(fee_acknowledged: T.nilable(T::Boolean)).void }
            def initialize(fee_acknowledged: nil); end
          end
          # Evidence provided for Visa Compelling Evidence 3.0 evidence submission.
          sig {
            returns(T.nilable(::Stripe::Dispute::UpdateParams::Evidence::EnhancedEvidence::VisaCompellingEvidence3))
           }
          attr_accessor :visa_compelling_evidence_3
          # Evidence provided for Visa compliance evidence submission.
          sig {
            returns(T.nilable(::Stripe::Dispute::UpdateParams::Evidence::EnhancedEvidence::VisaCompliance))
           }
          attr_accessor :visa_compliance
          sig {
            params(visa_compelling_evidence_3: T.nilable(::Stripe::Dispute::UpdateParams::Evidence::EnhancedEvidence::VisaCompellingEvidence3), visa_compliance: T.nilable(::Stripe::Dispute::UpdateParams::Evidence::EnhancedEvidence::VisaCompliance)).void
           }
          def initialize(visa_compelling_evidence_3: nil, visa_compliance: nil); end
        end
        # Any server or activity logs showing proof that the customer accessed or downloaded the purchased digital product. This information should include IP addresses, corresponding timestamps, and any detailed recorded activity. Has a maximum character count of 20,000.
        sig { returns(T.nilable(String)) }
        attr_accessor :access_activity_log
        # The billing address provided by the customer.
        sig { returns(T.nilable(String)) }
        attr_accessor :billing_address
        # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Your subscription cancellation policy, as shown to the customer.
        sig { returns(T.nilable(String)) }
        attr_accessor :cancellation_policy
        # An explanation of how and when the customer was shown your refund policy prior to purchase. Has a maximum character count of 20,000.
        sig { returns(T.nilable(String)) }
        attr_accessor :cancellation_policy_disclosure
        # A justification for why the customer's subscription was not canceled. Has a maximum character count of 20,000.
        sig { returns(T.nilable(String)) }
        attr_accessor :cancellation_rebuttal
        # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Any communication with the customer that you feel is relevant to your case. Examples include emails proving that the customer received the product or service, or demonstrating their use of or satisfaction with the product or service.
        sig { returns(T.nilable(String)) }
        attr_accessor :customer_communication
        # The email address of the customer.
        sig { returns(T.nilable(String)) }
        attr_accessor :customer_email_address
        # The name of the customer.
        sig { returns(T.nilable(String)) }
        attr_accessor :customer_name
        # The IP address that the customer used when making the purchase.
        sig { returns(T.nilable(String)) }
        attr_accessor :customer_purchase_ip
        # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) A relevant document or contract showing the customer's signature.
        sig { returns(T.nilable(String)) }
        attr_accessor :customer_signature
        # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Documentation for the prior charge that can uniquely identify the charge, such as a receipt, shipping label, work order, etc. This document should be paired with a similar document from the disputed payment that proves the two payments are separate.
        sig { returns(T.nilable(String)) }
        attr_accessor :duplicate_charge_documentation
        # An explanation of the difference between the disputed charge versus the prior charge that appears to be a duplicate. Has a maximum character count of 20,000.
        sig { returns(T.nilable(String)) }
        attr_accessor :duplicate_charge_explanation
        # The Stripe ID for the prior charge which appears to be a duplicate of the disputed charge.
        sig { returns(T.nilable(String)) }
        attr_accessor :duplicate_charge_id
        # Additional evidence for qualifying evidence programs.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::Dispute::UpdateParams::Evidence::EnhancedEvidence)))
         }
        attr_accessor :enhanced_evidence
        # A description of the product or service that was sold. Has a maximum character count of 20,000.
        sig { returns(T.nilable(String)) }
        attr_accessor :product_description
        # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Any receipt or message sent to the customer notifying them of the charge.
        sig { returns(T.nilable(String)) }
        attr_accessor :receipt
        # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Your refund policy, as shown to the customer.
        sig { returns(T.nilable(String)) }
        attr_accessor :refund_policy
        # Documentation demonstrating that the customer was shown your refund policy prior to purchase. Has a maximum character count of 20,000.
        sig { returns(T.nilable(String)) }
        attr_accessor :refund_policy_disclosure
        # A justification for why the customer is not entitled to a refund. Has a maximum character count of 20,000.
        sig { returns(T.nilable(String)) }
        attr_accessor :refund_refusal_explanation
        # The date on which the customer received or began receiving the purchased service, in a clear human-readable format.
        sig { returns(T.nilable(String)) }
        attr_accessor :service_date
        # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Documentation showing proof that a service was provided to the customer. This could include a copy of a signed contract, work order, or other form of written agreement.
        sig { returns(T.nilable(String)) }
        attr_accessor :service_documentation
        # The address to which a physical product was shipped. You should try to include as complete address information as possible.
        sig { returns(T.nilable(String)) }
        attr_accessor :shipping_address
        # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc. If multiple carriers were used for this purchase, please separate them with commas.
        sig { returns(T.nilable(String)) }
        attr_accessor :shipping_carrier
        # The date on which a physical product began its route to the shipping address, in a clear human-readable format.
        sig { returns(T.nilable(String)) }
        attr_accessor :shipping_date
        # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Documentation showing proof that a product was shipped to the customer at the same address the customer provided to you. This could include a copy of the shipment receipt, shipping label, etc. It should show the customer's full shipping address, if possible.
        sig { returns(T.nilable(String)) }
        attr_accessor :shipping_documentation
        # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
        sig { returns(T.nilable(String)) }
        attr_accessor :shipping_tracking_number
        # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Any additional evidence or statements.
        sig { returns(T.nilable(String)) }
        attr_accessor :uncategorized_file
        # Any additional evidence or statements. Has a maximum character count of 20,000.
        sig { returns(T.nilable(String)) }
        attr_accessor :uncategorized_text
        sig {
          params(access_activity_log: T.nilable(String), billing_address: T.nilable(String), cancellation_policy: T.nilable(String), cancellation_policy_disclosure: T.nilable(String), cancellation_rebuttal: T.nilable(String), customer_communication: T.nilable(String), customer_email_address: T.nilable(String), customer_name: T.nilable(String), customer_purchase_ip: T.nilable(String), customer_signature: T.nilable(String), duplicate_charge_documentation: T.nilable(String), duplicate_charge_explanation: T.nilable(String), duplicate_charge_id: T.nilable(String), enhanced_evidence: T.nilable(T.any(String, ::Stripe::Dispute::UpdateParams::Evidence::EnhancedEvidence)), product_description: T.nilable(String), receipt: T.nilable(String), refund_policy: T.nilable(String), refund_policy_disclosure: T.nilable(String), refund_refusal_explanation: T.nilable(String), service_date: T.nilable(String), service_documentation: T.nilable(String), shipping_address: T.nilable(String), shipping_carrier: T.nilable(String), shipping_date: T.nilable(String), shipping_documentation: T.nilable(String), shipping_tracking_number: T.nilable(String), uncategorized_file: T.nilable(String), uncategorized_text: T.nilable(String)).void
         }
        def initialize(
          access_activity_log: nil,
          billing_address: nil,
          cancellation_policy: nil,
          cancellation_policy_disclosure: nil,
          cancellation_rebuttal: nil,
          customer_communication: nil,
          customer_email_address: nil,
          customer_name: nil,
          customer_purchase_ip: nil,
          customer_signature: nil,
          duplicate_charge_documentation: nil,
          duplicate_charge_explanation: nil,
          duplicate_charge_id: nil,
          enhanced_evidence: nil,
          product_description: nil,
          receipt: nil,
          refund_policy: nil,
          refund_policy_disclosure: nil,
          refund_refusal_explanation: nil,
          service_date: nil,
          service_documentation: nil,
          shipping_address: nil,
          shipping_carrier: nil,
          shipping_date: nil,
          shipping_documentation: nil,
          shipping_tracking_number: nil,
          uncategorized_file: nil,
          uncategorized_text: nil
        ); end
      end
      # Evidence to upload, to respond to a dispute. Updating any field in the hash will submit all fields in the hash for review. The combined character count of all fields is limited to 150,000.
      sig { returns(T.nilable(::Stripe::Dispute::UpdateParams::Evidence)) }
      attr_accessor :evidence
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      attr_accessor :metadata
      # Whether to immediately submit evidence to the bank. If `false`, evidence is staged on the dispute. Staged evidence is visible in the API and Dashboard, and can be submitted to the bank by making another request with this attribute set to `true` (the default).
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :submit
      sig {
        params(evidence: T.nilable(::Stripe::Dispute::UpdateParams::Evidence), expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String])), submit: T.nilable(T::Boolean)).void
       }
      def initialize(evidence: nil, expand: nil, metadata: nil, submit: nil); end
    end
    class CloseParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    # Closing the dispute for a charge indicates that you do not have any evidence to submit and are essentially dismissing the dispute, acknowledging it as lost.
    #
    # The status of the dispute will change from needs_response to lost. Closing a dispute is irreversible.
    sig {
      params(params: T.any(::Stripe::Dispute::CloseParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Dispute)
     }
    def close(params = {}, opts = {}); end

    # Closing the dispute for a charge indicates that you do not have any evidence to submit and are essentially dismissing the dispute, acknowledging it as lost.
    #
    # The status of the dispute will change from needs_response to lost. Closing a dispute is irreversible.
    sig {
      params(dispute: String, params: T.any(::Stripe::Dispute::CloseParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Dispute)
     }
    def self.close(dispute, params = {}, opts = {}); end

    # Returns a list of your disputes.
    sig {
      params(params: T.any(::Stripe::Dispute::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end

    # When you get a dispute, contacting your customer is always the best first step. If that doesn't work, you can submit evidence to help us resolve the dispute in your favor. You can do this in your [dashboard](https://dashboard.stripe.com/disputes), but if you prefer, you can use the API to submit evidence programmatically.
    #
    # Depending on your dispute type, different evidence fields will give you a better chance of winning your dispute. To figure out which evidence fields to provide, see our [guide to dispute types](https://docs.stripe.com/docs/disputes/categories).
    sig {
      params(dispute: String, params: T.any(::Stripe::Dispute::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Dispute)
     }
    def self.update(dispute, params = {}, opts = {}); end
  end
end