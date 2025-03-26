# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A Payment Record is a resource that allows you to represent payments that occur on- or off-Stripe.
  # For example, you can create a Payment Record to model a payment made on a different payment processor,
  # in order to mark an Invoice as paid and a Subscription as active. Payment Records consist of one or
  # more Payment Attempt Records, which represent individual attempts made on a payment network.
  class PaymentRecord < APIResource
    OBJECT_NAME = "payment_record"
    def self.object_name
      "payment_record"
    end

    class AmountCanceled < Stripe::StripeObject
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # A positive integer representing the amount in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) e.g., 100 cents for $1.00 or 100 for ¥100, a zero-decimal currency).
      attr_reader :value
    end

    class AmountFailed < Stripe::StripeObject
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # A positive integer representing the amount in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) e.g., 100 cents for $1.00 or 100 for ¥100, a zero-decimal currency).
      attr_reader :value
    end

    class AmountGuaranteed < Stripe::StripeObject
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # A positive integer representing the amount in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) e.g., 100 cents for $1.00 or 100 for ¥100, a zero-decimal currency).
      attr_reader :value
    end

    class AmountRequested < Stripe::StripeObject
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # A positive integer representing the amount in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) e.g., 100 cents for $1.00 or 100 for ¥100, a zero-decimal currency).
      attr_reader :value
    end

    class CustomerDetails < Stripe::StripeObject
      # ID of the Stripe Customer associated with this payment.
      attr_reader :customer
      # The customer's email address.
      attr_reader :email
      # The customer's name.
      attr_reader :name
      # The customer's phone number.
      attr_reader :phone
    end

    class PaymentMethodDetails < Stripe::StripeObject
      class AchCreditTransfer < Stripe::StripeObject
        # Account number to transfer funds to.
        attr_reader :account_number
        # Name of the bank associated with the routing number.
        attr_reader :bank_name
        # Routing transit number for the bank account to transfer funds to.
        attr_reader :routing_number
        # SWIFT code of the bank associated with the routing number.
        attr_reader :swift_code
      end

      class AchDebit < Stripe::StripeObject
        # Type of entity that holds the account. This can be either `individual` or `company`.
        attr_reader :account_holder_type
        # Name of the bank associated with the bank account.
        attr_reader :bank_name
        # Two-letter ISO code representing the country the bank account is located in.
        attr_reader :country
        # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
        attr_reader :fingerprint
        # Last four digits of the bank account number.
        attr_reader :last4
        # Routing transit number of the bank account.
        attr_reader :routing_number
      end

      class AcssDebit < Stripe::StripeObject
        # Name of the bank associated with the bank account.
        attr_reader :bank_name
        # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
        attr_reader :fingerprint
        # Institution number of the bank account
        attr_reader :institution_number
        # Last four digits of the bank account number.
        attr_reader :last4
        # ID of the mandate used to make this payment.
        attr_reader :mandate
        # Transit number of the bank account.
        attr_reader :transit_number
      end

      class Affirm < Stripe::StripeObject
        # The Affirm transaction ID associated with this payment.
        attr_reader :transaction_id
      end

      class AfterpayClearpay < Stripe::StripeObject
        # The Afterpay order ID associated with this payment intent.
        attr_reader :order_id
        # Order identifier shown to the merchant in Afterpay’s online portal.
        attr_reader :reference
      end

      class Alipay < Stripe::StripeObject
        # Uniquely identifies this particular Alipay account. You can use this attribute to check whether two Alipay accounts are the same.
        attr_reader :buyer_id
        # Uniquely identifies this particular Alipay account. You can use this attribute to check whether two Alipay accounts are the same.
        attr_reader :fingerprint
        # Transaction ID of this particular Alipay transaction.
        attr_reader :transaction_id
      end

      class Alma < Stripe::StripeObject; end

      class AmazonPay < Stripe::StripeObject
        class Funding < Stripe::StripeObject
          class Card < Stripe::StripeObject
            # Card brand. Can be `amex`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
            attr_reader :brand
            # The [product code](https://stripe.com/docs/card-product-codes) that identifies the specific program or product associated with a card. (For internal use only and not typically available in standard API requests.)
            attr_reader :brand_product
            # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
            attr_reader :country
            # Two-digit number representing the card's expiration month.
            attr_reader :exp_month
            # Four-digit number representing the card's expiration year.
            attr_reader :exp_year
            # Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
            attr_reader :funding
            # The last four digits of the card.
            attr_reader :last4
          end
          # Attribute for field card
          attr_reader :card
          # funding type of the underlying payment method.
          attr_reader :type
        end
        # Attribute for field funding
        attr_reader :funding
      end

      class AuBecsDebit < Stripe::StripeObject
        # Bank-State-Branch number of the bank account.
        attr_reader :bsb_number
        # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
        attr_reader :fingerprint
        # Last four digits of the bank account number.
        attr_reader :last4
        # ID of the mandate used to make this payment.
        attr_reader :mandate
      end

      class BacsDebit < Stripe::StripeObject
        # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
        attr_reader :fingerprint
        # Last four digits of the bank account number.
        attr_reader :last4
        # ID of the mandate used to make this payment.
        attr_reader :mandate
        # Sort code of the bank account. (e.g., `10-20-30`)
        attr_reader :sort_code
      end

      class Bancontact < Stripe::StripeObject
        # Bank code of bank associated with the bank account.
        attr_reader :bank_code
        # Name of the bank associated with the bank account.
        attr_reader :bank_name
        # Bank Identifier Code of the bank associated with the bank account.
        attr_reader :bic
        # The ID of the SEPA Direct Debit PaymentMethod which was generated by this Charge.
        attr_reader :generated_sepa_debit
        # The mandate for the SEPA Direct Debit PaymentMethod which was generated by this Charge.
        attr_reader :generated_sepa_debit_mandate
        # Last four characters of the IBAN.
        attr_reader :iban_last4
        # Preferred language of the Bancontact authorization page that the customer is redirected to.
        # Can be one of `en`, `de`, `fr`, or `nl`
        attr_reader :preferred_language
        # Owner's verified full name. Values are verified or provided by Bancontact directly
        # (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        attr_reader :verified_name
      end

      class Billie < Stripe::StripeObject; end

      class BillingDetails < Stripe::StripeObject
        class Address < Stripe::StripeObject
          # City, district, suburb, town, or village.
          attr_reader :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_reader :country
          # Address line 1 (e.g., street, PO Box, or company name).
          attr_reader :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          attr_reader :line2
          # ZIP or postal code.
          attr_reader :postal_code
          # State, county, province, or region.
          attr_reader :state
        end
        # A representation of a physical address.
        attr_reader :address
        # The billing email associated with the method of payment.
        attr_reader :email
        # The billing name associated with the method of payment.
        attr_reader :name
        # The billing phone number associated with the method of payment.
        attr_reader :phone
      end

      class Blik < Stripe::StripeObject
        # A unique and immutable identifier assigned by BLIK to every buyer.
        attr_reader :buyer_id
      end

      class Boleto < Stripe::StripeObject
        # The tax ID of the customer (CPF for individuals consumers or CNPJ for businesses consumers)
        attr_reader :tax_id
      end

      class Card < Stripe::StripeObject
        class Checks < Stripe::StripeObject
          # Attribute for field address_line1_check
          attr_reader :address_line1_check
          # Attribute for field address_postal_code_check
          attr_reader :address_postal_code_check
          # Attribute for field cvc_check
          attr_reader :cvc_check
        end

        class NetworkToken < Stripe::StripeObject
          # Attribute for field used
          attr_reader :used
        end

        class ThreeDSecure < Stripe::StripeObject
          # Attribute for field authentication_flow
          attr_reader :authentication_flow
          # Attribute for field result
          attr_reader :result
          # Attribute for field result_reason
          attr_reader :result_reason
          # Attribute for field version
          attr_reader :version
        end
        # Card brand. Can be `amex`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
        attr_reader :brand
        # When using manual capture, a future timestamp at which the charge will be automatically refunded if uncaptured.
        attr_reader :capture_before
        # Check results by Card networks on Card address and CVC at time of payment.
        attr_reader :checks
        # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
        attr_reader :country
        # Two-digit number representing the card's expiration month.
        attr_reader :exp_month
        # Four-digit number representing the card's expiration year.
        attr_reader :exp_year
        # Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.
        #
        # *As of May 1, 2021, card fingerprint in India for Connect changed to allow two fingerprints for the same card---one for India and one for the rest of the world.*
        attr_reader :fingerprint
        # Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
        attr_reader :funding
        # The last four digits of the card.
        attr_reader :last4
        # True if this payment was marked as MOTO and out of scope for SCA.
        attr_reader :moto
        # Identifies which network this charge was processed on. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `interac`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
        attr_reader :network
        # If this card has network token credentials, this contains the details of the network token credentials.
        attr_reader :network_token
        # This is used by the financial networks to identify a transaction. Visa calls this the Transaction ID, Mastercard calls this the Trace ID, and American Express calls this the Acquirer Reference Data. This value will be present if it is returned by the financial network in the authorization response, and null otherwise.
        attr_reader :network_transaction_id
        # Populated if this transaction used 3D Secure authentication.
        attr_reader :three_d_secure
      end

      class CardPresent < Stripe::StripeObject
        class Offline < Stripe::StripeObject
          # Time at which the payment was collected while offline
          attr_reader :stored_at
          # The method used to process this payment method offline. Only deferred is allowed.
          attr_reader :type
        end

        class Receipt < Stripe::StripeObject
          # The type of account being debited or credited
          attr_reader :account_type
          # EMV tag 9F26, cryptogram generated by the integrated circuit chip.
          attr_reader :application_cryptogram
          # Mnenomic of the Application Identifier.
          attr_reader :application_preferred_name
          # Identifier for this transaction.
          attr_reader :authorization_code
          # EMV tag 8A. A code returned by the card issuer.
          attr_reader :authorization_response_code
          # Describes the method used by the cardholder to verify ownership of the card. One of the following: `approval`, `failure`, `none`, `offline_pin`, `offline_pin_and_signature`, `online_pin`, or `signature`.
          attr_reader :cardholder_verification_method
          # EMV tag 84. Similar to the application identifier stored on the integrated circuit chip.
          attr_reader :dedicated_file_name
          # The outcome of a series of EMV functions performed by the card reader.
          attr_reader :terminal_verification_results
          # An indication of various EMV functions performed during the transaction.
          attr_reader :transaction_status_information
        end

        class Wallet < Stripe::StripeObject
          # The type of mobile wallet, one of `apple_pay`, `google_pay`, `samsung_pay`, or `unknown`.
          attr_reader :type
        end
        # The authorized amount
        attr_reader :amount_authorized
        # Card brand. Can be `amex`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
        attr_reader :brand
        # The [product code](https://stripe.com/docs/card-product-codes) that identifies the specific program or product associated with a card.
        attr_reader :brand_product
        # When using manual capture, a future timestamp after which the charge will be automatically refunded if uncaptured.
        attr_reader :capture_before
        # The cardholder name as read from the card, in [ISO 7813](https://en.wikipedia.org/wiki/ISO/IEC_7813) format. May include alphanumeric characters, special characters and first/last name separator (`/`). In some cases, the cardholder name may not be available depending on how the issuer has configured the card. Cardholder name is typically not available on swipe or contactless payments, such as those made with Apple Pay and Google Pay.
        attr_reader :cardholder_name
        # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
        attr_reader :country
        # A high-level description of the type of cards issued in this range. (For internal use only and not typically available in standard API requests.)
        attr_reader :description
        # Authorization response cryptogram.
        attr_reader :emv_auth_data
        # Two-digit number representing the card's expiration month.
        attr_reader :exp_month
        # Four-digit number representing the card's expiration year.
        attr_reader :exp_year
        # Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.
        #
        # *As of May 1, 2021, card fingerprint in India for Connect changed to allow two fingerprints for the same card---one for India and one for the rest of the world.*
        attr_reader :fingerprint
        # Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
        attr_reader :funding
        # ID of a card PaymentMethod generated from the card_present PaymentMethod that may be attached to a Customer for future transactions. Only present if it was possible to generate a card PaymentMethod.
        attr_reader :generated_card
        # Issuer identification number of the card. (For internal use only and not typically available in standard API requests.)
        attr_reader :iin
        # Whether this [PaymentIntent](https://stripe.com/docs/api/payment_intents) is eligible for incremental authorizations. Request support using [request_incremental_authorization_support](https://stripe.com/docs/api/payment_intents/create#create_payment_intent-payment_method_options-card_present-request_incremental_authorization_support).
        attr_reader :incremental_authorization_supported
        # The name of the card's issuing bank. (For internal use only and not typically available in standard API requests.)
        attr_reader :issuer
        # The last four digits of the card.
        attr_reader :last4
        # Identifies which network this charge was processed on. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `interac`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
        attr_reader :network
        # This is used by the financial networks to identify a transaction. Visa calls this the Transaction ID, Mastercard calls this the Trace ID, and American Express calls this the Acquirer Reference Data. This value will be present if it is returned by the financial network in the authorization response, and null otherwise.
        attr_reader :network_transaction_id
        # Details about payments collected offline.
        attr_reader :offline
        # Defines whether the authorized amount can be over-captured or not
        attr_reader :overcapture_supported
        # EMV tag 5F2D. Preferred languages specified by the integrated circuit chip.
        attr_reader :preferred_locales
        # How card details were read in this transaction.
        attr_reader :read_method
        # A collection of fields required to be displayed on receipts. Only required for EMV transactions.
        attr_reader :receipt
        # Attribute for field wallet
        attr_reader :wallet
      end

      class Cashapp < Stripe::StripeObject
        # A unique and immutable identifier assigned by Cash App to every buyer.
        attr_reader :buyer_id
        # A public identifier for buyers using Cash App.
        attr_reader :cashtag
      end

      class Custom < Stripe::StripeObject
        # Display name for the custom (user-defined) payment method type used to make this payment.
        attr_reader :display_name
        # The custom payment method type associated with this payment.
        attr_reader :type
      end

      class CustomerBalance < Stripe::StripeObject; end

      class Eps < Stripe::StripeObject
        # The customer's bank. Should be one of `arzte_und_apotheker_bank`, `austrian_anadi_bank_ag`, `bank_austria`, `bankhaus_carl_spangler`, `bankhaus_schelhammer_und_schattera_ag`, `bawag_psk_ag`, `bks_bank_ag`, `brull_kallmus_bank_ag`, `btv_vier_lander_bank`, `capital_bank_grawe_gruppe_ag`, `deutsche_bank_ag`, `dolomitenbank`, `easybank_ag`, `erste_bank_und_sparkassen`, `hypo_alpeadriabank_international_ag`, `hypo_noe_lb_fur_niederosterreich_u_wien`, `hypo_oberosterreich_salzburg_steiermark`, `hypo_tirol_bank_ag`, `hypo_vorarlberg_bank_ag`, `hypo_bank_burgenland_aktiengesellschaft`, `marchfelder_bank`, `oberbank_ag`, `raiffeisen_bankengruppe_osterreich`, `schoellerbank_ag`, `sparda_bank_wien`, `volksbank_gruppe`, `volkskreditbank_ag`, or `vr_bank_braunau`.
        attr_reader :bank
        # Owner's verified full name. Values are verified or provided by EPS directly
        # (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        # EPS rarely provides this information so the attribute is usually empty.
        attr_reader :verified_name
      end

      class Fpx < Stripe::StripeObject
        # Account holder type, if provided. Can be one of `individual` or `company`.
        attr_reader :account_holder_type
        # The customer's bank. Can be one of `affin_bank`, `agrobank`, `alliance_bank`, `ambank`, `bank_islam`, `bank_muamalat`, `bank_rakyat`, `bsn`, `cimb`, `hong_leong_bank`, `hsbc`, `kfh`, `maybank2u`, `ocbc`, `public_bank`, `rhb`, `standard_chartered`, `uob`, `deutsche_bank`, `maybank2e`, `pb_enterprise`, or `bank_of_china`.
        attr_reader :bank
        # Unique transaction id generated by FPX for every request from the merchant
        attr_reader :transaction_id
      end

      class Giropay < Stripe::StripeObject
        # Bank code of bank associated with the bank account.
        attr_reader :bank_code
        # Name of the bank associated with the bank account.
        attr_reader :bank_name
        # Bank Identifier Code of the bank associated with the bank account.
        attr_reader :bic
        # Owner's verified full name. Values are verified or provided by Giropay directly
        # (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        # Giropay rarely provides this information so the attribute is usually empty.
        attr_reader :verified_name
      end

      class Gopay < Stripe::StripeObject; end

      class Grabpay < Stripe::StripeObject
        # Unique transaction id generated by GrabPay
        attr_reader :transaction_id
      end

      class IdBankTransfer < Stripe::StripeObject
        # Account number of the bank account to transfer funds to.
        attr_reader :account_number
        # Bank where the account is located.
        attr_reader :bank
        # Local bank code of the bank.
        attr_reader :bank_code
        # Name of the bank associated with the bank account.
        attr_reader :bank_name
        # Merchant name and billing details name, for the customer to check for the correct merchant when performing the bank transfer.
        attr_reader :display_name
      end

      class Ideal < Stripe::StripeObject
        # The customer's bank. Can be one of `abn_amro`, `asn_bank`, `bunq`, `handelsbanken`, `ing`, `knab`, `moneyou`, `n26`, `nn`, `rabobank`, `regiobank`, `revolut`, `sns_bank`, `triodos_bank`, `van_lanschot`, or `yoursafe`.
        attr_reader :bank
        # The Bank Identifier Code of the customer's bank.
        attr_reader :bic
        # The ID of the SEPA Direct Debit PaymentMethod which was generated by this Charge.
        attr_reader :generated_sepa_debit
        # The mandate for the SEPA Direct Debit PaymentMethod which was generated by this Charge.
        attr_reader :generated_sepa_debit_mandate
        # Last four characters of the IBAN.
        attr_reader :iban_last4
        # Owner's verified full name. Values are verified or provided by iDEAL directly
        # (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        attr_reader :verified_name
      end

      class InteracPresent < Stripe::StripeObject
        class Receipt < Stripe::StripeObject
          # The type of account being debited or credited
          attr_reader :account_type
          # EMV tag 9F26, cryptogram generated by the integrated circuit chip.
          attr_reader :application_cryptogram
          # Mnenomic of the Application Identifier.
          attr_reader :application_preferred_name
          # Identifier for this transaction.
          attr_reader :authorization_code
          # EMV tag 8A. A code returned by the card issuer.
          attr_reader :authorization_response_code
          # Describes the method used by the cardholder to verify ownership of the card. One of the following: `approval`, `failure`, `none`, `offline_pin`, `offline_pin_and_signature`, `online_pin`, or `signature`.
          attr_reader :cardholder_verification_method
          # EMV tag 84. Similar to the application identifier stored on the integrated circuit chip.
          attr_reader :dedicated_file_name
          # The outcome of a series of EMV functions performed by the card reader.
          attr_reader :terminal_verification_results
          # An indication of various EMV functions performed during the transaction.
          attr_reader :transaction_status_information
        end
        # Card brand. Can be `interac`, `mastercard` or `visa`.
        attr_reader :brand
        # The cardholder name as read from the card, in [ISO 7813](https://en.wikipedia.org/wiki/ISO/IEC_7813) format. May include alphanumeric characters, special characters and first/last name separator (`/`). In some cases, the cardholder name may not be available depending on how the issuer has configured the card. Cardholder name is typically not available on swipe or contactless payments, such as those made with Apple Pay and Google Pay.
        attr_reader :cardholder_name
        # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
        attr_reader :country
        # A high-level description of the type of cards issued in this range. (For internal use only and not typically available in standard API requests.)
        attr_reader :description
        # Authorization response cryptogram.
        attr_reader :emv_auth_data
        # Two-digit number representing the card's expiration month.
        attr_reader :exp_month
        # Four-digit number representing the card's expiration year.
        attr_reader :exp_year
        # Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.
        #
        # *As of May 1, 2021, card fingerprint in India for Connect changed to allow two fingerprints for the same card---one for India and one for the rest of the world.*
        attr_reader :fingerprint
        # Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
        attr_reader :funding
        # ID of a card PaymentMethod generated from the card_present PaymentMethod that may be attached to a Customer for future transactions. Only present if it was possible to generate a card PaymentMethod.
        attr_reader :generated_card
        # Issuer identification number of the card. (For internal use only and not typically available in standard API requests.)
        attr_reader :iin
        # The name of the card's issuing bank. (For internal use only and not typically available in standard API requests.)
        attr_reader :issuer
        # The last four digits of the card.
        attr_reader :last4
        # Identifies which network this charge was processed on. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `interac`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
        attr_reader :network
        # This is used by the financial networks to identify a transaction. Visa calls this the Transaction ID, Mastercard calls this the Trace ID, and American Express calls this the Acquirer Reference Data. This value will be present if it is returned by the financial network in the authorization response, and null otherwise.
        attr_reader :network_transaction_id
        # EMV tag 5F2D. Preferred languages specified by the integrated circuit chip.
        attr_reader :preferred_locales
        # How card details were read in this transaction.
        attr_reader :read_method
        # A collection of fields required to be displayed on receipts. Only required for EMV transactions.
        attr_reader :receipt
      end

      class KakaoPay < Stripe::StripeObject
        # A unique identifier for the buyer as determined by the local payment processor.
        attr_reader :buyer_id
      end

      class Klarna < Stripe::StripeObject
        class PayerDetails < Stripe::StripeObject
          class Address < Stripe::StripeObject
            # The payer address country
            attr_reader :country
          end
          # The payer's address
          attr_reader :address
        end
        # The payer details for this transaction.
        attr_reader :payer_details
        # The Klarna payment method used for this transaction.
        # Can be one of `pay_later`, `pay_now`, `pay_with_financing`, or `pay_in_installments`
        attr_reader :payment_method_category
        # Preferred language of the Klarna authorization page that the customer is redirected to.
        # Can be one of `de-AT`, `en-AT`, `nl-BE`, `fr-BE`, `en-BE`, `de-DE`, `en-DE`, `da-DK`, `en-DK`, `es-ES`, `en-ES`, `fi-FI`, `sv-FI`, `en-FI`, `en-GB`, `en-IE`, `it-IT`, `en-IT`, `nl-NL`, `en-NL`, `nb-NO`, `en-NO`, `sv-SE`, `en-SE`, `en-US`, `es-US`, `fr-FR`, `en-FR`, `cs-CZ`, `en-CZ`, `ro-RO`, `en-RO`, `el-GR`, `en-GR`, `en-AU`, `en-NZ`, `en-CA`, `fr-CA`, `pl-PL`, `en-PL`, `pt-PT`, `en-PT`, `de-CH`, `fr-CH`, `it-CH`, or `en-CH`
        attr_reader :preferred_locale
      end

      class Konbini < Stripe::StripeObject
        class Store < Stripe::StripeObject
          # The name of the convenience store chain where the payment was completed.
          attr_reader :chain
        end
        # If the payment succeeded, this contains the details of the convenience store where the payment was completed.
        attr_reader :store
      end

      class KrCard < Stripe::StripeObject
        # The local credit or debit card brand.
        attr_reader :brand
        # A unique identifier for the buyer as determined by the local payment processor.
        attr_reader :buyer_id
        # The last four digits of the card. This may not be present for American Express cards.
        attr_reader :last4
      end

      class Link < Stripe::StripeObject
        # Two-letter ISO code representing the funding source country beneath the Link payment.
        # You could use this attribute to get a sense of international fees.
        attr_reader :country
      end

      class MbWay < Stripe::StripeObject; end

      class Mobilepay < Stripe::StripeObject
        class Card < Stripe::StripeObject
          # Brand of the card used in the transaction
          attr_reader :brand
          # Two-letter ISO code representing the country of the card
          attr_reader :country
          # Two digit number representing the card's expiration month
          attr_reader :exp_month
          # Two digit number representing the card's expiration year
          attr_reader :exp_year
          # The last 4 digits of the card
          attr_reader :last4
        end
        # Internal card details
        attr_reader :card
      end

      class Multibanco < Stripe::StripeObject
        # Entity number associated with this Multibanco payment.
        attr_reader :entity
        # Reference number associated with this Multibanco payment.
        attr_reader :reference
      end

      class NaverPay < Stripe::StripeObject
        # A unique identifier for the buyer as determined by the local payment processor.
        attr_reader :buyer_id
      end

      class NzBankAccount < Stripe::StripeObject
        # The name on the bank account. Only present if the account holder name is different from the name of the authorized signatory collected in the PaymentMethod’s billing details.
        attr_reader :account_holder_name
        # The numeric code for the bank account's bank.
        attr_reader :bank_code
        # The name of the bank.
        attr_reader :bank_name
        # The numeric code for the bank account's bank branch.
        attr_reader :branch_code
        # Last four digits of the bank account number.
        attr_reader :last4
        # The suffix of the bank account number.
        attr_reader :suffix
      end

      class Oxxo < Stripe::StripeObject
        # OXXO reference number
        attr_reader :number
      end

      class P24 < Stripe::StripeObject
        # The customer's bank. Can be one of `ing`, `citi_handlowy`, `tmobile_usbugi_bankowe`, `plus_bank`, `etransfer_pocztowy24`, `banki_spbdzielcze`, `bank_nowy_bfg_sa`, `getin_bank`, `velobank`, `blik`, `noble_pay`, `ideabank`, `envelobank`, `santander_przelew24`, `nest_przelew`, `mbank_mtransfer`, `inteligo`, `pbac_z_ipko`, `bnp_paribas`, `credit_agricole`, `toyota_bank`, `bank_pekao_sa`, `volkswagen_bank`, `bank_millennium`, `alior_bank`, or `boz`.
        attr_reader :bank
        # Unique reference for this Przelewy24 payment.
        attr_reader :reference
        # Owner's verified full name. Values are verified or provided by Przelewy24 directly
        # (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        # Przelewy24 rarely provides this information so the attribute is usually empty.
        attr_reader :verified_name
      end

      class PayByBank < Stripe::StripeObject; end

      class Payco < Stripe::StripeObject
        # A unique identifier for the buyer as determined by the local payment processor.
        attr_reader :buyer_id
      end

      class Paynow < Stripe::StripeObject
        # Reference number associated with this PayNow payment
        attr_reader :reference
      end

      class Paypal < Stripe::StripeObject
        class SellerProtection < Stripe::StripeObject
          # An array of conditions that are covered for the transaction, if applicable.
          attr_reader :dispute_categories
          # Indicates whether the transaction is eligible for PayPal's seller protection.
          attr_reader :status
        end

        class Shipping < Stripe::StripeObject
          # City, district, suburb, town, or village.
          attr_reader :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_reader :country
          # Address line 1 (e.g., street, PO Box, or company name).
          attr_reader :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          attr_reader :line2
          # ZIP or postal code.
          attr_reader :postal_code
          # State, county, province, or region.
          attr_reader :state
        end

        class VerifiedAddress < Stripe::StripeObject
          # City, district, suburb, town, or village.
          attr_reader :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_reader :country
          # Address line 1 (e.g., street, PO Box, or company name).
          attr_reader :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          attr_reader :line2
          # ZIP or postal code.
          attr_reader :postal_code
          # State, county, province, or region.
          attr_reader :state
        end
        # Two-letter ISO code representing the buyer's country. Values are provided by PayPal directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        attr_reader :country
        # Owner's email. Values are provided by PayPal directly
        # (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        attr_reader :payer_email
        # PayPal account PayerID. This identifier uniquely identifies the PayPal customer.
        attr_reader :payer_id
        # Owner's full name. Values provided by PayPal directly
        # (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        attr_reader :payer_name
        # The level of protection offered as defined by PayPal Seller Protection for Merchants, for this transaction.
        attr_reader :seller_protection
        # The shipping address for the customer, as supplied by the merchant at the point of payment
        # execution. This shipping address will not be updated if the merchant updates the shipping
        # address on the PaymentIntent after the PaymentIntent was successfully confirmed.
        attr_reader :shipping
        # A unique ID generated by PayPal for this transaction.
        attr_reader :transaction_id
        # The shipping address for the customer, as supplied by the merchant at the point of payment
        # execution. This shipping address will not be updated if the merchant updates the shipping
        # address on the PaymentIntent after the PaymentIntent was successfully confirmed.
        attr_reader :verified_address
        # Owner's verified email. Values are verified or provided by PayPal directly
        # (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        attr_reader :verified_email
        # Owner's verified full name. Values are verified or provided by PayPal directly
        # (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        attr_reader :verified_name
      end

      class Payto < Stripe::StripeObject
        # Bank-State-Branch number of the bank account.
        attr_reader :bsb_number
        # Last four digits of the bank account number.
        attr_reader :last4
        # ID of the mandate used to make this payment.
        attr_reader :mandate
        # The PayID alias for the bank account.
        attr_reader :pay_id
      end

      class Pix < Stripe::StripeObject
        # Unique transaction id generated by BCB
        attr_reader :bank_transaction_id
      end

      class Promptpay < Stripe::StripeObject
        # Bill reference generated by PromptPay
        attr_reader :reference
      end

      class Qris < Stripe::StripeObject; end
      class Rechnung < Stripe::StripeObject; end

      class RevolutPay < Stripe::StripeObject
        class Funding < Stripe::StripeObject
          class Card < Stripe::StripeObject
            # Card brand. Can be `amex`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
            attr_reader :brand
            # The [product code](https://stripe.com/docs/card-product-codes) that identifies the specific program or product associated with a card. (For internal use only and not typically available in standard API requests.)
            attr_reader :brand_product
            # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
            attr_reader :country
            # Two-digit number representing the card's expiration month.
            attr_reader :exp_month
            # Four-digit number representing the card's expiration year.
            attr_reader :exp_year
            # Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
            attr_reader :funding
            # The last four digits of the card.
            attr_reader :last4
          end
          # Attribute for field card
          attr_reader :card
          # funding type of the underlying payment method.
          attr_reader :type
        end
        # Attribute for field funding
        attr_reader :funding
      end

      class SamsungPay < Stripe::StripeObject
        # A unique identifier for the buyer as determined by the local payment processor.
        attr_reader :buyer_id
      end

      class Satispay < Stripe::StripeObject; end

      class SepaCreditTransfer < Stripe::StripeObject
        # Name of the bank associated with the bank account.
        attr_reader :bank_name
        # Bank Identifier Code of the bank associated with the bank account.
        attr_reader :bic
        # IBAN of the bank account to transfer funds to.
        attr_reader :iban
      end

      class SepaDebit < Stripe::StripeObject
        # Bank code of bank associated with the bank account.
        attr_reader :bank_code
        # Branch code of bank associated with the bank account.
        attr_reader :branch_code
        # Two-letter ISO code representing the country the bank account is located in.
        attr_reader :country
        # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
        attr_reader :fingerprint
        # Last four characters of the IBAN.
        attr_reader :last4
        # Find the ID of the mandate used for this payment under the [payment_method_details.sepa_debit.mandate](https://stripe.com/docs/api/charges/object#charge_object-payment_method_details-sepa_debit-mandate) property on the Charge. Use this mandate ID to [retrieve the Mandate](https://stripe.com/docs/api/mandates/retrieve).
        attr_reader :mandate
      end

      class Shopeepay < Stripe::StripeObject; end

      class Sofort < Stripe::StripeObject
        # Bank code of bank associated with the bank account.
        attr_reader :bank_code
        # Name of the bank associated with the bank account.
        attr_reader :bank_name
        # Bank Identifier Code of the bank associated with the bank account.
        attr_reader :bic
        # Two-letter ISO code representing the country the bank account is located in.
        attr_reader :country
        # The ID of the SEPA Direct Debit PaymentMethod which was generated by this Charge.
        attr_reader :generated_sepa_debit
        # The mandate for the SEPA Direct Debit PaymentMethod which was generated by this Charge.
        attr_reader :generated_sepa_debit_mandate
        # Last four characters of the IBAN.
        attr_reader :iban_last4
        # Preferred language of the SOFORT authorization page that the customer is redirected to.
        # Can be one of `de`, `en`, `es`, `fr`, `it`, `nl`, or `pl`
        attr_reader :preferred_language
        # Owner's verified full name. Values are verified or provided by SOFORT directly
        # (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        attr_reader :verified_name
      end

      class StripeAccount < Stripe::StripeObject; end

      class StripeBalance < Stripe::StripeObject
        # The connected account ID whose Stripe balance to use as the source of payment
        attr_reader :account
        # The [source_type](https://docs.stripe.com/api/balance/balance_object#balance_object-available-source_types) of the balance
        attr_reader :source_type
      end

      class Swish < Stripe::StripeObject
        # Uniquely identifies the payer's Swish account. You can use this attribute to check whether two Swish transactions were paid for by the same payer
        attr_reader :fingerprint
        # Payer bank reference number for the payment
        attr_reader :payment_reference
        # The last four digits of the Swish account phone number
        attr_reader :verified_phone_last4
      end

      class Twint < Stripe::StripeObject; end

      class UsBankAccount < Stripe::StripeObject
        # Account holder type: individual or company.
        attr_reader :account_holder_type
        # Account type: checkings or savings. Defaults to checking if omitted.
        attr_reader :account_type
        # Name of the bank associated with the bank account.
        attr_reader :bank_name
        # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
        attr_reader :fingerprint
        # Last four digits of the bank account number.
        attr_reader :last4
        # ID of the mandate used to make this payment.
        attr_reader :mandate
        # Reference number to locate ACH payments with customer's bank.
        attr_reader :payment_reference
        # Routing number of the bank account.
        attr_reader :routing_number
      end

      class Wechat < Stripe::StripeObject; end

      class WechatPay < Stripe::StripeObject
        # Uniquely identifies this particular WeChat Pay account. You can use this attribute to check whether two WeChat accounts are the same.
        attr_reader :fingerprint
        # Transaction ID of this particular WeChat Pay transaction.
        attr_reader :transaction_id
      end

      class Zip < Stripe::StripeObject; end
      # Attribute for field ach_credit_transfer
      attr_reader :ach_credit_transfer
      # Attribute for field ach_debit
      attr_reader :ach_debit
      # Attribute for field acss_debit
      attr_reader :acss_debit
      # Attribute for field affirm
      attr_reader :affirm
      # Attribute for field afterpay_clearpay
      attr_reader :afterpay_clearpay
      # Attribute for field alipay
      attr_reader :alipay
      # Attribute for field alma
      attr_reader :alma
      # Attribute for field amazon_pay
      attr_reader :amazon_pay
      # Attribute for field au_becs_debit
      attr_reader :au_becs_debit
      # Attribute for field bacs_debit
      attr_reader :bacs_debit
      # Attribute for field bancontact
      attr_reader :bancontact
      # Attribute for field billie
      attr_reader :billie
      # The billing details associated with the method of payment.
      attr_reader :billing_details
      # Attribute for field blik
      attr_reader :blik
      # Attribute for field boleto
      attr_reader :boleto
      # Details of the card used for this payment attempt.
      attr_reader :card
      # Attribute for field card_present
      attr_reader :card_present
      # Attribute for field cashapp
      attr_reader :cashapp
      # Custom Payment Methods represent Payment Method types not modeled directly in
      # the Stripe API. This resource consists of details about the custom payment method
      # used for this payment attempt.
      attr_reader :custom
      # Attribute for field customer_balance
      attr_reader :customer_balance
      # Attribute for field eps
      attr_reader :eps
      # Attribute for field fpx
      attr_reader :fpx
      # Attribute for field giropay
      attr_reader :giropay
      # Attribute for field gopay
      attr_reader :gopay
      # Attribute for field grabpay
      attr_reader :grabpay
      # Attribute for field id_bank_transfer
      attr_reader :id_bank_transfer
      # Attribute for field ideal
      attr_reader :ideal
      # Attribute for field interac_present
      attr_reader :interac_present
      # Attribute for field kakao_pay
      attr_reader :kakao_pay
      # Attribute for field klarna
      attr_reader :klarna
      # Attribute for field konbini
      attr_reader :konbini
      # Attribute for field kr_card
      attr_reader :kr_card
      # Attribute for field link
      attr_reader :link
      # Attribute for field mb_way
      attr_reader :mb_way
      # Attribute for field mobilepay
      attr_reader :mobilepay
      # Attribute for field multibanco
      attr_reader :multibanco
      # Attribute for field naver_pay
      attr_reader :naver_pay
      # Attribute for field nz_bank_account
      attr_reader :nz_bank_account
      # Attribute for field oxxo
      attr_reader :oxxo
      # Attribute for field p24
      attr_reader :p24
      # Attribute for field pay_by_bank
      attr_reader :pay_by_bank
      # Attribute for field payco
      attr_reader :payco
      # ID of the Stripe PaymentMethod used to make this payment.
      attr_reader :payment_method
      # Attribute for field paynow
      attr_reader :paynow
      # Attribute for field paypal
      attr_reader :paypal
      # Attribute for field payto
      attr_reader :payto
      # Attribute for field pix
      attr_reader :pix
      # Attribute for field promptpay
      attr_reader :promptpay
      # Attribute for field qris
      attr_reader :qris
      # Attribute for field rechnung
      attr_reader :rechnung
      # Attribute for field revolut_pay
      attr_reader :revolut_pay
      # Attribute for field samsung_pay
      attr_reader :samsung_pay
      # Attribute for field satispay
      attr_reader :satispay
      # Attribute for field sepa_credit_transfer
      attr_reader :sepa_credit_transfer
      # Attribute for field sepa_debit
      attr_reader :sepa_debit
      # Attribute for field shopeepay
      attr_reader :shopeepay
      # Attribute for field sofort
      attr_reader :sofort
      # Attribute for field stripe_account
      attr_reader :stripe_account
      # Attribute for field stripe_balance
      attr_reader :stripe_balance
      # Attribute for field swish
      attr_reader :swish
      # Attribute for field twint
      attr_reader :twint
      # The type of transaction-specific details of the payment method used in the payment. See [PaymentMethod.type](https://stripe.com/docs/api/payment_methods/object#payment_method_object-type) for the full list of possible types.
      # An additional hash is included on `payment_method_details` with a name matching this value.
      # It contains information specific to the payment method.
      attr_reader :type
      # Attribute for field us_bank_account
      attr_reader :us_bank_account
      # Attribute for field wechat
      attr_reader :wechat
      # Attribute for field wechat_pay
      attr_reader :wechat_pay
      # Attribute for field zip
      attr_reader :zip
    end

    class ShippingDetails < Stripe::StripeObject
      class Address < Stripe::StripeObject
        # City, district, suburb, town, or village.
        attr_reader :city
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        attr_reader :country
        # Address line 1 (e.g., street, PO Box, or company name).
        attr_reader :line1
        # Address line 2 (e.g., apartment, suite, unit, or building).
        attr_reader :line2
        # ZIP or postal code.
        attr_reader :postal_code
        # State, county, province, or region.
        attr_reader :state
      end
      # A representation of a physical address.
      attr_reader :address
      # The shipping recipient's name.
      attr_reader :name
      # The shipping recipient's phone number.
      attr_reader :phone
    end

    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class ReportPaymentAttemptParams < Stripe::RequestParams
      class Failed < Stripe::RequestParams
        # When the reported payment failed. Measured in seconds since the Unix epoch.
        attr_accessor :failed_at

        def initialize(failed_at: nil)
          @failed_at = failed_at
        end
      end

      class Guaranteed < Stripe::RequestParams
        # When the reported payment was guaranteed. Measured in seconds since the Unix epoch.
        attr_accessor :guaranteed_at

        def initialize(guaranteed_at: nil)
          @guaranteed_at = guaranteed_at
        end
      end

      class PaymentMethodDetails < Stripe::RequestParams
        class BillingDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            attr_accessor :line2
            # ZIP or postal code.
            attr_accessor :postal_code
            # State, county, province, or region.
            attr_accessor :state

            def initialize(
              city: nil,
              country: nil,
              line1: nil,
              line2: nil,
              postal_code: nil,
              state: nil
            )
              @city = city
              @country = country
              @line1 = line1
              @line2 = line2
              @postal_code = postal_code
              @state = state
            end
          end
          # The billing address associated with the method of payment.
          attr_accessor :address
          # The billing email associated with the method of payment.
          attr_accessor :email
          # The billing name associated with the method of payment.
          attr_accessor :name
          # The billing phone number associated with the method of payment.
          attr_accessor :phone

          def initialize(address: nil, email: nil, name: nil, phone: nil)
            @address = address
            @email = email
            @name = name
            @phone = phone
          end
        end

        class Custom < Stripe::RequestParams
          # Display name for the custom (user-defined) payment method type used to make this payment.
          attr_accessor :display_name
          # The custom payment method type associated with this payment.
          attr_accessor :type

          def initialize(display_name: nil, type: nil)
            @display_name = display_name
            @type = type
          end
        end
        # The billing details associated with the method of payment.
        attr_accessor :billing_details
        # Information about the custom (user-defined) payment method used to make this payment.
        attr_accessor :custom
        # ID of the Stripe Payment Method used to make this payment.
        attr_accessor :payment_method
        # The type of the payment method details. An additional hash is included on the payment_method_details with a name matching this value. It contains additional information specific to the type.
        attr_accessor :type

        def initialize(billing_details: nil, custom: nil, payment_method: nil, type: nil)
          @billing_details = billing_details
          @custom = custom
          @payment_method = payment_method
          @type = type
        end
      end

      class ShippingDetails < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          attr_accessor :line2
          # ZIP or postal code.
          attr_accessor :postal_code
          # State, county, province, or region.
          attr_accessor :state

          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil
          )
            @city = city
            @country = country
            @line1 = line1
            @line2 = line2
            @postal_code = postal_code
            @state = state
          end
        end
        # The physical shipping address.
        attr_accessor :address
        # The shipping recipient's name.
        attr_accessor :name
        # The shipping recipient's phone number.
        attr_accessor :phone

        def initialize(address: nil, name: nil, phone: nil)
          @address = address
          @name = name
          @phone = phone
        end
      end
      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Information about the payment attempt failure.
      attr_accessor :failed
      # Information about the payment attempt guarantee.
      attr_accessor :guaranteed
      # When the reported payment was initiated. Measured in seconds since the Unix epoch.
      attr_accessor :initiated_at
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # The outcome of the reported payment.
      attr_accessor :outcome
      # Information about the Payment Method debited for this payment.
      attr_accessor :payment_method_details
      # Shipping information for this payment.
      attr_accessor :shipping_details

      def initialize(
        description: nil,
        expand: nil,
        failed: nil,
        guaranteed: nil,
        initiated_at: nil,
        metadata: nil,
        outcome: nil,
        payment_method_details: nil,
        shipping_details: nil
      )
        @description = description
        @expand = expand
        @failed = failed
        @guaranteed = guaranteed
        @initiated_at = initiated_at
        @metadata = metadata
        @outcome = outcome
        @payment_method_details = payment_method_details
        @shipping_details = shipping_details
      end
    end

    class ReportPaymentAttemptCanceledParams < Stripe::RequestParams
      # When the reported payment was canceled. Measured in seconds since the Unix epoch.
      attr_accessor :canceled_at
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Attribute for param field metadata
      attr_accessor :metadata

      def initialize(canceled_at: nil, expand: nil, metadata: nil)
        @canceled_at = canceled_at
        @expand = expand
        @metadata = metadata
      end
    end

    class ReportPaymentAttemptFailedParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # When the reported payment failed. Measured in seconds since the Unix epoch.
      attr_accessor :failed_at
      # Attribute for param field metadata
      attr_accessor :metadata

      def initialize(expand: nil, failed_at: nil, metadata: nil)
        @expand = expand
        @failed_at = failed_at
        @metadata = metadata
      end
    end

    class ReportPaymentAttemptGuaranteedParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # When the reported payment was guaranteed. Measured in seconds since the Unix epoch.
      attr_accessor :guaranteed_at
      # Attribute for param field metadata
      attr_accessor :metadata

      def initialize(expand: nil, guaranteed_at: nil, metadata: nil)
        @expand = expand
        @guaranteed_at = guaranteed_at
        @metadata = metadata
      end
    end

    class ReportPaymentParams < Stripe::RequestParams
      class AmountRequested < Stripe::RequestParams
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        attr_accessor :currency
        # A positive integer representing the amount in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) e.g., 100 cents for $1.00 or 100 for ¥100, a zero-decimal currency).
        attr_accessor :value

        def initialize(currency: nil, value: nil)
          @currency = currency
          @value = value
        end
      end

      class CustomerDetails < Stripe::RequestParams
        # The customer who made the payment.
        attr_accessor :customer
        # The customer's phone number.
        attr_accessor :email
        # The customer's name.
        attr_accessor :name
        # The customer's phone number.
        attr_accessor :phone

        def initialize(customer: nil, email: nil, name: nil, phone: nil)
          @customer = customer
          @email = email
          @name = name
          @phone = phone
        end
      end

      class Failed < Stripe::RequestParams
        # When the reported payment failed. Measured in seconds since the Unix epoch.
        attr_accessor :failed_at

        def initialize(failed_at: nil)
          @failed_at = failed_at
        end
      end

      class Guaranteed < Stripe::RequestParams
        # When the reported payment was guaranteed. Measured in seconds since the Unix epoch.
        attr_accessor :guaranteed_at

        def initialize(guaranteed_at: nil)
          @guaranteed_at = guaranteed_at
        end
      end

      class PaymentMethodDetails < Stripe::RequestParams
        class BillingDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            attr_accessor :line2
            # ZIP or postal code.
            attr_accessor :postal_code
            # State, county, province, or region.
            attr_accessor :state

            def initialize(
              city: nil,
              country: nil,
              line1: nil,
              line2: nil,
              postal_code: nil,
              state: nil
            )
              @city = city
              @country = country
              @line1 = line1
              @line2 = line2
              @postal_code = postal_code
              @state = state
            end
          end
          # The billing address associated with the method of payment.
          attr_accessor :address
          # The billing email associated with the method of payment.
          attr_accessor :email
          # The billing name associated with the method of payment.
          attr_accessor :name
          # The billing phone number associated with the method of payment.
          attr_accessor :phone

          def initialize(address: nil, email: nil, name: nil, phone: nil)
            @address = address
            @email = email
            @name = name
            @phone = phone
          end
        end

        class Custom < Stripe::RequestParams
          # Display name for the custom (user-defined) payment method type used to make this payment.
          attr_accessor :display_name
          # The custom payment method type associated with this payment.
          attr_accessor :type

          def initialize(display_name: nil, type: nil)
            @display_name = display_name
            @type = type
          end
        end
        # The billing details associated with the method of payment.
        attr_accessor :billing_details
        # Information about the custom (user-defined) payment method used to make this payment.
        attr_accessor :custom
        # ID of the Stripe Payment Method used to make this payment.
        attr_accessor :payment_method
        # The type of the payment method details. An additional hash is included on the payment_method_details with a name matching this value. It contains additional information specific to the type.
        attr_accessor :type

        def initialize(billing_details: nil, custom: nil, payment_method: nil, type: nil)
          @billing_details = billing_details
          @custom = custom
          @payment_method = payment_method
          @type = type
        end
      end

      class ShippingDetails < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          attr_accessor :line2
          # ZIP or postal code.
          attr_accessor :postal_code
          # State, county, province, or region.
          attr_accessor :state

          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil
          )
            @city = city
            @country = country
            @line1 = line1
            @line2 = line2
            @postal_code = postal_code
            @state = state
          end
        end
        # The physical shipping address.
        attr_accessor :address
        # The shipping recipient's name.
        attr_accessor :name
        # The shipping recipient's phone number.
        attr_accessor :phone

        def initialize(address: nil, name: nil, phone: nil)
          @address = address
          @name = name
          @phone = phone
        end
      end
      # The amount you intend to collect for this payment.
      attr_accessor :amount_requested
      # Customer information for this payment.
      attr_accessor :customer_details
      # Indicates whether the customer was present in your checkout flow during this payment.
      attr_accessor :customer_presence
      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Information about the payment attempt failure.
      attr_accessor :failed
      # Information about the payment attempt guarantee.
      attr_accessor :guaranteed
      # When the reported payment was initiated. Measured in seconds since the Unix epoch.
      attr_accessor :initiated_at
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # The outcome of the reported payment.
      attr_accessor :outcome
      # Information about the Payment Method debited for this payment.
      attr_accessor :payment_method_details
      # An opaque string for manual reconciliation of this payment, for example a check number or a payment processor ID.
      attr_accessor :payment_reference
      # Shipping information for this payment.
      attr_accessor :shipping_details

      def initialize(
        amount_requested: nil,
        customer_details: nil,
        customer_presence: nil,
        description: nil,
        expand: nil,
        failed: nil,
        guaranteed: nil,
        initiated_at: nil,
        metadata: nil,
        outcome: nil,
        payment_method_details: nil,
        payment_reference: nil,
        shipping_details: nil
      )
        @amount_requested = amount_requested
        @customer_details = customer_details
        @customer_presence = customer_presence
        @description = description
        @expand = expand
        @failed = failed
        @guaranteed = guaranteed
        @initiated_at = initiated_at
        @metadata = metadata
        @outcome = outcome
        @payment_method_details = payment_method_details
        @payment_reference = payment_reference
        @shipping_details = shipping_details
      end
    end
    # A representation of an amount of money, consisting of an amount and a currency.
    attr_reader :amount_canceled
    # A representation of an amount of money, consisting of an amount and a currency.
    attr_reader :amount_failed
    # A representation of an amount of money, consisting of an amount and a currency.
    attr_reader :amount_guaranteed
    # A representation of an amount of money, consisting of an amount and a currency.
    attr_reader :amount_requested
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Customer information for this payment.
    attr_reader :customer_details
    # Indicates whether the customer was present in your checkout flow during this payment.
    attr_reader :customer_presence
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_reader :description
    # Unique identifier for the object.
    attr_reader :id
    # ID of the latest Payment Attempt Record attached to this Payment Record.
    attr_reader :latest_payment_attempt_record
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Information about the Payment Method debited for this payment.
    attr_reader :payment_method_details
    # An opaque string for manual reconciliation of this payment, for example a check number or a payment processor ID.
    attr_reader :payment_reference
    # Shipping information for this payment.
    attr_reader :shipping_details

    # Report a new Payment Record. You may report a Payment Record as it is
    #  initialized and later report updates through the other report_* methods, or report Payment
    #  Records in a terminal state directly, through this method.
    def self.report_payment(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: "/v1/payment_records/report_payment",
        params: params,
        opts: opts
      )
    end

    # Report a new payment attempt on the specified Payment Record. A new payment
    #  attempt can only be specified if all other payment attempts are canceled or failed.
    def report_payment_attempt(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_records/%<id>s/report_payment_attempt", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Report a new payment attempt on the specified Payment Record. A new payment
    #  attempt can only be specified if all other payment attempts are canceled or failed.
    def self.report_payment_attempt(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_records/%<id>s/report_payment_attempt", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Report that the most recent payment attempt on the specified Payment Record
    #  was canceled.
    def report_payment_attempt_canceled(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_records/%<id>s/report_payment_attempt_canceled", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Report that the most recent payment attempt on the specified Payment Record
    #  was canceled.
    def self.report_payment_attempt_canceled(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_records/%<id>s/report_payment_attempt_canceled", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Report that the most recent payment attempt on the specified Payment Record
    #  failed or errored.
    def report_payment_attempt_failed(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_records/%<id>s/report_payment_attempt_failed", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Report that the most recent payment attempt on the specified Payment Record
    #  failed or errored.
    def self.report_payment_attempt_failed(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_records/%<id>s/report_payment_attempt_failed", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Report that the most recent payment attempt on the specified Payment Record
    #  was guaranteed.
    def report_payment_attempt_guaranteed(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_records/%<id>s/report_payment_attempt_guaranteed", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Report that the most recent payment attempt on the specified Payment Record
    #  was guaranteed.
    def self.report_payment_attempt_guaranteed(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_records/%<id>s/report_payment_attempt_guaranteed", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
