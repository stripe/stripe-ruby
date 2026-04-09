# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module SharedPayment
    # A SharedPaymentIssuedToken is a limited-use reference to a PaymentMethod that can be created with a secret key. When shared with another Stripe account (Seller), it enables that account to either process a payment on Stripe against a PaymentMethod that your Stripe account owns, or to forward a usable credential created against the originalPaymentMethod to then process the payment off-Stripe.
    class IssuedToken < APIResource
      class NextAction < ::Stripe::StripeObject
        class UseStripeSdk < ::Stripe::StripeObject
          # A base64-encoded string used by Stripe.js and the iOS and Android client SDKs to handle the next action. Its content is subject to change.
          sig { returns(String) }
          def value; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Specifies the type of next action required. Determines which child attribute contains action details.
        sig { returns(String) }
        def type; end
        # Contains details for handling the next action using Stripe.js, iOS, or Android SDKs. Present when `next_action.type` is `use_stripe_sdk`.
        sig { returns(T.nilable(UseStripeSdk)) }
        def use_stripe_sdk; end
        def self.inner_class_types
          @inner_class_types = {use_stripe_sdk: UseStripeSdk}
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
      class SellerDetails < ::Stripe::StripeObject
        # A unique id within a network that identifies a logical seller. This should usually be the merchant id on the seller platform.
        sig { returns(String) }
        def external_id; end
        # The unique and logical string that identifies the seller platform that this SharedToken is being created for.
        sig { returns(String) }
        def network_business_profile; end
        # The unique and logical string that identifies the seller platform that this SharedToken is being created for.
        sig { returns(T.nilable(String)) }
        def network_id; end
        def self.inner_class_types
          @inner_class_types = {}
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
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # ID of an existing Customer.
      sig { returns(T.nilable(String)) }
      def customer; end
      # Time at which this SharedPaymentIssuedToken was deactivated.
      sig { returns(T.nilable(Integer)) }
      def deactivated_at; end
      # The reason why the SharedPaymentIssuedToken has been deactivated.
      sig { returns(T.nilable(String)) }
      def deactivated_reason; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      sig { returns(T::Boolean) }
      def livemode; end
      # If present, describes the action required to make this `SharedPaymentIssuedToken` usable for payments. Present when the token is in `requires_action` state.
      sig { returns(T.nilable(NextAction)) }
      def next_action; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # ID of an existing PaymentMethod.
      sig { returns(T.nilable(String)) }
      def payment_method; end
      # If the customer does not exit their browser while authenticating, they will be redirected to this specified URL after completion.
      sig { returns(T.nilable(String)) }
      def return_url; end
      # Risk details of the SharedPaymentIssuedToken.
      sig { returns(T.nilable(RiskDetails)) }
      def risk_details; end
      # Seller details of the SharedPaymentIssuedToken, including network_id and external_id.
      sig { returns(T.nilable(SellerDetails)) }
      def seller_details; end
      # Indicates that you intend to save the PaymentMethod of this SharedPaymentToken to a customer later.
      sig { returns(T.nilable(String)) }
      def setup_future_usage; end
      # Metadata about the SharedPaymentIssuedToken.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def shared_metadata; end
      # Status of this SharedPaymentIssuedToken, one of `active`, `requires_action`, or `deactivated`.
      sig { returns(T.nilable(String)) }
      def status; end
      # Usage details of the SharedPaymentIssuedToken
      sig { returns(T.nilable(UsageDetails)) }
      def usage_details; end
      # Usage limits of the SharedPaymentIssuedToken.
      sig { returns(T.nilable(UsageLimits)) }
      def usage_limits; end
    end
  end
end