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

      class RiskDetails < ::Stripe::StripeObject
        class Insights < ::Stripe::StripeObject
          class Bot < ::Stripe::StripeObject
            # Recommended action for this insight.
            attr_reader :recommended_action
            # Risk score for this insight (float).
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
            # Risk score for this insight (float).
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
            # Risk score for this insight (float).
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
            # Risk score for this insight (integer).
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
            # Risk score for this insight (integer).
            attr_reader :score

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Bot risk insight (score: Float, recommended_action).
          attr_reader :bot
          # Card issuer decline risk insight (score: Float, recommended_action).
          attr_reader :card_issuer_decline
          # Card testing risk insight (score: Float, recommended_action).
          attr_reader :card_testing
          # Fraudulent dispute risk insight (score: Integer, recommended_action).
          attr_reader :fraudulent_dispute
          # Stolen card risk insight (score: Integer, recommended_action).
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
      # Metadata about the SharedPaymentGrantedToken.
      attr_reader :shared_metadata
      # Some details about how the SharedPaymentGrantedToken has been used already.
      attr_reader :usage_details
      # Limits on how this SharedPaymentGrantedToken can be used.
      attr_reader :usage_limits
      # Details about the agent that issued this SharedPaymentGrantedToken.
      attr_reader :agent_details
      # Risk details of the SharedPaymentGrantedToken.
      attr_reader :risk_details

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
          usage_details: UsageDetails,
          usage_limits: UsageLimits,
          agent_details: AgentDetails,
          risk_details: RiskDetails,
        }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
