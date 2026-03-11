# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Radar
    # Authorization Evaluations represent fraud risk assessments for Issuing card authorizations. They include fraud risk signals and contextual details about the authorization.
    class IssuingAuthorizationEvaluation < APIResource
      extend Stripe::APIOperations::Create

      OBJECT_NAME = "radar.issuing_authorization_evaluation"
      def self.object_name
        "radar.issuing_authorization_evaluation"
      end

      class AuthorizationDetails < ::Stripe::StripeObject
        # The authorization amount in the smallest currency unit.
        attr_reader :amount
        # The method used for authorization.
        attr_reader :authorization_method
        # Three-letter ISO currency code in lowercase.
        attr_reader :currency
        # The card entry mode.
        attr_reader :entry_mode
        # The raw code for the card entry mode.
        attr_reader :entry_mode_raw_code
        # The time when the authorization was initiated.
        attr_reader :initiated_at
        # The point of sale condition.
        attr_reader :point_of_sale_condition
        # The raw code for the point of sale condition.
        attr_reader :point_of_sale_condition_raw_code
        # External reference for the authorization.
        attr_reader :reference

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class CardDetails < ::Stripe::StripeObject
        # The Bank Identification Number (BIN) of the card.
        attr_reader :bin
        # The country code associated with the card BIN.
        attr_reader :bin_country
        # The type of card (physical or virtual).
        attr_reader :card_type
        # The time when the card was created.
        attr_reader :created_at
        # The last 4 digits of the card number.
        attr_reader :last4
        # External reference for the card.
        attr_reader :reference

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class CardholderDetails < ::Stripe::StripeObject
        # The time when the cardholder was created.
        attr_reader :created_at
        # External reference for the cardholder.
        attr_reader :reference

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class MerchantDetails < ::Stripe::StripeObject
        # The merchant category code (MCC).
        attr_reader :category_code
        # The merchant country code.
        attr_reader :country
        # The merchant name.
        attr_reader :name
        # The merchant identifier from the card network.
        attr_reader :network_id
        # The terminal identifier.
        attr_reader :terminal_id

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class NetworkDetails < ::Stripe::StripeObject
        # The acquiring institution identifier.
        attr_reader :acquiring_institution_id
        # The card network that processed the authorization.
        attr_reader :routed_network

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class Signals < ::Stripe::StripeObject
        class FraudRisk < ::Stripe::StripeObject
          class Data < ::Stripe::StripeObject
            # The time when this signal was evaluated.
            attr_reader :evaluated_at
            # Risk level, based on the score.
            attr_reader :level
            # Fraud risk score for this evaluation. Score in the range [0,100], formatted as a 2 decimal float, with higher scores indicating a higher likelihood of fraud.
            attr_reader :score

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Signal evaluation data, including score and level.
          attr_reader :data
          # Details of an error that prevented reporting this signal.
          attr_reader :error
          # The status of this signal.
          attr_reader :status

          def self.inner_class_types
            @inner_class_types = { data: Data }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # A fraud risk signal with status, error, and data fields.
        attr_reader :fraud_risk

        def self.inner_class_types
          @inner_class_types = { fraud_risk: FraudRisk }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class TokenDetails < ::Stripe::StripeObject
        # The time when the token was created.
        attr_reader :created_at
        # External reference for the token.
        attr_reader :reference
        # The wallet provider, if applicable.
        attr_reader :wallet

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class VerificationDetails < ::Stripe::StripeObject
        # The result of the 3D Secure verification.
        attr_reader :three_d_secure_result

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Details about the authorization transaction.
      attr_reader :authorization_details
      # Details about the card used in the authorization.
      attr_reader :card_details
      # Details about the cardholder.
      attr_reader :cardholder_details
      # Unique identifier for the object.
      attr_reader :id
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      attr_reader :livemode
      # Details about the merchant where the authorization occurred.
      attr_reader :merchant_details
      # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # Details about the card network processing.
      attr_reader :network_details
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Collection of fraud risk signals for this authorization evaluation.
      attr_reader :signals
      # Details about the token, if a tokenized payment method was used.
      attr_reader :token_details
      # Details about verification checks performed.
      attr_reader :verification_details

      # Request a fraud risk assessment from Stripe for an Issuing card authorization.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/radar/issuing_authorization_evaluations",
          params: params,
          opts: opts
        )
      end

      def self.inner_class_types
        @inner_class_types = {
          authorization_details: AuthorizationDetails,
          card_details: CardDetails,
          cardholder_details: CardholderDetails,
          merchant_details: MerchantDetails,
          network_details: NetworkDetails,
          signals: Signals,
          token_details: TokenDetails,
          verification_details: VerificationDetails,
        }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
