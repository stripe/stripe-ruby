# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # ConfirmationTokens help transport client side data collected by Stripe JS over
  # to your server for confirming a PaymentIntent or SetupIntent. If the confirmation
  # is successful, values present on the ConfirmationToken are written onto the Intent.
  #
  # To learn more about how to use ConfirmationToken, visit the related guides:
  # - [Finalize payments on the server](https://stripe.com/docs/payments/finalize-payments-on-the-server)
  # - [Build two-step confirmation](https://stripe.com/docs/payments/build-a-two-step-confirmation).
  class ConfirmationToken < APIResource
    class MandateData < Stripe::StripeObject
      class CustomerAcceptance < Stripe::StripeObject
        class Online < Stripe::StripeObject
          # The IP address from which the Mandate was accepted by the customer.
          sig { returns(T.nilable(String)) }
          attr_reader :ip_address
          # The user agent of the browser from which the Mandate was accepted by the customer.
          sig { returns(T.nilable(String)) }
          attr_reader :user_agent
        end
        # If this is a Mandate accepted online, this hash contains details about the online acceptance.
        sig { returns(T.nilable(Online)) }
        attr_reader :online
        # The type of customer acceptance information included with the Mandate.
        sig { returns(String) }
        attr_reader :type
      end
      # This hash contains details about the customer acceptance of the Mandate.
      sig { returns(CustomerAcceptance) }
      attr_reader :customer_acceptance
    end
    class PaymentMethodOptions < Stripe::StripeObject
      class Card < Stripe::StripeObject
        class Installments < Stripe::StripeObject
          class Plan < Stripe::StripeObject
            # For `fixed_count` installment plans, this is the number of installment payments your customer will make to their credit card.
            sig { returns(T.nilable(Integer)) }
            attr_reader :count
            # For `fixed_count` installment plans, this is the interval between installment payments your customer will make to their credit card.
            # One of `month`.
            sig { returns(T.nilable(String)) }
            attr_reader :interval
            # Type of installment plan, one of `fixed_count`, `bonus`, or `revolving`.
            sig { returns(String) }
            attr_reader :type
          end
          # Attribute for field plan
          sig { returns(Plan) }
          attr_reader :plan
        end
        # The `cvc_update` Token collected from the Payment Element.
        sig { returns(T.nilable(String)) }
        attr_reader :cvc_token
        # Installment configuration for payments.
        sig { returns(Installments) }
        attr_reader :installments
      end
      # This hash contains the card payment method options.
      sig { returns(T.nilable(Card)) }
      attr_reader :card
    end
    class PaymentMethodPreview < Stripe::StripeObject
      class AcssDebit < Stripe::StripeObject
        # Name of the bank associated with the bank account.
        sig { returns(T.nilable(String)) }
        attr_reader :bank_name
        # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint
        # Institution number of the bank account.
        sig { returns(T.nilable(String)) }
        attr_reader :institution_number
        # Last four digits of the bank account number.
        sig { returns(T.nilable(String)) }
        attr_reader :last4
        # Transit number of the bank account.
        sig { returns(T.nilable(String)) }
        attr_reader :transit_number
      end
      class Affirm < Stripe::StripeObject; end
      class AfterpayClearpay < Stripe::StripeObject; end
      class Alipay < Stripe::StripeObject; end
      class Alma < Stripe::StripeObject; end
      class AmazonPay < Stripe::StripeObject; end
      class AuBecsDebit < Stripe::StripeObject
        # Six-digit number identifying bank and branch associated with this bank account.
        sig { returns(T.nilable(String)) }
        attr_reader :bsb_number
        # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint
        # Last four digits of the bank account number.
        sig { returns(T.nilable(String)) }
        attr_reader :last4
      end
      class BacsDebit < Stripe::StripeObject
        # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint
        # Last four digits of the bank account number.
        sig { returns(T.nilable(String)) }
        attr_reader :last4
        # Sort code of the bank account. (e.g., `10-20-30`)
        sig { returns(T.nilable(String)) }
        attr_reader :sort_code
      end
      class Bancontact < Stripe::StripeObject; end
      class Billie < Stripe::StripeObject; end
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
        # Taxpayer identification number. Used only for transactions between LATAM buyers and non-LATAM sellers.
        sig { returns(T.nilable(String)) }
        attr_reader :tax_id
      end
      class Blik < Stripe::StripeObject; end
      class Boleto < Stripe::StripeObject
        # Uniquely identifies the customer tax id (CNPJ or CPF)
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
        class GeneratedFrom < Stripe::StripeObject
          class PaymentMethodDetails < Stripe::StripeObject
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
                # The Application Cryptogram, a unique value generated by the card to authenticate the transaction with issuers.
                sig { returns(T.nilable(String)) }
                attr_reader :application_cryptogram
                # The Application Identifier (AID) on the card used to determine which networks are eligible to process the transaction. Referenced from EMV tag 9F12, data encoded on the card's chip.
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
                # Similar to the application_preferred_name, identifying the applications (AIDs) available on the card. Referenced from EMV tag 84.
                sig { returns(T.nilable(String)) }
                attr_reader :dedicated_file_name
                # A 5-byte string that records the checks and validations that occur between the card and the terminal. These checks determine how the terminal processes the transaction and what risk tolerance is acceptable. Referenced from EMV Tag 95.
                sig { returns(T.nilable(String)) }
                attr_reader :terminal_verification_results
                # An indication of which steps were completed during the card read process. Referenced from EMV Tag 9B.
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
              # Card brand. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa` or `unknown`.
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
              # The languages that the issuing bank recommends using for localizing any customer-facing text, as read from the card. Referenced from EMV tag 5F2D, data encoded on the card's chip.
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
            # Attribute for field card_present
            sig { returns(CardPresent) }
            attr_reader :card_present
            # The type of payment method transaction-specific details from the transaction that generated this `card` payment method. Always `card_present`.
            sig { returns(String) }
            attr_reader :type
          end
          # The charge that created this object.
          sig { returns(T.nilable(String)) }
          attr_reader :charge
          # Transaction-specific details of the payment method used in the payment.
          sig { returns(T.nilable(PaymentMethodDetails)) }
          attr_reader :payment_method_details
          # The ID of the SetupAttempt that generated this PaymentMethod, if any.
          sig { returns(T.nilable(T.any(String, Stripe::SetupAttempt))) }
          attr_reader :setup_attempt
        end
        class Networks < Stripe::StripeObject
          # All networks available for selection via [payment_method_options.card.network](/api/payment_intents/confirm#confirm_payment_intent-payment_method_options-card-network).
          sig { returns(T::Array[String]) }
          attr_reader :available
          # The preferred network for co-branded cards. Can be `cartes_bancaires`, `mastercard`, `visa` or `invalid_preference` if requested network is not valid for the card.
          sig { returns(T.nilable(String)) }
          attr_reader :preferred
        end
        class ThreeDSecureUsage < Stripe::StripeObject
          # Whether 3D Secure is supported on this card.
          sig { returns(T::Boolean) }
          attr_reader :supported
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
        # Card brand. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa` or `unknown`.
        sig { returns(String) }
        attr_reader :brand
        # Checks on Card address and CVC if provided.
        sig { returns(T.nilable(Checks)) }
        attr_reader :checks
        # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
        sig { returns(T.nilable(String)) }
        attr_reader :country
        # A high-level description of the type of cards issued in this range. (For internal use only and not typically available in standard API requests.)
        sig { returns(T.nilable(String)) }
        attr_reader :description
        # The brand to use when displaying the card, this accounts for customer's brand choice on dual-branded cards. Can be `american_express`, `cartes_bancaires`, `diners_club`, `discover`, `eftpos_australia`, `interac`, `jcb`, `mastercard`, `union_pay`, `visa`, or `other` and may contain more values in the future.
        sig { returns(T.nilable(String)) }
        attr_reader :display_brand
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
        sig { returns(String) }
        attr_reader :funding
        # Details of the original PaymentMethod that created this object.
        sig { returns(T.nilable(GeneratedFrom)) }
        attr_reader :generated_from
        # Issuer identification number of the card. (For internal use only and not typically available in standard API requests.)
        sig { returns(T.nilable(String)) }
        attr_reader :iin
        # The name of the card's issuing bank. (For internal use only and not typically available in standard API requests.)
        sig { returns(T.nilable(String)) }
        attr_reader :issuer
        # The last four digits of the card.
        sig { returns(String) }
        attr_reader :last4
        # Contains information about card networks that can be used to process the payment.
        sig { returns(T.nilable(Networks)) }
        attr_reader :networks
        # Status of a card based on the card issuer.
        sig { returns(T.nilable(String)) }
        attr_reader :regulated_status
        # Contains details on how this Card may be used for 3D Secure authentication.
        sig { returns(T.nilable(ThreeDSecureUsage)) }
        attr_reader :three_d_secure_usage
        # If this Card is part of a card wallet, this contains the details of the card wallet.
        sig { returns(T.nilable(Wallet)) }
        attr_reader :wallet
      end
      class CardPresent < Stripe::StripeObject
        class Networks < Stripe::StripeObject
          # All networks available for selection via [payment_method_options.card.network](/api/payment_intents/confirm#confirm_payment_intent-payment_method_options-card-network).
          sig { returns(T::Array[String]) }
          attr_reader :available
          # The preferred network for the card.
          sig { returns(T.nilable(String)) }
          attr_reader :preferred
        end
        class Offline < Stripe::StripeObject
          # Time at which the payment was collected while offline
          sig { returns(T.nilable(Integer)) }
          attr_reader :stored_at
          # The method used to process this payment method offline. Only deferred is allowed.
          sig { returns(T.nilable(String)) }
          attr_reader :type
        end
        class Wallet < Stripe::StripeObject
          # The type of mobile wallet, one of `apple_pay`, `google_pay`, `samsung_pay`, or `unknown`.
          sig { returns(String) }
          attr_reader :type
        end
        # Card brand. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa` or `unknown`.
        sig { returns(T.nilable(String)) }
        attr_reader :brand
        # The [product code](https://stripe.com/docs/card-product-codes) that identifies the specific program or product associated with a card.
        sig { returns(T.nilable(String)) }
        attr_reader :brand_product
        # The cardholder name as read from the card, in [ISO 7813](https://en.wikipedia.org/wiki/ISO/IEC_7813) format. May include alphanumeric characters, special characters and first/last name separator (`/`). In some cases, the cardholder name may not be available depending on how the issuer has configured the card. Cardholder name is typically not available on swipe or contactless payments, such as those made with Apple Pay and Google Pay.
        sig { returns(T.nilable(String)) }
        attr_reader :cardholder_name
        # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
        sig { returns(T.nilable(String)) }
        attr_reader :country
        # A high-level description of the type of cards issued in this range. (For internal use only and not typically available in standard API requests.)
        sig { returns(T.nilable(String)) }
        attr_reader :description
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
        # Issuer identification number of the card. (For internal use only and not typically available in standard API requests.)
        sig { returns(T.nilable(String)) }
        attr_reader :iin
        # The name of the card's issuing bank. (For internal use only and not typically available in standard API requests.)
        sig { returns(T.nilable(String)) }
        attr_reader :issuer
        # The last four digits of the card.
        sig { returns(T.nilable(String)) }
        attr_reader :last4
        # Contains information about card networks that can be used to process the payment.
        sig { returns(T.nilable(Networks)) }
        attr_reader :networks
        # Details about payment methods collected offline.
        sig { returns(T.nilable(Offline)) }
        attr_reader :offline
        # The languages that the issuing bank recommends using for localizing any customer-facing text, as read from the card. Referenced from EMV tag 5F2D, data encoded on the card's chip.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :preferred_locales
        # How card details were read in this transaction.
        sig { returns(T.nilable(String)) }
        attr_reader :read_method
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
      class Crypto < Stripe::StripeObject; end
      class CustomerBalance < Stripe::StripeObject; end
      class Eps < Stripe::StripeObject
        # The customer's bank. Should be one of `arzte_und_apotheker_bank`, `austrian_anadi_bank_ag`, `bank_austria`, `bankhaus_carl_spangler`, `bankhaus_schelhammer_und_schattera_ag`, `bawag_psk_ag`, `bks_bank_ag`, `brull_kallmus_bank_ag`, `btv_vier_lander_bank`, `capital_bank_grawe_gruppe_ag`, `deutsche_bank_ag`, `dolomitenbank`, `easybank_ag`, `erste_bank_und_sparkassen`, `hypo_alpeadriabank_international_ag`, `hypo_noe_lb_fur_niederosterreich_u_wien`, `hypo_oberosterreich_salzburg_steiermark`, `hypo_tirol_bank_ag`, `hypo_vorarlberg_bank_ag`, `hypo_bank_burgenland_aktiengesellschaft`, `marchfelder_bank`, `oberbank_ag`, `raiffeisen_bankengruppe_osterreich`, `schoellerbank_ag`, `sparda_bank_wien`, `volksbank_gruppe`, `volkskreditbank_ag`, or `vr_bank_braunau`.
        sig { returns(T.nilable(String)) }
        attr_reader :bank
      end
      class Fpx < Stripe::StripeObject
        # Account holder type, if provided. Can be one of `individual` or `company`.
        sig { returns(T.nilable(String)) }
        attr_reader :account_holder_type
        # The customer's bank, if provided. Can be one of `affin_bank`, `agrobank`, `alliance_bank`, `ambank`, `bank_islam`, `bank_muamalat`, `bank_rakyat`, `bsn`, `cimb`, `hong_leong_bank`, `hsbc`, `kfh`, `maybank2u`, `ocbc`, `public_bank`, `rhb`, `standard_chartered`, `uob`, `deutsche_bank`, `maybank2e`, `pb_enterprise`, or `bank_of_china`.
        sig { returns(String) }
        attr_reader :bank
      end
      class Giropay < Stripe::StripeObject; end
      class Grabpay < Stripe::StripeObject; end
      class Ideal < Stripe::StripeObject
        # The customer's bank, if provided. Can be one of `abn_amro`, `asn_bank`, `bunq`, `buut`, `handelsbanken`, `ing`, `knab`, `moneyou`, `n26`, `nn`, `rabobank`, `regiobank`, `revolut`, `sns_bank`, `triodos_bank`, `van_lanschot`, or `yoursafe`.
        sig { returns(T.nilable(String)) }
        attr_reader :bank
        # The Bank Identifier Code of the customer's bank, if the bank was provided.
        sig { returns(T.nilable(String)) }
        attr_reader :bic
      end
      class InteracPresent < Stripe::StripeObject
        class Networks < Stripe::StripeObject
          # All networks available for selection via [payment_method_options.card.network](/api/payment_intents/confirm#confirm_payment_intent-payment_method_options-card-network).
          sig { returns(T::Array[String]) }
          attr_reader :available
          # The preferred network for the card.
          sig { returns(T.nilable(String)) }
          attr_reader :preferred
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
        # Issuer identification number of the card. (For internal use only and not typically available in standard API requests.)
        sig { returns(T.nilable(String)) }
        attr_reader :iin
        # The name of the card's issuing bank. (For internal use only and not typically available in standard API requests.)
        sig { returns(T.nilable(String)) }
        attr_reader :issuer
        # The last four digits of the card.
        sig { returns(T.nilable(String)) }
        attr_reader :last4
        # Contains information about card networks that can be used to process the payment.
        sig { returns(T.nilable(Networks)) }
        attr_reader :networks
        # The languages that the issuing bank recommends using for localizing any customer-facing text, as read from the card. Referenced from EMV tag 5F2D, data encoded on the card's chip.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :preferred_locales
        # How card details were read in this transaction.
        sig { returns(T.nilable(String)) }
        attr_reader :read_method
      end
      class KakaoPay < Stripe::StripeObject; end
      class Klarna < Stripe::StripeObject
        class Dob < Stripe::StripeObject
          # The day of birth, between 1 and 31.
          sig { returns(T.nilable(Integer)) }
          attr_reader :day
          # The month of birth, between 1 and 12.
          sig { returns(T.nilable(Integer)) }
          attr_reader :month
          # The four-digit year of birth.
          sig { returns(T.nilable(Integer)) }
          attr_reader :year
        end
        # The customer's date of birth, if provided.
        sig { returns(T.nilable(Dob)) }
        attr_reader :dob
      end
      class Konbini < Stripe::StripeObject; end
      class KrCard < Stripe::StripeObject
        # The local credit or debit card brand.
        sig { returns(T.nilable(String)) }
        attr_reader :brand
        # The last four digits of the card. This may not be present for American Express cards.
        sig { returns(T.nilable(String)) }
        attr_reader :last4
      end
      class Link < Stripe::StripeObject
        # Account owner's email address.
        sig { returns(T.nilable(String)) }
        attr_reader :email
        # [Deprecated] This is a legacy parameter that no longer has any function.
        sig { returns(String) }
        attr_reader :persistent_token
      end
      class Mobilepay < Stripe::StripeObject; end
      class Multibanco < Stripe::StripeObject; end
      class NaverPay < Stripe::StripeObject
        # Uniquely identifies this particular Naver Pay account. You can use this attribute to check whether two Naver Pay accounts are the same.
        sig { returns(T.nilable(String)) }
        attr_reader :buyer_id
        # Whether to fund this transaction with Naver Pay points or a card.
        sig { returns(String) }
        attr_reader :funding
      end
      class NzBankAccount < Stripe::StripeObject
        # The name on the bank account. Only present if the account holder name is different from the name of the authorized signatory collected in the PaymentMethod’s billing details.
        sig { returns(T.nilable(String)) }
        attr_reader :account_holder_name
        # The numeric code for the bank account's bank.
        sig { returns(String) }
        attr_reader :bank_code
        # The name of the bank.
        sig { returns(String) }
        attr_reader :bank_name
        # The numeric code for the bank account's bank branch.
        sig { returns(String) }
        attr_reader :branch_code
        # Last four digits of the bank account number.
        sig { returns(String) }
        attr_reader :last4
        # The suffix of the bank account number.
        sig { returns(T.nilable(String)) }
        attr_reader :suffix
      end
      class Oxxo < Stripe::StripeObject; end
      class P24 < Stripe::StripeObject
        # The customer's bank, if provided.
        sig { returns(T.nilable(String)) }
        attr_reader :bank
      end
      class PayByBank < Stripe::StripeObject; end
      class Payco < Stripe::StripeObject; end
      class Paynow < Stripe::StripeObject; end
      class Paypal < Stripe::StripeObject
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
      end
      class Pix < Stripe::StripeObject; end
      class Promptpay < Stripe::StripeObject; end
      class RevolutPay < Stripe::StripeObject; end
      class SamsungPay < Stripe::StripeObject; end
      class Satispay < Stripe::StripeObject; end
      class SepaDebit < Stripe::StripeObject
        class GeneratedFrom < Stripe::StripeObject
          # The ID of the Charge that generated this PaymentMethod, if any.
          sig { returns(T.nilable(T.any(String, Stripe::Charge))) }
          attr_reader :charge
          # The ID of the SetupAttempt that generated this PaymentMethod, if any.
          sig { returns(T.nilable(T.any(String, Stripe::SetupAttempt))) }
          attr_reader :setup_attempt
        end
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
        # Information about the object that generated this PaymentMethod.
        sig { returns(T.nilable(GeneratedFrom)) }
        attr_reader :generated_from
        # Last four characters of the IBAN.
        sig { returns(T.nilable(String)) }
        attr_reader :last4
      end
      class Sofort < Stripe::StripeObject
        # Two-letter ISO code representing the country the bank account is located in.
        sig { returns(T.nilable(String)) }
        attr_reader :country
      end
      class Swish < Stripe::StripeObject; end
      class Twint < Stripe::StripeObject; end
      class UsBankAccount < Stripe::StripeObject
        class Networks < Stripe::StripeObject
          # The preferred network.
          sig { returns(T.nilable(String)) }
          attr_reader :preferred
          # All supported networks.
          sig { returns(T::Array[String]) }
          attr_reader :supported
        end
        class StatusDetails < Stripe::StripeObject
          class Blocked < Stripe::StripeObject
            # The ACH network code that resulted in this block.
            sig { returns(T.nilable(String)) }
            attr_reader :network_code
            # The reason why this PaymentMethod's fingerprint has been blocked
            sig { returns(T.nilable(String)) }
            attr_reader :reason
          end
          # Attribute for field blocked
          sig { returns(Blocked) }
          attr_reader :blocked
        end
        # Account holder type: individual or company.
        sig { returns(T.nilable(String)) }
        attr_reader :account_holder_type
        # Account type: checkings or savings. Defaults to checking if omitted.
        sig { returns(T.nilable(String)) }
        attr_reader :account_type
        # The name of the bank.
        sig { returns(T.nilable(String)) }
        attr_reader :bank_name
        # The ID of the Financial Connections Account used to create the payment method.
        sig { returns(T.nilable(String)) }
        attr_reader :financial_connections_account
        # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
        sig { returns(T.nilable(String)) }
        attr_reader :fingerprint
        # Last four digits of the bank account number.
        sig { returns(T.nilable(String)) }
        attr_reader :last4
        # Contains information about US bank account networks that can be used.
        sig { returns(T.nilable(Networks)) }
        attr_reader :networks
        # Routing number of the bank account.
        sig { returns(T.nilable(String)) }
        attr_reader :routing_number
        # Contains information about the future reusability of this PaymentMethod.
        sig { returns(T.nilable(StatusDetails)) }
        attr_reader :status_details
      end
      class WechatPay < Stripe::StripeObject; end
      class Zip < Stripe::StripeObject; end
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
      # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to “unspecified”.
      sig { returns(String) }
      attr_reader :allow_redisplay
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
      # Attribute for field billie
      sig { returns(Billie) }
      attr_reader :billie
      # Attribute for field billing_details
      sig { returns(BillingDetails) }
      attr_reader :billing_details
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
      # Attribute for field crypto
      sig { returns(Crypto) }
      attr_reader :crypto
      # The ID of the Customer to which this PaymentMethod is saved. This will not be set when the PaymentMethod has not been saved to a Customer.
      sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
      attr_reader :customer
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
      # Attribute for field grabpay
      sig { returns(Grabpay) }
      attr_reader :grabpay
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
      # Attribute for field mobilepay
      sig { returns(Mobilepay) }
      attr_reader :mobilepay
      # Attribute for field multibanco
      sig { returns(Multibanco) }
      attr_reader :multibanco
      # Attribute for field naver_pay
      sig { returns(NaverPay) }
      attr_reader :naver_pay
      # Attribute for field nz_bank_account
      sig { returns(NzBankAccount) }
      attr_reader :nz_bank_account
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
      # Attribute for field pix
      sig { returns(Pix) }
      attr_reader :pix
      # Attribute for field promptpay
      sig { returns(Promptpay) }
      attr_reader :promptpay
      # Attribute for field revolut_pay
      sig { returns(RevolutPay) }
      attr_reader :revolut_pay
      # Attribute for field samsung_pay
      sig { returns(SamsungPay) }
      attr_reader :samsung_pay
      # Attribute for field satispay
      sig { returns(Satispay) }
      attr_reader :satispay
      # Attribute for field sepa_debit
      sig { returns(SepaDebit) }
      attr_reader :sepa_debit
      # Attribute for field sofort
      sig { returns(Sofort) }
      attr_reader :sofort
      # Attribute for field swish
      sig { returns(Swish) }
      attr_reader :swish
      # Attribute for field twint
      sig { returns(Twint) }
      attr_reader :twint
      # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
      sig { returns(String) }
      attr_reader :type
      # Attribute for field us_bank_account
      sig { returns(UsBankAccount) }
      attr_reader :us_bank_account
      # Attribute for field wechat_pay
      sig { returns(WechatPay) }
      attr_reader :wechat_pay
      # Attribute for field zip
      sig { returns(Zip) }
      attr_reader :zip
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
      # Recipient name.
      sig { returns(String) }
      attr_reader :name
      # Recipient phone (including extension).
      sig { returns(T.nilable(String)) }
      attr_reader :phone
    end
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created
    # Time at which this ConfirmationToken expires and can no longer be used to confirm a PaymentIntent or SetupIntent.
    sig { returns(T.nilable(Integer)) }
    attr_reader :expires_at
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode
    # Data used for generating a Mandate.
    sig { returns(T.nilable(MandateData)) }
    attr_reader :mandate_data
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # ID of the PaymentIntent that this ConfirmationToken was used to confirm, or null if this ConfirmationToken has not yet been used.
    sig { returns(T.nilable(String)) }
    attr_reader :payment_intent
    # Payment-method-specific configuration for this ConfirmationToken.
    sig { returns(T.nilable(PaymentMethodOptions)) }
    attr_reader :payment_method_options
    # Payment details collected by the Payment Element, used to create a PaymentMethod when a PaymentIntent or SetupIntent is confirmed with this ConfirmationToken.
    sig { returns(T.nilable(PaymentMethodPreview)) }
    attr_reader :payment_method_preview
    # Return URL used to confirm the Intent.
    sig { returns(T.nilable(String)) }
    attr_reader :return_url
    # Indicates that you intend to make future payments with this ConfirmationToken's payment method.
    #
    # The presence of this property will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the PaymentIntent's Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete.
    sig { returns(T.nilable(String)) }
    attr_reader :setup_future_usage
    # ID of the SetupIntent that this ConfirmationToken was used to confirm, or null if this ConfirmationToken has not yet been used.
    sig { returns(T.nilable(String)) }
    attr_reader :setup_intent
    # Shipping information collected on this ConfirmationToken.
    sig { returns(T.nilable(Shipping)) }
    attr_reader :shipping
    # Indicates whether the Stripe SDK is used to handle confirmation flow. Defaults to `true` on ConfirmationToken.
    sig { returns(T::Boolean) }
    attr_reader :use_stripe_sdk
    class CreateParams < Stripe::RequestParams
      class PaymentMethodData < Stripe::RequestParams
        class AcssDebit < Stripe::RequestParams
          # Customer's bank account number.
          sig { returns(String) }
          attr_accessor :account_number
          # Institution number of the customer's bank.
          sig { returns(String) }
          attr_accessor :institution_number
          # Transit number of the customer's bank.
          sig { returns(String) }
          attr_accessor :transit_number
          sig {
            params(account_number: String, institution_number: String, transit_number: String).void
           }
          def initialize(account_number: nil, institution_number: nil, transit_number: nil); end
        end
        class Affirm < Stripe::RequestParams; end
        class AfterpayClearpay < Stripe::RequestParams; end
        class Alipay < Stripe::RequestParams; end
        class Alma < Stripe::RequestParams; end
        class AmazonPay < Stripe::RequestParams; end
        class AuBecsDebit < Stripe::RequestParams
          # The account number for the bank account.
          sig { returns(String) }
          attr_accessor :account_number
          # Bank-State-Branch number of the bank account.
          sig { returns(String) }
          attr_accessor :bsb_number
          sig { params(account_number: String, bsb_number: String).void }
          def initialize(account_number: nil, bsb_number: nil); end
        end
        class BacsDebit < Stripe::RequestParams
          # Account number of the bank account that the funds will be debited from.
          sig { returns(T.nilable(String)) }
          attr_accessor :account_number
          # Sort code of the bank account. (e.g., `10-20-30`)
          sig { returns(T.nilable(String)) }
          attr_accessor :sort_code
          sig { params(account_number: T.nilable(String), sort_code: T.nilable(String)).void }
          def initialize(account_number: nil, sort_code: nil); end
        end
        class Bancontact < Stripe::RequestParams; end
        class Billie < Stripe::RequestParams; end
        class BillingDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
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
          # Billing address.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::BillingDetails::Address)))
           }
          attr_accessor :address
          # Email address.
          sig { returns(T.nilable(String)) }
          attr_accessor :email
          # Full name.
          sig { returns(T.nilable(String)) }
          attr_accessor :name
          # Billing phone number (including extension).
          sig { returns(T.nilable(String)) }
          attr_accessor :phone
          # Taxpayer identification number. Used only for transactions between LATAM buyers and non-LATAM sellers.
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_id
          sig {
            params(address: T.nilable(T.any(String, ::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::BillingDetails::Address)), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String), tax_id: T.nilable(String)).void
           }
          def initialize(address: nil, email: nil, name: nil, phone: nil, tax_id: nil); end
        end
        class Blik < Stripe::RequestParams; end
        class Boleto < Stripe::RequestParams
          # The tax ID of the customer (CPF for individual consumers or CNPJ for businesses consumers)
          sig { returns(String) }
          attr_accessor :tax_id
          sig { params(tax_id: String).void }
          def initialize(tax_id: nil); end
        end
        class Cashapp < Stripe::RequestParams; end
        class Crypto < Stripe::RequestParams; end
        class CustomerBalance < Stripe::RequestParams; end
        class Eps < Stripe::RequestParams
          # The customer's bank.
          sig { returns(T.nilable(String)) }
          attr_accessor :bank
          sig { params(bank: T.nilable(String)).void }
          def initialize(bank: nil); end
        end
        class Fpx < Stripe::RequestParams
          # Account holder type for FPX transaction
          sig { returns(T.nilable(String)) }
          attr_accessor :account_holder_type
          # The customer's bank.
          sig { returns(String) }
          attr_accessor :bank
          sig { params(account_holder_type: T.nilable(String), bank: String).void }
          def initialize(account_holder_type: nil, bank: nil); end
        end
        class Giropay < Stripe::RequestParams; end
        class Grabpay < Stripe::RequestParams; end
        class Ideal < Stripe::RequestParams
          # The customer's bank. Only use this parameter for existing customers. Don't use it for new customers.
          sig { returns(T.nilable(String)) }
          attr_accessor :bank
          sig { params(bank: T.nilable(String)).void }
          def initialize(bank: nil); end
        end
        class InteracPresent < Stripe::RequestParams; end
        class KakaoPay < Stripe::RequestParams; end
        class Klarna < Stripe::RequestParams
          class Dob < Stripe::RequestParams
            # The day of birth, between 1 and 31.
            sig { returns(Integer) }
            attr_accessor :day
            # The month of birth, between 1 and 12.
            sig { returns(Integer) }
            attr_accessor :month
            # The four-digit year of birth.
            sig { returns(Integer) }
            attr_accessor :year
            sig { params(day: Integer, month: Integer, year: Integer).void }
            def initialize(day: nil, month: nil, year: nil); end
          end
          # Customer's date of birth
          sig {
            returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Klarna::Dob))
           }
          attr_accessor :dob
          sig {
            params(dob: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Klarna::Dob)).void
           }
          def initialize(dob: nil); end
        end
        class Konbini < Stripe::RequestParams; end
        class KrCard < Stripe::RequestParams; end
        class Link < Stripe::RequestParams; end
        class Mobilepay < Stripe::RequestParams; end
        class Multibanco < Stripe::RequestParams; end
        class NaverPay < Stripe::RequestParams
          # Whether to use Naver Pay points or a card to fund this transaction. If not provided, this defaults to `card`.
          sig { returns(T.nilable(String)) }
          attr_accessor :funding
          sig { params(funding: T.nilable(String)).void }
          def initialize(funding: nil); end
        end
        class NzBankAccount < Stripe::RequestParams
          # The name on the bank account. Only required if the account holder name is different from the name of the authorized signatory collected in the PaymentMethod’s billing details.
          sig { returns(T.nilable(String)) }
          attr_accessor :account_holder_name
          # The account number for the bank account.
          sig { returns(String) }
          attr_accessor :account_number
          # The numeric code for the bank account's bank.
          sig { returns(String) }
          attr_accessor :bank_code
          # The numeric code for the bank account's bank branch.
          sig { returns(String) }
          attr_accessor :branch_code
          # Attribute for param field reference
          sig { returns(T.nilable(String)) }
          attr_accessor :reference
          # The suffix of the bank account number.
          sig { returns(String) }
          attr_accessor :suffix
          sig {
            params(account_holder_name: T.nilable(String), account_number: String, bank_code: String, branch_code: String, reference: T.nilable(String), suffix: String).void
           }
          def initialize(
            account_holder_name: nil,
            account_number: nil,
            bank_code: nil,
            branch_code: nil,
            reference: nil,
            suffix: nil
          ); end
        end
        class Oxxo < Stripe::RequestParams; end
        class P24 < Stripe::RequestParams
          # The customer's bank.
          sig { returns(T.nilable(String)) }
          attr_accessor :bank
          sig { params(bank: T.nilable(String)).void }
          def initialize(bank: nil); end
        end
        class PayByBank < Stripe::RequestParams; end
        class Payco < Stripe::RequestParams; end
        class Paynow < Stripe::RequestParams; end
        class Paypal < Stripe::RequestParams; end
        class Pix < Stripe::RequestParams; end
        class Promptpay < Stripe::RequestParams; end
        class RadarOptions < Stripe::RequestParams
          # A [Radar Session](https://stripe.com/docs/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
          sig { returns(T.nilable(String)) }
          attr_accessor :session
          sig { params(session: T.nilable(String)).void }
          def initialize(session: nil); end
        end
        class RevolutPay < Stripe::RequestParams; end
        class SamsungPay < Stripe::RequestParams; end
        class Satispay < Stripe::RequestParams; end
        class SepaDebit < Stripe::RequestParams
          # IBAN of the bank account.
          sig { returns(String) }
          attr_accessor :iban
          sig { params(iban: String).void }
          def initialize(iban: nil); end
        end
        class Sofort < Stripe::RequestParams
          # Two-letter ISO code representing the country the bank account is located in.
          sig { returns(String) }
          attr_accessor :country
          sig { params(country: String).void }
          def initialize(country: nil); end
        end
        class Swish < Stripe::RequestParams; end
        class Twint < Stripe::RequestParams; end
        class UsBankAccount < Stripe::RequestParams
          # Account holder type: individual or company.
          sig { returns(T.nilable(String)) }
          attr_accessor :account_holder_type
          # Account number of the bank account.
          sig { returns(T.nilable(String)) }
          attr_accessor :account_number
          # Account type: checkings or savings. Defaults to checking if omitted.
          sig { returns(T.nilable(String)) }
          attr_accessor :account_type
          # The ID of a Financial Connections Account to use as a payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :financial_connections_account
          # Routing number of the bank account.
          sig { returns(T.nilable(String)) }
          attr_accessor :routing_number
          sig {
            params(account_holder_type: T.nilable(String), account_number: T.nilable(String), account_type: T.nilable(String), financial_connections_account: T.nilable(String), routing_number: T.nilable(String)).void
           }
          def initialize(
            account_holder_type: nil,
            account_number: nil,
            account_type: nil,
            financial_connections_account: nil,
            routing_number: nil
          ); end
        end
        class WechatPay < Stripe::RequestParams; end
        class Zip < Stripe::RequestParams; end
        # If this is an `acss_debit` PaymentMethod, this hash contains details about the ACSS Debit payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::AcssDebit))
         }
        attr_accessor :acss_debit
        # If this is an `affirm` PaymentMethod, this hash contains details about the Affirm payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Affirm))
         }
        attr_accessor :affirm
        # If this is an `AfterpayClearpay` PaymentMethod, this hash contains details about the AfterpayClearpay payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::AfterpayClearpay))
         }
        attr_accessor :afterpay_clearpay
        # If this is an `Alipay` PaymentMethod, this hash contains details about the Alipay payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Alipay))
         }
        attr_accessor :alipay
        # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to `unspecified`.
        sig { returns(T.nilable(String)) }
        attr_accessor :allow_redisplay
        # If this is a Alma PaymentMethod, this hash contains details about the Alma payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Alma))
         }
        attr_accessor :alma
        # If this is a AmazonPay PaymentMethod, this hash contains details about the AmazonPay payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::AmazonPay))
         }
        attr_accessor :amazon_pay
        # If this is an `au_becs_debit` PaymentMethod, this hash contains details about the bank account.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::AuBecsDebit))
         }
        attr_accessor :au_becs_debit
        # If this is a `bacs_debit` PaymentMethod, this hash contains details about the Bacs Direct Debit bank account.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::BacsDebit))
         }
        attr_accessor :bacs_debit
        # If this is a `bancontact` PaymentMethod, this hash contains details about the Bancontact payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Bancontact))
         }
        attr_accessor :bancontact
        # If this is a `billie` PaymentMethod, this hash contains details about the Billie payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Billie))
         }
        attr_accessor :billie
        # Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::BillingDetails))
         }
        attr_accessor :billing_details
        # If this is a `blik` PaymentMethod, this hash contains details about the BLIK payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Blik))
         }
        attr_accessor :blik
        # If this is a `boleto` PaymentMethod, this hash contains details about the Boleto payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Boleto))
         }
        attr_accessor :boleto
        # If this is a `cashapp` PaymentMethod, this hash contains details about the Cash App Pay payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Cashapp))
         }
        attr_accessor :cashapp
        # If this is a Crypto PaymentMethod, this hash contains details about the Crypto payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Crypto))
         }
        attr_accessor :crypto
        # If this is a `customer_balance` PaymentMethod, this hash contains details about the CustomerBalance payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::CustomerBalance))
         }
        attr_accessor :customer_balance
        # If this is an `eps` PaymentMethod, this hash contains details about the EPS payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Eps))
         }
        attr_accessor :eps
        # If this is an `fpx` PaymentMethod, this hash contains details about the FPX payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Fpx))
         }
        attr_accessor :fpx
        # If this is a `giropay` PaymentMethod, this hash contains details about the Giropay payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Giropay))
         }
        attr_accessor :giropay
        # If this is a `grabpay` PaymentMethod, this hash contains details about the GrabPay payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Grabpay))
         }
        attr_accessor :grabpay
        # If this is an `ideal` PaymentMethod, this hash contains details about the iDEAL payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Ideal))
         }
        attr_accessor :ideal
        # If this is an `interac_present` PaymentMethod, this hash contains details about the Interac Present payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::InteracPresent))
         }
        attr_accessor :interac_present
        # If this is a `kakao_pay` PaymentMethod, this hash contains details about the Kakao Pay payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::KakaoPay))
         }
        attr_accessor :kakao_pay
        # If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Klarna))
         }
        attr_accessor :klarna
        # If this is a `konbini` PaymentMethod, this hash contains details about the Konbini payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Konbini))
         }
        attr_accessor :konbini
        # If this is a `kr_card` PaymentMethod, this hash contains details about the Korean Card payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::KrCard))
         }
        attr_accessor :kr_card
        # If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Link))
         }
        attr_accessor :link
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # If this is a `mobilepay` PaymentMethod, this hash contains details about the MobilePay payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Mobilepay))
         }
        attr_accessor :mobilepay
        # If this is a `multibanco` PaymentMethod, this hash contains details about the Multibanco payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Multibanco))
         }
        attr_accessor :multibanco
        # If this is a `naver_pay` PaymentMethod, this hash contains details about the Naver Pay payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::NaverPay))
         }
        attr_accessor :naver_pay
        # If this is an nz_bank_account PaymentMethod, this hash contains details about the nz_bank_account payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::NzBankAccount))
         }
        attr_accessor :nz_bank_account
        # If this is an `oxxo` PaymentMethod, this hash contains details about the OXXO payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Oxxo))
         }
        attr_accessor :oxxo
        # If this is a `p24` PaymentMethod, this hash contains details about the P24 payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::P24))
         }
        attr_accessor :p24
        # If this is a `pay_by_bank` PaymentMethod, this hash contains details about the PayByBank payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::PayByBank))
         }
        attr_accessor :pay_by_bank
        # If this is a `payco` PaymentMethod, this hash contains details about the PAYCO payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Payco))
         }
        attr_accessor :payco
        # If this is a `paynow` PaymentMethod, this hash contains details about the PayNow payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Paynow))
         }
        attr_accessor :paynow
        # If this is a `paypal` PaymentMethod, this hash contains details about the PayPal payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Paypal))
         }
        attr_accessor :paypal
        # If this is a `pix` PaymentMethod, this hash contains details about the Pix payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Pix))
         }
        attr_accessor :pix
        # If this is a `promptpay` PaymentMethod, this hash contains details about the PromptPay payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Promptpay))
         }
        attr_accessor :promptpay
        # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::RadarOptions))
         }
        attr_accessor :radar_options
        # If this is a `revolut_pay` PaymentMethod, this hash contains details about the Revolut Pay payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::RevolutPay))
         }
        attr_accessor :revolut_pay
        # If this is a `samsung_pay` PaymentMethod, this hash contains details about the SamsungPay payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::SamsungPay))
         }
        attr_accessor :samsung_pay
        # If this is a `satispay` PaymentMethod, this hash contains details about the Satispay payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Satispay))
         }
        attr_accessor :satispay
        # If this is a `sepa_debit` PaymentMethod, this hash contains details about the SEPA debit bank account.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::SepaDebit))
         }
        attr_accessor :sepa_debit
        # If this is a `sofort` PaymentMethod, this hash contains details about the SOFORT payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Sofort))
         }
        attr_accessor :sofort
        # If this is a `swish` PaymentMethod, this hash contains details about the Swish payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Swish))
         }
        attr_accessor :swish
        # If this is a TWINT PaymentMethod, this hash contains details about the TWINT payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Twint))
         }
        attr_accessor :twint
        # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
        sig { returns(String) }
        attr_accessor :type
        # If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::UsBankAccount))
         }
        attr_accessor :us_bank_account
        # If this is an `wechat_pay` PaymentMethod, this hash contains details about the wechat_pay payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::WechatPay))
         }
        attr_accessor :wechat_pay
        # If this is a `zip` PaymentMethod, this hash contains details about the Zip payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Zip))
         }
        attr_accessor :zip
        sig {
          params(acss_debit: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::AcssDebit), affirm: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Affirm), afterpay_clearpay: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::AfterpayClearpay), alipay: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Alipay), allow_redisplay: T.nilable(String), alma: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Alma), amazon_pay: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::AmazonPay), au_becs_debit: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::AuBecsDebit), bacs_debit: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::BacsDebit), bancontact: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Bancontact), billie: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Billie), billing_details: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::BillingDetails), blik: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Blik), boleto: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Boleto), cashapp: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Cashapp), crypto: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Crypto), customer_balance: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::CustomerBalance), eps: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Eps), fpx: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Fpx), giropay: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Giropay), grabpay: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Grabpay), ideal: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Ideal), interac_present: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::InteracPresent), kakao_pay: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::KakaoPay), klarna: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Klarna), konbini: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Konbini), kr_card: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::KrCard), link: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Link), metadata: T.nilable(T::Hash[String, String]), mobilepay: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Mobilepay), multibanco: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Multibanco), naver_pay: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::NaverPay), nz_bank_account: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::NzBankAccount), oxxo: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Oxxo), p24: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::P24), pay_by_bank: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::PayByBank), payco: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Payco), paynow: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Paynow), paypal: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Paypal), pix: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Pix), promptpay: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Promptpay), radar_options: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::RadarOptions), revolut_pay: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::RevolutPay), samsung_pay: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::SamsungPay), satispay: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Satispay), sepa_debit: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::SepaDebit), sofort: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Sofort), swish: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Swish), twint: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Twint), type: String, us_bank_account: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::UsBankAccount), wechat_pay: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::WechatPay), zip: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Zip)).void
         }
        def initialize(
          acss_debit: nil,
          affirm: nil,
          afterpay_clearpay: nil,
          alipay: nil,
          allow_redisplay: nil,
          alma: nil,
          amazon_pay: nil,
          au_becs_debit: nil,
          bacs_debit: nil,
          bancontact: nil,
          billie: nil,
          billing_details: nil,
          blik: nil,
          boleto: nil,
          cashapp: nil,
          crypto: nil,
          customer_balance: nil,
          eps: nil,
          fpx: nil,
          giropay: nil,
          grabpay: nil,
          ideal: nil,
          interac_present: nil,
          kakao_pay: nil,
          klarna: nil,
          konbini: nil,
          kr_card: nil,
          link: nil,
          metadata: nil,
          mobilepay: nil,
          multibanco: nil,
          naver_pay: nil,
          nz_bank_account: nil,
          oxxo: nil,
          p24: nil,
          pay_by_bank: nil,
          payco: nil,
          paynow: nil,
          paypal: nil,
          pix: nil,
          promptpay: nil,
          radar_options: nil,
          revolut_pay: nil,
          samsung_pay: nil,
          satispay: nil,
          sepa_debit: nil,
          sofort: nil,
          swish: nil,
          twint: nil,
          type: nil,
          us_bank_account: nil,
          wechat_pay: nil,
          zip: nil
        ); end
      end
      class PaymentMethodOptions < Stripe::RequestParams
        class Card < Stripe::RequestParams
          class Installments < Stripe::RequestParams
            class Plan < Stripe::RequestParams
              # For `fixed_count` installment plans, this is required. It represents the number of installment payments your customer will make to their credit card.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :count
              # For `fixed_count` installment plans, this is required. It represents the interval between installment payments your customer will make to their credit card.
              # One of `month`.
              sig { returns(T.nilable(String)) }
              attr_accessor :interval
              # Type of installment plan, one of `fixed_count`, `bonus`, or `revolving`.
              sig { returns(String) }
              attr_accessor :type
              sig {
                params(count: T.nilable(Integer), interval: T.nilable(String), type: String).void
               }
              def initialize(count: nil, interval: nil, type: nil); end
            end
            # The selected installment plan to use for this payment attempt.
            # This parameter can only be provided during confirmation.
            sig {
              returns(::Stripe::ConfirmationToken::CreateParams::PaymentMethodOptions::Card::Installments::Plan)
             }
            attr_accessor :plan
            sig {
              params(plan: ::Stripe::ConfirmationToken::CreateParams::PaymentMethodOptions::Card::Installments::Plan).void
             }
            def initialize(plan: nil); end
          end
          # Installment configuration for payments confirmed using this ConfirmationToken.
          sig {
            returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodOptions::Card::Installments))
           }
          attr_accessor :installments
          sig {
            params(installments: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodOptions::Card::Installments)).void
           }
          def initialize(installments: nil); end
        end
        # Configuration for any card payments confirmed using this ConfirmationToken.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodOptions::Card))
         }
        attr_accessor :card
        sig {
          params(card: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodOptions::Card)).void
         }
        def initialize(card: nil); end
      end
      class Shipping < Stripe::RequestParams
        class Address < Stripe::RequestParams
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
        # Shipping address
        sig { returns(::Stripe::ConfirmationToken::CreateParams::Shipping::Address) }
        attr_accessor :address
        # Recipient name.
        sig { returns(String) }
        attr_accessor :name
        # Recipient phone (including extension)
        sig { returns(T.nilable(String)) }
        attr_accessor :phone
        sig {
          params(address: ::Stripe::ConfirmationToken::CreateParams::Shipping::Address, name: String, phone: T.nilable(String)).void
         }
        def initialize(address: nil, name: nil, phone: nil); end
      end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # ID of an existing PaymentMethod.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method
      # If provided, this hash will be used to create a PaymentMethod.
      sig { returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData)) }
      attr_accessor :payment_method_data
      # Payment-method-specific configuration for this ConfirmationToken.
      sig { returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodOptions)) }
      attr_accessor :payment_method_options
      # Return URL used to confirm the Intent.
      sig { returns(T.nilable(String)) }
      attr_accessor :return_url
      # Indicates that you intend to make future payments with this ConfirmationToken's payment method.
      #
      # The presence of this property will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the PaymentIntent's Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete.
      sig { returns(T.nilable(String)) }
      attr_accessor :setup_future_usage
      # Shipping information for this ConfirmationToken.
      sig { returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::Shipping)) }
      attr_accessor :shipping
      sig {
        params(expand: T.nilable(T::Array[String]), payment_method: T.nilable(String), payment_method_data: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData), payment_method_options: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodOptions), return_url: T.nilable(String), setup_future_usage: T.nilable(String), shipping: T.nilable(::Stripe::ConfirmationToken::CreateParams::Shipping)).void
       }
      def initialize(
        expand: nil,
        payment_method: nil,
        payment_method_data: nil,
        payment_method_options: nil,
        return_url: nil,
        setup_future_usage: nil,
        shipping: nil
      ); end
    end
  end
end