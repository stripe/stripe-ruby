# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Radar
    # Payment Evaluations represent the risk lifecycle of an externally processed payment. It includes the Radar risk score from Stripe, payment outcome taken by the merchant or processor, and any post transaction events, such as refunds or disputes. See the [Radar API guide](https://docs.stripe.com/radar/multiprocessor) for integration steps.
    class PaymentEvaluation < APIResource
      extend Stripe::APIOperations::Create

      OBJECT_NAME = "radar.payment_evaluation"
      def self.object_name
        "radar.payment_evaluation"
      end

      class ClientDeviceMetadataDetails < ::Stripe::StripeObject
        # ID for the Radar Session associated with the payment evaluation. A [Radar Session](https://docs.stripe.com/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
        attr_reader :radar_session

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class CustomerDetails < ::Stripe::StripeObject
        # The ID of the customer associated with the payment evaluation.
        attr_reader :customer
        # The ID of the Account representing the customer associated with the payment evaluation.
        attr_reader :customer_account
        # The customer's email address.
        attr_reader :email
        # The customer's full name or business name.
        attr_reader :name
        # The customer's phone number.
        attr_reader :phone

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class Event < ::Stripe::StripeObject
        class DisputeOpened < ::Stripe::StripeObject
          # Amount to dispute for this payment. A positive integer representing how much to charge in [the smallest currency unit](https://docs.stripe.com/currencies#zero-decimal) (for example, 100 cents to charge 1.00 USD or 100 to charge 100 Yen, a zero-decimal currency).
          attr_reader :amount
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_reader :currency
          # Reason given by cardholder for dispute.
          attr_reader :reason

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class EarlyFraudWarningReceived < ::Stripe::StripeObject
          # The type of fraud labeled by the issuer.
          attr_reader :fraud_type

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Refunded < ::Stripe::StripeObject
          # Amount refunded for this payment. A positive integer representing how much to charge in [the smallest currency unit](https://docs.stripe.com/currencies#zero-decimal) (for example, 100 cents to charge 1.00 USD or 100 to charge 100 Yen, a zero-decimal currency).
          attr_reader :amount
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_reader :currency
          # Indicates the reason for the refund.
          attr_reader :reason

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class UserInterventionRaised < ::Stripe::StripeObject
          class Custom < ::Stripe::StripeObject
            # Custom type of user intervention raised. The string must use a snake case description for the type of intervention performed.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # User intervention raised custom event details attached to this payment evaluation
          attr_reader :custom
          # Unique identifier for the user intervention event.
          attr_reader :key
          # Type of user intervention raised.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = { custom: Custom }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class UserInterventionResolved < ::Stripe::StripeObject
          # Unique ID of this intervention. Use this to provide the result.
          attr_reader :key
          # Result of the intervention if it has been completed.
          attr_reader :outcome

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Dispute opened event details attached to this payment evaluation.
        attr_reader :dispute_opened
        # Early Fraud Warning Received event details attached to this payment evaluation.
        attr_reader :early_fraud_warning_received
        # Timestamp when the event occurred.
        attr_reader :occurred_at
        # Refunded Event details attached to this payment evaluation.
        attr_reader :refunded
        # Indicates the type of event attached to the payment evaluation.
        attr_reader :type
        # User intervention raised event details attached to this payment evaluation
        attr_reader :user_intervention_raised
        # User Intervention Resolved Event details attached to this payment evaluation
        attr_reader :user_intervention_resolved

        def self.inner_class_types
          @inner_class_types = {
            dispute_opened: DisputeOpened,
            early_fraud_warning_received: EarlyFraudWarningReceived,
            refunded: Refunded,
            user_intervention_raised: UserInterventionRaised,
            user_intervention_resolved: UserInterventionResolved,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class Insights < ::Stripe::StripeObject
        class CardIssuerDecline < ::Stripe::StripeObject
          # Stripe Radar's evaluation of the likelihood that the payment will be declined by the card issuer. Scores range from 0 to 100, with higher values indicating a higher likelihood of decline.
          attr_reader :model_score
          # Recommended action based on the model score. Possible values are `block` and `continue`.
          attr_reader :recommended_action

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class FraudulentDispute < ::Stripe::StripeObject
          # Recommended action based on the risk score. Possible values are `block` and `continue`.
          attr_reader :recommended_action
          # Stripe Radar’s evaluation of the risk level of the payment. Possible values for evaluated payments are between 0 and 100, with higher scores indicating higher risk.
          attr_reader :risk_score

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Stripe Radar's evaluation of the likelihood of a card issuer decline on this payment.
        attr_reader :card_issuer_decline
        # The timestamp when the evaluation was performed.
        attr_reader :evaluated_at
        # Scores, insights and recommended action for one scorer for this PaymentEvaluation.
        attr_reader :fraudulent_dispute

        def self.inner_class_types
          @inner_class_types = {
            card_issuer_decline: CardIssuerDecline,
            fraudulent_dispute: FraudulentDispute,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class Outcome < ::Stripe::StripeObject
        class MerchantBlocked < ::Stripe::StripeObject
          # The reason the payment was blocked by the merchant.
          attr_reader :reason

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Rejected < ::Stripe::StripeObject
          class Card < ::Stripe::StripeObject
            # Result of the address line 1 check.
            attr_reader :address_line1_check
            # Indicates whether the cardholder provided a postal code and if it matched the cardholder’s billing address.
            attr_reader :address_postal_code_check
            # Result of the CVC check.
            attr_reader :cvc_check
            # Card issuer's reason for the network decline.
            attr_reader :reason

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Details of an rejected card outcome attached to this payment evaluation.
          attr_reader :card

          def self.inner_class_types
            @inner_class_types = { card: Card }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Succeeded < ::Stripe::StripeObject
          class Card < ::Stripe::StripeObject
            # Result of the address line 1 check.
            attr_reader :address_line1_check
            # Indicates whether the cardholder provided a postal code and if it matched the cardholder’s billing address.
            attr_reader :address_postal_code_check
            # Result of the CVC check.
            attr_reader :cvc_check

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Details of an succeeded card outcome attached to this payment evaluation.
          attr_reader :card

          def self.inner_class_types
            @inner_class_types = { card: Card }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Details of a merchant_blocked outcome attached to this payment evaluation.
        attr_reader :merchant_blocked
        # The PaymentIntent ID associated with the payment evaluation.
        attr_reader :payment_intent_id
        # Details of an rejected outcome attached to this payment evaluation.
        attr_reader :rejected
        # Details of a succeeded outcome attached to this payment evaluation.
        attr_reader :succeeded
        # Indicates the outcome of the payment evaluation.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = {
            merchant_blocked: MerchantBlocked,
            rejected: Rejected,
            succeeded: Succeeded,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class PaymentDetails < ::Stripe::StripeObject
        class MoneyMovementDetails < ::Stripe::StripeObject
          class Card < ::Stripe::StripeObject
            # Describes the presence of the customer during the payment.
            attr_reader :customer_presence
            # Describes the type of payment.
            attr_reader :payment_type

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Describes card money movement details for the payment evaluation.
          attr_reader :card
          # Describes the type of money movement. Currently only `card` is supported.
          attr_reader :money_movement_type

          def self.inner_class_types
            @inner_class_types = { card: Card }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class PaymentMethodDetails < ::Stripe::StripeObject
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
            # Address data.
            attr_reader :address
            # Email address.
            attr_reader :email
            # Full name.
            attr_reader :name
            # Billing phone number (including extension).
            attr_reader :phone

            def self.inner_class_types
              @inner_class_types = { address: Address }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Billing information associated with the payment evaluation.
          attr_reader :billing_details
          # The payment method used in this payment evaluation.
          attr_reader :payment_method

          def self.inner_class_types
            @inner_class_types = { billing_details: BillingDetails }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class ShippingDetails < ::Stripe::StripeObject
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
          # Address data.
          attr_reader :address
          # Shipping name.
          attr_reader :name
          # Shipping phone number.
          attr_reader :phone

          def self.inner_class_types
            @inner_class_types = { address: Address }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Amount intended to be collected by this payment. A positive integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://docs.stripe.com/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
        attr_reader :amount
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        attr_reader :currency
        # An arbitrary string attached to the object. Often useful for displaying to users.
        attr_reader :description
        # Details about the payment's customer presence and type.
        attr_reader :money_movement_details
        # Details about the payment method used for the payment.
        attr_reader :payment_method_details
        # Shipping details for the payment evaluation.
        attr_reader :shipping_details
        # Payment statement descriptor.
        attr_reader :statement_descriptor

        def self.inner_class_types
          @inner_class_types = {
            money_movement_details: MoneyMovementDetails,
            payment_method_details: PaymentMethodDetails,
            shipping_details: ShippingDetails,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Client device metadata attached to this payment evaluation.
      attr_reader :client_device_metadata_details
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created_at
      # Customer details attached to this payment evaluation.
      attr_reader :customer_details
      # Event information associated with the payment evaluation, such as refunds, dispute, early fraud warnings, or user interventions.
      attr_reader :events
      # Unique identifier for the object.
      attr_reader :id
      # Collection of scores and insights for this payment evaluation.
      attr_reader :insights
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Indicates the final outcome for the payment evaluation.
      attr_reader :outcome
      # Payment details attached to this payment evaluation.
      attr_reader :payment_details

      # Request a Radar API fraud risk score from Stripe for a payment before sending it for external processor authorization.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/radar/payment_evaluations",
          params: params,
          opts: opts
        )
      end

      def self.inner_class_types
        @inner_class_types = {
          client_device_metadata_details: ClientDeviceMetadataDetails,
          customer_details: CustomerDetails,
          events: Event,
          insights: Insights,
          outcome: Outcome,
          payment_details: PaymentDetails,
        }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
