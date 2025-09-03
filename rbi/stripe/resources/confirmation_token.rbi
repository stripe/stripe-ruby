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
          def ip_address; end
          # The user agent of the browser from which the Mandate was accepted by the customer.
          sig { returns(T.nilable(String)) }
          def user_agent; end
        end
        # If this is a Mandate accepted online, this hash contains details about the online acceptance.
        sig { returns(T.nilable(Online)) }
        def online; end
        # The type of customer acceptance information included with the Mandate.
        sig { returns(String) }
        def type; end
      end
      # This hash contains details about the customer acceptance of the Mandate.
      sig { returns(CustomerAcceptance) }
      def customer_acceptance; end
    end
    class PaymentMethodOptions < Stripe::StripeObject
      class Card < Stripe::StripeObject
        class Installments < Stripe::StripeObject
          class Plan < Stripe::StripeObject
            # For `fixed_count` installment plans, this is the number of installment payments your customer will make to their credit card.
            sig { returns(T.nilable(Integer)) }
            def count; end
            # For `fixed_count` installment plans, this is the interval between installment payments your customer will make to their credit card.
            # One of `month`.
            sig { returns(T.nilable(String)) }
            def interval; end
            # Type of installment plan, one of `fixed_count`, `bonus`, or `revolving`.
            sig { returns(String) }
            def type; end
          end
          # Attribute for field plan
          sig { returns(Plan) }
          def plan; end
        end
        # The `cvc_update` Token collected from the Payment Element.
        sig { returns(T.nilable(String)) }
        def cvc_token; end
        # Installment configuration for payments.
        sig { returns(Installments) }
        def installments; end
      end
      # This hash contains the card payment method options.
      sig { returns(T.nilable(Card)) }
      def card; end
    end
    class PaymentMethodPreview < Stripe::StripeObject
      class AcssDebit < Stripe::StripeObject
        # Name of the bank associated with the bank account.
        sig { returns(T.nilable(String)) }
        def bank_name; end
        # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
        sig { returns(T.nilable(String)) }
        def fingerprint; end
        # Institution number of the bank account.
        sig { returns(T.nilable(String)) }
        def institution_number; end
        # Last four digits of the bank account number.
        sig { returns(T.nilable(String)) }
        def last4; end
        # Transit number of the bank account.
        sig { returns(T.nilable(String)) }
        def transit_number; end
      end
      class Affirm < Stripe::StripeObject; end
      class AfterpayClearpay < Stripe::StripeObject; end
      class Alipay < Stripe::StripeObject; end
      class Alma < Stripe::StripeObject; end
      class AmazonPay < Stripe::StripeObject; end
      class AuBecsDebit < Stripe::StripeObject
        # Six-digit number identifying bank and branch associated with this bank account.
        sig { returns(T.nilable(String)) }
        def bsb_number; end
        # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
        sig { returns(T.nilable(String)) }
        def fingerprint; end
        # Last four digits of the bank account number.
        sig { returns(T.nilable(String)) }
        def last4; end
      end
      class BacsDebit < Stripe::StripeObject
        # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
        sig { returns(T.nilable(String)) }
        def fingerprint; end
        # Last four digits of the bank account number.
        sig { returns(T.nilable(String)) }
        def last4; end
        # Sort code of the bank account. (e.g., `10-20-30`)
        sig { returns(T.nilable(String)) }
        def sort_code; end
      end
      class Bancontact < Stripe::StripeObject; end
      class Billie < Stripe::StripeObject; end
      class BillingDetails < Stripe::StripeObject
        class Address < Stripe::StripeObject
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          def city; end
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          def country; end
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          def line1; end
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(T.nilable(String)) }
          def line2; end
          # ZIP or postal code.
          sig { returns(T.nilable(String)) }
          def postal_code; end
          # State, county, province, or region.
          sig { returns(T.nilable(String)) }
          def state; end
        end
        # Billing address.
        sig { returns(T.nilable(Address)) }
        def address; end
        # Email address.
        sig { returns(T.nilable(String)) }
        def email; end
        # Full name.
        sig { returns(T.nilable(String)) }
        def name; end
        # Billing phone number (including extension).
        sig { returns(T.nilable(String)) }
        def phone; end
        # Taxpayer identification number. Used only for transactions between LATAM buyers and non-LATAM sellers.
        sig { returns(T.nilable(String)) }
        def tax_id; end
      end
      class Blik < Stripe::StripeObject; end
      class Boleto < Stripe::StripeObject
        # Uniquely identifies the customer tax id (CNPJ or CPF)
        sig { returns(String) }
        def tax_id; end
      end
      class Card < Stripe::StripeObject
        class Checks < Stripe::StripeObject
          # If a address line1 was provided, results of the check, one of `pass`, `fail`, `unavailable`, or `unchecked`.
          sig { returns(T.nilable(String)) }
          def address_line1_check; end
          # If a address postal code was provided, results of the check, one of `pass`, `fail`, `unavailable`, or `unchecked`.
          sig { returns(T.nilable(String)) }
          def address_postal_code_check; end
          # If a CVC was provided, results of the check, one of `pass`, `fail`, `unavailable`, or `unchecked`.
          sig { returns(T.nilable(String)) }
          def cvc_check; end
        end
        class GeneratedFrom < Stripe::StripeObject
          class PaymentMethodDetails < Stripe::StripeObject
            class CardPresent < Stripe::StripeObject
              class Offline < Stripe::StripeObject
                # Time at which the payment was collected while offline
                sig { returns(T.nilable(Integer)) }
                def stored_at; end
                # The method used to process this payment method offline. Only deferred is allowed.
                sig { returns(T.nilable(String)) }
                def type; end
              end
              class Receipt < Stripe::StripeObject
                # The type of account being debited or credited
                sig { returns(String) }
                def account_type; end
                # The Application Cryptogram, a unique value generated by the card to authenticate the transaction with issuers.
                sig { returns(T.nilable(String)) }
                def application_cryptogram; end
                # The Application Identifier (AID) on the card used to determine which networks are eligible to process the transaction. Referenced from EMV tag 9F12, data encoded on the card's chip.
                sig { returns(T.nilable(String)) }
                def application_preferred_name; end
                # Identifier for this transaction.
                sig { returns(T.nilable(String)) }
                def authorization_code; end
                # EMV tag 8A. A code returned by the card issuer.
                sig { returns(T.nilable(String)) }
                def authorization_response_code; end
                # Describes the method used by the cardholder to verify ownership of the card. One of the following: `approval`, `failure`, `none`, `offline_pin`, `offline_pin_and_signature`, `online_pin`, or `signature`.
                sig { returns(T.nilable(String)) }
                def cardholder_verification_method; end
                # Similar to the application_preferred_name, identifying the applications (AIDs) available on the card. Referenced from EMV tag 84.
                sig { returns(T.nilable(String)) }
                def dedicated_file_name; end
                # A 5-byte string that records the checks and validations that occur between the card and the terminal. These checks determine how the terminal processes the transaction and what risk tolerance is acceptable. Referenced from EMV Tag 95.
                sig { returns(T.nilable(String)) }
                def terminal_verification_results; end
                # An indication of which steps were completed during the card read process. Referenced from EMV Tag 9B.
                sig { returns(T.nilable(String)) }
                def transaction_status_information; end
              end
              class Wallet < Stripe::StripeObject
                # The type of mobile wallet, one of `apple_pay`, `google_pay`, `samsung_pay`, or `unknown`.
                sig { returns(String) }
                def type; end
              end
              # The authorized amount
              sig { returns(T.nilable(Integer)) }
              def amount_authorized; end
              # Card brand. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa` or `unknown`.
              sig { returns(T.nilable(String)) }
              def brand; end
              # The [product code](https://stripe.com/docs/card-product-codes) that identifies the specific program or product associated with a card.
              sig { returns(T.nilable(String)) }
              def brand_product; end
              # When using manual capture, a future timestamp after which the charge will be automatically refunded if uncaptured.
              sig { returns(Integer) }
              def capture_before; end
              # The cardholder name as read from the card, in [ISO 7813](https://en.wikipedia.org/wiki/ISO/IEC_7813) format. May include alphanumeric characters, special characters and first/last name separator (`/`). In some cases, the cardholder name may not be available depending on how the issuer has configured the card. Cardholder name is typically not available on swipe or contactless payments, such as those made with Apple Pay and Google Pay.
              sig { returns(T.nilable(String)) }
              def cardholder_name; end
              # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
              sig { returns(T.nilable(String)) }
              def country; end
              # A high-level description of the type of cards issued in this range. (For internal use only and not typically available in standard API requests.)
              sig { returns(T.nilable(String)) }
              def description; end
              # Authorization response cryptogram.
              sig { returns(T.nilable(String)) }
              def emv_auth_data; end
              # Two-digit number representing the card's expiration month.
              sig { returns(Integer) }
              def exp_month; end
              # Four-digit number representing the card's expiration year.
              sig { returns(Integer) }
              def exp_year; end
              # Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.
              #
              # *As of May 1, 2021, card fingerprint in India for Connect changed to allow two fingerprints for the same card---one for India and one for the rest of the world.*
              sig { returns(T.nilable(String)) }
              def fingerprint; end
              # Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
              sig { returns(T.nilable(String)) }
              def funding; end
              # ID of a card PaymentMethod generated from the card_present PaymentMethod that may be attached to a Customer for future transactions. Only present if it was possible to generate a card PaymentMethod.
              sig { returns(T.nilable(String)) }
              def generated_card; end
              # Issuer identification number of the card. (For internal use only and not typically available in standard API requests.)
              sig { returns(T.nilable(String)) }
              def iin; end
              # Whether this [PaymentIntent](https://stripe.com/docs/api/payment_intents) is eligible for incremental authorizations. Request support using [request_incremental_authorization_support](https://stripe.com/docs/api/payment_intents/create#create_payment_intent-payment_method_options-card_present-request_incremental_authorization_support).
              sig { returns(T::Boolean) }
              def incremental_authorization_supported; end
              # The name of the card's issuing bank. (For internal use only and not typically available in standard API requests.)
              sig { returns(T.nilable(String)) }
              def issuer; end
              # The last four digits of the card.
              sig { returns(T.nilable(String)) }
              def last4; end
              # Identifies which network this charge was processed on. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `interac`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
              sig { returns(T.nilable(String)) }
              def network; end
              # This is used by the financial networks to identify a transaction. Visa calls this the Transaction ID, Mastercard calls this the Trace ID, and American Express calls this the Acquirer Reference Data. This value will be present if it is returned by the financial network in the authorization response, and null otherwise.
              sig { returns(T.nilable(String)) }
              def network_transaction_id; end
              # Details about payments collected offline.
              sig { returns(T.nilable(Offline)) }
              def offline; end
              # Defines whether the authorized amount can be over-captured or not
              sig { returns(T::Boolean) }
              def overcapture_supported; end
              # The languages that the issuing bank recommends using for localizing any customer-facing text, as read from the card. Referenced from EMV tag 5F2D, data encoded on the card's chip.
              sig { returns(T.nilable(T::Array[String])) }
              def preferred_locales; end
              # How card details were read in this transaction.
              sig { returns(T.nilable(String)) }
              def read_method; end
              # A collection of fields required to be displayed on receipts. Only required for EMV transactions.
              sig { returns(T.nilable(Receipt)) }
              def receipt; end
              # Attribute for field wallet
              sig { returns(Wallet) }
              def wallet; end
            end
            # Attribute for field card_present
            sig { returns(CardPresent) }
            def card_present; end
            # The type of payment method transaction-specific details from the transaction that generated this `card` payment method. Always `card_present`.
            sig { returns(String) }
            def type; end
          end
          # The charge that created this object.
          sig { returns(T.nilable(String)) }
          def charge; end
          # Transaction-specific details of the payment method used in the payment.
          sig { returns(T.nilable(PaymentMethodDetails)) }
          def payment_method_details; end
          # The ID of the SetupAttempt that generated this PaymentMethod, if any.
          sig { returns(T.nilable(T.any(String, Stripe::SetupAttempt))) }
          def setup_attempt; end
        end
        class Networks < Stripe::StripeObject
          # All networks available for selection via [payment_method_options.card.network](/api/payment_intents/confirm#confirm_payment_intent-payment_method_options-card-network).
          sig { returns(T::Array[String]) }
          def available; end
          # The preferred network for co-branded cards. Can be `cartes_bancaires`, `mastercard`, `visa` or `invalid_preference` if requested network is not valid for the card.
          sig { returns(T.nilable(String)) }
          def preferred; end
        end
        class ThreeDSecureUsage < Stripe::StripeObject
          # Whether 3D Secure is supported on this card.
          sig { returns(T::Boolean) }
          def supported; end
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
              def city; end
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(T.nilable(String)) }
              def country; end
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(T.nilable(String)) }
              def line1; end
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(T.nilable(String)) }
              def line2; end
              # ZIP or postal code.
              sig { returns(T.nilable(String)) }
              def postal_code; end
              # State, county, province, or region.
              sig { returns(T.nilable(String)) }
              def state; end
            end
            class ShippingAddress < Stripe::StripeObject
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(String)) }
              def city; end
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(T.nilable(String)) }
              def country; end
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(T.nilable(String)) }
              def line1; end
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(T.nilable(String)) }
              def line2; end
              # ZIP or postal code.
              sig { returns(T.nilable(String)) }
              def postal_code; end
              # State, county, province, or region.
              sig { returns(T.nilable(String)) }
              def state; end
            end
            # Owner's verified billing address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
            sig { returns(T.nilable(BillingAddress)) }
            def billing_address; end
            # Owner's verified email. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
            sig { returns(T.nilable(String)) }
            def email; end
            # Owner's verified full name. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
            sig { returns(T.nilable(String)) }
            def name; end
            # Owner's verified shipping address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
            sig { returns(T.nilable(ShippingAddress)) }
            def shipping_address; end
          end
          class SamsungPay < Stripe::StripeObject; end
          class VisaCheckout < Stripe::StripeObject
            class BillingAddress < Stripe::StripeObject
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(String)) }
              def city; end
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(T.nilable(String)) }
              def country; end
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(T.nilable(String)) }
              def line1; end
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(T.nilable(String)) }
              def line2; end
              # ZIP or postal code.
              sig { returns(T.nilable(String)) }
              def postal_code; end
              # State, county, province, or region.
              sig { returns(T.nilable(String)) }
              def state; end
            end
            class ShippingAddress < Stripe::StripeObject
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(String)) }
              def city; end
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(T.nilable(String)) }
              def country; end
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(T.nilable(String)) }
              def line1; end
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(T.nilable(String)) }
              def line2; end
              # ZIP or postal code.
              sig { returns(T.nilable(String)) }
              def postal_code; end
              # State, county, province, or region.
              sig { returns(T.nilable(String)) }
              def state; end
            end
            # Owner's verified billing address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
            sig { returns(T.nilable(BillingAddress)) }
            def billing_address; end
            # Owner's verified email. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
            sig { returns(T.nilable(String)) }
            def email; end
            # Owner's verified full name. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
            sig { returns(T.nilable(String)) }
            def name; end
            # Owner's verified shipping address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
            sig { returns(T.nilable(ShippingAddress)) }
            def shipping_address; end
          end
          # Attribute for field amex_express_checkout
          sig { returns(AmexExpressCheckout) }
          def amex_express_checkout; end
          # Attribute for field apple_pay
          sig { returns(ApplePay) }
          def apple_pay; end
          # (For tokenized numbers only.) The last four digits of the device account number.
          sig { returns(T.nilable(String)) }
          def dynamic_last4; end
          # Attribute for field google_pay
          sig { returns(GooglePay) }
          def google_pay; end
          # Attribute for field link
          sig { returns(Link) }
          def link; end
          # Attribute for field masterpass
          sig { returns(Masterpass) }
          def masterpass; end
          # Attribute for field samsung_pay
          sig { returns(SamsungPay) }
          def samsung_pay; end
          # The type of the card wallet, one of `amex_express_checkout`, `apple_pay`, `google_pay`, `masterpass`, `samsung_pay`, `visa_checkout`, or `link`. An additional hash is included on the Wallet subhash with a name matching this value. It contains additional information specific to the card wallet type.
          sig { returns(String) }
          def type; end
          # Attribute for field visa_checkout
          sig { returns(VisaCheckout) }
          def visa_checkout; end
        end
        # Card brand. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa` or `unknown`.
        sig { returns(String) }
        def brand; end
        # Checks on Card address and CVC if provided.
        sig { returns(T.nilable(Checks)) }
        def checks; end
        # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
        sig { returns(T.nilable(String)) }
        def country; end
        # A high-level description of the type of cards issued in this range. (For internal use only and not typically available in standard API requests.)
        sig { returns(T.nilable(String)) }
        def description; end
        # The brand to use when displaying the card, this accounts for customer's brand choice on dual-branded cards. Can be `american_express`, `cartes_bancaires`, `diners_club`, `discover`, `eftpos_australia`, `interac`, `jcb`, `mastercard`, `union_pay`, `visa`, or `other` and may contain more values in the future.
        sig { returns(T.nilable(String)) }
        def display_brand; end
        # Two-digit number representing the card's expiration month.
        sig { returns(Integer) }
        def exp_month; end
        # Four-digit number representing the card's expiration year.
        sig { returns(Integer) }
        def exp_year; end
        # Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.
        #
        # *As of May 1, 2021, card fingerprint in India for Connect changed to allow two fingerprints for the same card---one for India and one for the rest of the world.*
        sig { returns(T.nilable(String)) }
        def fingerprint; end
        # Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
        sig { returns(String) }
        def funding; end
        # Details of the original PaymentMethod that created this object.
        sig { returns(T.nilable(GeneratedFrom)) }
        def generated_from; end
        # Issuer identification number of the card. (For internal use only and not typically available in standard API requests.)
        sig { returns(T.nilable(String)) }
        def iin; end
        # The name of the card's issuing bank. (For internal use only and not typically available in standard API requests.)
        sig { returns(T.nilable(String)) }
        def issuer; end
        # The last four digits of the card.
        sig { returns(String) }
        def last4; end
        # Contains information about card networks that can be used to process the payment.
        sig { returns(T.nilable(Networks)) }
        def networks; end
        # Status of a card based on the card issuer.
        sig { returns(T.nilable(String)) }
        def regulated_status; end
        # Contains details on how this Card may be used for 3D Secure authentication.
        sig { returns(T.nilable(ThreeDSecureUsage)) }
        def three_d_secure_usage; end
        # If this Card is part of a card wallet, this contains the details of the card wallet.
        sig { returns(T.nilable(Wallet)) }
        def wallet; end
      end
      class CardPresent < Stripe::StripeObject
        class Networks < Stripe::StripeObject
          # All networks available for selection via [payment_method_options.card.network](/api/payment_intents/confirm#confirm_payment_intent-payment_method_options-card-network).
          sig { returns(T::Array[String]) }
          def available; end
          # The preferred network for the card.
          sig { returns(T.nilable(String)) }
          def preferred; end
        end
        class Offline < Stripe::StripeObject
          # Time at which the payment was collected while offline
          sig { returns(T.nilable(Integer)) }
          def stored_at; end
          # The method used to process this payment method offline. Only deferred is allowed.
          sig { returns(T.nilable(String)) }
          def type; end
        end
        class Wallet < Stripe::StripeObject
          # The type of mobile wallet, one of `apple_pay`, `google_pay`, `samsung_pay`, or `unknown`.
          sig { returns(String) }
          def type; end
        end
        # Card brand. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa` or `unknown`.
        sig { returns(T.nilable(String)) }
        def brand; end
        # The [product code](https://stripe.com/docs/card-product-codes) that identifies the specific program or product associated with a card.
        sig { returns(T.nilable(String)) }
        def brand_product; end
        # The cardholder name as read from the card, in [ISO 7813](https://en.wikipedia.org/wiki/ISO/IEC_7813) format. May include alphanumeric characters, special characters and first/last name separator (`/`). In some cases, the cardholder name may not be available depending on how the issuer has configured the card. Cardholder name is typically not available on swipe or contactless payments, such as those made with Apple Pay and Google Pay.
        sig { returns(T.nilable(String)) }
        def cardholder_name; end
        # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
        sig { returns(T.nilable(String)) }
        def country; end
        # A high-level description of the type of cards issued in this range. (For internal use only and not typically available in standard API requests.)
        sig { returns(T.nilable(String)) }
        def description; end
        # Two-digit number representing the card's expiration month.
        sig { returns(Integer) }
        def exp_month; end
        # Four-digit number representing the card's expiration year.
        sig { returns(Integer) }
        def exp_year; end
        # Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.
        #
        # *As of May 1, 2021, card fingerprint in India for Connect changed to allow two fingerprints for the same card---one for India and one for the rest of the world.*
        sig { returns(T.nilable(String)) }
        def fingerprint; end
        # Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
        sig { returns(T.nilable(String)) }
        def funding; end
        # Issuer identification number of the card. (For internal use only and not typically available in standard API requests.)
        sig { returns(T.nilable(String)) }
        def iin; end
        # The name of the card's issuing bank. (For internal use only and not typically available in standard API requests.)
        sig { returns(T.nilable(String)) }
        def issuer; end
        # The last four digits of the card.
        sig { returns(T.nilable(String)) }
        def last4; end
        # Contains information about card networks that can be used to process the payment.
        sig { returns(T.nilable(Networks)) }
        def networks; end
        # Details about payment methods collected offline.
        sig { returns(T.nilable(Offline)) }
        def offline; end
        # The languages that the issuing bank recommends using for localizing any customer-facing text, as read from the card. Referenced from EMV tag 5F2D, data encoded on the card's chip.
        sig { returns(T.nilable(T::Array[String])) }
        def preferred_locales; end
        # How card details were read in this transaction.
        sig { returns(T.nilable(String)) }
        def read_method; end
        # Attribute for field wallet
        sig { returns(Wallet) }
        def wallet; end
      end
      class Cashapp < Stripe::StripeObject
        # A unique and immutable identifier assigned by Cash App to every buyer.
        sig { returns(T.nilable(String)) }
        def buyer_id; end
        # A public identifier for buyers using Cash App.
        sig { returns(T.nilable(String)) }
        def cashtag; end
      end
      class Crypto < Stripe::StripeObject; end
      class CustomerBalance < Stripe::StripeObject; end
      class Eps < Stripe::StripeObject
        # The customer's bank. Should be one of `arzte_und_apotheker_bank`, `austrian_anadi_bank_ag`, `bank_austria`, `bankhaus_carl_spangler`, `bankhaus_schelhammer_und_schattera_ag`, `bawag_psk_ag`, `bks_bank_ag`, `brull_kallmus_bank_ag`, `btv_vier_lander_bank`, `capital_bank_grawe_gruppe_ag`, `deutsche_bank_ag`, `dolomitenbank`, `easybank_ag`, `erste_bank_und_sparkassen`, `hypo_alpeadriabank_international_ag`, `hypo_noe_lb_fur_niederosterreich_u_wien`, `hypo_oberosterreich_salzburg_steiermark`, `hypo_tirol_bank_ag`, `hypo_vorarlberg_bank_ag`, `hypo_bank_burgenland_aktiengesellschaft`, `marchfelder_bank`, `oberbank_ag`, `raiffeisen_bankengruppe_osterreich`, `schoellerbank_ag`, `sparda_bank_wien`, `volksbank_gruppe`, `volkskreditbank_ag`, or `vr_bank_braunau`.
        sig { returns(T.nilable(String)) }
        def bank; end
      end
      class Fpx < Stripe::StripeObject
        # Account holder type, if provided. Can be one of `individual` or `company`.
        sig { returns(T.nilable(String)) }
        def account_holder_type; end
        # The customer's bank, if provided. Can be one of `affin_bank`, `agrobank`, `alliance_bank`, `ambank`, `bank_islam`, `bank_muamalat`, `bank_rakyat`, `bsn`, `cimb`, `hong_leong_bank`, `hsbc`, `kfh`, `maybank2u`, `ocbc`, `public_bank`, `rhb`, `standard_chartered`, `uob`, `deutsche_bank`, `maybank2e`, `pb_enterprise`, or `bank_of_china`.
        sig { returns(String) }
        def bank; end
      end
      class Giropay < Stripe::StripeObject; end
      class Grabpay < Stripe::StripeObject; end
      class Ideal < Stripe::StripeObject
        # The customer's bank, if provided. Can be one of `abn_amro`, `asn_bank`, `bunq`, `buut`, `handelsbanken`, `ing`, `knab`, `moneyou`, `n26`, `nn`, `rabobank`, `regiobank`, `revolut`, `sns_bank`, `triodos_bank`, `van_lanschot`, or `yoursafe`.
        sig { returns(T.nilable(String)) }
        def bank; end
        # The Bank Identifier Code of the customer's bank, if the bank was provided.
        sig { returns(T.nilable(String)) }
        def bic; end
      end
      class InteracPresent < Stripe::StripeObject
        class Networks < Stripe::StripeObject
          # All networks available for selection via [payment_method_options.card.network](/api/payment_intents/confirm#confirm_payment_intent-payment_method_options-card-network).
          sig { returns(T::Array[String]) }
          def available; end
          # The preferred network for the card.
          sig { returns(T.nilable(String)) }
          def preferred; end
        end
        # Card brand. Can be `interac`, `mastercard` or `visa`.
        sig { returns(T.nilable(String)) }
        def brand; end
        # The cardholder name as read from the card, in [ISO 7813](https://en.wikipedia.org/wiki/ISO/IEC_7813) format. May include alphanumeric characters, special characters and first/last name separator (`/`). In some cases, the cardholder name may not be available depending on how the issuer has configured the card. Cardholder name is typically not available on swipe or contactless payments, such as those made with Apple Pay and Google Pay.
        sig { returns(T.nilable(String)) }
        def cardholder_name; end
        # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
        sig { returns(T.nilable(String)) }
        def country; end
        # A high-level description of the type of cards issued in this range. (For internal use only and not typically available in standard API requests.)
        sig { returns(T.nilable(String)) }
        def description; end
        # Two-digit number representing the card's expiration month.
        sig { returns(Integer) }
        def exp_month; end
        # Four-digit number representing the card's expiration year.
        sig { returns(Integer) }
        def exp_year; end
        # Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.
        #
        # *As of May 1, 2021, card fingerprint in India for Connect changed to allow two fingerprints for the same card---one for India and one for the rest of the world.*
        sig { returns(T.nilable(String)) }
        def fingerprint; end
        # Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
        sig { returns(T.nilable(String)) }
        def funding; end
        # Issuer identification number of the card. (For internal use only and not typically available in standard API requests.)
        sig { returns(T.nilable(String)) }
        def iin; end
        # The name of the card's issuing bank. (For internal use only and not typically available in standard API requests.)
        sig { returns(T.nilable(String)) }
        def issuer; end
        # The last four digits of the card.
        sig { returns(T.nilable(String)) }
        def last4; end
        # Contains information about card networks that can be used to process the payment.
        sig { returns(T.nilable(Networks)) }
        def networks; end
        # The languages that the issuing bank recommends using for localizing any customer-facing text, as read from the card. Referenced from EMV tag 5F2D, data encoded on the card's chip.
        sig { returns(T.nilable(T::Array[String])) }
        def preferred_locales; end
        # How card details were read in this transaction.
        sig { returns(T.nilable(String)) }
        def read_method; end
      end
      class KakaoPay < Stripe::StripeObject; end
      class Klarna < Stripe::StripeObject
        class Dob < Stripe::StripeObject
          # The day of birth, between 1 and 31.
          sig { returns(T.nilable(Integer)) }
          def day; end
          # The month of birth, between 1 and 12.
          sig { returns(T.nilable(Integer)) }
          def month; end
          # The four-digit year of birth.
          sig { returns(T.nilable(Integer)) }
          def year; end
        end
        # The customer's date of birth, if provided.
        sig { returns(T.nilable(Dob)) }
        def dob; end
      end
      class Konbini < Stripe::StripeObject; end
      class KrCard < Stripe::StripeObject
        # The local credit or debit card brand.
        sig { returns(T.nilable(String)) }
        def brand; end
        # The last four digits of the card. This may not be present for American Express cards.
        sig { returns(T.nilable(String)) }
        def last4; end
      end
      class Link < Stripe::StripeObject
        # Account owner's email address.
        sig { returns(T.nilable(String)) }
        def email; end
        # [Deprecated] This is a legacy parameter that no longer has any function.
        sig { returns(String) }
        def persistent_token; end
      end
      class Mobilepay < Stripe::StripeObject; end
      class Multibanco < Stripe::StripeObject; end
      class NaverPay < Stripe::StripeObject
        # Uniquely identifies this particular Naver Pay account. You can use this attribute to check whether two Naver Pay accounts are the same.
        sig { returns(T.nilable(String)) }
        def buyer_id; end
        # Whether to fund this transaction with Naver Pay points or a card.
        sig { returns(String) }
        def funding; end
      end
      class NzBankAccount < Stripe::StripeObject
        # The name on the bank account. Only present if the account holder name is different from the name of the authorized signatory collected in the PaymentMethod’s billing details.
        sig { returns(T.nilable(String)) }
        def account_holder_name; end
        # The numeric code for the bank account's bank.
        sig { returns(String) }
        def bank_code; end
        # The name of the bank.
        sig { returns(String) }
        def bank_name; end
        # The numeric code for the bank account's bank branch.
        sig { returns(String) }
        def branch_code; end
        # Last four digits of the bank account number.
        sig { returns(String) }
        def last4; end
        # The suffix of the bank account number.
        sig { returns(T.nilable(String)) }
        def suffix; end
      end
      class Oxxo < Stripe::StripeObject; end
      class P24 < Stripe::StripeObject
        # The customer's bank, if provided.
        sig { returns(T.nilable(String)) }
        def bank; end
      end
      class PayByBank < Stripe::StripeObject; end
      class Payco < Stripe::StripeObject; end
      class Paynow < Stripe::StripeObject; end
      class Paypal < Stripe::StripeObject
        # Two-letter ISO code representing the buyer's country. Values are provided by PayPal directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        sig { returns(T.nilable(String)) }
        def country; end
        # Owner's email. Values are provided by PayPal directly
        # (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        sig { returns(T.nilable(String)) }
        def payer_email; end
        # PayPal account PayerID. This identifier uniquely identifies the PayPal customer.
        sig { returns(T.nilable(String)) }
        def payer_id; end
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
          def charge; end
          # The ID of the SetupAttempt that generated this PaymentMethod, if any.
          sig { returns(T.nilable(T.any(String, Stripe::SetupAttempt))) }
          def setup_attempt; end
        end
        # Bank code of bank associated with the bank account.
        sig { returns(T.nilable(String)) }
        def bank_code; end
        # Branch code of bank associated with the bank account.
        sig { returns(T.nilable(String)) }
        def branch_code; end
        # Two-letter ISO code representing the country the bank account is located in.
        sig { returns(T.nilable(String)) }
        def country; end
        # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
        sig { returns(T.nilable(String)) }
        def fingerprint; end
        # Information about the object that generated this PaymentMethod.
        sig { returns(T.nilable(GeneratedFrom)) }
        def generated_from; end
        # Last four characters of the IBAN.
        sig { returns(T.nilable(String)) }
        def last4; end
      end
      class Sofort < Stripe::StripeObject
        # Two-letter ISO code representing the country the bank account is located in.
        sig { returns(T.nilable(String)) }
        def country; end
      end
      class Swish < Stripe::StripeObject; end
      class Twint < Stripe::StripeObject; end
      class UsBankAccount < Stripe::StripeObject
        class Networks < Stripe::StripeObject
          # The preferred network.
          sig { returns(T.nilable(String)) }
          def preferred; end
          # All supported networks.
          sig { returns(T::Array[String]) }
          def supported; end
        end
        class StatusDetails < Stripe::StripeObject
          class Blocked < Stripe::StripeObject
            # The ACH network code that resulted in this block.
            sig { returns(T.nilable(String)) }
            def network_code; end
            # The reason why this PaymentMethod's fingerprint has been blocked
            sig { returns(T.nilable(String)) }
            def reason; end
          end
          # Attribute for field blocked
          sig { returns(Blocked) }
          def blocked; end
        end
        # Account holder type: individual or company.
        sig { returns(T.nilable(String)) }
        def account_holder_type; end
        # Account type: checkings or savings. Defaults to checking if omitted.
        sig { returns(T.nilable(String)) }
        def account_type; end
        # The name of the bank.
        sig { returns(T.nilable(String)) }
        def bank_name; end
        # The ID of the Financial Connections Account used to create the payment method.
        sig { returns(T.nilable(String)) }
        def financial_connections_account; end
        # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
        sig { returns(T.nilable(String)) }
        def fingerprint; end
        # Last four digits of the bank account number.
        sig { returns(T.nilable(String)) }
        def last4; end
        # Contains information about US bank account networks that can be used.
        sig { returns(T.nilable(Networks)) }
        def networks; end
        # Routing number of the bank account.
        sig { returns(T.nilable(String)) }
        def routing_number; end
        # Contains information about the future reusability of this PaymentMethod.
        sig { returns(T.nilable(StatusDetails)) }
        def status_details; end
      end
      class WechatPay < Stripe::StripeObject; end
      class Zip < Stripe::StripeObject; end
      # Attribute for field acss_debit
      sig { returns(AcssDebit) }
      def acss_debit; end
      # Attribute for field affirm
      sig { returns(Affirm) }
      def affirm; end
      # Attribute for field afterpay_clearpay
      sig { returns(AfterpayClearpay) }
      def afterpay_clearpay; end
      # Attribute for field alipay
      sig { returns(Alipay) }
      def alipay; end
      # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to “unspecified”.
      sig { returns(String) }
      def allow_redisplay; end
      # Attribute for field alma
      sig { returns(Alma) }
      def alma; end
      # Attribute for field amazon_pay
      sig { returns(AmazonPay) }
      def amazon_pay; end
      # Attribute for field au_becs_debit
      sig { returns(AuBecsDebit) }
      def au_becs_debit; end
      # Attribute for field bacs_debit
      sig { returns(BacsDebit) }
      def bacs_debit; end
      # Attribute for field bancontact
      sig { returns(Bancontact) }
      def bancontact; end
      # Attribute for field billie
      sig { returns(Billie) }
      def billie; end
      # Attribute for field billing_details
      sig { returns(BillingDetails) }
      def billing_details; end
      # Attribute for field blik
      sig { returns(Blik) }
      def blik; end
      # Attribute for field boleto
      sig { returns(Boleto) }
      def boleto; end
      # Attribute for field card
      sig { returns(Card) }
      def card; end
      # Attribute for field card_present
      sig { returns(CardPresent) }
      def card_present; end
      # Attribute for field cashapp
      sig { returns(Cashapp) }
      def cashapp; end
      # Attribute for field crypto
      sig { returns(Crypto) }
      def crypto; end
      # The ID of the Customer to which this PaymentMethod is saved. This will not be set when the PaymentMethod has not been saved to a Customer.
      sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
      def customer; end
      # Attribute for field customer_balance
      sig { returns(CustomerBalance) }
      def customer_balance; end
      # Attribute for field eps
      sig { returns(Eps) }
      def eps; end
      # Attribute for field fpx
      sig { returns(Fpx) }
      def fpx; end
      # Attribute for field giropay
      sig { returns(Giropay) }
      def giropay; end
      # Attribute for field grabpay
      sig { returns(Grabpay) }
      def grabpay; end
      # Attribute for field ideal
      sig { returns(Ideal) }
      def ideal; end
      # Attribute for field interac_present
      sig { returns(InteracPresent) }
      def interac_present; end
      # Attribute for field kakao_pay
      sig { returns(KakaoPay) }
      def kakao_pay; end
      # Attribute for field klarna
      sig { returns(Klarna) }
      def klarna; end
      # Attribute for field konbini
      sig { returns(Konbini) }
      def konbini; end
      # Attribute for field kr_card
      sig { returns(KrCard) }
      def kr_card; end
      # Attribute for field link
      sig { returns(Link) }
      def link; end
      # Attribute for field mobilepay
      sig { returns(Mobilepay) }
      def mobilepay; end
      # Attribute for field multibanco
      sig { returns(Multibanco) }
      def multibanco; end
      # Attribute for field naver_pay
      sig { returns(NaverPay) }
      def naver_pay; end
      # Attribute for field nz_bank_account
      sig { returns(NzBankAccount) }
      def nz_bank_account; end
      # Attribute for field oxxo
      sig { returns(Oxxo) }
      def oxxo; end
      # Attribute for field p24
      sig { returns(P24) }
      def p24; end
      # Attribute for field pay_by_bank
      sig { returns(PayByBank) }
      def pay_by_bank; end
      # Attribute for field payco
      sig { returns(Payco) }
      def payco; end
      # Attribute for field paynow
      sig { returns(Paynow) }
      def paynow; end
      # Attribute for field paypal
      sig { returns(Paypal) }
      def paypal; end
      # Attribute for field pix
      sig { returns(Pix) }
      def pix; end
      # Attribute for field promptpay
      sig { returns(Promptpay) }
      def promptpay; end
      # Attribute for field revolut_pay
      sig { returns(RevolutPay) }
      def revolut_pay; end
      # Attribute for field samsung_pay
      sig { returns(SamsungPay) }
      def samsung_pay; end
      # Attribute for field satispay
      sig { returns(Satispay) }
      def satispay; end
      # Attribute for field sepa_debit
      sig { returns(SepaDebit) }
      def sepa_debit; end
      # Attribute for field sofort
      sig { returns(Sofort) }
      def sofort; end
      # Attribute for field swish
      sig { returns(Swish) }
      def swish; end
      # Attribute for field twint
      sig { returns(Twint) }
      def twint; end
      # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
      sig { returns(String) }
      def type; end
      # Attribute for field us_bank_account
      sig { returns(UsBankAccount) }
      def us_bank_account; end
      # Attribute for field wechat_pay
      sig { returns(WechatPay) }
      def wechat_pay; end
      # Attribute for field zip
      sig { returns(Zip) }
      def zip; end
    end
    class Shipping < Stripe::StripeObject
      class Address < Stripe::StripeObject
        # City, district, suburb, town, or village.
        sig { returns(T.nilable(String)) }
        def city; end
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(T.nilable(String)) }
        def country; end
        # Address line 1 (e.g., street, PO Box, or company name).
        sig { returns(T.nilable(String)) }
        def line1; end
        # Address line 2 (e.g., apartment, suite, unit, or building).
        sig { returns(T.nilable(String)) }
        def line2; end
        # ZIP or postal code.
        sig { returns(T.nilable(String)) }
        def postal_code; end
        # State, county, province, or region.
        sig { returns(T.nilable(String)) }
        def state; end
      end
      # Attribute for field address
      sig { returns(Address) }
      def address; end
      # Recipient name.
      sig { returns(String) }
      def name; end
      # Recipient phone (including extension).
      sig { returns(T.nilable(String)) }
      def phone; end
    end
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def created; end
    # Time at which this ConfirmationToken expires and can no longer be used to confirm a PaymentIntent or SetupIntent.
    sig { returns(T.nilable(Integer)) }
    def expires_at; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    def livemode; end
    # Data used for generating a Mandate.
    sig { returns(T.nilable(MandateData)) }
    def mandate_data; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # ID of the PaymentIntent that this ConfirmationToken was used to confirm, or null if this ConfirmationToken has not yet been used.
    sig { returns(T.nilable(String)) }
    def payment_intent; end
    # Payment-method-specific configuration for this ConfirmationToken.
    sig { returns(T.nilable(PaymentMethodOptions)) }
    def payment_method_options; end
    # Payment details collected by the Payment Element, used to create a PaymentMethod when a PaymentIntent or SetupIntent is confirmed with this ConfirmationToken.
    sig { returns(T.nilable(PaymentMethodPreview)) }
    def payment_method_preview; end
    # Return URL used to confirm the Intent.
    sig { returns(T.nilable(String)) }
    def return_url; end
    # Indicates that you intend to make future payments with this ConfirmationToken's payment method.
    #
    # The presence of this property will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the PaymentIntent's Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete.
    sig { returns(T.nilable(String)) }
    def setup_future_usage; end
    # ID of the SetupIntent that this ConfirmationToken was used to confirm, or null if this ConfirmationToken has not yet been used.
    sig { returns(T.nilable(String)) }
    def setup_intent; end
    # Shipping information collected on this ConfirmationToken.
    sig { returns(T.nilable(Shipping)) }
    def shipping; end
    # Indicates whether the Stripe SDK is used to handle confirmation flow. Defaults to `true` on ConfirmationToken.
    sig { returns(T::Boolean) }
    def use_stripe_sdk; end
    class CreateParams < Stripe::RequestParams
      class PaymentMethodData < Stripe::RequestParams
        class AcssDebit < Stripe::RequestParams
          # Customer's bank account number.
          sig { returns(String) }
          def account_number; end
          sig { params(_account_number: String).returns(String) }
          def account_number=(_account_number); end
          # Institution number of the customer's bank.
          sig { returns(String) }
          def institution_number; end
          sig { params(_institution_number: String).returns(String) }
          def institution_number=(_institution_number); end
          # Transit number of the customer's bank.
          sig { returns(String) }
          def transit_number; end
          sig { params(_transit_number: String).returns(String) }
          def transit_number=(_transit_number); end
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
          def account_number; end
          sig { params(_account_number: String).returns(String) }
          def account_number=(_account_number); end
          # Bank-State-Branch number of the bank account.
          sig { returns(String) }
          def bsb_number; end
          sig { params(_bsb_number: String).returns(String) }
          def bsb_number=(_bsb_number); end
          sig { params(account_number: String, bsb_number: String).void }
          def initialize(account_number: nil, bsb_number: nil); end
        end
        class BacsDebit < Stripe::RequestParams
          # Account number of the bank account that the funds will be debited from.
          sig { returns(T.nilable(String)) }
          def account_number; end
          sig { params(_account_number: T.nilable(String)).returns(T.nilable(String)) }
          def account_number=(_account_number); end
          # Sort code of the bank account. (e.g., `10-20-30`)
          sig { returns(T.nilable(String)) }
          def sort_code; end
          sig { params(_sort_code: T.nilable(String)).returns(T.nilable(String)) }
          def sort_code=(_sort_code); end
          sig { params(account_number: T.nilable(String), sort_code: T.nilable(String)).void }
          def initialize(account_number: nil, sort_code: nil); end
        end
        class Bancontact < Stripe::RequestParams; end
        class Billie < Stripe::RequestParams; end
        class BillingDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            def city; end
            sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
            def city=(_city); end
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            def country; end
            sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
            def country=(_country); end
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            def line1; end
            sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
            def line1=(_line1); end
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            def line2; end
            sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
            def line2=(_line2); end
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            def postal_code; end
            sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
            def postal_code=(_postal_code); end
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            def state; end
            sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
            def state=(_state); end
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
          def address; end
          sig {
            params(_address: T.nilable(T.any(String, ::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::BillingDetails::Address))).returns(T.nilable(T.any(String, ::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::BillingDetails::Address)))
           }
          def address=(_address); end
          # Email address.
          sig { returns(T.nilable(String)) }
          def email; end
          sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
          def email=(_email); end
          # Full name.
          sig { returns(T.nilable(String)) }
          def name; end
          sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_name); end
          # Billing phone number (including extension).
          sig { returns(T.nilable(String)) }
          def phone; end
          sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
          def phone=(_phone); end
          # Taxpayer identification number. Used only for transactions between LATAM buyers and non-LATAM sellers.
          sig { returns(T.nilable(String)) }
          def tax_id; end
          sig { params(_tax_id: T.nilable(String)).returns(T.nilable(String)) }
          def tax_id=(_tax_id); end
          sig {
            params(address: T.nilable(T.any(String, ::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::BillingDetails::Address)), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String), tax_id: T.nilable(String)).void
           }
          def initialize(address: nil, email: nil, name: nil, phone: nil, tax_id: nil); end
        end
        class Blik < Stripe::RequestParams; end
        class Boleto < Stripe::RequestParams
          # The tax ID of the customer (CPF for individual consumers or CNPJ for businesses consumers)
          sig { returns(String) }
          def tax_id; end
          sig { params(_tax_id: String).returns(String) }
          def tax_id=(_tax_id); end
          sig { params(tax_id: String).void }
          def initialize(tax_id: nil); end
        end
        class Cashapp < Stripe::RequestParams; end
        class Crypto < Stripe::RequestParams; end
        class CustomerBalance < Stripe::RequestParams; end
        class Eps < Stripe::RequestParams
          # The customer's bank.
          sig { returns(T.nilable(String)) }
          def bank; end
          sig { params(_bank: T.nilable(String)).returns(T.nilable(String)) }
          def bank=(_bank); end
          sig { params(bank: T.nilable(String)).void }
          def initialize(bank: nil); end
        end
        class Fpx < Stripe::RequestParams
          # Account holder type for FPX transaction
          sig { returns(T.nilable(String)) }
          def account_holder_type; end
          sig { params(_account_holder_type: T.nilable(String)).returns(T.nilable(String)) }
          def account_holder_type=(_account_holder_type); end
          # The customer's bank.
          sig { returns(String) }
          def bank; end
          sig { params(_bank: String).returns(String) }
          def bank=(_bank); end
          sig { params(account_holder_type: T.nilable(String), bank: String).void }
          def initialize(account_holder_type: nil, bank: nil); end
        end
        class Giropay < Stripe::RequestParams; end
        class Grabpay < Stripe::RequestParams; end
        class Ideal < Stripe::RequestParams
          # The customer's bank. Only use this parameter for existing customers. Don't use it for new customers.
          sig { returns(T.nilable(String)) }
          def bank; end
          sig { params(_bank: T.nilable(String)).returns(T.nilable(String)) }
          def bank=(_bank); end
          sig { params(bank: T.nilable(String)).void }
          def initialize(bank: nil); end
        end
        class InteracPresent < Stripe::RequestParams; end
        class KakaoPay < Stripe::RequestParams; end
        class Klarna < Stripe::RequestParams
          class Dob < Stripe::RequestParams
            # The day of birth, between 1 and 31.
            sig { returns(Integer) }
            def day; end
            sig { params(_day: Integer).returns(Integer) }
            def day=(_day); end
            # The month of birth, between 1 and 12.
            sig { returns(Integer) }
            def month; end
            sig { params(_month: Integer).returns(Integer) }
            def month=(_month); end
            # The four-digit year of birth.
            sig { returns(Integer) }
            def year; end
            sig { params(_year: Integer).returns(Integer) }
            def year=(_year); end
            sig { params(day: Integer, month: Integer, year: Integer).void }
            def initialize(day: nil, month: nil, year: nil); end
          end
          # Customer's date of birth
          sig {
            returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Klarna::Dob))
           }
          def dob; end
          sig {
            params(_dob: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Klarna::Dob)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Klarna::Dob))
           }
          def dob=(_dob); end
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
          def funding; end
          sig { params(_funding: T.nilable(String)).returns(T.nilable(String)) }
          def funding=(_funding); end
          sig { params(funding: T.nilable(String)).void }
          def initialize(funding: nil); end
        end
        class NzBankAccount < Stripe::RequestParams
          # The name on the bank account. Only required if the account holder name is different from the name of the authorized signatory collected in the PaymentMethod’s billing details.
          sig { returns(T.nilable(String)) }
          def account_holder_name; end
          sig { params(_account_holder_name: T.nilable(String)).returns(T.nilable(String)) }
          def account_holder_name=(_account_holder_name); end
          # The account number for the bank account.
          sig { returns(String) }
          def account_number; end
          sig { params(_account_number: String).returns(String) }
          def account_number=(_account_number); end
          # The numeric code for the bank account's bank.
          sig { returns(String) }
          def bank_code; end
          sig { params(_bank_code: String).returns(String) }
          def bank_code=(_bank_code); end
          # The numeric code for the bank account's bank branch.
          sig { returns(String) }
          def branch_code; end
          sig { params(_branch_code: String).returns(String) }
          def branch_code=(_branch_code); end
          # Attribute for param field reference
          sig { returns(T.nilable(String)) }
          def reference; end
          sig { params(_reference: T.nilable(String)).returns(T.nilable(String)) }
          def reference=(_reference); end
          # The suffix of the bank account number.
          sig { returns(String) }
          def suffix; end
          sig { params(_suffix: String).returns(String) }
          def suffix=(_suffix); end
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
          def bank; end
          sig { params(_bank: T.nilable(String)).returns(T.nilable(String)) }
          def bank=(_bank); end
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
          def session; end
          sig { params(_session: T.nilable(String)).returns(T.nilable(String)) }
          def session=(_session); end
          sig { params(session: T.nilable(String)).void }
          def initialize(session: nil); end
        end
        class RevolutPay < Stripe::RequestParams; end
        class SamsungPay < Stripe::RequestParams; end
        class Satispay < Stripe::RequestParams; end
        class SepaDebit < Stripe::RequestParams
          # IBAN of the bank account.
          sig { returns(String) }
          def iban; end
          sig { params(_iban: String).returns(String) }
          def iban=(_iban); end
          sig { params(iban: String).void }
          def initialize(iban: nil); end
        end
        class Sofort < Stripe::RequestParams
          # Two-letter ISO code representing the country the bank account is located in.
          sig { returns(String) }
          def country; end
          sig { params(_country: String).returns(String) }
          def country=(_country); end
          sig { params(country: String).void }
          def initialize(country: nil); end
        end
        class Swish < Stripe::RequestParams; end
        class Twint < Stripe::RequestParams; end
        class UsBankAccount < Stripe::RequestParams
          # Account holder type: individual or company.
          sig { returns(T.nilable(String)) }
          def account_holder_type; end
          sig { params(_account_holder_type: T.nilable(String)).returns(T.nilable(String)) }
          def account_holder_type=(_account_holder_type); end
          # Account number of the bank account.
          sig { returns(T.nilable(String)) }
          def account_number; end
          sig { params(_account_number: T.nilable(String)).returns(T.nilable(String)) }
          def account_number=(_account_number); end
          # Account type: checkings or savings. Defaults to checking if omitted.
          sig { returns(T.nilable(String)) }
          def account_type; end
          sig { params(_account_type: T.nilable(String)).returns(T.nilable(String)) }
          def account_type=(_account_type); end
          # The ID of a Financial Connections Account to use as a payment method.
          sig { returns(T.nilable(String)) }
          def financial_connections_account; end
          sig {
            params(_financial_connections_account: T.nilable(String)).returns(T.nilable(String))
           }
          def financial_connections_account=(_financial_connections_account); end
          # Routing number of the bank account.
          sig { returns(T.nilable(String)) }
          def routing_number; end
          sig { params(_routing_number: T.nilable(String)).returns(T.nilable(String)) }
          def routing_number=(_routing_number); end
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
        def acss_debit; end
        sig {
          params(_acss_debit: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::AcssDebit)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::AcssDebit))
         }
        def acss_debit=(_acss_debit); end
        # If this is an `affirm` PaymentMethod, this hash contains details about the Affirm payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Affirm))
         }
        def affirm; end
        sig {
          params(_affirm: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Affirm)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Affirm))
         }
        def affirm=(_affirm); end
        # If this is an `AfterpayClearpay` PaymentMethod, this hash contains details about the AfterpayClearpay payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::AfterpayClearpay))
         }
        def afterpay_clearpay; end
        sig {
          params(_afterpay_clearpay: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::AfterpayClearpay)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::AfterpayClearpay))
         }
        def afterpay_clearpay=(_afterpay_clearpay); end
        # If this is an `Alipay` PaymentMethod, this hash contains details about the Alipay payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Alipay))
         }
        def alipay; end
        sig {
          params(_alipay: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Alipay)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Alipay))
         }
        def alipay=(_alipay); end
        # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to `unspecified`.
        sig { returns(T.nilable(String)) }
        def allow_redisplay; end
        sig { params(_allow_redisplay: T.nilable(String)).returns(T.nilable(String)) }
        def allow_redisplay=(_allow_redisplay); end
        # If this is a Alma PaymentMethod, this hash contains details about the Alma payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Alma))
         }
        def alma; end
        sig {
          params(_alma: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Alma)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Alma))
         }
        def alma=(_alma); end
        # If this is a AmazonPay PaymentMethod, this hash contains details about the AmazonPay payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::AmazonPay))
         }
        def amazon_pay; end
        sig {
          params(_amazon_pay: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::AmazonPay)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::AmazonPay))
         }
        def amazon_pay=(_amazon_pay); end
        # If this is an `au_becs_debit` PaymentMethod, this hash contains details about the bank account.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::AuBecsDebit))
         }
        def au_becs_debit; end
        sig {
          params(_au_becs_debit: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::AuBecsDebit)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::AuBecsDebit))
         }
        def au_becs_debit=(_au_becs_debit); end
        # If this is a `bacs_debit` PaymentMethod, this hash contains details about the Bacs Direct Debit bank account.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::BacsDebit))
         }
        def bacs_debit; end
        sig {
          params(_bacs_debit: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::BacsDebit)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::BacsDebit))
         }
        def bacs_debit=(_bacs_debit); end
        # If this is a `bancontact` PaymentMethod, this hash contains details about the Bancontact payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Bancontact))
         }
        def bancontact; end
        sig {
          params(_bancontact: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Bancontact)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Bancontact))
         }
        def bancontact=(_bancontact); end
        # If this is a `billie` PaymentMethod, this hash contains details about the Billie payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Billie))
         }
        def billie; end
        sig {
          params(_billie: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Billie)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Billie))
         }
        def billie=(_billie); end
        # Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::BillingDetails))
         }
        def billing_details; end
        sig {
          params(_billing_details: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::BillingDetails)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::BillingDetails))
         }
        def billing_details=(_billing_details); end
        # If this is a `blik` PaymentMethod, this hash contains details about the BLIK payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Blik))
         }
        def blik; end
        sig {
          params(_blik: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Blik)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Blik))
         }
        def blik=(_blik); end
        # If this is a `boleto` PaymentMethod, this hash contains details about the Boleto payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Boleto))
         }
        def boleto; end
        sig {
          params(_boleto: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Boleto)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Boleto))
         }
        def boleto=(_boleto); end
        # If this is a `cashapp` PaymentMethod, this hash contains details about the Cash App Pay payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Cashapp))
         }
        def cashapp; end
        sig {
          params(_cashapp: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Cashapp)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Cashapp))
         }
        def cashapp=(_cashapp); end
        # If this is a Crypto PaymentMethod, this hash contains details about the Crypto payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Crypto))
         }
        def crypto; end
        sig {
          params(_crypto: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Crypto)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Crypto))
         }
        def crypto=(_crypto); end
        # If this is a `customer_balance` PaymentMethod, this hash contains details about the CustomerBalance payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::CustomerBalance))
         }
        def customer_balance; end
        sig {
          params(_customer_balance: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::CustomerBalance)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::CustomerBalance))
         }
        def customer_balance=(_customer_balance); end
        # If this is an `eps` PaymentMethod, this hash contains details about the EPS payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Eps))
         }
        def eps; end
        sig {
          params(_eps: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Eps)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Eps))
         }
        def eps=(_eps); end
        # If this is an `fpx` PaymentMethod, this hash contains details about the FPX payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Fpx))
         }
        def fpx; end
        sig {
          params(_fpx: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Fpx)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Fpx))
         }
        def fpx=(_fpx); end
        # If this is a `giropay` PaymentMethod, this hash contains details about the Giropay payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Giropay))
         }
        def giropay; end
        sig {
          params(_giropay: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Giropay)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Giropay))
         }
        def giropay=(_giropay); end
        # If this is a `grabpay` PaymentMethod, this hash contains details about the GrabPay payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Grabpay))
         }
        def grabpay; end
        sig {
          params(_grabpay: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Grabpay)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Grabpay))
         }
        def grabpay=(_grabpay); end
        # If this is an `ideal` PaymentMethod, this hash contains details about the iDEAL payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Ideal))
         }
        def ideal; end
        sig {
          params(_ideal: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Ideal)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Ideal))
         }
        def ideal=(_ideal); end
        # If this is an `interac_present` PaymentMethod, this hash contains details about the Interac Present payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::InteracPresent))
         }
        def interac_present; end
        sig {
          params(_interac_present: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::InteracPresent)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::InteracPresent))
         }
        def interac_present=(_interac_present); end
        # If this is a `kakao_pay` PaymentMethod, this hash contains details about the Kakao Pay payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::KakaoPay))
         }
        def kakao_pay; end
        sig {
          params(_kakao_pay: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::KakaoPay)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::KakaoPay))
         }
        def kakao_pay=(_kakao_pay); end
        # If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Klarna))
         }
        def klarna; end
        sig {
          params(_klarna: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Klarna)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Klarna))
         }
        def klarna=(_klarna); end
        # If this is a `konbini` PaymentMethod, this hash contains details about the Konbini payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Konbini))
         }
        def konbini; end
        sig {
          params(_konbini: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Konbini)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Konbini))
         }
        def konbini=(_konbini); end
        # If this is a `kr_card` PaymentMethod, this hash contains details about the Korean Card payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::KrCard))
         }
        def kr_card; end
        sig {
          params(_kr_card: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::KrCard)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::KrCard))
         }
        def kr_card=(_kr_card); end
        # If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Link))
         }
        def link; end
        sig {
          params(_link: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Link)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Link))
         }
        def link=(_link); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # If this is a `mobilepay` PaymentMethod, this hash contains details about the MobilePay payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Mobilepay))
         }
        def mobilepay; end
        sig {
          params(_mobilepay: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Mobilepay)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Mobilepay))
         }
        def mobilepay=(_mobilepay); end
        # If this is a `multibanco` PaymentMethod, this hash contains details about the Multibanco payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Multibanco))
         }
        def multibanco; end
        sig {
          params(_multibanco: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Multibanco)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Multibanco))
         }
        def multibanco=(_multibanco); end
        # If this is a `naver_pay` PaymentMethod, this hash contains details about the Naver Pay payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::NaverPay))
         }
        def naver_pay; end
        sig {
          params(_naver_pay: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::NaverPay)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::NaverPay))
         }
        def naver_pay=(_naver_pay); end
        # If this is an nz_bank_account PaymentMethod, this hash contains details about the nz_bank_account payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::NzBankAccount))
         }
        def nz_bank_account; end
        sig {
          params(_nz_bank_account: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::NzBankAccount)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::NzBankAccount))
         }
        def nz_bank_account=(_nz_bank_account); end
        # If this is an `oxxo` PaymentMethod, this hash contains details about the OXXO payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Oxxo))
         }
        def oxxo; end
        sig {
          params(_oxxo: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Oxxo)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Oxxo))
         }
        def oxxo=(_oxxo); end
        # If this is a `p24` PaymentMethod, this hash contains details about the P24 payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::P24))
         }
        def p24; end
        sig {
          params(_p24: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::P24)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::P24))
         }
        def p24=(_p24); end
        # If this is a `pay_by_bank` PaymentMethod, this hash contains details about the PayByBank payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::PayByBank))
         }
        def pay_by_bank; end
        sig {
          params(_pay_by_bank: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::PayByBank)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::PayByBank))
         }
        def pay_by_bank=(_pay_by_bank); end
        # If this is a `payco` PaymentMethod, this hash contains details about the PAYCO payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Payco))
         }
        def payco; end
        sig {
          params(_payco: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Payco)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Payco))
         }
        def payco=(_payco); end
        # If this is a `paynow` PaymentMethod, this hash contains details about the PayNow payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Paynow))
         }
        def paynow; end
        sig {
          params(_paynow: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Paynow)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Paynow))
         }
        def paynow=(_paynow); end
        # If this is a `paypal` PaymentMethod, this hash contains details about the PayPal payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Paypal))
         }
        def paypal; end
        sig {
          params(_paypal: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Paypal)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Paypal))
         }
        def paypal=(_paypal); end
        # If this is a `pix` PaymentMethod, this hash contains details about the Pix payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Pix))
         }
        def pix; end
        sig {
          params(_pix: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Pix)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Pix))
         }
        def pix=(_pix); end
        # If this is a `promptpay` PaymentMethod, this hash contains details about the PromptPay payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Promptpay))
         }
        def promptpay; end
        sig {
          params(_promptpay: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Promptpay)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Promptpay))
         }
        def promptpay=(_promptpay); end
        # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::RadarOptions))
         }
        def radar_options; end
        sig {
          params(_radar_options: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::RadarOptions)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::RadarOptions))
         }
        def radar_options=(_radar_options); end
        # If this is a `revolut_pay` PaymentMethod, this hash contains details about the Revolut Pay payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::RevolutPay))
         }
        def revolut_pay; end
        sig {
          params(_revolut_pay: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::RevolutPay)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::RevolutPay))
         }
        def revolut_pay=(_revolut_pay); end
        # If this is a `samsung_pay` PaymentMethod, this hash contains details about the SamsungPay payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::SamsungPay))
         }
        def samsung_pay; end
        sig {
          params(_samsung_pay: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::SamsungPay)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::SamsungPay))
         }
        def samsung_pay=(_samsung_pay); end
        # If this is a `satispay` PaymentMethod, this hash contains details about the Satispay payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Satispay))
         }
        def satispay; end
        sig {
          params(_satispay: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Satispay)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Satispay))
         }
        def satispay=(_satispay); end
        # If this is a `sepa_debit` PaymentMethod, this hash contains details about the SEPA debit bank account.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::SepaDebit))
         }
        def sepa_debit; end
        sig {
          params(_sepa_debit: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::SepaDebit)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::SepaDebit))
         }
        def sepa_debit=(_sepa_debit); end
        # If this is a `sofort` PaymentMethod, this hash contains details about the SOFORT payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Sofort))
         }
        def sofort; end
        sig {
          params(_sofort: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Sofort)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Sofort))
         }
        def sofort=(_sofort); end
        # If this is a `swish` PaymentMethod, this hash contains details about the Swish payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Swish))
         }
        def swish; end
        sig {
          params(_swish: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Swish)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Swish))
         }
        def swish=(_swish); end
        # If this is a TWINT PaymentMethod, this hash contains details about the TWINT payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Twint))
         }
        def twint; end
        sig {
          params(_twint: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Twint)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Twint))
         }
        def twint=(_twint); end
        # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        # If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::UsBankAccount))
         }
        def us_bank_account; end
        sig {
          params(_us_bank_account: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::UsBankAccount)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::UsBankAccount))
         }
        def us_bank_account=(_us_bank_account); end
        # If this is an `wechat_pay` PaymentMethod, this hash contains details about the wechat_pay payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::WechatPay))
         }
        def wechat_pay; end
        sig {
          params(_wechat_pay: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::WechatPay)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::WechatPay))
         }
        def wechat_pay=(_wechat_pay); end
        # If this is a `zip` PaymentMethod, this hash contains details about the Zip payment method.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Zip))
         }
        def zip; end
        sig {
          params(_zip: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Zip)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData::Zip))
         }
        def zip=(_zip); end
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
              def count; end
              sig { params(_count: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def count=(_count); end
              # For `fixed_count` installment plans, this is required. It represents the interval between installment payments your customer will make to their credit card.
              # One of `month`.
              sig { returns(T.nilable(String)) }
              def interval; end
              sig { params(_interval: T.nilable(String)).returns(T.nilable(String)) }
              def interval=(_interval); end
              # Type of installment plan, one of `fixed_count`, `bonus`, or `revolving`.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
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
            def plan; end
            sig {
              params(_plan: ::Stripe::ConfirmationToken::CreateParams::PaymentMethodOptions::Card::Installments::Plan).returns(::Stripe::ConfirmationToken::CreateParams::PaymentMethodOptions::Card::Installments::Plan)
             }
            def plan=(_plan); end
            sig {
              params(plan: ::Stripe::ConfirmationToken::CreateParams::PaymentMethodOptions::Card::Installments::Plan).void
             }
            def initialize(plan: nil); end
          end
          # Installment configuration for payments confirmed using this ConfirmationToken.
          sig {
            returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodOptions::Card::Installments))
           }
          def installments; end
          sig {
            params(_installments: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodOptions::Card::Installments)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodOptions::Card::Installments))
           }
          def installments=(_installments); end
          sig {
            params(installments: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodOptions::Card::Installments)).void
           }
          def initialize(installments: nil); end
        end
        # Configuration for any card payments confirmed using this ConfirmationToken.
        sig {
          returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodOptions::Card))
         }
        def card; end
        sig {
          params(_card: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodOptions::Card)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodOptions::Card))
         }
        def card=(_card); end
        sig {
          params(card: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodOptions::Card)).void
         }
        def initialize(card: nil); end
      end
      class Shipping < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          def city; end
          sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
          def city=(_city); end
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          def country; end
          sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
          def country=(_country); end
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          def line1; end
          sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_line1); end
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(T.nilable(String)) }
          def line2; end
          sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_line2); end
          # ZIP or postal code.
          sig { returns(T.nilable(String)) }
          def postal_code; end
          sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_postal_code); end
          # State, county, province, or region.
          sig { returns(T.nilable(String)) }
          def state; end
          sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
          def state=(_state); end
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
        def address; end
        sig {
          params(_address: ::Stripe::ConfirmationToken::CreateParams::Shipping::Address).returns(::Stripe::ConfirmationToken::CreateParams::Shipping::Address)
         }
        def address=(_address); end
        # Recipient name.
        sig { returns(String) }
        def name; end
        sig { params(_name: String).returns(String) }
        def name=(_name); end
        # Recipient phone (including extension)
        sig { returns(T.nilable(String)) }
        def phone; end
        sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
        def phone=(_phone); end
        sig {
          params(address: ::Stripe::ConfirmationToken::CreateParams::Shipping::Address, name: String, phone: T.nilable(String)).void
         }
        def initialize(address: nil, name: nil, phone: nil); end
      end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # ID of an existing PaymentMethod.
      sig { returns(T.nilable(String)) }
      def payment_method; end
      sig { params(_payment_method: T.nilable(String)).returns(T.nilable(String)) }
      def payment_method=(_payment_method); end
      # If provided, this hash will be used to create a PaymentMethod.
      sig { returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData)) }
      def payment_method_data; end
      sig {
        params(_payment_method_data: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodData))
       }
      def payment_method_data=(_payment_method_data); end
      # Payment-method-specific configuration for this ConfirmationToken.
      sig { returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodOptions)) }
      def payment_method_options; end
      sig {
        params(_payment_method_options: T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodOptions)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::PaymentMethodOptions))
       }
      def payment_method_options=(_payment_method_options); end
      # Return URL used to confirm the Intent.
      sig { returns(T.nilable(String)) }
      def return_url; end
      sig { params(_return_url: T.nilable(String)).returns(T.nilable(String)) }
      def return_url=(_return_url); end
      # Indicates that you intend to make future payments with this ConfirmationToken's payment method.
      #
      # The presence of this property will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the PaymentIntent's Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete.
      sig { returns(T.nilable(String)) }
      def setup_future_usage; end
      sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
      def setup_future_usage=(_setup_future_usage); end
      # Shipping information for this ConfirmationToken.
      sig { returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::Shipping)) }
      def shipping; end
      sig {
        params(_shipping: T.nilable(::Stripe::ConfirmationToken::CreateParams::Shipping)).returns(T.nilable(::Stripe::ConfirmationToken::CreateParams::Shipping))
       }
      def shipping=(_shipping); end
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