# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Radar
    class IssuingAuthorizationEvaluationCreateParams < ::Stripe::RequestParams
      class AuthorizationDetails < ::Stripe::RequestParams
        # The total amount of the authorization in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        attr_accessor :amount
        # How the card details were provided.
        attr_accessor :authorization_method
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        attr_accessor :currency
        # Defines how the card's information was entered for the authorization.
        attr_accessor :entry_mode
        # Raw code indicating the entry mode from the network message.
        attr_accessor :entry_mode_raw_code
        # The timestamp of the authorization initiated in seconds.
        attr_accessor :initiated_at
        # Defines how the card was read at the point of sale.
        attr_accessor :point_of_sale_condition
        # Raw code indicating the point of sale condition from the network message.
        attr_accessor :point_of_sale_condition_raw_code
        # User's specified unique ID for this authorization attempt (e.g., RRN or internal reference).
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
        # The Bank Identification Number (BIN) of the card.
        attr_accessor :bin
        # The two-letter country code of the BIN issuer.
        attr_accessor :bin_country
        # The type of the card.
        attr_accessor :card_type
        # The timestamp when the card was created.
        attr_accessor :created_at
        # The last 4 digits of the card number.
        attr_accessor :last4
        # User's specified unique ID of the card for this authorization attempt (e.g., RRN or internal reference).
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
        # The timestamp when the cardholder was created.
        attr_accessor :created_at
        # User's specified unique ID of the cardholder for this authorization attempt (e.g., RRN or internal reference).
        attr_accessor :reference

        def initialize(created_at: nil, reference: nil)
          @created_at = created_at
          @reference = reference
        end
      end

      class MerchantDetails < ::Stripe::RequestParams
        # The merchant category code for the seller's business.
        attr_accessor :category_code
        # Country where the seller is located.
        attr_accessor :country
        # Name of the seller.
        attr_accessor :name
        # Identifier assigned to the seller by the card network. Different card networks may assign different network_id fields to the same merchant.
        attr_accessor :network_id
        # An ID assigned by the seller to the location of the sale.
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
        # Identifier assigned to the acquirer by the card network. Sometimes this value is not provided by the network; in this case, the value will be null.
        attr_accessor :acquiring_institution_id
        # The card network over which Stripe received the authorization.
        attr_accessor :routed_network

        def initialize(acquiring_institution_id: nil, routed_network: nil)
          @acquiring_institution_id = acquiring_institution_id
          @routed_network = routed_network
        end
      end

      class TokenDetails < ::Stripe::RequestParams
        # The timestamp when the network token was created.
        attr_accessor :created_at
        # User's specified unique ID of the card token for this authorization attempt (e.g., RRN or internal reference).
        attr_accessor :reference
        # The digital wallet used for this transaction. One of `apple_pay`, `google_pay`, or `samsung_pay`.
        attr_accessor :wallet

        def initialize(created_at: nil, reference: nil, wallet: nil)
          @created_at = created_at
          @reference = reference
          @wallet = wallet
        end
      end

      class VerificationDetails < ::Stripe::RequestParams
        # The outcome of the 3D Secure authentication request.
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
      # Details about the seller (grocery store, e-commerce website, etc.) where the card authorization happened.
      attr_accessor :merchant_details
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # Details about the authorization, such as identifiers, set by the card network.
      attr_accessor :network_details
      # Details about the token, if a tokenized payment method was used for the authorization.
      attr_accessor :token_details
      # Details about verification data for the authorization.
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
