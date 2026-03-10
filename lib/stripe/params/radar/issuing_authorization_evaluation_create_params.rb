# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Radar
    class IssuingAuthorizationEvaluationCreateParams < ::Stripe::RequestParams
      class AuthorizationDetails < ::Stripe::RequestParams
        # The authorization amount in the smallest currency unit.
        attr_accessor :amount
        # The method used for authorization.
        attr_accessor :authorization_method
        # Three-letter ISO currency code in lowercase.
        attr_accessor :currency
        # The card entry mode.
        attr_accessor :entry_mode
        # The raw code for the card entry mode.
        attr_accessor :entry_mode_raw_code
        # The time when the authorization was initiated (Unix timestamp).
        attr_accessor :initiated_at
        # The point of sale condition.
        attr_accessor :point_of_sale_condition
        # The raw code for the point of sale condition.
        attr_accessor :point_of_sale_condition_raw_code
        # External reference for the authorization.
        attr_accessor :reference

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
        )
          @amount = amount
          @authorization_method = authorization_method
          @currency = currency
          @entry_mode = entry_mode
          @entry_mode_raw_code = entry_mode_raw_code
          @initiated_at = initiated_at
          @point_of_sale_condition = point_of_sale_condition
          @point_of_sale_condition_raw_code = point_of_sale_condition_raw_code
          @reference = reference
        end
      end

      class CardDetails < ::Stripe::RequestParams
        # Bank Identification Number (BIN) of the card.
        attr_accessor :bin
        # Two-letter ISO country code of the card's issuing bank.
        attr_accessor :bin_country
        # The type of card (physical or virtual).
        attr_accessor :card_type
        # The time when the card was created (Unix timestamp).
        attr_accessor :created_at
        # Last 4 digits of the card number.
        attr_accessor :last4
        # External reference for the card.
        attr_accessor :reference

        def initialize(
          bin: nil,
          bin_country: nil,
          card_type: nil,
          created_at: nil,
          last4: nil,
          reference: nil
        )
          @bin = bin
          @bin_country = bin_country
          @card_type = card_type
          @created_at = created_at
          @last4 = last4
          @reference = reference
        end
      end

      class CardholderDetails < ::Stripe::RequestParams
        # The time when the cardholder was created (Unix timestamp).
        attr_accessor :created_at
        # External reference for the cardholder.
        attr_accessor :reference

        def initialize(created_at: nil, reference: nil)
          @created_at = created_at
          @reference = reference
        end
      end

      class MerchantDetails < ::Stripe::RequestParams
        # Merchant Category Code (MCC).
        attr_accessor :category_code
        # Two-letter ISO country code of the merchant.
        attr_accessor :country
        # Name of the merchant.
        attr_accessor :name
        # Network merchant identifier.
        attr_accessor :network_id
        # Terminal identifier.
        attr_accessor :terminal_id

        def initialize(
          category_code: nil,
          country: nil,
          name: nil,
          network_id: nil,
          terminal_id: nil
        )
          @category_code = category_code
          @country = country
          @name = name
          @network_id = network_id
          @terminal_id = terminal_id
        end
      end

      class NetworkDetails < ::Stripe::RequestParams
        # The acquiring institution identifier.
        attr_accessor :acquiring_institution_id
        # The card network that routed the authorization.
        attr_accessor :routed_network

        def initialize(acquiring_institution_id: nil, routed_network: nil)
          @acquiring_institution_id = acquiring_institution_id
          @routed_network = routed_network
        end
      end

      class TokenDetails < ::Stripe::RequestParams
        # The time when the token was created (Unix timestamp).
        attr_accessor :created_at
        # External reference for the token.
        attr_accessor :reference
        # The wallet provider for the tokenized payment method.
        attr_accessor :wallet

        def initialize(created_at: nil, reference: nil, wallet: nil)
          @created_at = created_at
          @reference = reference
          @wallet = wallet
        end
      end

      class VerificationDetails < ::Stripe::RequestParams
        # The result of 3D Secure verification.
        attr_accessor :three_d_secure_result

        def initialize(three_d_secure_result: nil)
          @three_d_secure_result = three_d_secure_result
        end
      end
      # Details about the authorization.
      attr_accessor :authorization_details
      # Details about the card used in the authorization.
      attr_accessor :card_details
      # Details about the cardholder.
      attr_accessor :cardholder_details
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Details about the merchant where the authorization occurred.
      attr_accessor :merchant_details
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # Details about the card network processing.
      attr_accessor :network_details
      # Details about the token, if a tokenized payment method was used.
      attr_accessor :token_details
      # Details about verification checks performed.
      attr_accessor :verification_details

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
      )
        @authorization_details = authorization_details
        @card_details = card_details
        @cardholder_details = cardholder_details
        @expand = expand
        @merchant_details = merchant_details
        @metadata = metadata
        @network_details = network_details
        @token_details = token_details
        @verification_details = verification_details
      end
    end
  end
end
