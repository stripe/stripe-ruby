# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module SharedPayment
    # SharedPaymentGrantedToken is the view-only resource of a SharedPaymentIssuedToken, which is a limited-use reference to a PaymentMethod.
    # When another Stripe merchant shares a SharedPaymentIssuedToken with you, you can view attributes of the shared token using the SharedPaymentGrantedToken API, and use it with a PaymentIntent.
    class GrantedToken < APIResource
      class AgentDetails < ::Stripe::StripeObject
        # The Stripe Profile ID of the agent that issued this SharedPaymentGrantedToken.
        sig { returns(T.nilable(String)) }
        def network_business_profile; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class PaymentMethodDetails < ::Stripe::StripeObject
        class Affirm < ::Stripe::StripeObject
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class BillingDetails < ::Stripe::StripeObject
          class Address < ::Stripe::StripeObject
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            def city; end
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            def country; end
            # Address line 1, such as the street, PO Box, or company name.
            sig { returns(T.nilable(String)) }
            def line1; end
            # Address line 2, such as the apartment, suite, unit, or building.
            sig { returns(T.nilable(String)) }
            def line2; end
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            def postal_code; end
            # State, county, province, or region ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
            sig { returns(T.nilable(String)) }
            def state; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
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
          def self.inner_class_types
            @inner_class_types = {address: Address}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Card < ::Stripe::StripeObject
          class Checks < ::Stripe::StripeObject
            # If a address line1 was provided, results of the check, one of `pass`, `fail`, `unavailable`, or `unchecked`.
            sig { returns(T.nilable(String)) }
            def address_line1_check; end
            # If a address postal code was provided, results of the check, one of `pass`, `fail`, `unavailable`, or `unchecked`.
            sig { returns(T.nilable(String)) }
            def address_postal_code_check; end
            # If a CVC was provided, results of the check, one of `pass`, `fail`, `unavailable`, or `unchecked`.
            sig { returns(T.nilable(String)) }
            def cvc_check; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Networks < ::Stripe::StripeObject
            # All networks available for selection via [payment_method_options.card.network](/api/payment_intents/confirm#confirm_payment_intent-payment_method_options-card-network).
            sig { returns(T::Array[String]) }
            def available; end
            # The preferred network for co-branded cards. Can be `cartes_bancaires`, `mastercard`, `visa` or `invalid_preference` if requested network is not valid for the card.
            sig { returns(T.nilable(String)) }
            def preferred; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Wallet < ::Stripe::StripeObject
            class AmexExpressCheckout < ::Stripe::StripeObject
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class ApplePay < ::Stripe::StripeObject
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class GooglePay < ::Stripe::StripeObject
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class Link < ::Stripe::StripeObject
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class Masterpass < ::Stripe::StripeObject
              class BillingAddress < ::Stripe::StripeObject
                # City, district, suburb, town, or village.
                sig { returns(T.nilable(String)) }
                def city; end
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                sig { returns(T.nilable(String)) }
                def country; end
                # Address line 1, such as the street, PO Box, or company name.
                sig { returns(T.nilable(String)) }
                def line1; end
                # Address line 2, such as the apartment, suite, unit, or building.
                sig { returns(T.nilable(String)) }
                def line2; end
                # ZIP or postal code.
                sig { returns(T.nilable(String)) }
                def postal_code; end
                # State, county, province, or region ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
                sig { returns(T.nilable(String)) }
                def state; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              class ShippingAddress < ::Stripe::StripeObject
                # City, district, suburb, town, or village.
                sig { returns(T.nilable(String)) }
                def city; end
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                sig { returns(T.nilable(String)) }
                def country; end
                # Address line 1, such as the street, PO Box, or company name.
                sig { returns(T.nilable(String)) }
                def line1; end
                # Address line 2, such as the apartment, suite, unit, or building.
                sig { returns(T.nilable(String)) }
                def line2; end
                # ZIP or postal code.
                sig { returns(T.nilable(String)) }
                def postal_code; end
                # State, county, province, or region ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
                sig { returns(T.nilable(String)) }
                def state; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
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
              def self.inner_class_types
                @inner_class_types = {
                  billing_address: BillingAddress,
                  shipping_address: ShippingAddress,
                }
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class SamsungPay < ::Stripe::StripeObject
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class VisaCheckout < ::Stripe::StripeObject
              class BillingAddress < ::Stripe::StripeObject
                # City, district, suburb, town, or village.
                sig { returns(T.nilable(String)) }
                def city; end
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                sig { returns(T.nilable(String)) }
                def country; end
                # Address line 1, such as the street, PO Box, or company name.
                sig { returns(T.nilable(String)) }
                def line1; end
                # Address line 2, such as the apartment, suite, unit, or building.
                sig { returns(T.nilable(String)) }
                def line2; end
                # ZIP or postal code.
                sig { returns(T.nilable(String)) }
                def postal_code; end
                # State, county, province, or region ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
                sig { returns(T.nilable(String)) }
                def state; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              class ShippingAddress < ::Stripe::StripeObject
                # City, district, suburb, town, or village.
                sig { returns(T.nilable(String)) }
                def city; end
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                sig { returns(T.nilable(String)) }
                def country; end
                # Address line 1, such as the street, PO Box, or company name.
                sig { returns(T.nilable(String)) }
                def line1; end
                # Address line 2, such as the apartment, suite, unit, or building.
                sig { returns(T.nilable(String)) }
                def line2; end
                # ZIP or postal code.
                sig { returns(T.nilable(String)) }
                def postal_code; end
                # State, county, province, or region ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
                sig { returns(T.nilable(String)) }
                def state; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
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
              def self.inner_class_types
                @inner_class_types = {
                  billing_address: BillingAddress,
                  shipping_address: ShippingAddress,
                }
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Attribute for field amex_express_checkout
            sig { returns(T.nilable(AmexExpressCheckout)) }
            def amex_express_checkout; end
            # Attribute for field apple_pay
            sig { returns(T.nilable(ApplePay)) }
            def apple_pay; end
            # (For tokenized numbers only.) The last four digits of the device account number.
            sig { returns(T.nilable(String)) }
            def dynamic_last4; end
            # Attribute for field google_pay
            sig { returns(T.nilable(GooglePay)) }
            def google_pay; end
            # Attribute for field link
            sig { returns(T.nilable(Link)) }
            def link; end
            # Attribute for field masterpass
            sig { returns(T.nilable(Masterpass)) }
            def masterpass; end
            # Attribute for field samsung_pay
            sig { returns(T.nilable(SamsungPay)) }
            def samsung_pay; end
            # The type of the card wallet, one of `amex_express_checkout`, `apple_pay`, `google_pay`, `masterpass`, `samsung_pay`, `visa_checkout`, or `link`. An additional hash is included on the Wallet subhash with a name matching this value. It contains additional information specific to the card wallet type.
            sig { returns(String) }
            def type; end
            # Attribute for field visa_checkout
            sig { returns(T.nilable(VisaCheckout)) }
            def visa_checkout; end
            def self.inner_class_types
              @inner_class_types = {
                amex_express_checkout: AmexExpressCheckout,
                apple_pay: ApplePay,
                google_pay: GooglePay,
                link: Link,
                masterpass: Masterpass,
                samsung_pay: SamsungPay,
                visa_checkout: VisaCheckout,
              }
            end
            def self.field_remappings
              @field_remappings = {}
            end
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
          # If this Card is part of a card wallet, this contains the details of the card wallet.
          sig { returns(T.nilable(Wallet)) }
          def wallet; end
          def self.inner_class_types
            @inner_class_types = {checks: Checks, networks: Networks, wallet: Wallet}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Klarna < ::Stripe::StripeObject
          class Dob < ::Stripe::StripeObject
            # The day of birth, between 1 and 31.
            sig { returns(T.nilable(Integer)) }
            def day; end
            # The month of birth, between 1 and 12.
            sig { returns(T.nilable(Integer)) }
            def month; end
            # The four-digit year of birth.
            sig { returns(T.nilable(Integer)) }
            def year; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The customer's date of birth, if provided.
          sig { returns(T.nilable(Dob)) }
          def dob; end
          def self.inner_class_types
            @inner_class_types = {dob: Dob}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Link < ::Stripe::StripeObject
          # Account owner's email address.
          sig { returns(T.nilable(String)) }
          def email; end
          # [Deprecated] This is a legacy parameter that no longer has any function.
          sig { returns(T.nilable(String)) }
          def persistent_token; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field affirm
        sig { returns(T.nilable(Affirm)) }
        def affirm; end
        # Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
        sig { returns(T.nilable(BillingDetails)) }
        def billing_details; end
        # Attribute for field card
        sig { returns(T.nilable(Card)) }
        def card; end
        # Attribute for field klarna
        sig { returns(T.nilable(Klarna)) }
        def klarna; end
        # Attribute for field link
        sig { returns(T.nilable(Link)) }
        def link; end
        # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
        sig { returns(String) }
        def type; end
        def self.inner_class_types
          @inner_class_types = {
            affirm: Affirm,
            billing_details: BillingDetails,
            card: Card,
            klarna: Klarna,
            link: Link,
          }
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class RiskDetails < ::Stripe::StripeObject
        class Insights < ::Stripe::StripeObject
          class Bot < ::Stripe::StripeObject
            # Recommended action for this insight.
            sig { returns(String) }
            def recommended_action; end
            # Risk score for this insight.
            sig { returns(Float) }
            def score; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class CardIssuerDecline < ::Stripe::StripeObject
            # Recommended action for this insight.
            sig { returns(String) }
            def recommended_action; end
            # Risk score for this insight.
            sig { returns(Float) }
            def score; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class CardTesting < ::Stripe::StripeObject
            # Recommended action for this insight.
            sig { returns(String) }
            def recommended_action; end
            # Risk score for this insight.
            sig { returns(Float) }
            def score; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class FraudulentDispute < ::Stripe::StripeObject
            # Recommended action for this insight.
            sig { returns(String) }
            def recommended_action; end
            # Risk score for this insight.
            sig { returns(Integer) }
            def score; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class StolenCard < ::Stripe::StripeObject
            # Recommended action for this insight.
            sig { returns(String) }
            def recommended_action; end
            # Risk score for this insight.
            sig { returns(Integer) }
            def score; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Bot risk insight.
          sig { returns(T.nilable(Bot)) }
          def bot; end
          # Card issuer decline risk insight.
          sig { returns(T.nilable(CardIssuerDecline)) }
          def card_issuer_decline; end
          # Card testing risk insight.
          sig { returns(T.nilable(CardTesting)) }
          def card_testing; end
          # Fraudulent dispute risk insight.
          sig { returns(T.nilable(FraudulentDispute)) }
          def fraudulent_dispute; end
          # Stolen card risk insight.
          sig { returns(T.nilable(StolenCard)) }
          def stolen_card; end
          def self.inner_class_types
            @inner_class_types = {
              bot: Bot,
              card_issuer_decline: CardIssuerDecline,
              card_testing: CardTesting,
              fraudulent_dispute: FraudulentDispute,
              stolen_card: StolenCard,
            }
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Risk insights for this token, including scores and recommended actions for each risk type.
        sig { returns(Insights) }
        def insights; end
        def self.inner_class_types
          @inner_class_types = {insights: Insights}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class UsageDetails < ::Stripe::StripeObject
        class AmountCaptured < ::Stripe::StripeObject
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          def currency; end
          # Integer value of the amount in the smallest currency unit.
          sig { returns(Integer) }
          def value; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The total amount captured using this SharedPaymentToken.
        sig { returns(T.nilable(AmountCaptured)) }
        def amount_captured; end
        def self.inner_class_types
          @inner_class_types = {amount_captured: AmountCaptured}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class UsageLimits < ::Stripe::StripeObject
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        def currency; end
        # Time at which this SharedPaymentToken expires and can no longer be used to confirm a PaymentIntent.
        sig { returns(T.nilable(Integer)) }
        def expires_at; end
        # Max amount that can be captured using this SharedPaymentToken.
        sig { returns(Integer) }
        def max_amount; end
        # The recurring interval at which the shared payment token's amount usage restrictions reset.
        sig { returns(T.nilable(String)) }
        def recurring_interval; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Details about the agent that issued this SharedPaymentGrantedToken.
      sig { returns(T.nilable(AgentDetails)) }
      def agent_details; end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # Time at which this SharedPaymentGrantedToken expires and can no longer be used to confirm a PaymentIntent.
      sig { returns(T.nilable(Integer)) }
      def deactivated_at; end
      # The reason why the SharedPaymentGrantedToken has been deactivated.
      sig { returns(T.nilable(String)) }
      def deactivated_reason; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      sig { returns(T::Boolean) }
      def livemode; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # Details of the PaymentMethod that was shared via this token.
      sig { returns(T.nilable(PaymentMethodDetails)) }
      def payment_method_details; end
      # Risk details of the SharedPaymentGrantedToken.
      sig { returns(T.nilable(RiskDetails)) }
      def risk_details; end
      # Metadata about the SharedPaymentGrantedToken.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def shared_metadata; end
      # Some details about how the SharedPaymentGrantedToken has been used already.
      sig { returns(T.nilable(UsageDetails)) }
      def usage_details; end
      # Limits on how this SharedPaymentGrantedToken can be used.
      sig { returns(T.nilable(UsageLimits)) }
      def usage_limits; end
    end
  end
end