# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Radar
    # Authorization Evaluations represent fraud risk assessments for Issuing card authorizations. They include fraud risk signals and contextual details about the authorization.
    class IssuingAuthorizationEvaluation < APIResource
      class AuthorizationDetails < ::Stripe::StripeObject
        # The authorization amount in the smallest currency unit.
        sig { returns(Integer) }
        def amount; end
        # The method used for authorization.
        sig { returns(T.nilable(String)) }
        def authorization_method; end
        # Three-letter ISO currency code in lowercase.
        sig { returns(String) }
        def currency; end
        # The card entry mode.
        sig { returns(T.nilable(String)) }
        def entry_mode; end
        # The raw code for the card entry mode.
        sig { returns(T.nilable(String)) }
        def entry_mode_raw_code; end
        # The time when the authorization was initiated.
        sig { returns(Integer) }
        def initiated_at; end
        # The point of sale condition.
        sig { returns(T.nilable(String)) }
        def point_of_sale_condition; end
        # The raw code for the point of sale condition.
        sig { returns(T.nilable(String)) }
        def point_of_sale_condition_raw_code; end
        # External reference for the authorization.
        sig { returns(String) }
        def reference; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class CardDetails < ::Stripe::StripeObject
        # The Bank Identification Number (BIN) of the card.
        sig { returns(String) }
        def bin; end
        # The country code associated with the card BIN.
        sig { returns(String) }
        def bin_country; end
        # The type of card (physical or virtual).
        sig { returns(String) }
        def card_type; end
        # The time when the card was created.
        sig { returns(Integer) }
        def created_at; end
        # The last 4 digits of the card number.
        sig { returns(String) }
        def last4; end
        # External reference for the card.
        sig { returns(String) }
        def reference; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class CardholderDetails < ::Stripe::StripeObject
        # The time when the cardholder was created.
        sig { returns(T.nilable(Integer)) }
        def created_at; end
        # External reference for the cardholder.
        sig { returns(T.nilable(String)) }
        def reference; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class MerchantDetails < ::Stripe::StripeObject
        # The merchant category code (MCC).
        sig { returns(String) }
        def category_code; end
        # The merchant country code.
        sig { returns(T.nilable(String)) }
        def country; end
        # The merchant name.
        sig { returns(String) }
        def name; end
        # The merchant identifier from the card network.
        sig { returns(String) }
        def network_id; end
        # The terminal identifier.
        sig { returns(T.nilable(String)) }
        def terminal_id; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class NetworkDetails < ::Stripe::StripeObject
        # The acquiring institution identifier.
        sig { returns(T.nilable(String)) }
        def acquiring_institution_id; end
        # The card network that processed the authorization.
        sig { returns(T.nilable(String)) }
        def routed_network; end
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
            sig { returns(Integer) }
            def evaluated_at; end
            # Risk level, based on the score.
            sig { returns(String) }
            def level; end
            # Fraud risk score for this evaluation. Score in the range [0,100], formatted as a 2 decimal float, with higher scores indicating a higher likelihood of fraud.
            sig { returns(Float) }
            def score; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Signal evaluation data, including score and level.
          sig { returns(T.nilable(Data)) }
          def data; end
          # Details of an error that prevented reporting this signal.
          sig { returns(T.nilable(T::Hash[String, String])) }
          def error; end
          # The status of this signal.
          sig { returns(String) }
          def status; end
          def self.inner_class_types
            @inner_class_types = {data: Data}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # A fraud risk signal with status, error, and data fields.
        sig { returns(FraudRisk) }
        def fraud_risk; end
        def self.inner_class_types
          @inner_class_types = {fraud_risk: FraudRisk}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class TokenDetails < ::Stripe::StripeObject
        # The time when the token was created.
        sig { returns(T.nilable(Integer)) }
        def created_at; end
        # External reference for the token.
        sig { returns(T.nilable(String)) }
        def reference; end
        # The wallet provider, if applicable.
        sig { returns(T.nilable(String)) }
        def wallet; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class VerificationDetails < ::Stripe::StripeObject
        # The result of the 3D Secure verification.
        sig { returns(T.nilable(String)) }
        def three_d_secure_result; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Details about the authorization transaction.
      sig { returns(T.nilable(AuthorizationDetails)) }
      def authorization_details; end
      # Details about the card used in the authorization.
      sig { returns(T.nilable(CardDetails)) }
      def card_details; end
      # Details about the cardholder.
      sig { returns(T.nilable(CardholderDetails)) }
      def cardholder_details; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      sig { returns(T::Boolean) }
      def livemode; end
      # Details about the merchant where the authorization occurred.
      sig { returns(T.nilable(MerchantDetails)) }
      def merchant_details; end
      # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      # Details about the card network processing.
      sig { returns(T.nilable(NetworkDetails)) }
      def network_details; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # Collection of fraud risk signals for this authorization evaluation.
      sig { returns(Signals) }
      def signals; end
      # Details about the token, if a tokenized payment method was used.
      sig { returns(T.nilable(TokenDetails)) }
      def token_details; end
      # Details about verification checks performed.
      sig { returns(T.nilable(VerificationDetails)) }
      def verification_details; end
      # Request a fraud risk assessment from Stripe for an Issuing card authorization.
      sig {
        params(params: T.any(::Stripe::Radar::IssuingAuthorizationEvaluationCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Radar::IssuingAuthorizationEvaluation)
       }
      def self.create(params = {}, opts = {}); end
    end
  end
end