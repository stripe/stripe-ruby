# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module SharedPayment
    # SharedPaymentGrantedToken is the view-only resource of a SharedPaymentIssuedToken, which is a limited-use reference to a PaymentMethod.
    # When another Stripe merchant shares a SharedPaymentIssuedToken with you, you can view attributes of the shared token using the SharedPaymentGrantedToken API, and use it with a PaymentIntent.
    class GrantedToken < APIResource
      OBJECT_NAME = "shared_payment.granted_token"
      def self.object_name
        "shared_payment.granted_token"
      end

      class AgentDetails < ::Stripe::StripeObject
        # The Stripe Profile ID of the agent that issued this SharedPaymentGrantedToken.
        attr_reader :network_business_profile

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
            attr_reader :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            attr_reader :country
            # Address line 1, such as the street, PO Box, or company name.
            attr_reader :line1
            # Address line 2, such as the apartment, suite, unit, or building.
            attr_reader :line2
            # ZIP or postal code.
            attr_reader :postal_code
            # State, county, province, or region ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
            attr_reader :state

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Billing address.
          attr_reader :address
          # Email address.
          attr_reader :email
          # Full name.
          attr_reader :name
          # Billing phone number (including extension).
          attr_reader :phone
          # Taxpayer identification number. Used only for transactions between LATAM buyers and non-LATAM sellers.
          attr_reader :tax_id

          def self.inner_class_types
            @inner_class_types = { address: Address }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Card < ::Stripe::StripeObject
          class Checks < ::Stripe::StripeObject
            # If a address line1 was provided, results of the check, one of `pass`, `fail`, `unavailable`, or `unchecked`.
            attr_reader :address_line1_check
            # If a address postal code was provided, results of the check, one of `pass`, `fail`, `unavailable`, or `unchecked`.
            attr_reader :address_postal_code_check
            # If a CVC was provided, results of the check, one of `pass`, `fail`, `unavailable`, or `unchecked`.
            attr_reader :cvc_check

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Networks < ::Stripe::StripeObject
            # All networks available for selection via [payment_method_options.card.network](/api/payment_intents/confirm#confirm_payment_intent-payment_method_options-card-network).
            attr_reader :available
            # The preferred network for co-branded cards. Can be `cartes_bancaires`, `mastercard`, `visa` or `invalid_preference` if requested network is not valid for the card.
            attr_reader :preferred

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
                attr_reader :city
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                attr_reader :country
                # Address line 1, such as the street, PO Box, or company name.
                attr_reader :line1
                # Address line 2, such as the apartment, suite, unit, or building.
                attr_reader :line2
                # ZIP or postal code.
                attr_reader :postal_code
                # State, county, province, or region ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
                attr_reader :state

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class ShippingAddress < ::Stripe::StripeObject
                # City, district, suburb, town, or village.
                attr_reader :city
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                attr_reader :country
                # Address line 1, such as the street, PO Box, or company name.
                attr_reader :line1
                # Address line 2, such as the apartment, suite, unit, or building.
                attr_reader :line2
                # ZIP or postal code.
                attr_reader :postal_code
                # State, county, province, or region ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
                attr_reader :state

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Owner's verified billing address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
              attr_reader :billing_address
              # Owner's verified email. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
              attr_reader :email
              # Owner's verified full name. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
              attr_reader :name
              # Owner's verified shipping address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
              attr_reader :shipping_address

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
                attr_reader :city
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                attr_reader :country
                # Address line 1, such as the street, PO Box, or company name.
                attr_reader :line1
                # Address line 2, such as the apartment, suite, unit, or building.
                attr_reader :line2
                # ZIP or postal code.
                attr_reader :postal_code
                # State, county, province, or region ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
                attr_reader :state

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class ShippingAddress < ::Stripe::StripeObject
                # City, district, suburb, town, or village.
                attr_reader :city
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                attr_reader :country
                # Address line 1, such as the street, PO Box, or company name.
                attr_reader :line1
                # Address line 2, such as the apartment, suite, unit, or building.
                attr_reader :line2
                # ZIP or postal code.
                attr_reader :postal_code
                # State, county, province, or region ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
                attr_reader :state

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Owner's verified billing address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
              attr_reader :billing_address
              # Owner's verified email. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
              attr_reader :email
              # Owner's verified full name. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
              attr_reader :name
              # Owner's verified shipping address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
              attr_reader :shipping_address

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
          # Issuer identification number of the card. (For internal use only and not typically available in standard API requests.)
          attr_reader :iin
          # The name of the card's issuing bank. (For internal use only and not typically available in standard API requests.)
          attr_reader :issuer
          # The last four digits of the card.
          attr_reader :last4
          # Contains information about card networks that can be used to process the payment.
          attr_reader :networks
          # If this Card is part of a card wallet, this contains the details of the card wallet.
          attr_reader :wallet

          def self.inner_class_types
            @inner_class_types = { checks: Checks, networks: Networks, wallet: Wallet }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Klarna < ::Stripe::StripeObject
          class Dob < ::Stripe::StripeObject
            # The day of birth, between 1 and 31.
            attr_reader :day
            # The month of birth, between 1 and 12.
            attr_reader :month
            # The four-digit year of birth.
            attr_reader :year

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The customer's date of birth, if provided.
          attr_reader :dob

          def self.inner_class_types
            @inner_class_types = { dob: Dob }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Link < ::Stripe::StripeObject
          # Account owner's email address.
          attr_reader :email
          # [Deprecated] This is a legacy parameter that no longer has any function.
          attr_reader :persistent_token

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field affirm
        attr_reader :affirm
        # Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
        attr_reader :billing_details
        # Attribute for field card
        attr_reader :card
        # Attribute for field klarna
        attr_reader :klarna
        # Attribute for field link
        attr_reader :link
        # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
        attr_reader :type

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
            attr_reader :recommended_action
            # Risk score for this insight.
            attr_reader :score

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class CardIssuerDecline < ::Stripe::StripeObject
            # Recommended action for this insight.
            attr_reader :recommended_action
            # Risk score for this insight.
            attr_reader :score

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class CardTesting < ::Stripe::StripeObject
            # Recommended action for this insight.
            attr_reader :recommended_action
            # Risk score for this insight.
            attr_reader :score

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class FraudulentDispute < ::Stripe::StripeObject
            # Recommended action for this insight.
            attr_reader :recommended_action
            # Risk score for this insight.
            attr_reader :score

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class StolenCard < ::Stripe::StripeObject
            # Recommended action for this insight.
            attr_reader :recommended_action
            # Risk score for this insight.
            attr_reader :score

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Bot risk insight.
          attr_reader :bot
          # Card issuer decline risk insight.
          attr_reader :card_issuer_decline
          # Card testing risk insight.
          attr_reader :card_testing
          # Fraudulent dispute risk insight.
          attr_reader :fraudulent_dispute
          # Stolen card risk insight.
          attr_reader :stolen_card

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
        attr_reader :insights

        def self.inner_class_types
          @inner_class_types = { insights: Insights }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class UsageDetails < ::Stripe::StripeObject
        class AmountCaptured < ::Stripe::StripeObject
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_reader :currency
          # Integer value of the amount in the smallest currency unit.
          attr_reader :value

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The total amount captured using this SharedPaymentToken.
        attr_reader :amount_captured

        def self.inner_class_types
          @inner_class_types = { amount_captured: AmountCaptured }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class UsageLimits < ::Stripe::StripeObject
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        attr_reader :currency
        # Time at which this SharedPaymentToken expires and can no longer be used to confirm a PaymentIntent.
        attr_reader :expires_at
        # Max amount that can be captured using this SharedPaymentToken.
        attr_reader :max_amount
        # The recurring interval at which the shared payment token's amount usage restrictions reset.
        attr_reader :recurring_interval

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Details about the agent that issued this SharedPaymentGrantedToken.
      attr_reader :agent_details
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # Time at which this SharedPaymentGrantedToken expires and can no longer be used to confirm a PaymentIntent.
      attr_reader :deactivated_at
      # The reason why the SharedPaymentGrantedToken has been deactivated.
      attr_reader :deactivated_reason
      # Unique identifier for the object.
      attr_reader :id
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Details of the PaymentMethod that was shared via this token.
      attr_reader :payment_method_details
      # Risk details of the SharedPaymentGrantedToken.
      attr_reader :risk_details
      # Metadata about the SharedPaymentGrantedToken.
      attr_reader :shared_metadata
      # Some details about how the SharedPaymentGrantedToken has been used already.
      attr_reader :usage_details
      # Limits on how this SharedPaymentGrantedToken can be used.
      attr_reader :usage_limits

      def test_helpers
        TestHelpers.new(self)
      end

      class TestHelpers < APIResourceTestHelpers
        RESOURCE_CLASS = GrantedToken
        def self.resource_class
          "GrantedToken"
        end

        # Creates a new test SharedPaymentGrantedToken object. This endpoint is only available in test mode and allows sellers to create SharedPaymentGrantedTokens for testing their integration
        def self.create(params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: "/v1/test_helpers/shared_payment/granted_tokens",
            params: params,
            opts: opts
          )
        end

        # Revokes a test SharedPaymentGrantedToken object. This endpoint is only available in test mode and allows sellers to revoke SharedPaymentGrantedTokens for testing their integration
        def self.revoke(shared_payment_granted_token, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/shared_payment/granted_tokens/%<shared_payment_granted_token>s/revoke", { shared_payment_granted_token: CGI.escape(shared_payment_granted_token) }),
            params: params,
            opts: opts
          )
        end

        # Revokes a test SharedPaymentGrantedToken object. This endpoint is only available in test mode and allows sellers to revoke SharedPaymentGrantedTokens for testing their integration
        def revoke(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/shared_payment/granted_tokens/%<shared_payment_granted_token>s/revoke", { shared_payment_granted_token: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end
      end

      def self.inner_class_types
        @inner_class_types = {
          agent_details: AgentDetails,
          payment_method_details: PaymentMethodDetails,
          risk_details: RiskDetails,
          usage_details: UsageDetails,
          usage_limits: UsageLimits,
        }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
