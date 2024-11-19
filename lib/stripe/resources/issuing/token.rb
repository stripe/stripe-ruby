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
          attr_reader :device_fingerprint, :ip_address, :location, :name, :phone_number, :type
        end

        class Mastercard < Stripe::StripeObject
          attr_reader :card_reference_id, :token_reference_id, :token_requestor_id, :token_requestor_name
        end

        class Visa < Stripe::StripeObject
          attr_reader :card_reference_id, :token_reference_id, :token_requestor_id, :token_risk_score
        end

        class WalletProvider < Stripe::StripeObject
          class CardholderAddress < Stripe::StripeObject
            attr_reader :line1, :postal_code
          end
          attr_reader :account_id, :account_trust_score, :card_number_source, :cardholder_address, :cardholder_name, :device_trust_score, :hashed_account_email_address, :reason_codes, :suggested_decision, :suggested_decision_version
        end
        attr_reader :device, :mastercard, :type, :visa, :wallet_provider
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
      def self.update(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/tokens/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
