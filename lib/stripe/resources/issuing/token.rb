# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # An issuing token object is created when an issued card is added to a digital wallet. As a [card issuer](https://stripe.com/docs/issuing), you can [view and manage these tokens](https://stripe.com/docs/issuing/controls/token-management) through Stripe.
    class Token < APIResource
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "issuing.token"
      def self.object_name
        "issuing.token"
      end

      class NetworkData < Stripe::StripeObject
        class Device < Stripe::StripeObject
          # An obfuscated ID derived from the device ID.
          attr_reader :device_fingerprint
          # The IP address of the device at provisioning time.
          attr_reader :ip_address
          # The geographic latitude/longitude coordinates of the device at provisioning time. The format is [+-]decimal/[+-]decimal.
          attr_reader :location
          # The name of the device used for tokenization.
          attr_reader :name
          # The phone number of the device used for tokenization.
          attr_reader :phone_number
          # The type of device used for tokenization.
          attr_reader :type
        end

        class Mastercard < Stripe::StripeObject
          # A unique reference ID from MasterCard to represent the card account number.
          attr_reader :card_reference_id
          # The network-unique identifier for the token.
          attr_reader :token_reference_id
          # The ID of the entity requesting tokenization, specific to MasterCard.
          attr_reader :token_requestor_id
          # The name of the entity requesting tokenization, if known. This is directly provided from MasterCard.
          attr_reader :token_requestor_name
        end

        class Visa < Stripe::StripeObject
          # A unique reference ID from Visa to represent the card account number.
          attr_reader :card_reference_id
          # The network-unique identifier for the token.
          attr_reader :token_reference_id
          # The ID of the entity requesting tokenization, specific to Visa.
          attr_reader :token_requestor_id
          # Degree of risk associated with the token between `01` and `99`, with higher number indicating higher risk. A `00` value indicates the token was not scored by Visa.
          attr_reader :token_risk_score
        end

        class WalletProvider < Stripe::StripeObject
          class CardholderAddress < Stripe::StripeObject
            # The street address of the cardholder tokenizing the card.
            attr_reader :line1
            # The postal code of the cardholder tokenizing the card.
            attr_reader :postal_code
          end
          # The wallet provider-given account ID of the digital wallet the token belongs to.
          attr_reader :account_id
          # An evaluation on the trustworthiness of the wallet account between 1 and 5. A higher score indicates more trustworthy.
          attr_reader :account_trust_score
          # The method used for tokenizing a card.
          attr_reader :card_number_source
          # Attribute for field cardholder_address
          attr_reader :cardholder_address
          # The name of the cardholder tokenizing the card.
          attr_reader :cardholder_name
          # An evaluation on the trustworthiness of the device. A higher score indicates more trustworthy.
          attr_reader :device_trust_score
          # The hashed email address of the cardholder's account with the wallet provider.
          attr_reader :hashed_account_email_address
          # The reasons for suggested tokenization given by the card network.
          attr_reader :reason_codes
          # The recommendation on responding to the tokenization request.
          attr_reader :suggested_decision
          # The version of the standard for mapping reason codes followed by the wallet provider.
          attr_reader :suggested_decision_version
        end
        # Attribute for field device
        attr_reader :device
        # Attribute for field mastercard
        attr_reader :mastercard
        # The network that the token is associated with. An additional hash is included with a name matching this value, containing tokenization data specific to the card network.
        attr_reader :type
        # Attribute for field visa
        attr_reader :visa
        # Attribute for field wallet_provider
        attr_reader :wallet_provider
      end

      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          attr_accessor :gt
          # Minimum value to filter by (inclusive)
          attr_accessor :gte
          # Maximum value to filter by (exclusive)
          attr_accessor :lt
          # Maximum value to filter by (inclusive)
          attr_accessor :lte

          def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
            @gt = gt
            @gte = gte
            @lt = lt
            @lte = lte
          end
        end
        # The Issuing card identifier to list tokens for.
        attr_accessor :card
        # Only return Issuing tokens that were created during the given date interval.
        attr_accessor :created
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after
        # Select Issuing tokens with the given status.
        attr_accessor :status

        def initialize(
          card: nil,
          created: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil,
          status: nil
        )
          @card = card
          @created = created
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @starting_after = starting_after
          @status = status
        end
      end

      class UpdateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Specifies which status the token should be updated to.
        attr_accessor :status

        def initialize(expand: nil, status: nil)
          @expand = expand
          @status = status
        end
      end
      # Card associated with this token.
      attr_reader :card
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # The hashed ID derived from the device ID from the card network associated with the token.
      attr_reader :device_fingerprint
      # Unique identifier for the object.
      attr_reader :id
      # The last four digits of the token.
      attr_reader :last4
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # The token service provider / card network associated with the token.
      attr_reader :network
      # Attribute for field network_data
      attr_reader :network_data
      # Time at which the token was last updated by the card network. Measured in seconds since the Unix epoch.
      attr_reader :network_updated_at
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The usage state of the token.
      attr_reader :status
      # The digital wallet for this token, if one was used.
      attr_reader :wallet_provider

      # Lists all Issuing Token objects for a given card.
      def self.list(params = {}, opts = {})
        request_stripe_object(method: :get, path: "/v1/issuing/tokens", params: params, opts: opts)
      end

      # Attempts to update the specified Issuing Token object to the status specified.
      def self.update(token, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/tokens/%<token>s", { token: CGI.escape(token) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
