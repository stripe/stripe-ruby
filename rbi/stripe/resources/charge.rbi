# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # The `Charge` object represents a single attempt to move money into your Stripe account.
  # PaymentIntent confirmation is the most common way to create Charges, but transferring
  # money to a different Stripe account through Connect also creates Charges.
  # Some legacy payment flows create Charges directly, which is not recommended for new integrations.
  class Charge < APIResource
    class BillingDetails < Stripe::StripeObject
      class Address < Stripe::StripeObject
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
      # Billing address.
      sig { returns(T.nilable(Address)) }
      attr_reader :address
      # Email address.
      sig { returns(T.nilable(String)) }
      attr_reader :email
      # Full name.
      sig { returns(T.nilable(String)) }
      attr_reader :name
      # Billing phone number (including extension).
      sig { returns(T.nilable(String)) }
      attr_reader :phone
    end
    class FraudDetails < Stripe::StripeObject
      # Assessments from Stripe. If set, the value is `fraudulent`.
      sig { returns(String) }
      attr_reader :stripe_report
      # Assessments reported by you. If set, possible values of are `safe` and `fraudulent`.
      sig { returns(String) }
      attr_reader :user_report
    end
    class Level3 < Stripe::StripeObject
      class LineItem < Stripe::StripeObject
        # Attribute for field discount_amount
        sig { returns(T.nilable(Integer)) }
        attr_reader :discount_amount
        # Attribute for field product_code
        sig { returns(String) }
        attr_reader :product_code
        # Attribute for field product_description
        sig { returns(String) }
        attr_reader :product_description
        # Attribute for field quantity
        sig { returns(T.nilable(Integer)) }
        attr_reader :quantity
        # Attribute for field tax_amount
        sig { returns(T.nilable(Integer)) }
        attr_reader :tax_amount
        # Attribute for field unit_cost
        sig { returns(T.nilable(Integer)) }
        attr_reader :unit_cost
      end
      # Attribute for field customer_reference
      sig { returns(String) }
      attr_reader :customer_reference
      # Attribute for field line_items
      sig { returns(T::Array[LineItem]) }
      attr_reader :line_items
      # Attribute for field merchant_reference
      sig { returns(String) }
      attr_reader :merchant_reference
      # Attribute for field shipping_address_zip
      sig { returns(String) }
      attr_reader :shipping_address_zip
      # Attribute for field shipping_amount
      sig { returns(Integer) }
      attr_reader :shipping_amount
      # Attribute for field shipping_from_zip
      sig { returns(String) }
      attr_reader :shipping_from_zip
    end
    class Outcome < Stripe::StripeObject
      class Rule < Stripe::StripeObject
        # The action taken on the payment.
        sig { returns(String) }
        attr_reader :action
        # Unique identifier for the object.
        sig { returns(String) }
        attr_reader :id
        # The predicate to evaluate the payment against.
        sig { returns(String) }
        attr_reader :predicate
      end
      # An enumerated value providing a more detailed explanation on [how to proceed with an error](https://stripe.com/docs/declines#retrying-issuer-declines).
      sig { returns(T.nilable(String)) }
      attr_reader :advice_code
      # For charges declined by the network, a 2 digit code which indicates the advice returned by the network on how to proceed with an error.
      sig { returns(T.nilable(String)) }
      attr_reader :network_advice_code
      # For charges declined by the network, a brand specific 2, 3, or 4 digit code which indicates the reason the authorization failed.
      sig { returns(T.nilable(String)) }
      attr_reader :network_decline_code
      # Possible values are `approved_by_network`, `declined_by_network`, `not_sent_to_network`, and `reversed_after_approval`. The value `reversed_after_approval` indicates the payment was [blocked by Stripe](https://stripe.com/docs/declines#blocked-payments) after bank authorization, and may temporarily appear as "pending" on a cardholder's statement.
      sig { returns(T.nilable(String)) }
      attr_reader :network_status
      # An enumerated value providing a more detailed explanation of the outcome's `type`. Charges blocked by Radar's default block rule have the value `highest_risk_level`. Charges placed in review by Radar's default review rule have the value `elevated_risk_level`. Charges authorized, blocked, or placed in review by custom rules have the value `rule`. See [understanding declines](https://stripe.com/docs/declines) for more details.
      sig { returns(T.nilable(String)) }
      attr_reader :reason
      # Stripe Radar's evaluation of the riskiness of the payment. Possible values for evaluated payments are `normal`, `elevated`, `highest`. For non-card payments, and card-based payments predating the public assignment of risk levels, this field will have the value `not_assessed`. In the event of an error in the evaluation, this field will have the value `unknown`. This field is only available with Radar.
      sig { returns(String) }
      attr_reader :risk_level
      # Stripe Radar's evaluation of the riskiness of the payment. Possible values for evaluated payments are between 0 and 100. For non-card payments, card-based payments predating the public assignment of risk scores, or in the event of an error during evaluation, this field will not be present. This field is only available with Radar for Fraud Teams.
      sig { returns(Integer) }
      attr_reader :risk_score
      # The ID of the Radar rule that matched the payment, if applicable.
      sig { returns(T.any(String, Rule)) }
      attr_reader :rule
      # A human-readable description of the outcome type and reason, designed for you (the recipient of the payment), not your customer.
      sig { returns(T.nilable(String)) }
      attr_reader :seller_message
      # Possible values are `authorized`, `manual_review`, `issuer_declined`, `blocked`, and `invalid`. See [understanding declines](https://stripe.com/docs/declines) and [Radar reviews](https://stripe.com/docs/radar/reviews) for details.
      sig { returns(String) }
      attr_reader :type
    end
    class PaymentMethodDetails < Stripe::StripeObject
      class AchCreditTransfer < Stripe::StripeObject
        # Account number to transfer funds to.
        sig { returns(T.nilable(String)) }
        attr_reader :account_number
        # Name of the bank associated with the routing number.
        sig { returns(T.nilable(String)) }
        attr_reader :bank_name
        # Routing transit number for the bank account to transfer funds to.
        sig { returns(T.nilable(String)) }
        attr_reader :routing_number
        # SWIFT code of the bank associated with the routing number.
        sig { returns(T.nilable(String)) }
        attr_reader :swift_code
      end
      class AchDebit < Stripe::StripeObject
        # Type of entity that holds the account. This can be either `individual` or `company`.
        sig { returns(T.nilable(String)) }
        attr_reader :account_holder_type
        # Name of the bank associated with the bank account.
        sig { returns(T.nilable(String)) }
        attr_reader :bank_name
        # Two-letter ISO code representing the country the bank account is located in.
        sig { returns(T.nilable(String)) }
        attr_reader :country
        # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint
        # Last four digits of the bank account number.
        sig { returns(T.nilable(String)) }
        attr_reader :last4
        # Routing transit number of the bank account.
        sig { returns(T.nilable(String)) }
        attr_reader :routing_number
      end
      class AcssDebit < Stripe::StripeObject
        # Name of the bank associated with the bank account.
        sig { returns(T.nilable(String)) }
        attr_reader :bank_name
        # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint
        # Institution number of the bank account
        sig { returns(T.nilable(String)) }
        attr_reader :institution_number
        # Last four digits of the bank account number.
        sig { returns(T.nilable(String)) }
        attr_reader :last4
        # ID of the mandate used to make this payment.
        sig { returns(String) }
        attr_reader :mandate
        # Transit number of the bank account.
        sig { returns(T.nilable(String)) }
        attr_reader :transit_number
      end
      class Affirm < Stripe::StripeObject
        # The Affirm transaction ID associated with this payment.
        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
      end
      class AfterpayClearpay < Stripe::StripeObject
        # The Afterpay order ID associated with this payment intent.
        sig { returns(T.nilable(String)) }
        attr_reader :order_id
        # Order identifier shown to the merchant in Afterpay’s online portal.
        sig { returns(T.nilable(String)) }
        attr_reader :reference
      end
      class Alipay < Stripe::StripeObject
        # Uniquely identifies this particular Alipay account. You can use this attribute to check whether two Alipay accounts are the same.
        sig { returns(String) }
        attr_reader :buyer_id
        # Uniquely identifies this particular Alipay account. You can use this attribute to check whether two Alipay accounts are the same.
        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint
        # Transaction ID of this particular Alipay transaction.
        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
      end
      class Alma < Stripe::StripeObject; end
      class AmazonPay < Stripe::StripeObject
        class Funding < Stripe::StripeObject
          class Card < Stripe::StripeObject
            # Card brand. Can be `amex`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
            sig { returns(T.nilable(String)) }
            attr_reader :brand
            # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
            sig { returns(T.nilable(String)) }
            attr_reader :country
            # Two-digit number representing the card's expiration month.
            sig { returns(T.nilable(Integer)) }
            attr_reader :exp_month
            # Four-digit number representing the card's expiration year.
            sig { returns(T.nilable(Integer)) }
            attr_reader :exp_year
            # Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
            sig { returns(T.nilable(String)) }
            attr_reader :funding
            # The last four digits of the card.
            sig { returns(T.nilable(String)) }
            attr_reader :last4
          end
          # Attribute for field card
          sig { returns(Card) }
          attr_reader :card
          # funding type of the underlying payment method.
          sig { returns(T.nilable(String)) }
          attr_reader :type
        end
        # Attribute for field funding
        sig { returns(Funding) }
        attr_reader :funding
      end
      class AuBecsDebit < Stripe::StripeObject
        # Bank-State-Branch number of the bank account.
        sig { returns(T.nilable(String)) }
        attr_reader :bsb_number
        # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint
        # Last four digits of the bank account number.
        sig { returns(T.nilable(String)) }
        attr_reader :last4
        # ID of the mandate used to make this payment.
        sig { returns(String) }
        attr_reader :mandate
      end
      class BacsDebit < Stripe::StripeObject
        # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint
        # Last four digits of the bank account number.
        sig { returns(T.nilable(String)) }
        attr_reader :last4
        # ID of the mandate used to make this payment.
        sig { returns(T.nilable(String)) }
        attr_reader :mandate
        # Sort code of the bank account. (e.g., `10-20-30`)
        sig { returns(T.nilable(String)) }
        attr_reader :sort_code
      end
      class Bancontact < Stripe::StripeObject
        # Bank code of bank associated with the bank account.
        sig { returns(T.nilable(String)) }
        attr_reader :bank_code
        # Name of the bank associated with the bank account.
        sig { returns(T.nilable(String)) }
        attr_reader :bank_name
        # Bank Identifier Code of the bank associated with the bank account.
        sig { returns(T.nilable(String)) }
        attr_reader :bic
        # The ID of the SEPA Direct Debit PaymentMethod which was generated by this Charge.
        sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
        attr_reader :generated_sepa_debit
        # The mandate for the SEPA Direct Debit PaymentMethod which was generated by this Charge.
        sig { returns(T.nilable(T.any(String, Stripe::Mandate))) }
        attr_reader :generated_sepa_debit_mandate
        # Last four characters of the IBAN.
        sig { returns(T.nilable(String)) }
        attr_reader :iban_last4
        # Preferred language of the Bancontact authorization page that the customer is redirected to.
        # Can be one of `en`, `de`, `fr`, or `nl`
        sig { returns(T.nilable(String)) }
        attr_reader :preferred_language
        # Owner's verified full name. Values are verified or provided by Bancontact directly
        # (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        sig { returns(T.nilable(String)) }
        attr_reader :verified_name
      end
      class Blik < Stripe::StripeObject
        # A unique and immutable identifier assigned by BLIK to every buyer.
        sig { returns(T.nilable(String)) }
        attr_reader :buyer_id
      end
      class Boleto < Stripe::StripeObject
        # The tax ID of the customer (CPF for individuals consumers or CNPJ for businesses consumers)
        sig { returns(String) }
        attr_reader :tax_id
      end
      class Card < Stripe::StripeObject
        class Checks < Stripe::StripeObject
          # If a address line1 was provided, results of the check, one of `pass`, `fail`, `unavailable`, or `unchecked`.
          sig { returns(T.nilable(String)) }
          attr_reader :address_line1_check
          # If a address postal code was provided, results of the check, one of `pass`, `fail`, `unavailable`, or `unchecked`.
          sig { returns(T.nilable(String)) }
          attr_reader :address_postal_code_check
          # If a CVC was provided, results of the check, one of `pass`, `fail`, `unavailable`, or `unchecked`.
          sig { returns(T.nilable(String)) }
          attr_reader :cvc_check
        end
        class DecrementalAuthorization < Stripe::StripeObject
          # Indicates whether or not the decremental authorization feature is supported.
          sig { returns(String) }
          attr_reader :status
        end
        class ExtendedAuthorization < Stripe::StripeObject
          # Indicates whether or not the capture window is extended beyond the standard authorization.
          sig { returns(String) }
          attr_reader :status
        end
        class IncrementalAuthorization < Stripe::StripeObject
          # Indicates whether or not the incremental authorization feature is supported.
          sig { returns(String) }
          attr_reader :status
        end
        class Installments < Stripe::StripeObject
          class Plan < Stripe::StripeObject
            # For `fixed_count` installment plans, this is the number of installment payments your customer will make to their credit card.
            sig { returns(T.nilable(Integer)) }
            attr_reader :count
            # For `fixed_count` installment plans, this is the interval between installment payments your customer will make to their credit card.
            # One of `month`.
            sig { returns(T.nilable(String)) }
            attr_reader :interval
            # Type of installment plan, one of `fixed_count`.
            sig { returns(String) }
            attr_reader :type
          end
          # Installment plan selected for the payment.
          sig { returns(T.nilable(Plan)) }
          attr_reader :plan
        end
        class Multicapture < Stripe::StripeObject
          # Indicates whether or not multiple captures are supported.
          sig { returns(String) }
          attr_reader :status
        end
        class NetworkToken < Stripe::StripeObject
          # Indicates if Stripe used a network token, either user provided or Stripe managed when processing the transaction.
          sig { returns(T::Boolean) }
          attr_reader :used
        end
        class Overcapture < Stripe::StripeObject
          # The maximum amount that can be captured.
          sig { returns(Integer) }
          attr_reader :maximum_amount_capturable
          # Indicates whether or not the authorized amount can be over-captured.
          sig { returns(String) }
          attr_reader :status
        end
        class PartialAuthorization < Stripe::StripeObject
          # Indicates whether the transaction requested for partial authorization feature and the authorization outcome.
          sig { returns(String) }
          attr_reader :status
        end
        class ThreeDSecure < Stripe::StripeObject
          # For authenticated transactions: how the customer was authenticated by
          # the issuing bank.
          sig { returns(T.nilable(String)) }
          attr_reader :authentication_flow
          # The Electronic Commerce Indicator (ECI). A protocol-level field
          # indicating what degree of authentication was performed.
          sig { returns(T.nilable(String)) }
          attr_reader :electronic_commerce_indicator
          # The exemption requested via 3DS and accepted by the issuer at authentication time.
          sig { returns(T.nilable(String)) }
          attr_reader :exemption_indicator
          # Whether Stripe requested the value of `exemption_indicator` in the transaction. This will depend on
          # the outcome of Stripe's internal risk assessment.
          sig { returns(T::Boolean) }
          attr_reader :exemption_indicator_applied
          # Indicates the outcome of 3D Secure authentication.
          sig { returns(T.nilable(String)) }
          attr_reader :result
          # Additional information about why 3D Secure succeeded or failed based
          # on the `result`.
          sig { returns(T.nilable(String)) }
          attr_reader :result_reason
          # The 3D Secure 1 XID or 3D Secure 2 Directory Server Transaction ID
          # (dsTransId) for this payment.
          sig { returns(T.nilable(String)) }
          attr_reader :transaction_id
          # The version of 3D Secure that was used.
          sig { returns(T.nilable(String)) }
          attr_reader :version
        end
        class Wallet < Stripe::StripeObject
          class AmexExpressCheckout < Stripe::StripeObject; end
          class ApplePay < Stripe::StripeObject; end
          class GooglePay < Stripe::StripeObject; end
          class Link < Stripe::StripeObject; end
          class Masterpass < Stripe::StripeObject
            class BillingAddress < Stripe::StripeObject
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
            # Owner's verified billing address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
            sig { returns(T.nilable(BillingAddress)) }
            attr_reader :billing_address
            # Owner's verified email. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
            sig { returns(T.nilable(String)) }
            attr_reader :email
            # Owner's verified full name. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
            sig { returns(T.nilable(String)) }
            attr_reader :name
            # Owner's verified shipping address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
            sig { returns(T.nilable(ShippingAddress)) }
            attr_reader :shipping_address
          end
          class SamsungPay < Stripe::StripeObject; end
          class VisaCheckout < Stripe::StripeObject
            class BillingAddress < Stripe::StripeObject
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
            # Owner's verified billing address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
            sig { returns(T.nilable(BillingAddress)) }
            attr_reader :billing_address
            # Owner's verified email. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
            sig { returns(T.nilable(String)) }
            attr_reader :email
            # Owner's verified full name. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
            sig { returns(T.nilable(String)) }
            attr_reader :name
            # Owner's verified shipping address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
            sig { returns(T.nilable(ShippingAddress)) }
            attr_reader :shipping_address
          end
          # Attribute for field amex_express_checkout
          sig { returns(AmexExpressCheckout) }
          attr_reader :amex_express_checkout
          # Attribute for field apple_pay
          sig { returns(ApplePay) }
          attr_reader :apple_pay
          # (For tokenized numbers only.) The last four digits of the device account number.
          sig { returns(T.nilable(String)) }
          attr_reader :dynamic_last4
          # Attribute for field google_pay
          sig { returns(GooglePay) }
          attr_reader :google_pay
          # Attribute for field link
          sig { returns(Link) }
          attr_reader :link
          # Attribute for field masterpass
          sig { returns(Masterpass) }
          attr_reader :masterpass
          # Attribute for field samsung_pay
          sig { returns(SamsungPay) }
          attr_reader :samsung_pay
          # The type of the card wallet, one of `amex_express_checkout`, `apple_pay`, `google_pay`, `masterpass`, `samsung_pay`, `visa_checkout`, or `link`. An additional hash is included on the Wallet subhash with a name matching this value. It contains additional information specific to the card wallet type.
          sig { returns(String) }
          attr_reader :type
          # Attribute for field visa_checkout
          sig { returns(VisaCheckout) }
          attr_reader :visa_checkout
        end
        # The authorized amount.
        sig { returns(T.nilable(Integer)) }
        attr_reader :amount_authorized
        # The latest amount intended to be authorized by this charge.
        sig { returns(T.nilable(Integer)) }
        attr_reader :amount_requested
        # Authorization code on the charge.
        sig { returns(T.nilable(String)) }
        attr_reader :authorization_code
        # Card brand. Can be `amex`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
        sig { returns(T.nilable(String)) }
        attr_reader :brand
        # When using manual capture, a future timestamp at which the charge will be automatically refunded if uncaptured.
        sig { returns(Integer) }
        attr_reader :capture_before
        # Check results by Card networks on Card address and CVC at time of payment.
        sig { returns(T.nilable(Checks)) }
        attr_reader :checks
        # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
        sig { returns(T.nilable(String)) }
        attr_reader :country
        # Attribute for field decremental_authorization
        sig { returns(DecrementalAuthorization) }
        attr_reader :decremental_authorization
        # A high-level description of the type of cards issued in this range. (For internal use only and not typically available in standard API requests.)
        sig { returns(T.nilable(String)) }
        attr_reader :description
        # Two-digit number representing the card's expiration month.
        sig { returns(Integer) }
        attr_reader :exp_month
        # Four-digit number representing the card's expiration year.
        sig { returns(Integer) }
        attr_reader :exp_year
        # Attribute for field extended_authorization
        sig { returns(ExtendedAuthorization) }
        attr_reader :extended_authorization
        # Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.
        #
        # *As of May 1, 2021, card fingerprint in India for Connect changed to allow two fingerprints for the same card---one for India and one for the rest of the world.*
        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint
        # Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
        sig { returns(T.nilable(String)) }
        attr_reader :funding
        # Issuer identification number of the card. (For internal use only and not typically available in standard API requests.)
        sig { returns(T.nilable(String)) }
        attr_reader :iin
        # Attribute for field incremental_authorization
        sig { returns(IncrementalAuthorization) }
        attr_reader :incremental_authorization
        # Installment details for this payment (Mexico only).
        #
        # For more information, see the [installments integration guide](https://stripe.com/docs/payments/installments).
        sig { returns(T.nilable(Installments)) }
        attr_reader :installments
        # The name of the card's issuing bank. (For internal use only and not typically available in standard API requests.)
        sig { returns(T.nilable(String)) }
        attr_reader :issuer
        # The last four digits of the card.
        sig { returns(T.nilable(String)) }
        attr_reader :last4
        # ID of the mandate used to make this payment or created by it.
        sig { returns(T.nilable(String)) }
        attr_reader :mandate
        # True if this payment was marked as MOTO and out of scope for SCA.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :moto
        # Attribute for field multicapture
        sig { returns(Multicapture) }
        attr_reader :multicapture
        # Identifies which network this charge was processed on. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `interac`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
        sig { returns(T.nilable(String)) }
        attr_reader :network
        # If this card has network token credentials, this contains the details of the network token credentials.
        sig { returns(T.nilable(NetworkToken)) }
        attr_reader :network_token
        # This is used by the financial networks to identify a transaction. Visa calls this the Transaction ID, Mastercard calls this the Trace ID, and American Express calls this the Acquirer Reference Data. This value will be present if it is returned by the financial network in the authorization response, and null otherwise.
        sig { returns(T.nilable(String)) }
        attr_reader :network_transaction_id
        # Attribute for field overcapture
        sig { returns(Overcapture) }
        attr_reader :overcapture
        # Attribute for field partial_authorization
        sig { returns(PartialAuthorization) }
        attr_reader :partial_authorization
        # Status of a card based on the card issuer.
        sig { returns(T.nilable(String)) }
        attr_reader :regulated_status
        # Populated if this transaction used 3D Secure authentication.
        sig { returns(T.nilable(ThreeDSecure)) }
        attr_reader :three_d_secure
        # If this Card is part of a card wallet, this contains the details of the card wallet.
        sig { returns(T.nilable(Wallet)) }
        attr_reader :wallet
      end
      class CardPresent < Stripe::StripeObject
        class Offline < Stripe::StripeObject
          # Time at which the payment was collected while offline
          sig { returns(T.nilable(Integer)) }
          attr_reader :stored_at
          # The method used to process this payment method offline. Only deferred is allowed.
          sig { returns(T.nilable(String)) }
          attr_reader :type
        end
        class Receipt < Stripe::StripeObject
          # The type of account being debited or credited
          sig { returns(String) }
          attr_reader :account_type
          # EMV tag 9F26, cryptogram generated by the integrated circuit chip.
          sig { returns(T.nilable(String)) }
          attr_reader :application_cryptogram
          # Mnenomic of the Application Identifier.
          sig { returns(T.nilable(String)) }
          attr_reader :application_preferred_name
          # Identifier for this transaction.
          sig { returns(T.nilable(String)) }
          attr_reader :authorization_code
          # EMV tag 8A. A code returned by the card issuer.
          sig { returns(T.nilable(String)) }
          attr_reader :authorization_response_code
          # Describes the method used by the cardholder to verify ownership of the card. One of the following: `approval`, `failure`, `none`, `offline_pin`, `offline_pin_and_signature`, `online_pin`, or `signature`.
          sig { returns(T.nilable(String)) }
          attr_reader :cardholder_verification_method
          # EMV tag 84. Similar to the application identifier stored on the integrated circuit chip.
          sig { returns(T.nilable(String)) }
          attr_reader :dedicated_file_name
          # The outcome of a series of EMV functions performed by the card reader.
          sig { returns(T.nilable(String)) }
          attr_reader :terminal_verification_results
          # An indication of various EMV functions performed during the transaction.
          sig { returns(T.nilable(String)) }
          attr_reader :transaction_status_information
        end
        class Wallet < Stripe::StripeObject
          # The type of mobile wallet, one of `apple_pay`, `google_pay`, `samsung_pay`, or `unknown`.
          sig { returns(String) }
          attr_reader :type
        end
        # The authorized amount
        sig { returns(T.nilable(Integer)) }
        attr_reader :amount_authorized
        # Card brand. Can be `amex`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
        sig { returns(T.nilable(String)) }
        attr_reader :brand
        # The [product code](https://stripe.com/docs/card-product-codes) that identifies the specific program or product associated with a card.
        sig { returns(T.nilable(String)) }
        attr_reader :brand_product
        # When using manual capture, a future timestamp after which the charge will be automatically refunded if uncaptured.
        sig { returns(Integer) }
        attr_reader :capture_before
        # The cardholder name as read from the card, in [ISO 7813](https://en.wikipedia.org/wiki/ISO/IEC_7813) format. May include alphanumeric characters, special characters and first/last name separator (`/`). In some cases, the cardholder name may not be available depending on how the issuer has configured the card. Cardholder name is typically not available on swipe or contactless payments, such as those made with Apple Pay and Google Pay.
        sig { returns(T.nilable(String)) }
        attr_reader :cardholder_name
        # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
        sig { returns(T.nilable(String)) }
        attr_reader :country
        # A high-level description of the type of cards issued in this range. (For internal use only and not typically available in standard API requests.)
        sig { returns(T.nilable(String)) }
        attr_reader :description
        # Authorization response cryptogram.
        sig { returns(T.nilable(String)) }
        attr_reader :emv_auth_data
        # Two-digit number representing the card's expiration month.
        sig { returns(Integer) }
        attr_reader :exp_month
        # Four-digit number representing the card's expiration year.
        sig { returns(Integer) }
        attr_reader :exp_year
        # Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.
        #
        # *As of May 1, 2021, card fingerprint in India for Connect changed to allow two fingerprints for the same card---one for India and one for the rest of the world.*
        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint
        # Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
        sig { returns(T.nilable(String)) }
        attr_reader :funding
        # ID of a card PaymentMethod generated from the card_present PaymentMethod that may be attached to a Customer for future transactions. Only present if it was possible to generate a card PaymentMethod.
        sig { returns(T.nilable(String)) }
        attr_reader :generated_card
        # Issuer identification number of the card. (For internal use only and not typically available in standard API requests.)
        sig { returns(T.nilable(String)) }
        attr_reader :iin
        # Whether this [PaymentIntent](https://stripe.com/docs/api/payment_intents) is eligible for incremental authorizations. Request support using [request_incremental_authorization_support](https://stripe.com/docs/api/payment_intents/create#create_payment_intent-payment_method_options-card_present-request_incremental_authorization_support).
        sig { returns(T::Boolean) }
        attr_reader :incremental_authorization_supported
        # The name of the card's issuing bank. (For internal use only and not typically available in standard API requests.)
        sig { returns(T.nilable(String)) }
        attr_reader :issuer
        # The last four digits of the card.
        sig { returns(T.nilable(String)) }
        attr_reader :last4
        # Identifies which network this charge was processed on. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `interac`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
        sig { returns(T.nilable(String)) }
        attr_reader :network
        # This is used by the financial networks to identify a transaction. Visa calls this the Transaction ID, Mastercard calls this the Trace ID, and American Express calls this the Acquirer Reference Data. This value will be present if it is returned by the financial network in the authorization response, and null otherwise.
        sig { returns(T.nilable(String)) }
        attr_reader :network_transaction_id
        # Details about payments collected offline.
        sig { returns(T.nilable(Offline)) }
        attr_reader :offline
        # Defines whether the authorized amount can be over-captured or not
        sig { returns(T::Boolean) }
        attr_reader :overcapture_supported
        # EMV tag 5F2D. Preferred languages specified by the integrated circuit chip.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :preferred_locales
        # How card details were read in this transaction.
        sig { returns(T.nilable(String)) }
        attr_reader :read_method
        # A collection of fields required to be displayed on receipts. Only required for EMV transactions.
        sig { returns(T.nilable(Receipt)) }
        attr_reader :receipt
        # Attribute for field wallet
        sig { returns(Wallet) }
        attr_reader :wallet
      end
      class Cashapp < Stripe::StripeObject
        # A unique and immutable identifier assigned by Cash App to every buyer.
        sig { returns(T.nilable(String)) }
        attr_reader :buyer_id
        # A public identifier for buyers using Cash App.
        sig { returns(T.nilable(String)) }
        attr_reader :cashtag
      end
      class CustomerBalance < Stripe::StripeObject; end
      class Eps < Stripe::StripeObject
        # The customer's bank. Should be one of `arzte_und_apotheker_bank`, `austrian_anadi_bank_ag`, `bank_austria`, `bankhaus_carl_spangler`, `bankhaus_schelhammer_und_schattera_ag`, `bawag_psk_ag`, `bks_bank_ag`, `brull_kallmus_bank_ag`, `btv_vier_lander_bank`, `capital_bank_grawe_gruppe_ag`, `deutsche_bank_ag`, `dolomitenbank`, `easybank_ag`, `erste_bank_und_sparkassen`, `hypo_alpeadriabank_international_ag`, `hypo_noe_lb_fur_niederosterreich_u_wien`, `hypo_oberosterreich_salzburg_steiermark`, `hypo_tirol_bank_ag`, `hypo_vorarlberg_bank_ag`, `hypo_bank_burgenland_aktiengesellschaft`, `marchfelder_bank`, `oberbank_ag`, `raiffeisen_bankengruppe_osterreich`, `schoellerbank_ag`, `sparda_bank_wien`, `volksbank_gruppe`, `volkskreditbank_ag`, or `vr_bank_braunau`.
        sig { returns(T.nilable(String)) }
        attr_reader :bank
        # Owner's verified full name. Values are verified or provided by EPS directly
        # (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        # EPS rarely provides this information so the attribute is usually empty.
        sig { returns(T.nilable(String)) }
        attr_reader :verified_name
      end
      class Fpx < Stripe::StripeObject
        # Account holder type, if provided. Can be one of `individual` or `company`.
        sig { returns(T.nilable(String)) }
        attr_reader :account_holder_type
        # The customer's bank. Can be one of `affin_bank`, `agrobank`, `alliance_bank`, `ambank`, `bank_islam`, `bank_muamalat`, `bank_rakyat`, `bsn`, `cimb`, `hong_leong_bank`, `hsbc`, `kfh`, `maybank2u`, `ocbc`, `public_bank`, `rhb`, `standard_chartered`, `uob`, `deutsche_bank`, `maybank2e`, `pb_enterprise`, or `bank_of_china`.
        sig { returns(String) }
        attr_reader :bank
        # Unique transaction id generated by FPX for every request from the merchant
        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
      end
      class Giropay < Stripe::StripeObject
        # Bank code of bank associated with the bank account.
        sig { returns(T.nilable(String)) }
        attr_reader :bank_code
        # Name of the bank associated with the bank account.
        sig { returns(T.nilable(String)) }
        attr_reader :bank_name
        # Bank Identifier Code of the bank associated with the bank account.
        sig { returns(T.nilable(String)) }
        attr_reader :bic
        # Owner's verified full name. Values are verified or provided by Giropay directly
        # (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        # Giropay rarely provides this information so the attribute is usually empty.
        sig { returns(T.nilable(String)) }
        attr_reader :verified_name
      end
      class Gopay < Stripe::StripeObject; end
      class Grabpay < Stripe::StripeObject
        # Unique transaction id generated by GrabPay
        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
      end
      class IdBankTransfer < Stripe::StripeObject
        # Account number of the bank account to transfer funds to.
        sig { returns(String) }
        attr_reader :account_number
        # Bank where the account is located.
        sig { returns(String) }
        attr_reader :bank
        # Local bank code of the bank.
        sig { returns(String) }
        attr_reader :bank_code
        # Name of the bank associated with the bank account.
        sig { returns(String) }
        attr_reader :bank_name
        # Merchant name and billing details name, for the customer to check for the correct merchant when performing the bank transfer.
        sig { returns(String) }
        attr_reader :display_name
      end
      class Ideal < Stripe::StripeObject
        # The customer's bank. Can be one of `abn_amro`, `asn_bank`, `bunq`, `handelsbanken`, `ing`, `knab`, `moneyou`, `n26`, `nn`, `rabobank`, `regiobank`, `revolut`, `sns_bank`, `triodos_bank`, `van_lanschot`, or `yoursafe`.
        sig { returns(T.nilable(String)) }
        attr_reader :bank
        # The Bank Identifier Code of the customer's bank.
        sig { returns(T.nilable(String)) }
        attr_reader :bic
        # The ID of the SEPA Direct Debit PaymentMethod which was generated by this Charge.
        sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
        attr_reader :generated_sepa_debit
        # The mandate for the SEPA Direct Debit PaymentMethod which was generated by this Charge.
        sig { returns(T.nilable(T.any(String, Stripe::Mandate))) }
        attr_reader :generated_sepa_debit_mandate
        # Last four characters of the IBAN.
        sig { returns(T.nilable(String)) }
        attr_reader :iban_last4
        # Owner's verified full name. Values are verified or provided by iDEAL directly
        # (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        sig { returns(T.nilable(String)) }
        attr_reader :verified_name
      end
      class InteracPresent < Stripe::StripeObject
        class Receipt < Stripe::StripeObject
          # The type of account being debited or credited
          sig { returns(String) }
          attr_reader :account_type
          # EMV tag 9F26, cryptogram generated by the integrated circuit chip.
          sig { returns(T.nilable(String)) }
          attr_reader :application_cryptogram
          # Mnenomic of the Application Identifier.
          sig { returns(T.nilable(String)) }
          attr_reader :application_preferred_name
          # Identifier for this transaction.
          sig { returns(T.nilable(String)) }
          attr_reader :authorization_code
          # EMV tag 8A. A code returned by the card issuer.
          sig { returns(T.nilable(String)) }
          attr_reader :authorization_response_code
          # Describes the method used by the cardholder to verify ownership of the card. One of the following: `approval`, `failure`, `none`, `offline_pin`, `offline_pin_and_signature`, `online_pin`, or `signature`.
          sig { returns(T.nilable(String)) }
          attr_reader :cardholder_verification_method
          # EMV tag 84. Similar to the application identifier stored on the integrated circuit chip.
          sig { returns(T.nilable(String)) }
          attr_reader :dedicated_file_name
          # The outcome of a series of EMV functions performed by the card reader.
          sig { returns(T.nilable(String)) }
          attr_reader :terminal_verification_results
          # An indication of various EMV functions performed during the transaction.
          sig { returns(T.nilable(String)) }
          attr_reader :transaction_status_information
        end
        # Card brand. Can be `interac`, `mastercard` or `visa`.
        sig { returns(T.nilable(String)) }
        attr_reader :brand
        # The cardholder name as read from the card, in [ISO 7813](https://en.wikipedia.org/wiki/ISO/IEC_7813) format. May include alphanumeric characters, special characters and first/last name separator (`/`). In some cases, the cardholder name may not be available depending on how the issuer has configured the card. Cardholder name is typically not available on swipe or contactless payments, such as those made with Apple Pay and Google Pay.
        sig { returns(T.nilable(String)) }
        attr_reader :cardholder_name
        # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
        sig { returns(T.nilable(String)) }
        attr_reader :country
        # A high-level description of the type of cards issued in this range. (For internal use only and not typically available in standard API requests.)
        sig { returns(T.nilable(String)) }
        attr_reader :description
        # Authorization response cryptogram.
        sig { returns(T.nilable(String)) }
        attr_reader :emv_auth_data
        # Two-digit number representing the card's expiration month.
        sig { returns(Integer) }
        attr_reader :exp_month
        # Four-digit number representing the card's expiration year.
        sig { returns(Integer) }
        attr_reader :exp_year
        # Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.
        #
        # *As of May 1, 2021, card fingerprint in India for Connect changed to allow two fingerprints for the same card---one for India and one for the rest of the world.*
        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint
        # Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
        sig { returns(T.nilable(String)) }
        attr_reader :funding
        # ID of a card PaymentMethod generated from the card_present PaymentMethod that may be attached to a Customer for future transactions. Only present if it was possible to generate a card PaymentMethod.
        sig { returns(T.nilable(String)) }
        attr_reader :generated_card
        # Issuer identification number of the card. (For internal use only and not typically available in standard API requests.)
        sig { returns(T.nilable(String)) }
        attr_reader :iin
        # The name of the card's issuing bank. (For internal use only and not typically available in standard API requests.)
        sig { returns(T.nilable(String)) }
        attr_reader :issuer
        # The last four digits of the card.
        sig { returns(T.nilable(String)) }
        attr_reader :last4
        # Identifies which network this charge was processed on. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `interac`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
        sig { returns(T.nilable(String)) }
        attr_reader :network
        # This is used by the financial networks to identify a transaction. Visa calls this the Transaction ID, Mastercard calls this the Trace ID, and American Express calls this the Acquirer Reference Data. This value will be present if it is returned by the financial network in the authorization response, and null otherwise.
        sig { returns(T.nilable(String)) }
        attr_reader :network_transaction_id
        # EMV tag 5F2D. Preferred languages specified by the integrated circuit chip.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :preferred_locales
        # How card details were read in this transaction.
        sig { returns(T.nilable(String)) }
        attr_reader :read_method
        # A collection of fields required to be displayed on receipts. Only required for EMV transactions.
        sig { returns(T.nilable(Receipt)) }
        attr_reader :receipt
      end
      class KakaoPay < Stripe::StripeObject
        # A unique identifier for the buyer as determined by the local payment processor.
        sig { returns(T.nilable(String)) }
        attr_reader :buyer_id
      end
      class Klarna < Stripe::StripeObject
        class PayerDetails < Stripe::StripeObject
          class Address < Stripe::StripeObject
            # The payer address country
            sig { returns(T.nilable(String)) }
            attr_reader :country
          end
          # The payer's address
          sig { returns(T.nilable(Address)) }
          attr_reader :address
        end
        # The payer details for this transaction.
        sig { returns(T.nilable(PayerDetails)) }
        attr_reader :payer_details
        # The Klarna payment method used for this transaction.
        # Can be one of `pay_later`, `pay_now`, `pay_with_financing`, or `pay_in_installments`
        sig { returns(T.nilable(String)) }
        attr_reader :payment_method_category
        # Preferred language of the Klarna authorization page that the customer is redirected to.
        # Can be one of `de-AT`, `en-AT`, `nl-BE`, `fr-BE`, `en-BE`, `de-DE`, `en-DE`, `da-DK`, `en-DK`, `es-ES`, `en-ES`, `fi-FI`, `sv-FI`, `en-FI`, `en-GB`, `en-IE`, `it-IT`, `en-IT`, `nl-NL`, `en-NL`, `nb-NO`, `en-NO`, `sv-SE`, `en-SE`, `en-US`, `es-US`, `fr-FR`, `en-FR`, `cs-CZ`, `en-CZ`, `ro-RO`, `en-RO`, `el-GR`, `en-GR`, `en-AU`, `en-NZ`, `en-CA`, `fr-CA`, `pl-PL`, `en-PL`, `pt-PT`, `en-PT`, `de-CH`, `fr-CH`, `it-CH`, or `en-CH`
        sig { returns(T.nilable(String)) }
        attr_reader :preferred_locale
      end
      class Konbini < Stripe::StripeObject
        class Store < Stripe::StripeObject
          # The name of the convenience store chain where the payment was completed.
          sig { returns(T.nilable(String)) }
          attr_reader :chain
        end
        # If the payment succeeded, this contains the details of the convenience store where the payment was completed.
        sig { returns(T.nilable(Store)) }
        attr_reader :store
      end
      class KrCard < Stripe::StripeObject
        # The local credit or debit card brand.
        sig { returns(T.nilable(String)) }
        attr_reader :brand
        # A unique identifier for the buyer as determined by the local payment processor.
        sig { returns(T.nilable(String)) }
        attr_reader :buyer_id
        # The last four digits of the card. This may not be present for American Express cards.
        sig { returns(T.nilable(String)) }
        attr_reader :last4
      end
      class Link < Stripe::StripeObject
        # Two-letter ISO code representing the funding source country beneath the Link payment.
        # You could use this attribute to get a sense of international fees.
        sig { returns(T.nilable(String)) }
        attr_reader :country
      end
      class MbWay < Stripe::StripeObject; end
      class Mobilepay < Stripe::StripeObject
        class Card < Stripe::StripeObject
          # Brand of the card used in the transaction
          sig { returns(T.nilable(String)) }
          attr_reader :brand
          # Two-letter ISO code representing the country of the card
          sig { returns(T.nilable(String)) }
          attr_reader :country
          # Two digit number representing the card's expiration month
          sig { returns(T.nilable(Integer)) }
          attr_reader :exp_month
          # Two digit number representing the card's expiration year
          sig { returns(T.nilable(Integer)) }
          attr_reader :exp_year
          # The last 4 digits of the card
          sig { returns(T.nilable(String)) }
          attr_reader :last4
        end
        # Internal card details
        sig { returns(T.nilable(Card)) }
        attr_reader :card
      end
      class Multibanco < Stripe::StripeObject
        # Entity number associated with this Multibanco payment.
        sig { returns(T.nilable(String)) }
        attr_reader :entity
        # Reference number associated with this Multibanco payment.
        sig { returns(T.nilable(String)) }
        attr_reader :reference
      end
      class NaverPay < Stripe::StripeObject
        # A unique identifier for the buyer as determined by the local payment processor.
        sig { returns(T.nilable(String)) }
        attr_reader :buyer_id
      end
      class Oxxo < Stripe::StripeObject
        # OXXO reference number
        sig { returns(T.nilable(String)) }
        attr_reader :number
      end
      class P24 < Stripe::StripeObject
        # The customer's bank. Can be one of `ing`, `citi_handlowy`, `tmobile_usbugi_bankowe`, `plus_bank`, `etransfer_pocztowy24`, `banki_spbdzielcze`, `bank_nowy_bfg_sa`, `getin_bank`, `velobank`, `blik`, `noble_pay`, `ideabank`, `envelobank`, `santander_przelew24`, `nest_przelew`, `mbank_mtransfer`, `inteligo`, `pbac_z_ipko`, `bnp_paribas`, `credit_agricole`, `toyota_bank`, `bank_pekao_sa`, `volkswagen_bank`, `bank_millennium`, `alior_bank`, or `boz`.
        sig { returns(T.nilable(String)) }
        attr_reader :bank
        # Unique reference for this Przelewy24 payment.
        sig { returns(T.nilable(String)) }
        attr_reader :reference
        # Owner's verified full name. Values are verified or provided by Przelewy24 directly
        # (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        # Przelewy24 rarely provides this information so the attribute is usually empty.
        sig { returns(T.nilable(String)) }
        attr_reader :verified_name
      end
      class PayByBank < Stripe::StripeObject; end
      class Payco < Stripe::StripeObject
        # A unique identifier for the buyer as determined by the local payment processor.
        sig { returns(T.nilable(String)) }
        attr_reader :buyer_id
      end
      class Paynow < Stripe::StripeObject
        # Reference number associated with this PayNow payment
        sig { returns(T.nilable(String)) }
        attr_reader :reference
      end
      class Paypal < Stripe::StripeObject
        class SellerProtection < Stripe::StripeObject
          # An array of conditions that are covered for the transaction, if applicable.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :dispute_categories
          # Indicates whether the transaction is eligible for PayPal's seller protection.
          sig { returns(String) }
          attr_reader :status
        end
        class Shipping < Stripe::StripeObject
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
        class VerifiedAddress < Stripe::StripeObject
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
        # Two-letter ISO code representing the buyer's country. Values are provided by PayPal directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        sig { returns(T.nilable(String)) }
        attr_reader :country
        # Owner's email. Values are provided by PayPal directly
        # (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        sig { returns(T.nilable(String)) }
        attr_reader :payer_email
        # PayPal account PayerID. This identifier uniquely identifies the PayPal customer.
        sig { returns(T.nilable(String)) }
        attr_reader :payer_id
        # Owner's full name. Values provided by PayPal directly
        # (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        sig { returns(T.nilable(String)) }
        attr_reader :payer_name
        # The level of protection offered as defined by PayPal Seller Protection for Merchants, for this transaction.
        sig { returns(T.nilable(SellerProtection)) }
        attr_reader :seller_protection
        # The shipping address for the customer, as supplied by the merchant at the point of payment
        # execution. This shipping address will not be updated if the merchant updates the shipping
        # address on the PaymentIntent after the PaymentIntent was successfully confirmed.
        sig { returns(T.nilable(Shipping)) }
        attr_reader :shipping
        # A unique ID generated by PayPal for this transaction.
        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
        # The shipping address for the customer, as supplied by the merchant at the point of payment
        # execution. This shipping address will not be updated if the merchant updates the shipping
        # address on the PaymentIntent after the PaymentIntent was successfully confirmed.
        sig { returns(T.nilable(VerifiedAddress)) }
        attr_reader :verified_address
        # Owner's verified email. Values are verified or provided by PayPal directly
        # (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        sig { returns(T.nilable(String)) }
        attr_reader :verified_email
        # Owner's verified full name. Values are verified or provided by PayPal directly
        # (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        sig { returns(T.nilable(String)) }
        attr_reader :verified_name
      end
      class Payto < Stripe::StripeObject
        # Bank-State-Branch number of the bank account.
        sig { returns(T.nilable(String)) }
        attr_reader :bsb_number
        # Last four digits of the bank account number.
        sig { returns(T.nilable(String)) }
        attr_reader :last4
        # ID of the mandate used to make this payment.
        sig { returns(String) }
        attr_reader :mandate
        # The PayID alias for the bank account.
        sig { returns(T.nilable(String)) }
        attr_reader :pay_id
      end
      class Pix < Stripe::StripeObject
        # Unique transaction id generated by BCB
        sig { returns(T.nilable(String)) }
        attr_reader :bank_transaction_id
      end
      class Promptpay < Stripe::StripeObject
        # Bill reference generated by PromptPay
        sig { returns(T.nilable(String)) }
        attr_reader :reference
      end
      class Qris < Stripe::StripeObject; end
      class Rechnung < Stripe::StripeObject; end
      class RevolutPay < Stripe::StripeObject
        class Funding < Stripe::StripeObject
          class Card < Stripe::StripeObject
            # Card brand. Can be `amex`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
            sig { returns(T.nilable(String)) }
            attr_reader :brand
            # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
            sig { returns(T.nilable(String)) }
            attr_reader :country
            # Two-digit number representing the card's expiration month.
            sig { returns(T.nilable(Integer)) }
            attr_reader :exp_month
            # Four-digit number representing the card's expiration year.
            sig { returns(T.nilable(Integer)) }
            attr_reader :exp_year
            # Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
            sig { returns(T.nilable(String)) }
            attr_reader :funding
            # The last four digits of the card.
            sig { returns(T.nilable(String)) }
            attr_reader :last4
          end
          # Attribute for field card
          sig { returns(Card) }
          attr_reader :card
          # funding type of the underlying payment method.
          sig { returns(T.nilable(String)) }
          attr_reader :type
        end
        # Attribute for field funding
        sig { returns(Funding) }
        attr_reader :funding
      end
      class SamsungPay < Stripe::StripeObject
        # A unique identifier for the buyer as determined by the local payment processor.
        sig { returns(T.nilable(String)) }
        attr_reader :buyer_id
      end
      class SepaCreditTransfer < Stripe::StripeObject
        # Name of the bank associated with the bank account.
        sig { returns(T.nilable(String)) }
        attr_reader :bank_name
        # Bank Identifier Code of the bank associated with the bank account.
        sig { returns(T.nilable(String)) }
        attr_reader :bic
        # IBAN of the bank account to transfer funds to.
        sig { returns(T.nilable(String)) }
        attr_reader :iban
      end
      class SepaDebit < Stripe::StripeObject
        # Bank code of bank associated with the bank account.
        sig { returns(T.nilable(String)) }
        attr_reader :bank_code
        # Branch code of bank associated with the bank account.
        sig { returns(T.nilable(String)) }
        attr_reader :branch_code
        # Two-letter ISO code representing the country the bank account is located in.
        sig { returns(T.nilable(String)) }
        attr_reader :country
        # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint
        # Last four characters of the IBAN.
        sig { returns(T.nilable(String)) }
        attr_reader :last4
        # Find the ID of the mandate used for this payment under the [payment_method_details.sepa_debit.mandate](https://stripe.com/docs/api/charges/object#charge_object-payment_method_details-sepa_debit-mandate) property on the Charge. Use this mandate ID to [retrieve the Mandate](https://stripe.com/docs/api/mandates/retrieve).
        sig { returns(T.nilable(String)) }
        attr_reader :mandate
      end
      class Shopeepay < Stripe::StripeObject; end
      class Sofort < Stripe::StripeObject
        # Bank code of bank associated with the bank account.
        sig { returns(T.nilable(String)) }
        attr_reader :bank_code
        # Name of the bank associated with the bank account.
        sig { returns(T.nilable(String)) }
        attr_reader :bank_name
        # Bank Identifier Code of the bank associated with the bank account.
        sig { returns(T.nilable(String)) }
        attr_reader :bic
        # Two-letter ISO code representing the country the bank account is located in.
        sig { returns(T.nilable(String)) }
        attr_reader :country
        # The ID of the SEPA Direct Debit PaymentMethod which was generated by this Charge.
        sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
        attr_reader :generated_sepa_debit
        # The mandate for the SEPA Direct Debit PaymentMethod which was generated by this Charge.
        sig { returns(T.nilable(T.any(String, Stripe::Mandate))) }
        attr_reader :generated_sepa_debit_mandate
        # Last four characters of the IBAN.
        sig { returns(T.nilable(String)) }
        attr_reader :iban_last4
        # Preferred language of the SOFORT authorization page that the customer is redirected to.
        # Can be one of `de`, `en`, `es`, `fr`, `it`, `nl`, or `pl`
        sig { returns(T.nilable(String)) }
        attr_reader :preferred_language
        # Owner's verified full name. Values are verified or provided by SOFORT directly
        # (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        sig { returns(T.nilable(String)) }
        attr_reader :verified_name
      end
      class StripeAccount < Stripe::StripeObject; end
      class Swish < Stripe::StripeObject
        # Uniquely identifies the payer's Swish account. You can use this attribute to check whether two Swish transactions were paid for by the same payer
        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint
        # Payer bank reference number for the payment
        sig { returns(T.nilable(String)) }
        attr_reader :payment_reference
        # The last four digits of the Swish account phone number
        sig { returns(T.nilable(String)) }
        attr_reader :verified_phone_last4
      end
      class Twint < Stripe::StripeObject; end
      class UsBankAccount < Stripe::StripeObject
        # Account holder type: individual or company.
        sig { returns(T.nilable(String)) }
        attr_reader :account_holder_type
        # Account type: checkings or savings. Defaults to checking if omitted.
        sig { returns(T.nilable(String)) }
        attr_reader :account_type
        # Name of the bank associated with the bank account.
        sig { returns(T.nilable(String)) }
        attr_reader :bank_name
        # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint
        # Last four digits of the bank account number.
        sig { returns(T.nilable(String)) }
        attr_reader :last4
        # ID of the mandate used to make this payment.
        sig { returns(T.any(String, Stripe::Mandate)) }
        attr_reader :mandate
        # Reference number to locate ACH payments with customer's bank.
        sig { returns(T.nilable(String)) }
        attr_reader :payment_reference
        # Routing number of the bank account.
        sig { returns(T.nilable(String)) }
        attr_reader :routing_number
      end
      class Wechat < Stripe::StripeObject; end
      class WechatPay < Stripe::StripeObject
        # Uniquely identifies this particular WeChat Pay account. You can use this attribute to check whether two WeChat accounts are the same.
        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint
        # Transaction ID of this particular WeChat Pay transaction.
        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
      end
      class Zip < Stripe::StripeObject; end
      # Attribute for field ach_credit_transfer
      sig { returns(AchCreditTransfer) }
      attr_reader :ach_credit_transfer
      # Attribute for field ach_debit
      sig { returns(AchDebit) }
      attr_reader :ach_debit
      # Attribute for field acss_debit
      sig { returns(AcssDebit) }
      attr_reader :acss_debit
      # Attribute for field affirm
      sig { returns(Affirm) }
      attr_reader :affirm
      # Attribute for field afterpay_clearpay
      sig { returns(AfterpayClearpay) }
      attr_reader :afterpay_clearpay
      # Attribute for field alipay
      sig { returns(Alipay) }
      attr_reader :alipay
      # Attribute for field alma
      sig { returns(Alma) }
      attr_reader :alma
      # Attribute for field amazon_pay
      sig { returns(AmazonPay) }
      attr_reader :amazon_pay
      # Attribute for field au_becs_debit
      sig { returns(AuBecsDebit) }
      attr_reader :au_becs_debit
      # Attribute for field bacs_debit
      sig { returns(BacsDebit) }
      attr_reader :bacs_debit
      # Attribute for field bancontact
      sig { returns(Bancontact) }
      attr_reader :bancontact
      # Attribute for field blik
      sig { returns(Blik) }
      attr_reader :blik
      # Attribute for field boleto
      sig { returns(Boleto) }
      attr_reader :boleto
      # Attribute for field card
      sig { returns(Card) }
      attr_reader :card
      # Attribute for field card_present
      sig { returns(CardPresent) }
      attr_reader :card_present
      # Attribute for field cashapp
      sig { returns(Cashapp) }
      attr_reader :cashapp
      # Attribute for field customer_balance
      sig { returns(CustomerBalance) }
      attr_reader :customer_balance
      # Attribute for field eps
      sig { returns(Eps) }
      attr_reader :eps
      # Attribute for field fpx
      sig { returns(Fpx) }
      attr_reader :fpx
      # Attribute for field giropay
      sig { returns(Giropay) }
      attr_reader :giropay
      # Attribute for field gopay
      sig { returns(Gopay) }
      attr_reader :gopay
      # Attribute for field grabpay
      sig { returns(Grabpay) }
      attr_reader :grabpay
      # Attribute for field id_bank_transfer
      sig { returns(IdBankTransfer) }
      attr_reader :id_bank_transfer
      # Attribute for field ideal
      sig { returns(Ideal) }
      attr_reader :ideal
      # Attribute for field interac_present
      sig { returns(InteracPresent) }
      attr_reader :interac_present
      # Attribute for field kakao_pay
      sig { returns(KakaoPay) }
      attr_reader :kakao_pay
      # Attribute for field klarna
      sig { returns(Klarna) }
      attr_reader :klarna
      # Attribute for field konbini
      sig { returns(Konbini) }
      attr_reader :konbini
      # Attribute for field kr_card
      sig { returns(KrCard) }
      attr_reader :kr_card
      # Attribute for field link
      sig { returns(Link) }
      attr_reader :link
      # Attribute for field mb_way
      sig { returns(MbWay) }
      attr_reader :mb_way
      # Attribute for field mobilepay
      sig { returns(Mobilepay) }
      attr_reader :mobilepay
      # Attribute for field multibanco
      sig { returns(Multibanco) }
      attr_reader :multibanco
      # Attribute for field naver_pay
      sig { returns(NaverPay) }
      attr_reader :naver_pay
      # Attribute for field oxxo
      sig { returns(Oxxo) }
      attr_reader :oxxo
      # Attribute for field p24
      sig { returns(P24) }
      attr_reader :p24
      # Attribute for field pay_by_bank
      sig { returns(PayByBank) }
      attr_reader :pay_by_bank
      # Attribute for field payco
      sig { returns(Payco) }
      attr_reader :payco
      # Attribute for field paynow
      sig { returns(Paynow) }
      attr_reader :paynow
      # Attribute for field paypal
      sig { returns(Paypal) }
      attr_reader :paypal
      # Attribute for field payto
      sig { returns(Payto) }
      attr_reader :payto
      # Attribute for field pix
      sig { returns(Pix) }
      attr_reader :pix
      # Attribute for field promptpay
      sig { returns(Promptpay) }
      attr_reader :promptpay
      # Attribute for field qris
      sig { returns(Qris) }
      attr_reader :qris
      # Attribute for field rechnung
      sig { returns(Rechnung) }
      attr_reader :rechnung
      # Attribute for field revolut_pay
      sig { returns(RevolutPay) }
      attr_reader :revolut_pay
      # Attribute for field samsung_pay
      sig { returns(SamsungPay) }
      attr_reader :samsung_pay
      # Attribute for field sepa_credit_transfer
      sig { returns(SepaCreditTransfer) }
      attr_reader :sepa_credit_transfer
      # Attribute for field sepa_debit
      sig { returns(SepaDebit) }
      attr_reader :sepa_debit
      # Attribute for field shopeepay
      sig { returns(Shopeepay) }
      attr_reader :shopeepay
      # Attribute for field sofort
      sig { returns(Sofort) }
      attr_reader :sofort
      # Attribute for field stripe_account
      sig { returns(StripeAccount) }
      attr_reader :stripe_account
      # Attribute for field swish
      sig { returns(Swish) }
      attr_reader :swish
      # Attribute for field twint
      sig { returns(Twint) }
      attr_reader :twint
      # The type of transaction-specific details of the payment method used in the payment, one of `ach_credit_transfer`, `ach_debit`, `acss_debit`, `alipay`, `au_becs_debit`, `bancontact`, `card`, `card_present`, `eps`, `giropay`, `ideal`, `klarna`, `multibanco`, `p24`, `sepa_debit`, `sofort`, `stripe_account`, or `wechat`.
      # An additional hash is included on `payment_method_details` with a name matching this value.
      # It contains information specific to the payment method.
      sig { returns(String) }
      attr_reader :type
      # Attribute for field us_bank_account
      sig { returns(UsBankAccount) }
      attr_reader :us_bank_account
      # Attribute for field wechat
      sig { returns(Wechat) }
      attr_reader :wechat
      # Attribute for field wechat_pay
      sig { returns(WechatPay) }
      attr_reader :wechat_pay
      # Attribute for field zip
      sig { returns(Zip) }
      attr_reader :zip
    end
    class RadarOptions < Stripe::StripeObject
      # A [Radar Session](https://stripe.com/docs/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
      sig { returns(String) }
      attr_reader :session
    end
    class Shipping < Stripe::StripeObject
      class Address < Stripe::StripeObject
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
      # Attribute for field address
      sig { returns(Address) }
      attr_reader :address
      # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
      sig { returns(T.nilable(String)) }
      attr_reader :carrier
      # Recipient name.
      sig { returns(String) }
      attr_reader :name
      # Recipient phone (including extension).
      sig { returns(T.nilable(String)) }
      attr_reader :phone
      # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
      sig { returns(T.nilable(String)) }
      attr_reader :tracking_number
    end
    class TransferData < Stripe::StripeObject
      # The amount transferred to the destination account, if specified. By default, the entire charge amount is transferred to the destination account.
      sig { returns(T.nilable(Integer)) }
      attr_reader :amount
      # ID of an existing, connected Stripe account to transfer funds to if `transfer_data` was specified in the charge request.
      sig { returns(T.any(String, Stripe::Account)) }
      attr_reader :destination
    end
    # Amount intended to be collected by this payment. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
    sig { returns(Integer) }
    attr_reader :amount
    # Amount in cents (or local equivalent) captured (can be less than the amount attribute on the charge if a partial capture was made).
    sig { returns(Integer) }
    attr_reader :amount_captured
    # Amount in cents (or local equivalent) refunded (can be less than the amount attribute on the charge if a partial refund was issued).
    sig { returns(Integer) }
    attr_reader :amount_refunded
    # ID of the Connect application that created the charge.
    sig { returns(T.nilable(T.any(String, Stripe::Application))) }
    attr_reader :application
    # The application fee (if any) for the charge. [See the Connect documentation](https://stripe.com/docs/connect/direct-charges#collect-fees) for details.
    sig { returns(T.nilable(T.any(String, Stripe::ApplicationFee))) }
    attr_reader :application_fee
    # The amount of the application fee (if any) requested for the charge. [See the Connect documentation](https://stripe.com/docs/connect/direct-charges#collect-fees) for details.
    sig { returns(T.nilable(Integer)) }
    attr_reader :application_fee_amount
    # Authorization code on the charge.
    sig { returns(String) }
    attr_reader :authorization_code
    # ID of the balance transaction that describes the impact of this charge on your account balance (not including refunds or disputes).
    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    attr_reader :balance_transaction
    # Attribute for field billing_details
    sig { returns(BillingDetails) }
    attr_reader :billing_details
    # The full statement descriptor that is passed to card networks, and that is displayed on your customers' credit card and bank statements. Allows you to see what the statement descriptor looks like after the static and dynamic portions are combined. This value only exists for card payments.
    sig { returns(T.nilable(String)) }
    attr_reader :calculated_statement_descriptor
    # If the charge was created without capturing, this Boolean represents whether it is still uncaptured or has since been captured.
    sig { returns(T::Boolean) }
    attr_reader :captured
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    attr_reader :currency
    # ID of the customer this charge is for if one exists.
    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    attr_reader :customer
    # An arbitrary string attached to the object. Often useful for displaying to users.
    sig { returns(T.nilable(String)) }
    attr_reader :description
    # Whether the charge has been disputed.
    sig { returns(T::Boolean) }
    attr_reader :disputed
    # ID of the balance transaction that describes the reversal of the balance on your account due to payment failure.
    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    attr_reader :failure_balance_transaction
    # Error code explaining reason for charge failure if available (see [the errors section](https://stripe.com/docs/error-codes) for a list of codes).
    sig { returns(T.nilable(String)) }
    attr_reader :failure_code
    # Message to user further explaining reason for charge failure if available.
    sig { returns(T.nilable(String)) }
    attr_reader :failure_message
    # Information on fraud assessments for the charge.
    sig { returns(T.nilable(FraudDetails)) }
    attr_reader :fraud_details
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # ID of the invoice this charge is for if one exists.
    sig { returns(T.nilable(T.any(String, Stripe::Invoice))) }
    attr_reader :invoice
    # Attribute for field level3
    sig { returns(Level3) }
    attr_reader :level3
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # The account (if any) the charge was made on behalf of without triggering an automatic transfer. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers) for details.
    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    attr_reader :on_behalf_of
    # Details about whether the payment was accepted, and why. See [understanding declines](https://stripe.com/docs/declines) for details.
    sig { returns(T.nilable(Outcome)) }
    attr_reader :outcome
    # `true` if the charge succeeded, or was successfully authorized for later capture.
    sig { returns(T::Boolean) }
    attr_reader :paid
    # ID of the PaymentIntent associated with this charge, if one exists.
    sig { returns(T.nilable(T.any(String, Stripe::PaymentIntent))) }
    attr_reader :payment_intent
    # ID of the payment method used in this charge.
    sig { returns(T.nilable(String)) }
    attr_reader :payment_method
    # Details about the payment method at the time of the transaction.
    sig { returns(T.nilable(PaymentMethodDetails)) }
    attr_reader :payment_method_details
    # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
    sig { returns(RadarOptions) }
    attr_reader :radar_options
    # This is the email address that the receipt for this charge was sent to.
    sig { returns(T.nilable(String)) }
    attr_reader :receipt_email
    # This is the transaction number that appears on email receipts sent for this charge. This attribute will be `null` until a receipt has been sent.
    sig { returns(T.nilable(String)) }
    attr_reader :receipt_number
    # This is the URL to view the receipt for this charge. The receipt is kept up-to-date to the latest state of the charge, including any refunds. If the charge is for an Invoice, the receipt will be stylized as an Invoice receipt.
    sig { returns(T.nilable(String)) }
    attr_reader :receipt_url
    # Whether the charge has been fully refunded. If the charge is only partially refunded, this attribute will still be false.
    sig { returns(T::Boolean) }
    attr_reader :refunded
    # A list of refunds that have been applied to the charge.
    sig { returns(T.nilable(Stripe::ListObject)) }
    attr_reader :refunds
    # ID of the review associated with this charge if one exists.
    sig { returns(T.nilable(T.any(String, Stripe::Review))) }
    attr_reader :review
    # Shipping information for the charge.
    sig { returns(T.nilable(Shipping)) }
    attr_reader :shipping
    # This is a legacy field that will be removed in the future. It contains the Source, Card, or BankAccount object used for the charge. For details about the payment method used for this charge, refer to `payment_method` or `payment_method_details` instead.
    sig {
      returns(T.nilable(T.any(Stripe::Account, Stripe::BankAccount, Stripe::Card, Stripe::Source)))
     }
    attr_reader :source
    # The transfer ID which created this charge. Only present if the charge came from another Stripe account. [See the Connect documentation](https://docs.stripe.com/connect/destination-charges) for details.
    sig { returns(T.nilable(T.any(String, Stripe::Transfer))) }
    attr_reader :source_transfer
    # For a non-card charge, text that appears on the customer's statement as the statement descriptor. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
    #
    # For a card charge, this value is ignored unless you don't specify a `statement_descriptor_suffix`, in which case this value is used as the suffix.
    sig { returns(T.nilable(String)) }
    attr_reader :statement_descriptor
    # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement. If the account has no prefix value, the suffix is concatenated to the account's statement descriptor.
    sig { returns(T.nilable(String)) }
    attr_reader :statement_descriptor_suffix
    # The status of the payment is either `succeeded`, `pending`, or `failed`.
    sig { returns(String) }
    attr_reader :status
    # ID of the transfer to the `destination` account (only applicable if the charge was created using the `destination` parameter).
    sig { returns(T.any(String, Stripe::Transfer)) }
    attr_reader :transfer
    # An optional dictionary including the account to automatically transfer to as part of a destination charge. [See the Connect documentation](https://stripe.com/docs/connect/destination-charges) for details.
    sig { returns(T.nilable(TransferData)) }
    attr_reader :transfer_data
    # A string that identifies this transaction as part of a group. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers#transfer-options) for details.
    sig { returns(T.nilable(String)) }
    attr_reader :transfer_group
    class ListParams < Stripe::RequestParams
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        sig { returns(Integer) }
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        sig { returns(Integer) }
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        sig { returns(Integer) }
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        sig { returns(Integer) }
        attr_accessor :lte
        sig { params(gt: Integer, gte: Integer, lt: Integer, lte: Integer).void }
        def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
      end
      # Only return charges that were created during the given date interval.
      sig { returns(T.any(::Stripe::Charge::ListParams::Created, Integer)) }
      attr_accessor :created
      # Only return charges for the customer specified by this customer ID.
      sig { returns(String) }
      attr_accessor :customer
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(String) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(Integer) }
      attr_accessor :limit
      # Only return charges that were created by the PaymentIntent specified by this PaymentIntent ID.
      sig { returns(String) }
      attr_accessor :payment_intent
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(String) }
      attr_accessor :starting_after
      # Only return charges for this transfer group, limited to 100.
      sig { returns(String) }
      attr_accessor :transfer_group
      sig {
        params(created: T.any(::Stripe::Charge::ListParams::Created, Integer), customer: String, ending_before: String, expand: T::Array[String], limit: Integer, payment_intent: String, starting_after: String, transfer_group: String).void
       }
      def initialize(
        created: nil,
        customer: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        payment_intent: nil,
        starting_after: nil,
        transfer_group: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      class Destination < Stripe::RequestParams
        # ID of an existing, connected Stripe account.
        sig { returns(String) }
        attr_accessor :account
        # The amount to transfer to the destination account without creating an `Application Fee` object. Cannot be combined with the `application_fee` parameter. Must be less than or equal to the charge amount.
        sig { returns(Integer) }
        attr_accessor :amount
        sig { params(account: String, amount: Integer).void }
        def initialize(account: nil, amount: nil); end
      end
      class RadarOptions < Stripe::RequestParams
        # A [Radar Session](https://stripe.com/docs/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
        sig { returns(String) }
        attr_accessor :session
        sig { params(session: String).void }
        def initialize(session: nil); end
      end
      class Shipping < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(String) }
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(String) }
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(String) }
          attr_accessor :line2
          # ZIP or postal code.
          sig { returns(String) }
          attr_accessor :postal_code
          # State, county, province, or region.
          sig { returns(String) }
          attr_accessor :state
          sig {
            params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
        # Shipping address.
        sig { returns(::Stripe::Charge::CreateParams::Shipping::Address) }
        attr_accessor :address
        # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
        sig { returns(String) }
        attr_accessor :carrier
        # Recipient name.
        sig { returns(String) }
        attr_accessor :name
        # Recipient phone (including extension).
        sig { returns(String) }
        attr_accessor :phone
        # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
        sig { returns(String) }
        attr_accessor :tracking_number
        sig {
          params(address: ::Stripe::Charge::CreateParams::Shipping::Address, carrier: String, name: String, phone: String, tracking_number: String).void
         }
        def initialize(address: nil, carrier: nil, name: nil, phone: nil, tracking_number: nil); end
      end
      class TransferData < Stripe::RequestParams
        # The amount transferred to the destination account, if specified. By default, the entire charge amount is transferred to the destination account.
        sig { returns(Integer) }
        attr_accessor :amount
        # ID of an existing, connected Stripe account.
        sig { returns(String) }
        attr_accessor :destination
        sig { params(amount: Integer, destination: String).void }
        def initialize(amount: nil, destination: nil); end
      end
      # Amount intended to be collected by this payment. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
      sig { returns(Integer) }
      attr_accessor :amount
      # Attribute for param field application_fee
      sig { returns(Integer) }
      attr_accessor :application_fee
      # A fee in cents (or local equivalent) that will be applied to the charge and transferred to the application owner's Stripe account. The request must be made with an OAuth key or the `Stripe-Account` header in order to take an application fee. For more information, see the application fees [documentation](https://stripe.com/docs/connect/direct-charges#collect-fees).
      sig { returns(Integer) }
      attr_accessor :application_fee_amount
      # Whether to immediately capture the charge. Defaults to `true`. When `false`, the charge issues an authorization (or pre-authorization), and will need to be [captured](https://stripe.com/docs/api#capture_charge) later. Uncaptured charges expire after a set number of days (7 by default). For more information, see the [authorizing charges and settling later](https://stripe.com/docs/charges/placing-a-hold) documentation.
      sig { returns(T::Boolean) }
      attr_accessor :capture
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_accessor :currency
      # The ID of an existing customer that will be charged in this request.
      sig { returns(String) }
      attr_accessor :customer
      # An arbitrary string which you can attach to a `Charge` object. It is displayed when in the web interface alongside the charge. Note that if you use Stripe to send automatic email receipts to your customers, your receipt emails will include the `description` of the charge(s) that they are describing.
      sig { returns(String) }
      attr_accessor :description
      # Attribute for param field destination
      sig { returns(::Stripe::Charge::CreateParams::Destination) }
      attr_accessor :destination
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # The Stripe account ID for which these funds are intended. Automatically set if you use the `destination` parameter. For details, see [Creating Separate Charges and Transfers](https://stripe.com/docs/connect/separate-charges-and-transfers#settlement-merchant).
      sig { returns(String) }
      attr_accessor :on_behalf_of
      # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
      sig { returns(::Stripe::Charge::CreateParams::RadarOptions) }
      attr_accessor :radar_options
      # The email address to which this charge's [receipt](https://stripe.com/docs/dashboard/receipts) will be sent. The receipt will not be sent until the charge is paid, and no receipts will be sent for test mode charges. If this charge is for a [Customer](https://stripe.com/docs/api/customers/object), the email address specified here will override the customer's email address. If `receipt_email` is specified for a charge in live mode, a receipt will be sent regardless of your [email settings](https://dashboard.stripe.com/account/emails).
      sig { returns(String) }
      attr_accessor :receipt_email
      # Shipping information for the charge. Helps prevent fraud on charges for physical goods.
      sig { returns(::Stripe::Charge::CreateParams::Shipping) }
      attr_accessor :shipping
      # A payment source to be charged. This can be the ID of a [card](https://stripe.com/docs/api#cards) (i.e., credit or debit card), a [bank account](https://stripe.com/docs/api#bank_accounts), a [source](https://stripe.com/docs/api#sources), a [token](https://stripe.com/docs/api#tokens), or a [connected account](https://stripe.com/docs/connect/account-debits#charging-a-connected-account). For certain sources---namely, [cards](https://stripe.com/docs/api#cards), [bank accounts](https://stripe.com/docs/api#bank_accounts), and attached [sources](https://stripe.com/docs/api#sources)---you must also pass the ID of the associated customer.
      sig { returns(String) }
      attr_accessor :source
      # For a non-card charge, text that appears on the customer's statement as the statement descriptor. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
      #
      # For a card charge, this value is ignored unless you don't specify a `statement_descriptor_suffix`, in which case this value is used as the suffix.
      sig { returns(String) }
      attr_accessor :statement_descriptor
      # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement. If the account has no prefix value, the suffix is concatenated to the account's statement descriptor.
      sig { returns(String) }
      attr_accessor :statement_descriptor_suffix
      # An optional dictionary including the account to automatically transfer to as part of a destination charge. [See the Connect documentation](https://stripe.com/docs/connect/destination-charges) for details.
      sig { returns(::Stripe::Charge::CreateParams::TransferData) }
      attr_accessor :transfer_data
      # A string that identifies this transaction as part of a group. For details, see [Grouping transactions](https://stripe.com/docs/connect/separate-charges-and-transfers#transfer-options).
      sig { returns(String) }
      attr_accessor :transfer_group
      sig {
        params(amount: Integer, application_fee: Integer, application_fee_amount: Integer, capture: T::Boolean, currency: String, customer: String, description: String, destination: ::Stripe::Charge::CreateParams::Destination, expand: T::Array[String], metadata: T.nilable(T::Hash[String, String]), on_behalf_of: String, radar_options: ::Stripe::Charge::CreateParams::RadarOptions, receipt_email: String, shipping: ::Stripe::Charge::CreateParams::Shipping, source: String, statement_descriptor: String, statement_descriptor_suffix: String, transfer_data: ::Stripe::Charge::CreateParams::TransferData, transfer_group: String).void
       }
      def initialize(
        amount: nil,
        application_fee: nil,
        application_fee_amount: nil,
        capture: nil,
        currency: nil,
        customer: nil,
        description: nil,
        destination: nil,
        expand: nil,
        metadata: nil,
        on_behalf_of: nil,
        radar_options: nil,
        receipt_email: nil,
        shipping: nil,
        source: nil,
        statement_descriptor: nil,
        statement_descriptor_suffix: nil,
        transfer_data: nil,
        transfer_group: nil
      ); end
    end
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      sig { params(expand: T::Array[String]).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      class FraudDetails < Stripe::RequestParams
        # Either `safe` or `fraudulent`.
        sig { returns(T.nilable(String)) }
        attr_accessor :user_report
        sig { params(user_report: T.nilable(String)).void }
        def initialize(user_report: nil); end
      end
      class PaymentDetails < Stripe::RequestParams
        class CarRental < Stripe::RequestParams
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :phone
              sig { params(email: String, name: String, phone: String).void }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(String) }
            attr_accessor :mode
            # Details of the recipient.
            sig {
              returns(::Stripe::Charge::UpdateParams::PaymentDetails::CarRental::Delivery::Recipient)
             }
            attr_accessor :recipient
            sig {
              params(mode: String, recipient: ::Stripe::Charge::UpdateParams::PaymentDetails::CarRental::Delivery::Recipient).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          class Driver < Stripe::RequestParams
            # Full name of the person or entity on the car reservation.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class PickupAddress < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(String) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(String) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(String) }
            attr_accessor :state
            sig {
              params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
          class ReturnAddress < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(String) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(String) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(String) }
            attr_accessor :state
            sig {
              params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
          # Affiliate details for this purchase.
          sig { returns(::Stripe::Charge::UpdateParams::PaymentDetails::CarRental::Affiliate) }
          attr_accessor :affiliate
          # The booking number associated with the car rental.
          sig { returns(String) }
          attr_accessor :booking_number
          # Class code of the car.
          sig { returns(String) }
          attr_accessor :car_class_code
          # Make of the car.
          sig { returns(String) }
          attr_accessor :car_make
          # Model of the car.
          sig { returns(String) }
          attr_accessor :car_model
          # The name of the rental car company.
          sig { returns(String) }
          attr_accessor :company
          # The customer service phone number of the car rental company.
          sig { returns(String) }
          attr_accessor :customer_service_phone_number
          # Number of days the car is being rented.
          sig { returns(Integer) }
          attr_accessor :days_rented
          # Delivery details for this purchase.
          sig { returns(::Stripe::Charge::UpdateParams::PaymentDetails::CarRental::Delivery) }
          attr_accessor :delivery
          # The details of the passengers in the travel reservation
          sig {
            returns(T::Array[::Stripe::Charge::UpdateParams::PaymentDetails::CarRental::Driver])
           }
          attr_accessor :drivers
          # List of additional charges being billed.
          sig { returns(T::Array[String]) }
          attr_accessor :extra_charges
          # Indicates if the customer did not keep nor cancel their booking.
          sig { returns(T::Boolean) }
          attr_accessor :no_show
          # Car pick-up address.
          sig { returns(::Stripe::Charge::UpdateParams::PaymentDetails::CarRental::PickupAddress) }
          attr_accessor :pickup_address
          # Car pick-up time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :pickup_at
          # Rental rate.
          sig { returns(Integer) }
          attr_accessor :rate_amount
          # The frequency at which the rate amount is applied. One of `day`, `week` or `month`
          sig { returns(String) }
          attr_accessor :rate_interval
          # The name of the person or entity renting the car.
          sig { returns(String) }
          attr_accessor :renter_name
          # Car return address.
          sig { returns(::Stripe::Charge::UpdateParams::PaymentDetails::CarRental::ReturnAddress) }
          attr_accessor :return_address
          # Car return time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :return_at
          # Indicates whether the goods or services are tax-exempt or tax is not collected.
          sig { returns(T::Boolean) }
          attr_accessor :tax_exempt
          sig {
            params(affiliate: ::Stripe::Charge::UpdateParams::PaymentDetails::CarRental::Affiliate, booking_number: String, car_class_code: String, car_make: String, car_model: String, company: String, customer_service_phone_number: String, days_rented: Integer, delivery: ::Stripe::Charge::UpdateParams::PaymentDetails::CarRental::Delivery, drivers: T::Array[::Stripe::Charge::UpdateParams::PaymentDetails::CarRental::Driver], extra_charges: T::Array[String], no_show: T::Boolean, pickup_address: ::Stripe::Charge::UpdateParams::PaymentDetails::CarRental::PickupAddress, pickup_at: Integer, rate_amount: Integer, rate_interval: String, renter_name: String, return_address: ::Stripe::Charge::UpdateParams::PaymentDetails::CarRental::ReturnAddress, return_at: Integer, tax_exempt: T::Boolean).void
           }
          def initialize(
            affiliate: nil,
            booking_number: nil,
            car_class_code: nil,
            car_make: nil,
            car_model: nil,
            company: nil,
            customer_service_phone_number: nil,
            days_rented: nil,
            delivery: nil,
            drivers: nil,
            extra_charges: nil,
            no_show: nil,
            pickup_address: nil,
            pickup_at: nil,
            rate_amount: nil,
            rate_interval: nil,
            renter_name: nil,
            return_address: nil,
            return_at: nil,
            tax_exempt: nil
          ); end
        end
        class EventDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(String) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(String) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(String) }
            attr_accessor :state
            sig {
              params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :phone
              sig { params(email: String, name: String, phone: String).void }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(String) }
            attr_accessor :mode
            # Details of the recipient.
            sig {
              returns(::Stripe::Charge::UpdateParams::PaymentDetails::EventDetails::Delivery::Recipient)
             }
            attr_accessor :recipient
            sig {
              params(mode: String, recipient: ::Stripe::Charge::UpdateParams::PaymentDetails::EventDetails::Delivery::Recipient).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          # Indicates if the tickets are digitally checked when entering the venue.
          sig { returns(T::Boolean) }
          attr_accessor :access_controlled_venue
          # The event location's address.
          sig { returns(::Stripe::Charge::UpdateParams::PaymentDetails::EventDetails::Address) }
          attr_accessor :address
          # Affiliate details for this purchase.
          sig { returns(::Stripe::Charge::UpdateParams::PaymentDetails::EventDetails::Affiliate) }
          attr_accessor :affiliate
          # The name of the company
          sig { returns(String) }
          attr_accessor :company
          # Delivery details for this purchase.
          sig { returns(::Stripe::Charge::UpdateParams::PaymentDetails::EventDetails::Delivery) }
          attr_accessor :delivery
          # Event end time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :ends_at
          # Type of the event entertainment (concert, sports event etc)
          sig { returns(String) }
          attr_accessor :genre
          # The name of the event.
          sig { returns(String) }
          attr_accessor :name
          # Event start time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :starts_at
          sig {
            params(access_controlled_venue: T::Boolean, address: ::Stripe::Charge::UpdateParams::PaymentDetails::EventDetails::Address, affiliate: ::Stripe::Charge::UpdateParams::PaymentDetails::EventDetails::Affiliate, company: String, delivery: ::Stripe::Charge::UpdateParams::PaymentDetails::EventDetails::Delivery, ends_at: Integer, genre: String, name: String, starts_at: Integer).void
           }
          def initialize(
            access_controlled_venue: nil,
            address: nil,
            affiliate: nil,
            company: nil,
            delivery: nil,
            ends_at: nil,
            genre: nil,
            name: nil,
            starts_at: nil
          ); end
        end
        class Flight < Stripe::RequestParams
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :phone
              sig { params(email: String, name: String, phone: String).void }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(String) }
            attr_accessor :mode
            # Details of the recipient.
            sig {
              returns(::Stripe::Charge::UpdateParams::PaymentDetails::Flight::Delivery::Recipient)
             }
            attr_accessor :recipient
            sig {
              params(mode: String, recipient: ::Stripe::Charge::UpdateParams::PaymentDetails::Flight::Delivery::Recipient).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          class Passenger < Stripe::RequestParams
            # Full name of the person or entity on the flight reservation.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Segment < Stripe::RequestParams
            # The flight segment amount.
            sig { returns(Integer) }
            attr_accessor :amount
            # The International Air Transport Association (IATA) airport code for the arrival airport.
            sig { returns(String) }
            attr_accessor :arrival_airport
            # The arrival time for the flight segment. Measured in seconds since the Unix epoch.
            sig { returns(Integer) }
            attr_accessor :arrives_at
            # The International Air Transport Association (IATA) carrier code of the carrier operating the flight segment.
            sig { returns(String) }
            attr_accessor :carrier
            # The departure time for the flight segment. Measured in seconds since the Unix epoch.
            sig { returns(Integer) }
            attr_accessor :departs_at
            # The International Air Transport Association (IATA) airport code for the departure airport.
            sig { returns(String) }
            attr_accessor :departure_airport
            # The flight number associated with the segment
            sig { returns(String) }
            attr_accessor :flight_number
            # The fare class for the segment.
            sig { returns(String) }
            attr_accessor :service_class
            sig {
              params(amount: Integer, arrival_airport: String, arrives_at: Integer, carrier: String, departs_at: Integer, departure_airport: String, flight_number: String, service_class: String).void
             }
            def initialize(
              amount: nil,
              arrival_airport: nil,
              arrives_at: nil,
              carrier: nil,
              departs_at: nil,
              departure_airport: nil,
              flight_number: nil,
              service_class: nil
            ); end
          end
          # Affiliate details for this purchase.
          sig { returns(::Stripe::Charge::UpdateParams::PaymentDetails::Flight::Affiliate) }
          attr_accessor :affiliate
          # The agency number (i.e. International Air Transport Association (IATA) agency number) of the travel agency that made the booking.
          sig { returns(String) }
          attr_accessor :agency_number
          # The International Air Transport Association (IATA) carrier code of the carrier that issued the ticket.
          sig { returns(String) }
          attr_accessor :carrier
          # Delivery details for this purchase.
          sig { returns(::Stripe::Charge::UpdateParams::PaymentDetails::Flight::Delivery) }
          attr_accessor :delivery
          # The name of the person or entity on the reservation.
          sig { returns(String) }
          attr_accessor :passenger_name
          # The details of the passengers in the travel reservation.
          sig {
            returns(T::Array[::Stripe::Charge::UpdateParams::PaymentDetails::Flight::Passenger])
           }
          attr_accessor :passengers
          # The individual flight segments associated with the trip.
          sig { returns(T::Array[::Stripe::Charge::UpdateParams::PaymentDetails::Flight::Segment]) }
          attr_accessor :segments
          # The ticket number associated with the travel reservation.
          sig { returns(String) }
          attr_accessor :ticket_number
          sig {
            params(affiliate: ::Stripe::Charge::UpdateParams::PaymentDetails::Flight::Affiliate, agency_number: String, carrier: String, delivery: ::Stripe::Charge::UpdateParams::PaymentDetails::Flight::Delivery, passenger_name: String, passengers: T::Array[::Stripe::Charge::UpdateParams::PaymentDetails::Flight::Passenger], segments: T::Array[::Stripe::Charge::UpdateParams::PaymentDetails::Flight::Segment], ticket_number: String).void
           }
          def initialize(
            affiliate: nil,
            agency_number: nil,
            carrier: nil,
            delivery: nil,
            passenger_name: nil,
            passengers: nil,
            segments: nil,
            ticket_number: nil
          ); end
        end
        class Lodging < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(String) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(String) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(String) }
            attr_accessor :state
            sig {
              params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :phone
              sig { params(email: String, name: String, phone: String).void }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(String) }
            attr_accessor :mode
            # Details of the recipient.
            sig {
              returns(::Stripe::Charge::UpdateParams::PaymentDetails::Lodging::Delivery::Recipient)
             }
            attr_accessor :recipient
            sig {
              params(mode: String, recipient: ::Stripe::Charge::UpdateParams::PaymentDetails::Lodging::Delivery::Recipient).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          class Passenger < Stripe::RequestParams
            # Full name of the person or entity on the lodging reservation.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          # The lodging location's address.
          sig { returns(::Stripe::Charge::UpdateParams::PaymentDetails::Lodging::Address) }
          attr_accessor :address
          # The number of adults on the booking
          sig { returns(Integer) }
          attr_accessor :adults
          # Affiliate details for this purchase.
          sig { returns(::Stripe::Charge::UpdateParams::PaymentDetails::Lodging::Affiliate) }
          attr_accessor :affiliate
          # The booking number associated with the lodging reservation.
          sig { returns(String) }
          attr_accessor :booking_number
          # The lodging category
          sig { returns(String) }
          attr_accessor :category
          # Loding check-in time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :checkin_at
          # Lodging check-out time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :checkout_at
          # The customer service phone number of the lodging company.
          sig { returns(String) }
          attr_accessor :customer_service_phone_number
          # The daily lodging room rate.
          sig { returns(Integer) }
          attr_accessor :daily_room_rate_amount
          # Delivery details for this purchase.
          sig { returns(::Stripe::Charge::UpdateParams::PaymentDetails::Lodging::Delivery) }
          attr_accessor :delivery
          # List of additional charges being billed.
          sig { returns(T::Array[String]) }
          attr_accessor :extra_charges
          # Indicates whether the lodging location is compliant with the Fire Safety Act.
          sig { returns(T::Boolean) }
          attr_accessor :fire_safety_act_compliance
          # The name of the lodging location.
          sig { returns(String) }
          attr_accessor :name
          # Indicates if the customer did not keep their booking while failing to cancel the reservation.
          sig { returns(T::Boolean) }
          attr_accessor :no_show
          # The number of rooms on the booking
          sig { returns(Integer) }
          attr_accessor :number_of_rooms
          # The details of the passengers in the travel reservation
          sig {
            returns(T::Array[::Stripe::Charge::UpdateParams::PaymentDetails::Lodging::Passenger])
           }
          attr_accessor :passengers
          # The phone number of the lodging location.
          sig { returns(String) }
          attr_accessor :property_phone_number
          # The room class for this purchase.
          sig { returns(String) }
          attr_accessor :room_class
          # The number of room nights
          sig { returns(Integer) }
          attr_accessor :room_nights
          # The total tax amount associating with the room reservation.
          sig { returns(Integer) }
          attr_accessor :total_room_tax_amount
          # The total tax amount
          sig { returns(Integer) }
          attr_accessor :total_tax_amount
          sig {
            params(address: ::Stripe::Charge::UpdateParams::PaymentDetails::Lodging::Address, adults: Integer, affiliate: ::Stripe::Charge::UpdateParams::PaymentDetails::Lodging::Affiliate, booking_number: String, category: String, checkin_at: Integer, checkout_at: Integer, customer_service_phone_number: String, daily_room_rate_amount: Integer, delivery: ::Stripe::Charge::UpdateParams::PaymentDetails::Lodging::Delivery, extra_charges: T::Array[String], fire_safety_act_compliance: T::Boolean, name: String, no_show: T::Boolean, number_of_rooms: Integer, passengers: T::Array[::Stripe::Charge::UpdateParams::PaymentDetails::Lodging::Passenger], property_phone_number: String, room_class: String, room_nights: Integer, total_room_tax_amount: Integer, total_tax_amount: Integer).void
           }
          def initialize(
            address: nil,
            adults: nil,
            affiliate: nil,
            booking_number: nil,
            category: nil,
            checkin_at: nil,
            checkout_at: nil,
            customer_service_phone_number: nil,
            daily_room_rate_amount: nil,
            delivery: nil,
            extra_charges: nil,
            fire_safety_act_compliance: nil,
            name: nil,
            no_show: nil,
            number_of_rooms: nil,
            passengers: nil,
            property_phone_number: nil,
            room_class: nil,
            room_nights: nil,
            total_room_tax_amount: nil,
            total_tax_amount: nil
          ); end
        end
        class Subscription < Stripe::RequestParams
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class BillingInterval < Stripe::RequestParams
            # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
            sig { returns(Integer) }
            attr_accessor :count
            # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            attr_accessor :interval
            sig { params(count: Integer, interval: String).void }
            def initialize(count: nil, interval: nil); end
          end
          # Affiliate details for this purchase.
          sig { returns(::Stripe::Charge::UpdateParams::PaymentDetails::Subscription::Affiliate) }
          attr_accessor :affiliate
          # Info whether the subscription will be auto renewed upon expiry.
          sig { returns(T::Boolean) }
          attr_accessor :auto_renewal
          # Subscription billing details for this purchase.
          sig {
            returns(::Stripe::Charge::UpdateParams::PaymentDetails::Subscription::BillingInterval)
           }
          attr_accessor :billing_interval
          # Subscription end time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :ends_at
          # Name of the product on subscription. e.g. Apple Music Subscription
          sig { returns(String) }
          attr_accessor :name
          # Subscription start time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :starts_at
          sig {
            params(affiliate: ::Stripe::Charge::UpdateParams::PaymentDetails::Subscription::Affiliate, auto_renewal: T::Boolean, billing_interval: ::Stripe::Charge::UpdateParams::PaymentDetails::Subscription::BillingInterval, ends_at: Integer, name: String, starts_at: Integer).void
           }
          def initialize(
            affiliate: nil,
            auto_renewal: nil,
            billing_interval: nil,
            ends_at: nil,
            name: nil,
            starts_at: nil
          ); end
        end
        # Car rental details for this PaymentIntent.
        sig { returns(::Stripe::Charge::UpdateParams::PaymentDetails::CarRental) }
        attr_accessor :car_rental
        # Event details for this PaymentIntent
        sig { returns(::Stripe::Charge::UpdateParams::PaymentDetails::EventDetails) }
        attr_accessor :event_details
        # Flight reservation details for this PaymentIntent
        sig { returns(::Stripe::Charge::UpdateParams::PaymentDetails::Flight) }
        attr_accessor :flight
        # Lodging reservation details for this PaymentIntent
        sig { returns(::Stripe::Charge::UpdateParams::PaymentDetails::Lodging) }
        attr_accessor :lodging
        # Subscription details for this PaymentIntent
        sig { returns(::Stripe::Charge::UpdateParams::PaymentDetails::Subscription) }
        attr_accessor :subscription
        sig {
          params(car_rental: ::Stripe::Charge::UpdateParams::PaymentDetails::CarRental, event_details: ::Stripe::Charge::UpdateParams::PaymentDetails::EventDetails, flight: ::Stripe::Charge::UpdateParams::PaymentDetails::Flight, lodging: ::Stripe::Charge::UpdateParams::PaymentDetails::Lodging, subscription: ::Stripe::Charge::UpdateParams::PaymentDetails::Subscription).void
         }
        def initialize(
          car_rental: nil,
          event_details: nil,
          flight: nil,
          lodging: nil,
          subscription: nil
        ); end
      end
      class Shipping < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(String) }
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(String) }
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(String) }
          attr_accessor :line2
          # ZIP or postal code.
          sig { returns(String) }
          attr_accessor :postal_code
          # State, county, province, or region.
          sig { returns(String) }
          attr_accessor :state
          sig {
            params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
        # Shipping address.
        sig { returns(::Stripe::Charge::UpdateParams::Shipping::Address) }
        attr_accessor :address
        # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
        sig { returns(String) }
        attr_accessor :carrier
        # Recipient name.
        sig { returns(String) }
        attr_accessor :name
        # Recipient phone (including extension).
        sig { returns(String) }
        attr_accessor :phone
        # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
        sig { returns(String) }
        attr_accessor :tracking_number
        sig {
          params(address: ::Stripe::Charge::UpdateParams::Shipping::Address, carrier: String, name: String, phone: String, tracking_number: String).void
         }
        def initialize(address: nil, carrier: nil, name: nil, phone: nil, tracking_number: nil); end
      end
      # The ID of an existing customer that will be associated with this request. This field may only be updated if there is no existing associated customer with this charge.
      sig { returns(String) }
      attr_accessor :customer
      # An arbitrary string which you can attach to a charge object. It is displayed when in the web interface alongside the charge. Note that if you use Stripe to send automatic email receipts to your customers, your receipt emails will include the `description` of the charge(s) that they are describing.
      sig { returns(String) }
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # A set of key-value pairs you can attach to a charge giving information about its riskiness. If you believe a charge is fraudulent, include a `user_report` key with a value of `fraudulent`. If you believe a charge is safe, include a `user_report` key with a value of `safe`. Stripe will use the information you send to improve our fraud detection algorithms.
      sig { returns(::Stripe::Charge::UpdateParams::FraudDetails) }
      attr_accessor :fraud_details
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # Provides industry-specific information about the charge.
      sig { returns(::Stripe::Charge::UpdateParams::PaymentDetails) }
      attr_accessor :payment_details
      # This is the email address that the receipt for this charge will be sent to. If this field is updated, then a new email receipt will be sent to the updated address.
      sig { returns(String) }
      attr_accessor :receipt_email
      # Shipping information for the charge. Helps prevent fraud on charges for physical goods.
      sig { returns(::Stripe::Charge::UpdateParams::Shipping) }
      attr_accessor :shipping
      # A string that identifies this transaction as part of a group. `transfer_group` may only be provided if it has not been set. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers#transfer-options) for details.
      sig { returns(String) }
      attr_accessor :transfer_group
      sig {
        params(customer: String, description: String, expand: T::Array[String], fraud_details: ::Stripe::Charge::UpdateParams::FraudDetails, metadata: T.nilable(T::Hash[String, String]), payment_details: ::Stripe::Charge::UpdateParams::PaymentDetails, receipt_email: String, shipping: ::Stripe::Charge::UpdateParams::Shipping, transfer_group: String).void
       }
      def initialize(
        customer: nil,
        description: nil,
        expand: nil,
        fraud_details: nil,
        metadata: nil,
        payment_details: nil,
        receipt_email: nil,
        shipping: nil,
        transfer_group: nil
      ); end
    end
    class SearchParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(Integer) }
      attr_accessor :limit
      # A cursor for pagination across multiple pages of results. Don't include this parameter on the first call. Use the next_page value returned in a previous response to request subsequent results.
      sig { returns(String) }
      attr_accessor :page
      # The search query string. See [search query language](https://stripe.com/docs/search#search-query-language) and the list of supported [query fields for charges](https://stripe.com/docs/search#query-fields-for-charges).
      sig { returns(String) }
      attr_accessor :query
      sig { params(expand: T::Array[String], limit: Integer, page: String, query: String).void }
      def initialize(expand: nil, limit: nil, page: nil, query: nil); end
    end
    class CaptureParams < Stripe::RequestParams
      class PaymentDetails < Stripe::RequestParams
        class CarRental < Stripe::RequestParams
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :phone
              sig { params(email: String, name: String, phone: String).void }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(String) }
            attr_accessor :mode
            # Details of the recipient.
            sig {
              returns(::Stripe::Charge::CaptureParams::PaymentDetails::CarRental::Delivery::Recipient)
             }
            attr_accessor :recipient
            sig {
              params(mode: String, recipient: ::Stripe::Charge::CaptureParams::PaymentDetails::CarRental::Delivery::Recipient).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          class Driver < Stripe::RequestParams
            # Full name of the person or entity on the car reservation.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class PickupAddress < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(String) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(String) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(String) }
            attr_accessor :state
            sig {
              params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
          class ReturnAddress < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(String) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(String) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(String) }
            attr_accessor :state
            sig {
              params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
          # Affiliate details for this purchase.
          sig { returns(::Stripe::Charge::CaptureParams::PaymentDetails::CarRental::Affiliate) }
          attr_accessor :affiliate
          # The booking number associated with the car rental.
          sig { returns(String) }
          attr_accessor :booking_number
          # Class code of the car.
          sig { returns(String) }
          attr_accessor :car_class_code
          # Make of the car.
          sig { returns(String) }
          attr_accessor :car_make
          # Model of the car.
          sig { returns(String) }
          attr_accessor :car_model
          # The name of the rental car company.
          sig { returns(String) }
          attr_accessor :company
          # The customer service phone number of the car rental company.
          sig { returns(String) }
          attr_accessor :customer_service_phone_number
          # Number of days the car is being rented.
          sig { returns(Integer) }
          attr_accessor :days_rented
          # Delivery details for this purchase.
          sig { returns(::Stripe::Charge::CaptureParams::PaymentDetails::CarRental::Delivery) }
          attr_accessor :delivery
          # The details of the passengers in the travel reservation
          sig {
            returns(T::Array[::Stripe::Charge::CaptureParams::PaymentDetails::CarRental::Driver])
           }
          attr_accessor :drivers
          # List of additional charges being billed.
          sig { returns(T::Array[String]) }
          attr_accessor :extra_charges
          # Indicates if the customer did not keep nor cancel their booking.
          sig { returns(T::Boolean) }
          attr_accessor :no_show
          # Car pick-up address.
          sig { returns(::Stripe::Charge::CaptureParams::PaymentDetails::CarRental::PickupAddress) }
          attr_accessor :pickup_address
          # Car pick-up time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :pickup_at
          # Rental rate.
          sig { returns(Integer) }
          attr_accessor :rate_amount
          # The frequency at which the rate amount is applied. One of `day`, `week` or `month`
          sig { returns(String) }
          attr_accessor :rate_interval
          # The name of the person or entity renting the car.
          sig { returns(String) }
          attr_accessor :renter_name
          # Car return address.
          sig { returns(::Stripe::Charge::CaptureParams::PaymentDetails::CarRental::ReturnAddress) }
          attr_accessor :return_address
          # Car return time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :return_at
          # Indicates whether the goods or services are tax-exempt or tax is not collected.
          sig { returns(T::Boolean) }
          attr_accessor :tax_exempt
          sig {
            params(affiliate: ::Stripe::Charge::CaptureParams::PaymentDetails::CarRental::Affiliate, booking_number: String, car_class_code: String, car_make: String, car_model: String, company: String, customer_service_phone_number: String, days_rented: Integer, delivery: ::Stripe::Charge::CaptureParams::PaymentDetails::CarRental::Delivery, drivers: T::Array[::Stripe::Charge::CaptureParams::PaymentDetails::CarRental::Driver], extra_charges: T::Array[String], no_show: T::Boolean, pickup_address: ::Stripe::Charge::CaptureParams::PaymentDetails::CarRental::PickupAddress, pickup_at: Integer, rate_amount: Integer, rate_interval: String, renter_name: String, return_address: ::Stripe::Charge::CaptureParams::PaymentDetails::CarRental::ReturnAddress, return_at: Integer, tax_exempt: T::Boolean).void
           }
          def initialize(
            affiliate: nil,
            booking_number: nil,
            car_class_code: nil,
            car_make: nil,
            car_model: nil,
            company: nil,
            customer_service_phone_number: nil,
            days_rented: nil,
            delivery: nil,
            drivers: nil,
            extra_charges: nil,
            no_show: nil,
            pickup_address: nil,
            pickup_at: nil,
            rate_amount: nil,
            rate_interval: nil,
            renter_name: nil,
            return_address: nil,
            return_at: nil,
            tax_exempt: nil
          ); end
        end
        class EventDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(String) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(String) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(String) }
            attr_accessor :state
            sig {
              params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :phone
              sig { params(email: String, name: String, phone: String).void }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(String) }
            attr_accessor :mode
            # Details of the recipient.
            sig {
              returns(::Stripe::Charge::CaptureParams::PaymentDetails::EventDetails::Delivery::Recipient)
             }
            attr_accessor :recipient
            sig {
              params(mode: String, recipient: ::Stripe::Charge::CaptureParams::PaymentDetails::EventDetails::Delivery::Recipient).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          # Indicates if the tickets are digitally checked when entering the venue.
          sig { returns(T::Boolean) }
          attr_accessor :access_controlled_venue
          # The event location's address.
          sig { returns(::Stripe::Charge::CaptureParams::PaymentDetails::EventDetails::Address) }
          attr_accessor :address
          # Affiliate details for this purchase.
          sig { returns(::Stripe::Charge::CaptureParams::PaymentDetails::EventDetails::Affiliate) }
          attr_accessor :affiliate
          # The name of the company
          sig { returns(String) }
          attr_accessor :company
          # Delivery details for this purchase.
          sig { returns(::Stripe::Charge::CaptureParams::PaymentDetails::EventDetails::Delivery) }
          attr_accessor :delivery
          # Event end time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :ends_at
          # Type of the event entertainment (concert, sports event etc)
          sig { returns(String) }
          attr_accessor :genre
          # The name of the event.
          sig { returns(String) }
          attr_accessor :name
          # Event start time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :starts_at
          sig {
            params(access_controlled_venue: T::Boolean, address: ::Stripe::Charge::CaptureParams::PaymentDetails::EventDetails::Address, affiliate: ::Stripe::Charge::CaptureParams::PaymentDetails::EventDetails::Affiliate, company: String, delivery: ::Stripe::Charge::CaptureParams::PaymentDetails::EventDetails::Delivery, ends_at: Integer, genre: String, name: String, starts_at: Integer).void
           }
          def initialize(
            access_controlled_venue: nil,
            address: nil,
            affiliate: nil,
            company: nil,
            delivery: nil,
            ends_at: nil,
            genre: nil,
            name: nil,
            starts_at: nil
          ); end
        end
        class Flight < Stripe::RequestParams
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :phone
              sig { params(email: String, name: String, phone: String).void }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(String) }
            attr_accessor :mode
            # Details of the recipient.
            sig {
              returns(::Stripe::Charge::CaptureParams::PaymentDetails::Flight::Delivery::Recipient)
             }
            attr_accessor :recipient
            sig {
              params(mode: String, recipient: ::Stripe::Charge::CaptureParams::PaymentDetails::Flight::Delivery::Recipient).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          class Passenger < Stripe::RequestParams
            # Full name of the person or entity on the flight reservation.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Segment < Stripe::RequestParams
            # The flight segment amount.
            sig { returns(Integer) }
            attr_accessor :amount
            # The International Air Transport Association (IATA) airport code for the arrival airport.
            sig { returns(String) }
            attr_accessor :arrival_airport
            # The arrival time for the flight segment. Measured in seconds since the Unix epoch.
            sig { returns(Integer) }
            attr_accessor :arrives_at
            # The International Air Transport Association (IATA) carrier code of the carrier operating the flight segment.
            sig { returns(String) }
            attr_accessor :carrier
            # The departure time for the flight segment. Measured in seconds since the Unix epoch.
            sig { returns(Integer) }
            attr_accessor :departs_at
            # The International Air Transport Association (IATA) airport code for the departure airport.
            sig { returns(String) }
            attr_accessor :departure_airport
            # The flight number associated with the segment
            sig { returns(String) }
            attr_accessor :flight_number
            # The fare class for the segment.
            sig { returns(String) }
            attr_accessor :service_class
            sig {
              params(amount: Integer, arrival_airport: String, arrives_at: Integer, carrier: String, departs_at: Integer, departure_airport: String, flight_number: String, service_class: String).void
             }
            def initialize(
              amount: nil,
              arrival_airport: nil,
              arrives_at: nil,
              carrier: nil,
              departs_at: nil,
              departure_airport: nil,
              flight_number: nil,
              service_class: nil
            ); end
          end
          # Affiliate details for this purchase.
          sig { returns(::Stripe::Charge::CaptureParams::PaymentDetails::Flight::Affiliate) }
          attr_accessor :affiliate
          # The agency number (i.e. International Air Transport Association (IATA) agency number) of the travel agency that made the booking.
          sig { returns(String) }
          attr_accessor :agency_number
          # The International Air Transport Association (IATA) carrier code of the carrier that issued the ticket.
          sig { returns(String) }
          attr_accessor :carrier
          # Delivery details for this purchase.
          sig { returns(::Stripe::Charge::CaptureParams::PaymentDetails::Flight::Delivery) }
          attr_accessor :delivery
          # The name of the person or entity on the reservation.
          sig { returns(String) }
          attr_accessor :passenger_name
          # The details of the passengers in the travel reservation.
          sig {
            returns(T::Array[::Stripe::Charge::CaptureParams::PaymentDetails::Flight::Passenger])
           }
          attr_accessor :passengers
          # The individual flight segments associated with the trip.
          sig {
            returns(T::Array[::Stripe::Charge::CaptureParams::PaymentDetails::Flight::Segment])
           }
          attr_accessor :segments
          # The ticket number associated with the travel reservation.
          sig { returns(String) }
          attr_accessor :ticket_number
          sig {
            params(affiliate: ::Stripe::Charge::CaptureParams::PaymentDetails::Flight::Affiliate, agency_number: String, carrier: String, delivery: ::Stripe::Charge::CaptureParams::PaymentDetails::Flight::Delivery, passenger_name: String, passengers: T::Array[::Stripe::Charge::CaptureParams::PaymentDetails::Flight::Passenger], segments: T::Array[::Stripe::Charge::CaptureParams::PaymentDetails::Flight::Segment], ticket_number: String).void
           }
          def initialize(
            affiliate: nil,
            agency_number: nil,
            carrier: nil,
            delivery: nil,
            passenger_name: nil,
            passengers: nil,
            segments: nil,
            ticket_number: nil
          ); end
        end
        class Lodging < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(String) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(String) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(String) }
            attr_accessor :state
            sig {
              params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(String) }
              attr_accessor :phone
              sig { params(email: String, name: String, phone: String).void }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(String) }
            attr_accessor :mode
            # Details of the recipient.
            sig {
              returns(::Stripe::Charge::CaptureParams::PaymentDetails::Lodging::Delivery::Recipient)
             }
            attr_accessor :recipient
            sig {
              params(mode: String, recipient: ::Stripe::Charge::CaptureParams::PaymentDetails::Lodging::Delivery::Recipient).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          class Passenger < Stripe::RequestParams
            # Full name of the person or entity on the lodging reservation.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          # The lodging location's address.
          sig { returns(::Stripe::Charge::CaptureParams::PaymentDetails::Lodging::Address) }
          attr_accessor :address
          # The number of adults on the booking
          sig { returns(Integer) }
          attr_accessor :adults
          # Affiliate details for this purchase.
          sig { returns(::Stripe::Charge::CaptureParams::PaymentDetails::Lodging::Affiliate) }
          attr_accessor :affiliate
          # The booking number associated with the lodging reservation.
          sig { returns(String) }
          attr_accessor :booking_number
          # The lodging category
          sig { returns(String) }
          attr_accessor :category
          # Loding check-in time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :checkin_at
          # Lodging check-out time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :checkout_at
          # The customer service phone number of the lodging company.
          sig { returns(String) }
          attr_accessor :customer_service_phone_number
          # The daily lodging room rate.
          sig { returns(Integer) }
          attr_accessor :daily_room_rate_amount
          # Delivery details for this purchase.
          sig { returns(::Stripe::Charge::CaptureParams::PaymentDetails::Lodging::Delivery) }
          attr_accessor :delivery
          # List of additional charges being billed.
          sig { returns(T::Array[String]) }
          attr_accessor :extra_charges
          # Indicates whether the lodging location is compliant with the Fire Safety Act.
          sig { returns(T::Boolean) }
          attr_accessor :fire_safety_act_compliance
          # The name of the lodging location.
          sig { returns(String) }
          attr_accessor :name
          # Indicates if the customer did not keep their booking while failing to cancel the reservation.
          sig { returns(T::Boolean) }
          attr_accessor :no_show
          # The number of rooms on the booking
          sig { returns(Integer) }
          attr_accessor :number_of_rooms
          # The details of the passengers in the travel reservation
          sig {
            returns(T::Array[::Stripe::Charge::CaptureParams::PaymentDetails::Lodging::Passenger])
           }
          attr_accessor :passengers
          # The phone number of the lodging location.
          sig { returns(String) }
          attr_accessor :property_phone_number
          # The room class for this purchase.
          sig { returns(String) }
          attr_accessor :room_class
          # The number of room nights
          sig { returns(Integer) }
          attr_accessor :room_nights
          # The total tax amount associating with the room reservation.
          sig { returns(Integer) }
          attr_accessor :total_room_tax_amount
          # The total tax amount
          sig { returns(Integer) }
          attr_accessor :total_tax_amount
          sig {
            params(address: ::Stripe::Charge::CaptureParams::PaymentDetails::Lodging::Address, adults: Integer, affiliate: ::Stripe::Charge::CaptureParams::PaymentDetails::Lodging::Affiliate, booking_number: String, category: String, checkin_at: Integer, checkout_at: Integer, customer_service_phone_number: String, daily_room_rate_amount: Integer, delivery: ::Stripe::Charge::CaptureParams::PaymentDetails::Lodging::Delivery, extra_charges: T::Array[String], fire_safety_act_compliance: T::Boolean, name: String, no_show: T::Boolean, number_of_rooms: Integer, passengers: T::Array[::Stripe::Charge::CaptureParams::PaymentDetails::Lodging::Passenger], property_phone_number: String, room_class: String, room_nights: Integer, total_room_tax_amount: Integer, total_tax_amount: Integer).void
           }
          def initialize(
            address: nil,
            adults: nil,
            affiliate: nil,
            booking_number: nil,
            category: nil,
            checkin_at: nil,
            checkout_at: nil,
            customer_service_phone_number: nil,
            daily_room_rate_amount: nil,
            delivery: nil,
            extra_charges: nil,
            fire_safety_act_compliance: nil,
            name: nil,
            no_show: nil,
            number_of_rooms: nil,
            passengers: nil,
            property_phone_number: nil,
            room_class: nil,
            room_nights: nil,
            total_room_tax_amount: nil,
            total_tax_amount: nil
          ); end
        end
        class Subscription < Stripe::RequestParams
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class BillingInterval < Stripe::RequestParams
            # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
            sig { returns(Integer) }
            attr_accessor :count
            # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            attr_accessor :interval
            sig { params(count: Integer, interval: String).void }
            def initialize(count: nil, interval: nil); end
          end
          # Affiliate details for this purchase.
          sig { returns(::Stripe::Charge::CaptureParams::PaymentDetails::Subscription::Affiliate) }
          attr_accessor :affiliate
          # Info whether the subscription will be auto renewed upon expiry.
          sig { returns(T::Boolean) }
          attr_accessor :auto_renewal
          # Subscription billing details for this purchase.
          sig {
            returns(::Stripe::Charge::CaptureParams::PaymentDetails::Subscription::BillingInterval)
           }
          attr_accessor :billing_interval
          # Subscription end time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :ends_at
          # Name of the product on subscription. e.g. Apple Music Subscription
          sig { returns(String) }
          attr_accessor :name
          # Subscription start time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :starts_at
          sig {
            params(affiliate: ::Stripe::Charge::CaptureParams::PaymentDetails::Subscription::Affiliate, auto_renewal: T::Boolean, billing_interval: ::Stripe::Charge::CaptureParams::PaymentDetails::Subscription::BillingInterval, ends_at: Integer, name: String, starts_at: Integer).void
           }
          def initialize(
            affiliate: nil,
            auto_renewal: nil,
            billing_interval: nil,
            ends_at: nil,
            name: nil,
            starts_at: nil
          ); end
        end
        # Car rental details for this PaymentIntent.
        sig { returns(::Stripe::Charge::CaptureParams::PaymentDetails::CarRental) }
        attr_accessor :car_rental
        # Event details for this PaymentIntent
        sig { returns(::Stripe::Charge::CaptureParams::PaymentDetails::EventDetails) }
        attr_accessor :event_details
        # Flight reservation details for this PaymentIntent
        sig { returns(::Stripe::Charge::CaptureParams::PaymentDetails::Flight) }
        attr_accessor :flight
        # Lodging reservation details for this PaymentIntent
        sig { returns(::Stripe::Charge::CaptureParams::PaymentDetails::Lodging) }
        attr_accessor :lodging
        # Subscription details for this PaymentIntent
        sig { returns(::Stripe::Charge::CaptureParams::PaymentDetails::Subscription) }
        attr_accessor :subscription
        sig {
          params(car_rental: ::Stripe::Charge::CaptureParams::PaymentDetails::CarRental, event_details: ::Stripe::Charge::CaptureParams::PaymentDetails::EventDetails, flight: ::Stripe::Charge::CaptureParams::PaymentDetails::Flight, lodging: ::Stripe::Charge::CaptureParams::PaymentDetails::Lodging, subscription: ::Stripe::Charge::CaptureParams::PaymentDetails::Subscription).void
         }
        def initialize(
          car_rental: nil,
          event_details: nil,
          flight: nil,
          lodging: nil,
          subscription: nil
        ); end
      end
      class TransferData < Stripe::RequestParams
        # The amount transferred to the destination account, if specified. By default, the entire charge amount is transferred to the destination account.
        sig { returns(Integer) }
        attr_accessor :amount
        sig { params(amount: Integer).void }
        def initialize(amount: nil); end
      end
      # The amount to capture, which must be less than or equal to the original amount. Any additional amount will be automatically refunded.
      sig { returns(Integer) }
      attr_accessor :amount
      # An application fee to add on to this charge.
      sig { returns(Integer) }
      attr_accessor :application_fee
      # An application fee amount to add on to this charge, which must be less than or equal to the original amount.
      sig { returns(Integer) }
      attr_accessor :application_fee_amount
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # Provides industry-specific information about the charge.
      sig { returns(::Stripe::Charge::CaptureParams::PaymentDetails) }
      attr_accessor :payment_details
      # The email address to send this charge's receipt to. This will override the previously-specified email address for this charge, if one was set. Receipts will not be sent in test mode.
      sig { returns(String) }
      attr_accessor :receipt_email
      # For a non-card charge, text that appears on the customer's statement as the statement descriptor. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
      #
      # For a card charge, this value is ignored unless you don't specify a `statement_descriptor_suffix`, in which case this value is used as the suffix.
      sig { returns(String) }
      attr_accessor :statement_descriptor
      # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement. If the account has no prefix value, the suffix is concatenated to the account's statement descriptor.
      sig { returns(String) }
      attr_accessor :statement_descriptor_suffix
      # An optional dictionary including the account to automatically transfer to as part of a destination charge. [See the Connect documentation](https://stripe.com/docs/connect/destination-charges) for details.
      sig { returns(::Stripe::Charge::CaptureParams::TransferData) }
      attr_accessor :transfer_data
      # A string that identifies this transaction as part of a group. `transfer_group` may only be provided if it has not been set. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers#transfer-options) for details.
      sig { returns(String) }
      attr_accessor :transfer_group
      sig {
        params(amount: Integer, application_fee: Integer, application_fee_amount: Integer, expand: T::Array[String], payment_details: ::Stripe::Charge::CaptureParams::PaymentDetails, receipt_email: String, statement_descriptor: String, statement_descriptor_suffix: String, transfer_data: ::Stripe::Charge::CaptureParams::TransferData, transfer_group: String).void
       }
      def initialize(
        amount: nil,
        application_fee: nil,
        application_fee_amount: nil,
        expand: nil,
        payment_details: nil,
        receipt_email: nil,
        statement_descriptor: nil,
        statement_descriptor_suffix: nil,
        transfer_data: nil,
        transfer_group: nil
      ); end
    end
    # Capture the payment of an existing, uncaptured charge that was created with the capture option set to false.
    #
    # Uncaptured payments expire a set number of days after they are created ([7 by default](https://stripe.com/docs/charges/placing-a-hold)), after which they are marked as refunded and capture attempts will fail.
    #
    # Don't use this method to capture a PaymentIntent-initiated charge. Use [Capture a PaymentIntent](https://stripe.com/docs/api/payment_intents/capture).
    sig {
      params(params: T.any(::Stripe::Charge::CaptureParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Charge)
     }
    def capture(params = {}, opts = {}); end

    # Capture the payment of an existing, uncaptured charge that was created with the capture option set to false.
    #
    # Uncaptured payments expire a set number of days after they are created ([7 by default](https://stripe.com/docs/charges/placing-a-hold)), after which they are marked as refunded and capture attempts will fail.
    #
    # Don't use this method to capture a PaymentIntent-initiated charge. Use [Capture a PaymentIntent](https://stripe.com/docs/api/payment_intents/capture).
    sig {
      params(charge: String, params: T.any(::Stripe::Charge::CaptureParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Charge)
     }
    def self.capture(charge, params = {}, opts = {}); end

    # This method is no longer recommended—use the [Payment Intents API](https://stripe.com/docs/api/payment_intents)
    # to initiate a new payment instead. Confirmation of the PaymentIntent creates the Charge
    # object used to request payment.
    sig {
      params(params: T.any(::Stripe::Charge::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Charge)
     }
    def self.create(params = {}, opts = {}); end

    # Returns a list of charges you've previously created. The charges are returned in sorted order, with the most recent charges appearing first.
    sig {
      params(params: T.any(::Stripe::Charge::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end

    sig {
      params(params: T.any(::Stripe::Charge::SearchParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::SearchResultObject)
     }
    def self.search(params = {}, opts = {}); end

    sig {
      params(params: T.any(::Stripe::Charge::SearchParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped, blk: T.untyped).returns(Stripe::SearchResultObject)
     }
    def self.search_auto_paging_each(params = {}, opts = {}, &blk); end

    # Updates the specified charge by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
    sig {
      params(id: String, params: T.any(::Stripe::Charge::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Charge)
     }
    def self.update(id, params = {}, opts = {}); end
  end
end