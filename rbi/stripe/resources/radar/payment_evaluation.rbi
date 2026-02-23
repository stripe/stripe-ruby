# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Radar
    # Payment Evaluations represent the risk lifecycle of an externally processed payment. It includes the Radar risk score from Stripe, payment outcome taken by the merchant or processor, and any post transaction events, such as refunds or disputes. See the [Radar API guide](https://docs.stripe.com/radar/multiprocessor) for integration steps.
    class PaymentEvaluation < APIResource
      class ClientDeviceMetadataDetails < ::Stripe::StripeObject
        # ID for the Radar Session associated with the payment evaluation. A [Radar Session](https://docs.stripe.com/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
        sig { returns(String) }
        def radar_session; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class CustomerDetails < ::Stripe::StripeObject
        # The ID of the customer associated with the payment evaluation.
        sig { returns(T.nilable(String)) }
        def customer; end
        # The ID of the Account representing the customer associated with the payment evaluation.
        sig { returns(T.nilable(String)) }
        def customer_account; end
        # The customer's email address.
        sig { returns(T.nilable(String)) }
        def email; end
        # The customer's full name or business name.
        sig { returns(T.nilable(String)) }
        def name; end
        # The customer's phone number.
        sig { returns(T.nilable(String)) }
        def phone; end
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
          sig { returns(Integer) }
          def amount; end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          def currency; end
          # Reason given by cardholder for dispute.
          sig { returns(String) }
          def reason; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class EarlyFraudWarningReceived < ::Stripe::StripeObject
          # The type of fraud labeled by the issuer.
          sig { returns(String) }
          def fraud_type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Refunded < ::Stripe::StripeObject
          # Amount refunded for this payment. A positive integer representing how much to charge in [the smallest currency unit](https://docs.stripe.com/currencies#zero-decimal) (for example, 100 cents to charge 1.00 USD or 100 to charge 100 Yen, a zero-decimal currency).
          sig { returns(Integer) }
          def amount; end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          def currency; end
          # Indicates the reason for the refund.
          sig { returns(String) }
          def reason; end
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
            sig { returns(String) }
            def type; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # User intervention raised custom event details attached to this payment evaluation
          sig { returns(T.nilable(Custom)) }
          def custom; end
          # Unique identifier for the user intervention event.
          sig { returns(String) }
          def key; end
          # Type of user intervention raised.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {custom: Custom}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class UserInterventionResolved < ::Stripe::StripeObject
          # Unique ID of this intervention. Use this to provide the result.
          sig { returns(String) }
          def key; end
          # Result of the intervention if it has been completed.
          sig { returns(T.nilable(String)) }
          def outcome; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Dispute opened event details attached to this payment evaluation.
        sig { returns(T.nilable(DisputeOpened)) }
        def dispute_opened; end
        # Early Fraud Warning Received event details attached to this payment evaluation.
        sig { returns(T.nilable(EarlyFraudWarningReceived)) }
        def early_fraud_warning_received; end
        # Timestamp when the event occurred.
        sig { returns(Integer) }
        def occurred_at; end
        # Refunded Event details attached to this payment evaluation.
        sig { returns(T.nilable(Refunded)) }
        def refunded; end
        # Indicates the type of event attached to the payment evaluation.
        sig { returns(String) }
        def type; end
        # User intervention raised event details attached to this payment evaluation
        sig { returns(T.nilable(UserInterventionRaised)) }
        def user_intervention_raised; end
        # User Intervention Resolved Event details attached to this payment evaluation
        sig { returns(T.nilable(UserInterventionResolved)) }
        def user_intervention_resolved; end
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
        class FraudulentDispute < ::Stripe::StripeObject
          # Recommended action based on the risk score. Possible values are `block` and `continue`.
          sig { returns(String) }
          def recommended_action; end
          # Stripe Radar’s evaluation of the risk level of the payment. Possible values for evaluated payments are between 0 and 100, with higher scores indicating higher risk.
          sig { returns(Integer) }
          def risk_score; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The timestamp when the evaluation was performed.
        sig { returns(Integer) }
        def evaluated_at; end
        # Scores, insights and recommended action for one scorer for this PaymentEvaluation.
        sig { returns(FraudulentDispute) }
        def fraudulent_dispute; end
        def self.inner_class_types
          @inner_class_types = {fraudulent_dispute: FraudulentDispute}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Outcome < ::Stripe::StripeObject
        class MerchantBlocked < ::Stripe::StripeObject
          # The reason the payment was blocked by the merchant.
          sig { returns(String) }
          def reason; end
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
            sig { returns(String) }
            def address_line1_check; end
            # Indicates whether the cardholder provided a postal code and if it matched the cardholder’s billing address.
            sig { returns(String) }
            def address_postal_code_check; end
            # Result of the CVC check.
            sig { returns(String) }
            def cvc_check; end
            # Card issuer's reason for the network decline.
            sig { returns(String) }
            def reason; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Details of an rejected card outcome attached to this payment evaluation.
          sig { returns(T.nilable(Card)) }
          def card; end
          def self.inner_class_types
            @inner_class_types = {card: Card}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Succeeded < ::Stripe::StripeObject
          class Card < ::Stripe::StripeObject
            # Result of the address line 1 check.
            sig { returns(String) }
            def address_line1_check; end
            # Indicates whether the cardholder provided a postal code and if it matched the cardholder’s billing address.
            sig { returns(String) }
            def address_postal_code_check; end
            # Result of the CVC check.
            sig { returns(String) }
            def cvc_check; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Details of an succeeded card outcome attached to this payment evaluation.
          sig { returns(T.nilable(Card)) }
          def card; end
          def self.inner_class_types
            @inner_class_types = {card: Card}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Details of a merchant_blocked outcome attached to this payment evaluation.
        sig { returns(T.nilable(MerchantBlocked)) }
        def merchant_blocked; end
        # The PaymentIntent ID associated with the payment evaluation.
        sig { returns(T.nilable(String)) }
        def payment_intent_id; end
        # Details of an rejected outcome attached to this payment evaluation.
        sig { returns(T.nilable(Rejected)) }
        def rejected; end
        # Details of a succeeded outcome attached to this payment evaluation.
        sig { returns(T.nilable(Succeeded)) }
        def succeeded; end
        # Indicates the outcome of the payment evaluation.
        sig { returns(String) }
        def type; end
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
            sig { returns(T.nilable(String)) }
            def customer_presence; end
            # Describes the type of payment.
            sig { returns(T.nilable(String)) }
            def payment_type; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Describes card money movement details for the payment evaluation.
          sig { returns(T.nilable(Card)) }
          def card; end
          # Describes the type of money movement. Currently only `card` is supported.
          sig { returns(String) }
          def money_movement_type; end
          def self.inner_class_types
            @inner_class_types = {card: Card}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class PaymentMethodDetails < ::Stripe::StripeObject
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
            # Address data.
            sig { returns(Address) }
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
            def self.inner_class_types
              @inner_class_types = {address: Address}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Billing information associated with the payment evaluation.
          sig { returns(T.nilable(BillingDetails)) }
          def billing_details; end
          # The payment method used in this payment evaluation.
          sig { returns(T.any(String, ::Stripe::PaymentMethod)) }
          def payment_method; end
          def self.inner_class_types
            @inner_class_types = {billing_details: BillingDetails}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class ShippingDetails < ::Stripe::StripeObject
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
          # Address data.
          sig { returns(Address) }
          def address; end
          # Shipping name.
          sig { returns(T.nilable(String)) }
          def name; end
          # Shipping phone number.
          sig { returns(T.nilable(String)) }
          def phone; end
          def self.inner_class_types
            @inner_class_types = {address: Address}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Amount intended to be collected by this payment. A positive integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://docs.stripe.com/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
        sig { returns(Integer) }
        def amount; end
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        def currency; end
        # An arbitrary string attached to the object. Often useful for displaying to users.
        sig { returns(T.nilable(String)) }
        def description; end
        # Details about the payment's customer presence and type.
        sig { returns(T.nilable(MoneyMovementDetails)) }
        def money_movement_details; end
        # Details about the payment method used for the payment.
        sig { returns(T.nilable(PaymentMethodDetails)) }
        def payment_method_details; end
        # Shipping details for the payment evaluation.
        sig { returns(T.nilable(ShippingDetails)) }
        def shipping_details; end
        # Payment statement descriptor.
        sig { returns(T.nilable(String)) }
        def statement_descriptor; end
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
      sig { returns(T.nilable(ClientDeviceMetadataDetails)) }
      def client_device_metadata_details; end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created_at; end
      # Customer details attached to this payment evaluation.
      sig { returns(T.nilable(CustomerDetails)) }
      def customer_details; end
      # Event information associated with the payment evaluation, such as refunds, dispute, early fraud warnings, or user interventions.
      sig { returns(T.nilable(T::Array[Event])) }
      def events; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # Collection of scores and insights for this payment evaluation.
      sig { returns(Insights) }
      def insights; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # Indicates the final outcome for the payment evaluation.
      sig { returns(T.nilable(Outcome)) }
      def outcome; end
      # Payment details attached to this payment evaluation.
      sig { returns(T.nilable(PaymentDetails)) }
      def payment_details; end
      # Request a Radar API fraud risk score from Stripe for a payment before sending it for external processor authorization.
      sig {
        params(params: T.any(::Stripe::Radar::PaymentEvaluationCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Radar::PaymentEvaluation)
       }
      def self.create(params = {}, opts = {}); end
    end
  end
end