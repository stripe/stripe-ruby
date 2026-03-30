# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module SharedPayment
    # SharedPaymentGrantedToken is the view-only resource of a SharedPaymentIssuedToken, which is a limited-use reference to a PaymentMethod.
    # When another Stripe merchant shares a SharedPaymentIssuedToken with you, you can view attributes of the shared token using the SharedPaymentGrantedToken API, and use it with a PaymentIntent.
    class GrantedToken < APIResource
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
      class RiskDetails < ::Stripe::StripeObject
        class Insights < ::Stripe::StripeObject
          class Bot < ::Stripe::StripeObject
            # Recommended action for this insight.
            sig { returns(String) }
            def recommended_action; end
            # Risk score for this insight (float).
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
            # Risk score for this insight (float).
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
            # Risk score for this insight (float).
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
            # Risk score for this insight (integer).
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
            # Risk score for this insight (integer).
            sig { returns(Integer) }
            def score; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Bot risk insight (score: Float, recommended_action).
          sig { returns(T.nilable(Bot)) }
          def bot; end
          # Card issuer decline risk insight (score: Float, recommended_action).
          sig { returns(T.nilable(CardIssuerDecline)) }
          def card_issuer_decline; end
          # Card testing risk insight (score: Float, recommended_action).
          sig { returns(T.nilable(CardTesting)) }
          def card_testing; end
          # Fraudulent dispute risk insight (score: Integer, recommended_action).
          sig { returns(T.nilable(FraudulentDispute)) }
          def fraudulent_dispute; end
          # Stolen card risk insight (score: Integer, recommended_action).
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
      # Metadata about the SharedPaymentGrantedToken.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def shared_metadata; end
      # Some details about how the SharedPaymentGrantedToken has been used already.
      sig { returns(T.nilable(UsageDetails)) }
      def usage_details; end
      # Limits on how this SharedPaymentGrantedToken can be used.
      sig { returns(T.nilable(UsageLimits)) }
      def usage_limits; end
      # Details about the agent that issued this SharedPaymentGrantedToken.
      sig { returns(T.nilable(AgentDetails)) }
      def agent_details; end
      # Risk details of the SharedPaymentGrantedToken.
      sig { returns(T.nilable(RiskDetails)) }
      def risk_details; end
    end
  end
end