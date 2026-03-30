# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module SharedPayment
    # A SharedPaymentIssuedToken is a limited-use reference to a PaymentMethod that can be created with a secret key. When shared with another Stripe account (Seller), it enables that account to either process a payment on Stripe against a PaymentMethod that your Stripe account owns, or to forward a usable credential created against the originalPaymentMethod to then process the payment off-Stripe.
    class IssuedToken < APIResource
      OBJECT_NAME = "shared_payment.issued_token"
      def self.object_name
        "shared_payment.issued_token"
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

      class SellerDetails < ::Stripe::StripeObject
        # A unique id within a network that identifies a logical seller. This should usually be the merchant id on the seller platform.
        attr_reader :external_id
        # The unique and logical string that identifies the seller platform that this SharedToken is being created for.
        attr_reader :network_business_profile
        # The unique and logical string that identifies the seller platform that this SharedToken is being created for.
        attr_reader :network_id

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
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # ID of an existing Customer.
      attr_reader :customer
      # Time at which this SharedPaymentIssuedToken was deactivated.
      attr_reader :deactivated_at
      # The reason why the SharedPaymentIssuedToken has been deactivated.
      attr_reader :deactivated_reason
      # Which requested uses have been enabled for this SharedPaymentIssuedToken.
      attr_reader :enabled_uses
      # Unique identifier for the object.
      attr_reader :id
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # ID of an existing PaymentMethod.
      attr_reader :payment_method
      # Requested uses for this SharedPaymentIssuedToken, which controls which Stripe APIs it can be used with.
      attr_reader :requested_uses
      # If the customer does not exit their browser while authenticating, they will be redirected to this specified URL after completion.
      attr_reader :return_url
      # Risk details of the SharedPaymentIssuedToken.
      attr_reader :risk_details
      # Seller details of the SharedPaymentIssuedToken, including network_id and external_id.
      attr_reader :seller_details
      # Indicates that you intend to save the PaymentMethod of this SharedPaymentToken to a customer later.
      attr_reader :setup_future_usage
      # Metadata about the SharedPaymentIssuedToken.
      attr_reader :shared_metadata
      # Usage details of the SharedPaymentIssuedToken
      attr_reader :usage_details
      # Usage limits of the SharedPaymentIssuedToken.
      attr_reader :usage_limits

      def self.inner_class_types
        @inner_class_types = {
          risk_details: RiskDetails,
          seller_details: SellerDetails,
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
