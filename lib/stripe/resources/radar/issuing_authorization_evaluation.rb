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
        # The total amount of the authorization in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        attr_reader :amount
        # How the card details were provided.
        attr_reader :authorization_method
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        attr_reader :currency
        # Defines how the card's information was entered for the authorization.
        attr_reader :entry_mode
        # Raw code indicating the entry mode from the network message.
        attr_reader :entry_mode_raw_code
        # The time the authorization was initiated, as a Unix timestamp in seconds.
        attr_reader :initiated_at
        # Defines how the card was read at the point of sale.
        attr_reader :point_of_sale_condition
        # Raw code indicating the point of sale condition from the network message.
        attr_reader :point_of_sale_condition_raw_code
        # User's specified unique ID for this authorization attempt (e.g., RRN or internal reference).
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
        # The two-letter country code of the BIN issuer.
        attr_reader :bin_country
        # The type of the card.
        attr_reader :card_type
        # The timestamp when the card was created, as a Unix timestamp in seconds.
        attr_reader :created_at
        # The last 4 digits of the card number.
        attr_reader :last4
        # User's specified unique ID of the card for this authorization attempt (e.g., RRN or internal reference).
        attr_reader :reference

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class CardholderDetails < ::Stripe::StripeObject
        # The timestamp when the cardholder was created.
        attr_reader :created_at
        # User's specified unique ID of the cardholder for this authorization attempt (e.g., RRN or internal reference).
        attr_reader :reference

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class MerchantDetails < ::Stripe::StripeObject
        # The merchant category code for the seller's business.
        attr_reader :category_code
        # Country where the seller is located.
        attr_reader :country
        # Name of the seller.
        attr_reader :name
        # Identifier assigned to the seller by the card network. Different card networks may assign different network_id fields to the same merchant.
        attr_reader :network_id
        # An ID assigned by the seller to the location of the sale.
        attr_reader :terminal_id

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class NetworkDetails < ::Stripe::StripeObject
        # Identifier assigned to the acquirer by the card network. Sometimes this value is not provided by the network; in this case, the value will be null.
        attr_reader :acquiring_institution_id
        # The card network over which Stripe received the authorization.
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
        # The timestamp when the network token was created.
        attr_reader :created_at
        # User's specified unique ID of the card token for this authorization attempt (e.g., RRN or internal reference).
        attr_reader :reference
        # The digital wallet used for this transaction. One of `apple_pay`, `google_pay`, or `samsung_pay`.
        attr_reader :wallet

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class VerificationDetails < ::Stripe::StripeObject
        # The outcome of the 3D Secure authentication request.
        attr_reader :three_d_secure_result

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Details about the authorization.
      attr_reader :authorization_details
      # Details about the card used in the authorization.
      attr_reader :card_details
      # Details about the cardholder.
      attr_reader :cardholder_details
      # Unique identifier for the object.
      attr_reader :id
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      attr_reader :livemode
      # Details about the seller (grocery store, e-commerce website, etc.) where the card authorization happened.
      attr_reader :merchant_details
      # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # Details about the authorization, such as identifiers, set by the card network.
      attr_reader :network_details
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Collection of fraud risk signals for this authorization evaluation.
      attr_reader :signals
      # Details about the token, if a tokenized payment method was used for the authorization.
      attr_reader :token_details
      # Details about verification data for the authorization.
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
