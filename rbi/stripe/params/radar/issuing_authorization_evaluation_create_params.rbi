# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Radar
    class IssuingAuthorizationEvaluationCreateParams < ::Stripe::RequestParams
      class AuthorizationDetails < ::Stripe::RequestParams
        # The authorization amount in the smallest currency unit.
        sig { returns(Integer) }
        def amount; end
        sig { params(_amount: Integer).returns(Integer) }
        def amount=(_amount); end
        # The method used for authorization.
        sig { returns(T.nilable(String)) }
        def authorization_method; end
        sig { params(_authorization_method: T.nilable(String)).returns(T.nilable(String)) }
        def authorization_method=(_authorization_method); end
        # Three-letter ISO currency code in lowercase.
        sig { returns(String) }
        def currency; end
        sig { params(_currency: String).returns(String) }
        def currency=(_currency); end
        # The card entry mode.
        sig { returns(T.nilable(String)) }
        def entry_mode; end
        sig { params(_entry_mode: T.nilable(String)).returns(T.nilable(String)) }
        def entry_mode=(_entry_mode); end
        # The raw code for the card entry mode.
        sig { returns(T.nilable(String)) }
        def entry_mode_raw_code; end
        sig { params(_entry_mode_raw_code: T.nilable(String)).returns(T.nilable(String)) }
        def entry_mode_raw_code=(_entry_mode_raw_code); end
        # The time when the authorization was initiated (Unix timestamp).
        sig { returns(Integer) }
        def initiated_at; end
        sig { params(_initiated_at: Integer).returns(Integer) }
        def initiated_at=(_initiated_at); end
        # The point of sale condition.
        sig { returns(T.nilable(String)) }
        def point_of_sale_condition; end
        sig { params(_point_of_sale_condition: T.nilable(String)).returns(T.nilable(String)) }
        def point_of_sale_condition=(_point_of_sale_condition); end
        # The raw code for the point of sale condition.
        sig { returns(T.nilable(String)) }
        def point_of_sale_condition_raw_code; end
        sig {
          params(_point_of_sale_condition_raw_code: T.nilable(String)).returns(T.nilable(String))
         }
        def point_of_sale_condition_raw_code=(_point_of_sale_condition_raw_code); end
        # External reference for the authorization.
        sig { returns(String) }
        def reference; end
        sig { params(_reference: String).returns(String) }
        def reference=(_reference); end
        sig {
          params(amount: Integer, authorization_method: T.nilable(String), currency: String, entry_mode: T.nilable(String), entry_mode_raw_code: T.nilable(String), initiated_at: Integer, point_of_sale_condition: T.nilable(String), point_of_sale_condition_raw_code: T.nilable(String), reference: String).void
         }
        def initialize(
          amount: nil,
          authorization_method: nil,
          currency: nil,
          entry_mode: nil,
          entry_mode_raw_code: nil,
          initiated_at: nil,
          point_of_sale_condition: nil,
          point_of_sale_condition_raw_code: nil,
          reference: nil
        ); end
      end
      class CardDetails < ::Stripe::RequestParams
        # Bank Identification Number (BIN) of the card.
        sig { returns(String) }
        def bin; end
        sig { params(_bin: String).returns(String) }
        def bin=(_bin); end
        # Two-letter ISO country code of the card's issuing bank.
        sig { returns(T.nilable(String)) }
        def bin_country; end
        sig { params(_bin_country: T.nilable(String)).returns(T.nilable(String)) }
        def bin_country=(_bin_country); end
        # The type of card (physical or virtual).
        sig { returns(String) }
        def card_type; end
        sig { params(_card_type: String).returns(String) }
        def card_type=(_card_type); end
        # The time when the card was created (Unix timestamp).
        sig { returns(Integer) }
        def created_at; end
        sig { params(_created_at: Integer).returns(Integer) }
        def created_at=(_created_at); end
        # Last 4 digits of the card number.
        sig { returns(T.nilable(String)) }
        def last4; end
        sig { params(_last4: T.nilable(String)).returns(T.nilable(String)) }
        def last4=(_last4); end
        # External reference for the card.
        sig { returns(String) }
        def reference; end
        sig { params(_reference: String).returns(String) }
        def reference=(_reference); end
        sig {
          params(bin: String, bin_country: T.nilable(String), card_type: String, created_at: Integer, last4: T.nilable(String), reference: String).void
         }
        def initialize(
          bin: nil,
          bin_country: nil,
          card_type: nil,
          created_at: nil,
          last4: nil,
          reference: nil
        ); end
      end
      class CardholderDetails < ::Stripe::RequestParams
        # The time when the cardholder was created (Unix timestamp).
        sig { returns(T.nilable(Integer)) }
        def created_at; end
        sig { params(_created_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def created_at=(_created_at); end
        # External reference for the cardholder.
        sig { returns(T.nilable(String)) }
        def reference; end
        sig { params(_reference: T.nilable(String)).returns(T.nilable(String)) }
        def reference=(_reference); end
        sig { params(created_at: T.nilable(Integer), reference: T.nilable(String)).void }
        def initialize(created_at: nil, reference: nil); end
      end
      class MerchantDetails < ::Stripe::RequestParams
        # Merchant Category Code (MCC).
        sig { returns(String) }
        def category_code; end
        sig { params(_category_code: String).returns(String) }
        def category_code=(_category_code); end
        # Two-letter ISO country code of the merchant.
        sig { returns(T.nilable(String)) }
        def country; end
        sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
        def country=(_country); end
        # Name of the merchant.
        sig { returns(String) }
        def name; end
        sig { params(_name: String).returns(String) }
        def name=(_name); end
        # Network merchant identifier.
        sig { returns(String) }
        def network_id; end
        sig { params(_network_id: String).returns(String) }
        def network_id=(_network_id); end
        # Terminal identifier.
        sig { returns(T.nilable(String)) }
        def terminal_id; end
        sig { params(_terminal_id: T.nilable(String)).returns(T.nilable(String)) }
        def terminal_id=(_terminal_id); end
        sig {
          params(category_code: String, country: T.nilable(String), name: String, network_id: String, terminal_id: T.nilable(String)).void
         }
        def initialize(
          category_code: nil,
          country: nil,
          name: nil,
          network_id: nil,
          terminal_id: nil
        ); end
      end
      class NetworkDetails < ::Stripe::RequestParams
        # The acquiring institution identifier.
        sig { returns(T.nilable(String)) }
        def acquiring_institution_id; end
        sig { params(_acquiring_institution_id: T.nilable(String)).returns(T.nilable(String)) }
        def acquiring_institution_id=(_acquiring_institution_id); end
        # The card network that routed the authorization.
        sig { returns(T.nilable(String)) }
        def routed_network; end
        sig { params(_routed_network: T.nilable(String)).returns(T.nilable(String)) }
        def routed_network=(_routed_network); end
        sig {
          params(acquiring_institution_id: T.nilable(String), routed_network: T.nilable(String)).void
         }
        def initialize(acquiring_institution_id: nil, routed_network: nil); end
      end
      class TokenDetails < ::Stripe::RequestParams
        # The time when the token was created (Unix timestamp).
        sig { returns(T.nilable(Integer)) }
        def created_at; end
        sig { params(_created_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def created_at=(_created_at); end
        # External reference for the token.
        sig { returns(T.nilable(String)) }
        def reference; end
        sig { params(_reference: T.nilable(String)).returns(T.nilable(String)) }
        def reference=(_reference); end
        # The wallet provider for the tokenized payment method.
        sig { returns(T.nilable(String)) }
        def wallet; end
        sig { params(_wallet: T.nilable(String)).returns(T.nilable(String)) }
        def wallet=(_wallet); end
        sig {
          params(created_at: T.nilable(Integer), reference: T.nilable(String), wallet: T.nilable(String)).void
         }
        def initialize(created_at: nil, reference: nil, wallet: nil); end
      end
      class VerificationDetails < ::Stripe::RequestParams
        # The result of 3D Secure verification.
        sig { returns(T.nilable(String)) }
        def three_d_secure_result; end
        sig { params(_three_d_secure_result: T.nilable(String)).returns(T.nilable(String)) }
        def three_d_secure_result=(_three_d_secure_result); end
        sig { params(three_d_secure_result: T.nilable(String)).void }
        def initialize(three_d_secure_result: nil); end
      end
      # Details about the authorization.
      sig {
        returns(::Stripe::Radar::IssuingAuthorizationEvaluationCreateParams::AuthorizationDetails)
       }
      def authorization_details; end
      sig {
        params(_authorization_details: ::Stripe::Radar::IssuingAuthorizationEvaluationCreateParams::AuthorizationDetails).returns(::Stripe::Radar::IssuingAuthorizationEvaluationCreateParams::AuthorizationDetails)
       }
      def authorization_details=(_authorization_details); end
      # Details about the card used in the authorization.
      sig { returns(::Stripe::Radar::IssuingAuthorizationEvaluationCreateParams::CardDetails) }
      def card_details; end
      sig {
        params(_card_details: ::Stripe::Radar::IssuingAuthorizationEvaluationCreateParams::CardDetails).returns(::Stripe::Radar::IssuingAuthorizationEvaluationCreateParams::CardDetails)
       }
      def card_details=(_card_details); end
      # Details about the cardholder.
      sig {
        returns(T.nilable(::Stripe::Radar::IssuingAuthorizationEvaluationCreateParams::CardholderDetails))
       }
      def cardholder_details; end
      sig {
        params(_cardholder_details: T.nilable(::Stripe::Radar::IssuingAuthorizationEvaluationCreateParams::CardholderDetails)).returns(T.nilable(::Stripe::Radar::IssuingAuthorizationEvaluationCreateParams::CardholderDetails))
       }
      def cardholder_details=(_cardholder_details); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Details about the merchant where the authorization occurred.
      sig { returns(::Stripe::Radar::IssuingAuthorizationEvaluationCreateParams::MerchantDetails) }
      def merchant_details; end
      sig {
        params(_merchant_details: ::Stripe::Radar::IssuingAuthorizationEvaluationCreateParams::MerchantDetails).returns(::Stripe::Radar::IssuingAuthorizationEvaluationCreateParams::MerchantDetails)
       }
      def merchant_details=(_merchant_details); end
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
       }
      def metadata=(_metadata); end
      # Details about the card network processing.
      sig {
        returns(T.nilable(::Stripe::Radar::IssuingAuthorizationEvaluationCreateParams::NetworkDetails))
       }
      def network_details; end
      sig {
        params(_network_details: T.nilable(::Stripe::Radar::IssuingAuthorizationEvaluationCreateParams::NetworkDetails)).returns(T.nilable(::Stripe::Radar::IssuingAuthorizationEvaluationCreateParams::NetworkDetails))
       }
      def network_details=(_network_details); end
      # Details about the token, if a tokenized payment method was used.
      sig {
        returns(T.nilable(::Stripe::Radar::IssuingAuthorizationEvaluationCreateParams::TokenDetails))
       }
      def token_details; end
      sig {
        params(_token_details: T.nilable(::Stripe::Radar::IssuingAuthorizationEvaluationCreateParams::TokenDetails)).returns(T.nilable(::Stripe::Radar::IssuingAuthorizationEvaluationCreateParams::TokenDetails))
       }
      def token_details=(_token_details); end
      # Details about verification checks performed.
      sig {
        returns(T.nilable(::Stripe::Radar::IssuingAuthorizationEvaluationCreateParams::VerificationDetails))
       }
      def verification_details; end
      sig {
        params(_verification_details: T.nilable(::Stripe::Radar::IssuingAuthorizationEvaluationCreateParams::VerificationDetails)).returns(T.nilable(::Stripe::Radar::IssuingAuthorizationEvaluationCreateParams::VerificationDetails))
       }
      def verification_details=(_verification_details); end
      sig {
        params(authorization_details: ::Stripe::Radar::IssuingAuthorizationEvaluationCreateParams::AuthorizationDetails, card_details: ::Stripe::Radar::IssuingAuthorizationEvaluationCreateParams::CardDetails, cardholder_details: T.nilable(::Stripe::Radar::IssuingAuthorizationEvaluationCreateParams::CardholderDetails), expand: T.nilable(T::Array[String]), merchant_details: ::Stripe::Radar::IssuingAuthorizationEvaluationCreateParams::MerchantDetails, metadata: T.nilable(T::Hash[String, String]), network_details: T.nilable(::Stripe::Radar::IssuingAuthorizationEvaluationCreateParams::NetworkDetails), token_details: T.nilable(::Stripe::Radar::IssuingAuthorizationEvaluationCreateParams::TokenDetails), verification_details: T.nilable(::Stripe::Radar::IssuingAuthorizationEvaluationCreateParams::VerificationDetails)).void
       }
      def initialize(
        authorization_details: nil,
        card_details: nil,
        cardholder_details: nil,
        expand: nil,
        merchant_details: nil,
        metadata: nil,
        network_details: nil,
        token_details: nil,
        verification_details: nil
      ); end
    end
  end
end