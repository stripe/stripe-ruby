# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A Payment Attempt Record represents an individual attempt at making a payment, on or off Stripe.
  # Each payment attempt tries to collect a fixed amount of money from a fixed customer and payment
  # method. Payment Attempt Records are attached to Payment Records. Only one attempt per Payment Record
  # can have guaranteed funds.
  class PaymentAttemptRecord < APIResource
    class Amount < Stripe::StripeObject
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_reader :currency
      # A positive integer representing the amount in the currency's [minor unit](https://stripe.com/docs/currencies#zero-decimal). For example, `100` can represent 1 USD or 100 JPY.
      sig { returns(Integer) }
      attr_reader :value
    end
    class AmountAuthorized < Stripe::StripeObject
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_reader :currency
      # A positive integer representing the amount in the currency's [minor unit](https://stripe.com/docs/currencies#zero-decimal). For example, `100` can represent 1 USD or 100 JPY.
      sig { returns(Integer) }
      attr_reader :value
    end
    class AmountCanceled < Stripe::StripeObject
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_reader :currency
      # A positive integer representing the amount in the currency's [minor unit](https://stripe.com/docs/currencies#zero-decimal). For example, `100` can represent 1 USD or 100 JPY.
      sig { returns(Integer) }
      attr_reader :value
    end
    class AmountFailed < Stripe::StripeObject
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_reader :currency
      # A positive integer representing the amount in the currency's [minor unit](https://stripe.com/docs/currencies#zero-decimal). For example, `100` can represent 1 USD or 100 JPY.
      sig { returns(Integer) }
      attr_reader :value
    end
    class AmountGuaranteed < Stripe::StripeObject
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_reader :currency
      # A positive integer representing the amount in the currency's [minor unit](https://stripe.com/docs/currencies#zero-decimal). For example, `100` can represent 1 USD or 100 JPY.
      sig { returns(Integer) }
      attr_reader :value
    end
    class AmountRefunded < Stripe::StripeObject
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_reader :currency
      # A positive integer representing the amount in the currency's [minor unit](https://stripe.com/docs/currencies#zero-decimal). For example, `100` can represent 1 USD or 100 JPY.
      sig { returns(Integer) }
      attr_reader :value
    end
    class AmountRequested < Stripe::StripeObject
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_reader :currency
      # A positive integer representing the amount in the currency's [minor unit](https://stripe.com/docs/currencies#zero-decimal). For example, `100` can represent 1 USD or 100 JPY.
      sig { returns(Integer) }
      attr_reader :value
    end
    class CustomerDetails < Stripe::StripeObject
      # ID of the Stripe Customer associated with this payment.
      sig { returns(T.nilable(String)) }
      attr_reader :customer
      # The customer's email address.
      sig { returns(T.nilable(String)) }
      attr_reader :email
      # The customer's name.
      sig { returns(T.nilable(String)) }
      attr_reader :name
      # The customer's phone number.
      sig { returns(T.nilable(String)) }
      attr_reader :phone
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
        # ID of the [location](https://stripe.com/docs/api/terminal/locations) that this transaction's reader is assigned to.
        sig { returns(String) }
        attr_reader :location
        # ID of the [reader](https://stripe.com/docs/api/terminal/readers) this transaction was made on.
        sig { returns(String) }
        attr_reader :reader
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
      class Alma < Stripe::StripeObject
        class Installments < Stripe::StripeObject
          # The number of installments.
          sig { returns(Integer) }
          attr_reader :count
        end
        # Attribute for field installments
        sig { returns(Installments) }
        attr_reader :installments
        # The Alma transaction ID associated with this payment.
        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
      end
      class AmazonPay < Stripe::StripeObject
        class Funding < Stripe::StripeObject
          class Card < Stripe::StripeObject
            # Card brand. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa` or `unknown`.
            sig { returns(T.nilable(String)) }
            attr_reader :brand
            # The [product code](https://stripe.com/docs/card-product-codes) that identifies the specific program or product associated with a card. (For internal use only and not typically available in standard API requests.)
            sig { returns(T.nilable(String)) }
            attr_reader :brand_product
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
        # The Amazon Pay transaction ID associated with this payment.
        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
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
      class Billie < Stripe::StripeObject
        # The Billie transaction ID associated with this payment.
        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
      end
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
        # A representation of a physical address.
        sig { returns(Address) }
        attr_reader :address
        # The billing email associated with the method of payment.
        sig { returns(T.nilable(String)) }
        attr_reader :email
        # The billing name associated with the method of payment.
        sig { returns(T.nilable(String)) }
        attr_reader :name
        # The billing phone number associated with the method of payment.
        sig { returns(T.nilable(String)) }
        attr_reader :phone
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
          # Attribute for field address_line1_check
          sig { returns(T.nilable(String)) }
          attr_reader :address_line1_check
          # Attribute for field address_postal_code_check
          sig { returns(T.nilable(String)) }
          attr_reader :address_postal_code_check
          # Attribute for field cvc_check
          sig { returns(T.nilable(String)) }
          attr_reader :cvc_check
        end
        class NetworkToken < Stripe::StripeObject
          # Attribute for field used
          sig { returns(T::Boolean) }
          attr_reader :used
        end
        class ThreeDSecure < Stripe::StripeObject
          # Attribute for field authentication_flow
          sig { returns(T.nilable(String)) }
          attr_reader :authentication_flow
          # Attribute for field result
          sig { returns(T.nilable(String)) }
          attr_reader :result
          # Attribute for field result_reason
          sig { returns(T.nilable(String)) }
          attr_reader :result_reason
          # Attribute for field version
          sig { returns(T.nilable(String)) }
          attr_reader :version
        end
        # Card brand. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa` or `unknown`.
        sig { returns(String) }
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
        # The last four digits of the card.
        sig { returns(String) }
        attr_reader :last4
        # True if this payment was marked as MOTO and out of scope for SCA.
        sig { returns(T::Boolean) }
        attr_reader :moto
        # Identifies which network this charge was processed on. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `interac`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
        sig { returns(T.nilable(String)) }
        attr_reader :network
        # If this card has network token credentials, this contains the details of the network token credentials.
        sig { returns(T.nilable(NetworkToken)) }
        attr_reader :network_token
        # This is used by the financial networks to identify a transaction. Visa calls this the Transaction ID, Mastercard calls this the Trace ID, and American Express calls this the Acquirer Reference Data. This value will be present if it is returned by the financial network in the authorization response, and null otherwise.
        sig { returns(T.nilable(String)) }
        attr_reader :network_transaction_id
        # Populated if this transaction used 3D Secure authentication.
        sig { returns(T.nilable(ThreeDSecure)) }
        attr_reader :three_d_secure
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
      class Cashapp < Stripe::StripeObject
        # A unique and immutable identifier assigned by Cash App to every buyer.
        sig { returns(T.nilable(String)) }
        attr_reader :buyer_id
        # A public identifier for buyers using Cash App.
        sig { returns(T.nilable(String)) }
        attr_reader :cashtag
        # A unique and immutable identifier of payments assigned by Cash App
        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
      end
      class Crypto < Stripe::StripeObject
        # The wallet address of the customer.
        sig { returns(String) }
        attr_reader :buyer_address
        # The blockchain network that the transaction was sent on.
        sig { returns(String) }
        attr_reader :network
        # The token currency that the transaction was sent with.
        sig { returns(String) }
        attr_reader :token_currency
        # The blockchain transaction hash of the crypto payment.
        sig { returns(String) }
        attr_reader :transaction_hash
      end
      class Custom < Stripe::StripeObject
        # Display name for the custom (user-defined) payment method type used to make this payment.
        sig { returns(String) }
        attr_reader :display_name
        # The custom payment method type associated with this payment.
        sig { returns(T.nilable(String)) }
        attr_reader :type
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
        # The customer's bank. Can be one of `abn_amro`, `asn_bank`, `bunq`, `buut`, `handelsbanken`, `ing`, `knab`, `moneyou`, `n26`, `nn`, `rabobank`, `regiobank`, `revolut`, `sns_bank`, `triodos_bank`, `van_lanschot`, or `yoursafe`.
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
        # The languages that the issuing bank recommends using for localizing any customer-facing text, as read from the card. Referenced from EMV tag 5F2D, data encoded on the card's chip.
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
        # The Kakao Pay transaction ID associated with this payment.
        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
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
        # The Korean Card transaction ID associated with this payment.
        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
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
        # The Naver Pay transaction ID associated with this payment.
        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
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
        # The Payco transaction ID associated with this payment.
        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
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
        # ID of the multi use Mandate generated by the PaymentIntent
        sig { returns(String) }
        attr_reader :mandate
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
            # Card brand. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa` or `unknown`.
            sig { returns(T.nilable(String)) }
            attr_reader :brand
            # The [product code](https://stripe.com/docs/card-product-codes) that identifies the specific program or product associated with a card. (For internal use only and not typically available in standard API requests.)
            sig { returns(T.nilable(String)) }
            attr_reader :brand_product
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
        # The Revolut Pay transaction ID associated with this payment.
        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
      end
      class SamsungPay < Stripe::StripeObject
        # A unique identifier for the buyer as determined by the local payment processor.
        sig { returns(T.nilable(String)) }
        attr_reader :buyer_id
        # The Samsung Pay transaction ID associated with this payment.
        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
      end
      class Satispay < Stripe::StripeObject
        # The Satispay transaction ID associated with this payment.
        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
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
      class StripeBalance < Stripe::StripeObject
        # The connected account ID whose Stripe balance to use as the source of payment
        sig { returns(T.nilable(String)) }
        attr_reader :account
        # The [source_type](https://docs.stripe.com/api/balance/balance_object#balance_object-available-source_types) of the balance
        sig { returns(String) }
        attr_reader :source_type
      end
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
        # Attribute for field account_holder_type
        sig { returns(T.nilable(String)) }
        attr_reader :account_holder_type
        # Attribute for field account_type
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
        # Reference number to locate ACH payments with customer’s bank.
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
        # ID of the [location](https://stripe.com/docs/api/terminal/locations) that this transaction's reader is assigned to.
        sig { returns(String) }
        attr_reader :location
        # ID of the [reader](https://stripe.com/docs/api/terminal/readers) this transaction was made on.
        sig { returns(String) }
        attr_reader :reader
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
      # Attribute for field billie
      sig { returns(Billie) }
      attr_reader :billie
      # The billing details associated with the method of payment.
      sig { returns(T.nilable(BillingDetails)) }
      attr_reader :billing_details
      # Attribute for field blik
      sig { returns(Blik) }
      attr_reader :blik
      # Attribute for field boleto
      sig { returns(Boleto) }
      attr_reader :boleto
      # Details of the card used for this payment attempt.
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
      # Custom Payment Methods represent Payment Method types not modeled directly in
      # the Stripe API. This resource consists of details about the custom payment method
      # used for this payment attempt.
      sig { returns(Custom) }
      attr_reader :custom
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
      # ID of the Stripe PaymentMethod used to make this payment.
      sig { returns(T.nilable(String)) }
      attr_reader :payment_method
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
      # Attribute for field satispay
      sig { returns(Satispay) }
      attr_reader :satispay
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
      # Attribute for field stripe_balance
      sig { returns(StripeBalance) }
      attr_reader :stripe_balance
      # Attribute for field swish
      sig { returns(Swish) }
      attr_reader :swish
      # Attribute for field twint
      sig { returns(Twint) }
      attr_reader :twint
      # The type of transaction-specific details of the payment method used in the payment. See [PaymentMethod.type](https://stripe.com/docs/api/payment_methods/object#payment_method_object-type) for the full list of possible types.
      # An additional hash is included on `payment_method_details` with a name matching this value.
      # It contains information specific to the payment method.
      sig { returns(String) }
      attr_reader :type
      # Details of the US Bank Account used for this payment attempt.
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
    class ProcessorDetails < Stripe::StripeObject
      class Custom < Stripe::StripeObject
        # An opaque string for manual reconciliation of this payment, for example a check number or a payment processor ID.
        sig { returns(String) }
        attr_reader :payment_reference
      end
      # Custom processors represent payment processors not modeled directly in
      # the Stripe API. This resource consists of details about the custom processor
      # used for this payment attempt.
      sig { returns(Custom) }
      attr_reader :custom
      # The processor used for this payment attempt.
      sig { returns(String) }
      attr_reader :type
    end
    class ShippingDetails < Stripe::StripeObject
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
      # A representation of a physical address.
      sig { returns(Address) }
      attr_reader :address
      # The shipping recipient's name.
      sig { returns(T.nilable(String)) }
      attr_reader :name
      # The shipping recipient's phone number.
      sig { returns(T.nilable(String)) }
      attr_reader :phone
    end
    # A representation of an amount of money, consisting of an amount and a currency.
    sig { returns(Amount) }
    attr_reader :amount
    # A representation of an amount of money, consisting of an amount and a currency.
    sig { returns(AmountAuthorized) }
    attr_reader :amount_authorized
    # A representation of an amount of money, consisting of an amount and a currency.
    sig { returns(AmountCanceled) }
    attr_reader :amount_canceled
    # A representation of an amount of money, consisting of an amount and a currency.
    sig { returns(AmountFailed) }
    attr_reader :amount_failed
    # A representation of an amount of money, consisting of an amount and a currency.
    sig { returns(AmountGuaranteed) }
    attr_reader :amount_guaranteed
    # A representation of an amount of money, consisting of an amount and a currency.
    sig { returns(AmountRefunded) }
    attr_reader :amount_refunded
    # A representation of an amount of money, consisting of an amount and a currency.
    sig { returns(AmountRequested) }
    attr_reader :amount_requested
    # ID of the Connect application that created the PaymentAttemptRecord.
    sig { returns(T.nilable(String)) }
    attr_reader :application
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created
    # Customer information for this payment.
    sig { returns(T.nilable(CustomerDetails)) }
    attr_reader :customer_details
    # Indicates whether the customer was present in your checkout flow during this payment.
    sig { returns(T.nilable(String)) }
    attr_reader :customer_presence
    # An arbitrary string attached to the object. Often useful for displaying to users.
    sig { returns(T.nilable(String)) }
    attr_reader :description
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # Information about the Payment Method debited for this payment.
    sig { returns(T.nilable(PaymentMethodDetails)) }
    attr_reader :payment_method_details
    # ID of the Payment Record this Payment Attempt Record belongs to.
    sig { returns(T.nilable(String)) }
    attr_reader :payment_record
    # Processor information associated with this payment.
    sig { returns(ProcessorDetails) }
    attr_reader :processor_details
    # Indicates who reported the payment.
    sig { returns(String) }
    attr_reader :reported_by
    # Shipping information for this payment.
    sig { returns(T.nilable(ShippingDetails)) }
    attr_reader :shipping_details
    class ListParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # The ID of the Payment Record.
      sig { returns(String) }
      attr_accessor :payment_record
      sig { params(expand: T.nilable(T::Array[String]), payment_record: String).void }
      def initialize(expand: nil, payment_record: nil); end
    end
    # List all the Payment Attempt Records attached to the specified Payment Record.
    sig {
      params(params: T.any(::Stripe::PaymentAttemptRecord::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end
  end
end