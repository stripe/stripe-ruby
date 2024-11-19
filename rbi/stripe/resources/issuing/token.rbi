# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    # An issuing token object is created when an issued card is added to a digital wallet. As a [card issuer](https://stripe.com/docs/issuing), you can [view and manage these tokens](https://stripe.com/docs/issuing/controls/token-management) through Stripe.
    class Token < APIResource
      class NetworkData < Stripe::StripeObject
        class Device < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :device_fingerprint
          sig { returns(String) }
          attr_reader :ip_address
          sig { returns(String) }
          attr_reader :location
          sig { returns(String) }
          attr_reader :name
          sig { returns(String) }
          attr_reader :phone_number
          sig { returns(String) }
          attr_reader :type
        end
        class Mastercard < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :card_reference_id
          sig { returns(String) }
          attr_reader :token_reference_id
          sig { returns(String) }
          attr_reader :token_requestor_id
          sig { returns(String) }
          attr_reader :token_requestor_name
        end
        class Visa < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :card_reference_id
          sig { returns(String) }
          attr_reader :token_reference_id
          sig { returns(String) }
          attr_reader :token_requestor_id
          sig { returns(String) }
          attr_reader :token_risk_score
        end
        class WalletProvider < Stripe::StripeObject
          class CardholderAddress < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :line1
            sig { returns(String) }
            attr_reader :postal_code
          end
          sig { returns(String) }
          attr_reader :account_id
          sig { returns(Integer) }
          attr_reader :account_trust_score
          sig { returns(String) }
          attr_reader :card_number_source
          sig { returns(CardholderAddress) }
          attr_reader :cardholder_address
          sig { returns(String) }
          attr_reader :cardholder_name
          sig { returns(Integer) }
          attr_reader :device_trust_score
          sig { returns(String) }
          attr_reader :hashed_account_email_address
          sig { returns(T::Array[String]) }
          attr_reader :reason_codes
          sig { returns(String) }
          attr_reader :suggested_decision
          sig { returns(String) }
          attr_reader :suggested_decision_version
        end
        sig { returns(Device) }
        attr_reader :device
        sig { returns(Mastercard) }
        attr_reader :mastercard
        sig { returns(String) }
        attr_reader :type
        sig { returns(Visa) }
        attr_reader :visa
        sig { returns(WalletProvider) }
        attr_reader :wallet_provider
      end
      sig { returns(T.any(String, Stripe::Issuing::Card)) }
      # Card associated with this token.
      attr_reader :card
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(T.nilable(String)) }
      # The hashed ID derived from the device ID from the card network associated with the token.
      attr_reader :device_fingerprint
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(String) }
      # The last four digits of the token.
      attr_reader :last4
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(String) }
      # The token service provider / card network associated with the token.
      attr_reader :network
      sig { returns(NetworkData) }
      # Attribute for field network_data
      attr_reader :network_data
      sig { returns(Integer) }
      # Time at which the token was last updated by the card network. Measured in seconds since the Unix epoch.
      attr_reader :network_updated_at
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(String) }
      # The usage state of the token.
      attr_reader :status
      sig { returns(String) }
      # The digital wallet for this token, if one was used.
      attr_reader :wallet_provider
    end
  end
end