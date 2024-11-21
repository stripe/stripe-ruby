# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    # An issuing token object is created when an issued card is added to a digital wallet. As a [card issuer](https://stripe.com/docs/issuing), you can [view and manage these tokens](https://stripe.com/docs/issuing/controls/token-management) through Stripe.
    class Token < APIResource
      class NetworkData < Stripe::StripeObject
        class Device < Stripe::StripeObject
          # An obfuscated ID derived from the device ID.
          sig { returns(String) }
          attr_reader :device_fingerprint
          # The IP address of the device at provisioning time.
          sig { returns(String) }
          attr_reader :ip_address
          # The geographic latitude/longitude coordinates of the device at provisioning time. The format is [+-]decimal/[+-]decimal.
          sig { returns(String) }
          attr_reader :location
          # The name of the device used for tokenization.
          sig { returns(String) }
          attr_reader :name
          # The phone number of the device used for tokenization.
          sig { returns(String) }
          attr_reader :phone_number
          # The type of device used for tokenization.
          sig { returns(String) }
          attr_reader :type
        end
        class Mastercard < Stripe::StripeObject
          # A unique reference ID from MasterCard to represent the card account number.
          sig { returns(String) }
          attr_reader :card_reference_id
          # The network-unique identifier for the token.
          sig { returns(String) }
          attr_reader :token_reference_id
          # The ID of the entity requesting tokenization, specific to MasterCard.
          sig { returns(String) }
          attr_reader :token_requestor_id
          # The name of the entity requesting tokenization, if known. This is directly provided from MasterCard.
          sig { returns(String) }
          attr_reader :token_requestor_name
        end
        class Visa < Stripe::StripeObject
          # A unique reference ID from Visa to represent the card account number.
          sig { returns(String) }
          attr_reader :card_reference_id
          # The network-unique identifier for the token.
          sig { returns(String) }
          attr_reader :token_reference_id
          # The ID of the entity requesting tokenization, specific to Visa.
          sig { returns(String) }
          attr_reader :token_requestor_id
          # Degree of risk associated with the token between `01` and `99`, with higher number indicating higher risk. A `00` value indicates the token was not scored by Visa.
          sig { returns(String) }
          attr_reader :token_risk_score
        end
        class WalletProvider < Stripe::StripeObject
          class CardholderAddress < Stripe::StripeObject
            # The street address of the cardholder tokenizing the card.
            sig { returns(String) }
            attr_reader :line1
            # The postal code of the cardholder tokenizing the card.
            sig { returns(String) }
            attr_reader :postal_code
          end
          # The wallet provider-given account ID of the digital wallet the token belongs to.
          sig { returns(String) }
          attr_reader :account_id
          # An evaluation on the trustworthiness of the wallet account between 1 and 5. A higher score indicates more trustworthy.
          sig { returns(Integer) }
          attr_reader :account_trust_score
          # The method used for tokenizing a card.
          sig { returns(String) }
          attr_reader :card_number_source
          # Attribute for field cardholder_address
          sig { returns(CardholderAddress) }
          attr_reader :cardholder_address
          # The name of the cardholder tokenizing the card.
          sig { returns(String) }
          attr_reader :cardholder_name
          # An evaluation on the trustworthiness of the device. A higher score indicates more trustworthy.
          sig { returns(Integer) }
          attr_reader :device_trust_score
          # The hashed email address of the cardholder's account with the wallet provider.
          sig { returns(String) }
          attr_reader :hashed_account_email_address
          # The reasons for suggested tokenization given by the card network.
          sig { returns(T::Array[String]) }
          attr_reader :reason_codes
          # The recommendation on responding to the tokenization request.
          sig { returns(String) }
          attr_reader :suggested_decision
          # The version of the standard for mapping reason codes followed by the wallet provider.
          sig { returns(String) }
          attr_reader :suggested_decision_version
        end
        # Attribute for field device
        sig { returns(Device) }
        attr_reader :device
        # Attribute for field mastercard
        sig { returns(Mastercard) }
        attr_reader :mastercard
        # The network that the token is associated with. An additional hash is included with a name matching this value, containing tokenization data specific to the card network.
        sig { returns(String) }
        attr_reader :type
        # Attribute for field visa
        sig { returns(Visa) }
        attr_reader :visa
        # Attribute for field wallet_provider
        sig { returns(WalletProvider) }
        attr_reader :wallet_provider
      end
      # Card associated with this token.
      sig { returns(T.any(String, Stripe::Issuing::Card)) }
      attr_reader :card

      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created

      # The hashed ID derived from the device ID from the card network associated with the token.
      sig { returns(T.nilable(String)) }
      attr_reader :device_fingerprint

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # The last four digits of the token.
      sig { returns(String) }
      attr_reader :last4

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # The token service provider / card network associated with the token.
      sig { returns(String) }
      attr_reader :network

      # Attribute for field network_data
      sig { returns(NetworkData) }
      attr_reader :network_data

      # Time at which the token was last updated by the card network. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :network_updated_at

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # The usage state of the token.
      sig { returns(String) }
      attr_reader :status

      # The digital wallet for this token, if one was used.
      sig { returns(String) }
      attr_reader :wallet_provider
    end
  end
end