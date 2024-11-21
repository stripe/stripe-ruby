# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # ConfirmationTokens help transport client side data collected by Stripe JS over
  # to your server for confirming a PaymentIntent or SetupIntent. If the confirmation
  # is successful, values present on the ConfirmationToken are written onto the Intent.
  #
  # To learn more about how to use ConfirmationToken, visit the related guides:
  # - [Finalize payments on the server](https://stripe.com/docs/payments/finalize-payments-on-the-server)
  # - [Build two-step confirmation](https://stripe.com/docs/payments/build-a-two-step-confirmation).
  class ConfirmationToken < APIResource
    OBJECT_NAME = "confirmation_token"
    def self.object_name
      "confirmation_token"
    end

    class MandateData < Stripe::StripeObject
      class CustomerAcceptance < Stripe::StripeObject
        class Online < Stripe::StripeObject
          # The IP address from which the Mandate was accepted by the customer.
          attr_reader :ip_address
          # The user agent of the browser from which the Mandate was accepted by the customer.
          attr_reader :user_agent
        end
        # If this is a Mandate accepted online, this hash contains details about the online acceptance.
        attr_reader :online
        # The type of customer acceptance information included with the Mandate.
        attr_reader :type
      end
      # This hash contains details about the customer acceptance of the Mandate.
      attr_reader :customer_acceptance
    end

    class PaymentMethodOptions < Stripe::StripeObject
      class Card < Stripe::StripeObject
        # The `cvc_update` Token collected from the Payment Element.
        attr_reader :cvc_token
      end
      # This hash contains the card payment method options.
      attr_reader :card
    end

    class PaymentMethodPreview < Stripe::StripeObject
      class AcssDebit < Stripe::StripeObject
        # Name of the bank associated with the bank account.
        attr_reader :bank_name
        # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
        attr_reader :fingerprint
        # Institution number of the bank account.
        attr_reader :institution_number
        # Last four digits of the bank account number.
        attr_reader :last4
        # Transit number of the bank account.
        attr_reader :transit_number
      end

      class Affirm < Stripe::StripeObject; end
      class AfterpayClearpay < Stripe::StripeObject; end
      class Alipay < Stripe::StripeObject; end
      class Alma < Stripe::StripeObject; end
      class AmazonPay < Stripe::StripeObject; end

      class AuBecsDebit < Stripe::StripeObject
        # Six-digit number identifying bank and branch associated with this bank account.
        attr_reader :bsb_number
        # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
        attr_reader :fingerprint
        # Last four digits of the bank account number.
        attr_reader :last4
      end

      class BacsDebit < Stripe::StripeObject
        # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
        attr_reader :fingerprint
        # Last four digits of the bank account number.
        attr_reader :last4
        # Sort code of the bank account. (e.g., `10-20-30`)
        attr_reader :sort_code
      end

      class Bancontact < Stripe::StripeObject; end

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
        # Billing address.
        attr_reader :address
        # Email address.
        attr_reader :email
        # Full name.
        attr_reader :name
        # Billing phone number (including extension).
        attr_reader :phone
      end

      class Blik < Stripe::StripeObject; end

      class Boleto < Stripe::StripeObject
        # Uniquely identifies the customer tax id (CNPJ or CPF)
        attr_reader :tax_id
      end

      class Card < Stripe::StripeObject
        class Checks < Stripe::StripeObject
          # If a address line1 was provided, results of the check, one of `pass`, `fail`, `unavailable`, or `unchecked`.
          attr_reader :address_line1_check
          # If a address postal code was provided, results of the check, one of `pass`, `fail`, `unavailable`, or `unchecked`.
          attr_reader :address_postal_code_check
          # If a CVC was provided, results of the check, one of `pass`, `fail`, `unavailable`, or `unchecked`.
          attr_reader :cvc_check
        end

        class GeneratedFrom < Stripe::StripeObject
          class PaymentMethodDetails < Stripe::StripeObject
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
              # This is used by the financial networks to identify a transaction. Visa calls this the Transaction ID, Mastercard calls this the Trace ID, and American Express calls this the Acquirer Reference Data. The first three digits of the Trace ID is the Financial Network Code, the next 6 digits is the Banknet Reference Number, and the last 4 digits represent the date (MM/DD). This field will be available for successful Visa, Mastercard, or American Express transactions and always null for other card brands.
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
            # Attribute for field card_present
            attr_reader :card_present
            # The type of payment method transaction-specific details from the transaction that generated this `card` payment method. Always `card_present`.
            attr_reader :type
          end
          # The charge that created this object.
          attr_reader :charge
          # Transaction-specific details of the payment method used in the payment.
          attr_reader :payment_method_details
          # The ID of the SetupAttempt that generated this PaymentMethod, if any.
          attr_reader :setup_attempt
        end

        class Networks < Stripe::StripeObject
          # All available networks for the card.
          attr_reader :available
          # The preferred network for co-branded cards. Can be `cartes_bancaires`, `mastercard`, `visa` or `invalid_preference` if requested network is not valid for the card.
          attr_reader :preferred
        end

        class ThreeDSecureUsage < Stripe::StripeObject
          # Whether 3D Secure is supported on this card.
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

            class ShippingAddress < Stripe::StripeObject
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
            # Owner's verified billing address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
            attr_reader :billing_address
            # Owner's verified email. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
            attr_reader :email
            # Owner's verified full name. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
            attr_reader :name
            # Owner's verified shipping address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
            attr_reader :shipping_address
          end

          class SamsungPay < Stripe::StripeObject; end

          class VisaCheckout < Stripe::StripeObject
            class BillingAddress < Stripe::StripeObject
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

            class ShippingAddress < Stripe::StripeObject
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
            # Owner's verified billing address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
            attr_reader :billing_address
            # Owner's verified email. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
            attr_reader :email
            # Owner's verified full name. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
            attr_reader :name
            # Owner's verified shipping address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
            attr_reader :shipping_address
          end
          # Attribute for field amex_express_checkout
          attr_reader :amex_express_checkout
          # Attribute for field apple_pay
          attr_reader :apple_pay
          # (For tokenized numbers only.) The last four digits of the device account number.
          attr_reader :dynamic_last4
          # Attribute for field google_pay
          attr_reader :google_pay
          # Attribute for field link
          attr_reader :link
          # Attribute for field masterpass
          attr_reader :masterpass
          # Attribute for field samsung_pay
          attr_reader :samsung_pay
          # The type of the card wallet, one of `amex_express_checkout`, `apple_pay`, `google_pay`, `masterpass`, `samsung_pay`, `visa_checkout`, or `link`. An additional hash is included on the Wallet subhash with a name matching this value. It contains additional information specific to the card wallet type.
          attr_reader :type
          # Attribute for field visa_checkout
          attr_reader :visa_checkout
        end
        # Card brand. Can be `amex`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
        attr_reader :brand
        # Checks on Card address and CVC if provided.
        attr_reader :checks
        # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
        attr_reader :country
        # A high-level description of the type of cards issued in this range. (For internal use only and not typically available in standard API requests.)
        attr_reader :description
        # The brand to use when displaying the card, this accounts for customer's brand choice on dual-branded cards. Can be `american_express`, `cartes_bancaires`, `diners_club`, `discover`, `eftpos_australia`, `interac`, `jcb`, `mastercard`, `union_pay`, `visa`, or `other` and may contain more values in the future.
        attr_reader :display_brand
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
        # Details of the original PaymentMethod that created this object.
        attr_reader :generated_from
        # Issuer identification number of the card. (For internal use only and not typically available in standard API requests.)
        attr_reader :iin
        # The name of the card's issuing bank. (For internal use only and not typically available in standard API requests.)
        attr_reader :issuer
        # The last four digits of the card.
        attr_reader :last4
        # Contains information about card networks that can be used to process the payment.
        attr_reader :networks
        # Contains details on how this Card may be used for 3D Secure authentication.
        attr_reader :three_d_secure_usage
        # If this Card is part of a card wallet, this contains the details of the card wallet.
        attr_reader :wallet
      end

      class CardPresent < Stripe::StripeObject
        class Networks < Stripe::StripeObject
          # All available networks for the card.
          attr_reader :available
          # The preferred network for the card.
          attr_reader :preferred
        end

        class Offline < Stripe::StripeObject
          # Time at which the payment was collected while offline
          attr_reader :stored_at
          # The method used to process this payment method offline. Only deferred is allowed.
          attr_reader :type
        end

        class Wallet < Stripe::StripeObject
          # The type of mobile wallet, one of `apple_pay`, `google_pay`, `samsung_pay`, or `unknown`.
          attr_reader :type
        end
        # Card brand. Can be `amex`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
        attr_reader :brand
        # The [product code](https://stripe.com/docs/card-product-codes) that identifies the specific program or product associated with a card.
        attr_reader :brand_product
        # The cardholder name as read from the card, in [ISO 7813](https://en.wikipedia.org/wiki/ISO/IEC_7813) format. May include alphanumeric characters, special characters and first/last name separator (`/`). In some cases, the cardholder name may not be available depending on how the issuer has configured the card. Cardholder name is typically not available on swipe or contactless payments, such as those made with Apple Pay and Google Pay.
        attr_reader :cardholder_name
        # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
        attr_reader :country
        # A high-level description of the type of cards issued in this range. (For internal use only and not typically available in standard API requests.)
        attr_reader :description
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
        # Issuer identification number of the card. (For internal use only and not typically available in standard API requests.)
        attr_reader :iin
        # The name of the card's issuing bank. (For internal use only and not typically available in standard API requests.)
        attr_reader :issuer
        # The last four digits of the card.
        attr_reader :last4
        # Contains information about card networks that can be used to process the payment.
        attr_reader :networks
        # Details about payment methods collected offline.
        attr_reader :offline
        # EMV tag 5F2D. Preferred languages specified by the integrated circuit chip.
        attr_reader :preferred_locales
        # How card details were read in this transaction.
        attr_reader :read_method
        # Attribute for field wallet
        attr_reader :wallet
      end

      class Cashapp < Stripe::StripeObject
        # A unique and immutable identifier assigned by Cash App to every buyer.
        attr_reader :buyer_id
        # A public identifier for buyers using Cash App.
        attr_reader :cashtag
      end

      class CustomerBalance < Stripe::StripeObject; end

      class Eps < Stripe::StripeObject
        # The customer's bank. Should be one of `arzte_und_apotheker_bank`, `austrian_anadi_bank_ag`, `bank_austria`, `bankhaus_carl_spangler`, `bankhaus_schelhammer_und_schattera_ag`, `bawag_psk_ag`, `bks_bank_ag`, `brull_kallmus_bank_ag`, `btv_vier_lander_bank`, `capital_bank_grawe_gruppe_ag`, `deutsche_bank_ag`, `dolomitenbank`, `easybank_ag`, `erste_bank_und_sparkassen`, `hypo_alpeadriabank_international_ag`, `hypo_noe_lb_fur_niederosterreich_u_wien`, `hypo_oberosterreich_salzburg_steiermark`, `hypo_tirol_bank_ag`, `hypo_vorarlberg_bank_ag`, `hypo_bank_burgenland_aktiengesellschaft`, `marchfelder_bank`, `oberbank_ag`, `raiffeisen_bankengruppe_osterreich`, `schoellerbank_ag`, `sparda_bank_wien`, `volksbank_gruppe`, `volkskreditbank_ag`, or `vr_bank_braunau`.
        attr_reader :bank
      end

      class Fpx < Stripe::StripeObject
        # Account holder type, if provided. Can be one of `individual` or `company`.
        attr_reader :account_holder_type
        # The customer's bank, if provided. Can be one of `affin_bank`, `agrobank`, `alliance_bank`, `ambank`, `bank_islam`, `bank_muamalat`, `bank_rakyat`, `bsn`, `cimb`, `hong_leong_bank`, `hsbc`, `kfh`, `maybank2u`, `ocbc`, `public_bank`, `rhb`, `standard_chartered`, `uob`, `deutsche_bank`, `maybank2e`, `pb_enterprise`, or `bank_of_china`.
        attr_reader :bank
      end

      class Giropay < Stripe::StripeObject; end
      class Gopay < Stripe::StripeObject; end
      class Grabpay < Stripe::StripeObject; end

      class IdBankTransfer < Stripe::StripeObject
        # Attribute for field bank
        attr_reader :bank
        # Attribute for field bank_code
        attr_reader :bank_code
        # Attribute for field bank_name
        attr_reader :bank_name
        # Attribute for field display_name
        attr_reader :display_name
      end

      class Ideal < Stripe::StripeObject
        # The customer's bank, if provided. Can be one of `abn_amro`, `asn_bank`, `bunq`, `handelsbanken`, `ing`, `knab`, `moneyou`, `n26`, `nn`, `rabobank`, `regiobank`, `revolut`, `sns_bank`, `triodos_bank`, `van_lanschot`, or `yoursafe`.
        attr_reader :bank
        # The Bank Identifier Code of the customer's bank, if the bank was provided.
        attr_reader :bic
      end

      class InteracPresent < Stripe::StripeObject
        class Networks < Stripe::StripeObject
          # All available networks for the card.
          attr_reader :available
          # The preferred network for the card.
          attr_reader :preferred
        end
        # Card brand. Can be `interac`, `mastercard` or `visa`.
        attr_reader :brand
        # The cardholder name as read from the card, in [ISO 7813](https://en.wikipedia.org/wiki/ISO/IEC_7813) format. May include alphanumeric characters, special characters and first/last name separator (`/`). In some cases, the cardholder name may not be available depending on how the issuer has configured the card. Cardholder name is typically not available on swipe or contactless payments, such as those made with Apple Pay and Google Pay.
        attr_reader :cardholder_name
        # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
        attr_reader :country
        # A high-level description of the type of cards issued in this range. (For internal use only and not typically available in standard API requests.)
        attr_reader :description
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
        # Issuer identification number of the card. (For internal use only and not typically available in standard API requests.)
        attr_reader :iin
        # The name of the card's issuing bank. (For internal use only and not typically available in standard API requests.)
        attr_reader :issuer
        # The last four digits of the card.
        attr_reader :last4
        # Contains information about card networks that can be used to process the payment.
        attr_reader :networks
        # EMV tag 5F2D. Preferred languages specified by the integrated circuit chip.
        attr_reader :preferred_locales
        # How card details were read in this transaction.
        attr_reader :read_method
      end

      class KakaoPay < Stripe::StripeObject; end

      class Klarna < Stripe::StripeObject
        class Dob < Stripe::StripeObject
          # The day of birth, between 1 and 31.
          attr_reader :day
          # The month of birth, between 1 and 12.
          attr_reader :month
          # The four-digit year of birth.
          attr_reader :year
        end
        # The customer's date of birth, if provided.
        attr_reader :dob
      end

      class Konbini < Stripe::StripeObject; end

      class KrCard < Stripe::StripeObject
        # The local credit or debit card brand.
        attr_reader :brand
        # The last four digits of the card. This may not be present for American Express cards.
        attr_reader :last4
      end

      class Link < Stripe::StripeObject
        # Account owner's email address.
        attr_reader :email
        # [Deprecated] This is a legacy parameter that no longer has any function.
        attr_reader :persistent_token
      end

      class MbWay < Stripe::StripeObject; end
      class Mobilepay < Stripe::StripeObject; end
      class Multibanco < Stripe::StripeObject; end

      class NaverPay < Stripe::StripeObject
        # Whether to fund this transaction with Naver Pay points or a card.
        attr_reader :funding
      end

      class Oxxo < Stripe::StripeObject; end

      class P24 < Stripe::StripeObject
        # The customer's bank, if provided.
        attr_reader :bank
      end

      class Payco < Stripe::StripeObject; end
      class Paynow < Stripe::StripeObject; end

      class Paypal < Stripe::StripeObject
        # Uniquely identifies this particular PayPal account. You can use this attribute to check whether two PayPal accounts are the same.
        attr_reader :fingerprint
        # Owner's email. Values are provided by PayPal directly
        # (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        attr_reader :payer_email
        # PayPal account PayerID. This identifier uniquely identifies the PayPal customer.
        attr_reader :payer_id
        # Owner's verified email. Values are verified or provided by PayPal directly
        # (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        attr_reader :verified_email
      end

      class Payto < Stripe::StripeObject
        # Bank-State-Branch number of the bank account.
        attr_reader :bsb_number
        # Last four digits of the bank account number.
        attr_reader :last4
        # The PayID alias for the bank account.
        attr_reader :pay_id
      end

      class Pix < Stripe::StripeObject; end
      class Promptpay < Stripe::StripeObject; end
      class Qris < Stripe::StripeObject; end

      class Rechnung < Stripe::StripeObject
        class Dob < Stripe::StripeObject
          # The day of birth, between 1 and 31.
          attr_reader :day
          # The month of birth, between 1 and 12.
          attr_reader :month
          # The four-digit year of birth.
          attr_reader :year
        end
        # Attribute for field dob
        attr_reader :dob
      end

      class RevolutPay < Stripe::StripeObject; end
      class SamsungPay < Stripe::StripeObject; end

      class SepaDebit < Stripe::StripeObject
        class GeneratedFrom < Stripe::StripeObject
          # The ID of the Charge that generated this PaymentMethod, if any.
          attr_reader :charge
          # The ID of the SetupAttempt that generated this PaymentMethod, if any.
          attr_reader :setup_attempt
        end
        # Bank code of bank associated with the bank account.
        attr_reader :bank_code
        # Branch code of bank associated with the bank account.
        attr_reader :branch_code
        # Two-letter ISO code representing the country the bank account is located in.
        attr_reader :country
        # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
        attr_reader :fingerprint
        # Information about the object that generated this PaymentMethod.
        attr_reader :generated_from
        # Last four characters of the IBAN.
        attr_reader :last4
      end

      class Shopeepay < Stripe::StripeObject; end

      class Sofort < Stripe::StripeObject
        # Two-letter ISO code representing the country the bank account is located in.
        attr_reader :country
      end

      class Swish < Stripe::StripeObject; end
      class Twint < Stripe::StripeObject; end

      class UsBankAccount < Stripe::StripeObject
        class Networks < Stripe::StripeObject
          # The preferred network.
          attr_reader :preferred
          # All supported networks.
          attr_reader :supported
        end

        class StatusDetails < Stripe::StripeObject
          class Blocked < Stripe::StripeObject
            # The ACH network code that resulted in this block.
            attr_reader :network_code
            # The reason why this PaymentMethod's fingerprint has been blocked
            attr_reader :reason
          end
          # Attribute for field blocked
          attr_reader :blocked
        end
        # Account holder type: individual or company.
        attr_reader :account_holder_type
        # Account number of the bank account.
        attr_reader :account_number
        # Account type: checkings or savings. Defaults to checking if omitted.
        attr_reader :account_type
        # The name of the bank.
        attr_reader :bank_name
        # The ID of the Financial Connections Account used to create the payment method.
        attr_reader :financial_connections_account
        # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
        attr_reader :fingerprint
        # Last four digits of the bank account number.
        attr_reader :last4
        # Contains information about US bank account networks that can be used.
        attr_reader :networks
        # Routing number of the bank account.
        attr_reader :routing_number
        # Contains information about the future reusability of this PaymentMethod.
        attr_reader :status_details
      end

      class WechatPay < Stripe::StripeObject; end
      class Zip < Stripe::StripeObject; end
      # Attribute for field acss_debit
      attr_reader :acss_debit
      # Attribute for field affirm
      attr_reader :affirm
      # Attribute for field afterpay_clearpay
      attr_reader :afterpay_clearpay
      # Attribute for field alipay
      attr_reader :alipay
      # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to “unspecified”.
      attr_reader :allow_redisplay
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
      # Attribute for field billing_details
      attr_reader :billing_details
      # Attribute for field blik
      attr_reader :blik
      # Attribute for field boleto
      attr_reader :boleto
      # Attribute for field card
      attr_reader :card
      # Attribute for field card_present
      attr_reader :card_present
      # Attribute for field cashapp
      attr_reader :cashapp
      # The ID of the Customer to which this PaymentMethod is saved. This will not be set when the PaymentMethod has not been saved to a Customer.
      attr_reader :customer
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
      # Attribute for field oxxo
      attr_reader :oxxo
      # Attribute for field p24
      attr_reader :p24
      # Attribute for field payco
      attr_reader :payco
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
      # Attribute for field sepa_debit
      attr_reader :sepa_debit
      # Attribute for field shopeepay
      attr_reader :shopeepay
      # Attribute for field sofort
      attr_reader :sofort
      # Attribute for field swish
      attr_reader :swish
      # Attribute for field twint
      attr_reader :twint
      # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
      attr_reader :type
      # Attribute for field us_bank_account
      attr_reader :us_bank_account
      # Attribute for field wechat_pay
      attr_reader :wechat_pay
      # Attribute for field zip
      attr_reader :zip
    end

    class Shipping < Stripe::StripeObject
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
      # Attribute for field address
      attr_reader :address
      # Recipient name.
      attr_reader :name
      # Recipient phone (including extension).
      attr_reader :phone
    end
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created

    # Time at which this ConfirmationToken expires and can no longer be used to confirm a PaymentIntent or SetupIntent.
    attr_reader :expires_at

    # Unique identifier for the object.
    attr_reader :id

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode

    # Data used for generating a Mandate.
    attr_reader :mandate_data

    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object

    # ID of the PaymentIntent that this ConfirmationToken was used to confirm, or null if this ConfirmationToken has not yet been used.
    attr_reader :payment_intent

    # Payment-method-specific configuration for this ConfirmationToken.
    attr_reader :payment_method_options

    # Payment details collected by the Payment Element, used to create a PaymentMethod when a PaymentIntent or SetupIntent is confirmed with this ConfirmationToken.
    attr_reader :payment_method_preview

    # Return URL used to confirm the Intent.
    attr_reader :return_url

    # Indicates that you intend to make future payments with this ConfirmationToken's payment method.
    #
    # The presence of this property will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the PaymentIntent's Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete.
    attr_reader :setup_future_usage

    # ID of the SetupIntent that this ConfirmationToken was used to confirm, or null if this ConfirmationToken has not yet been used.
    attr_reader :setup_intent

    # Shipping information collected on this ConfirmationToken.
    attr_reader :shipping

    # Indicates whether the Stripe SDK is used to handle confirmation flow. Defaults to `true` on ConfirmationToken.
    attr_reader :use_stripe_sdk

    def test_helpers
      TestHelpers.new(self)
    end

    class TestHelpers < APIResourceTestHelpers
      RESOURCE_CLASS = ConfirmationToken
      def self.resource_class
        "ConfirmationToken"
      end

      # Creates a test mode Confirmation Token server side for your integration tests.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/test_helpers/confirmation_tokens",
          params: params,
          opts: opts
        )
      end
    end
  end
end
