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
          def device_fingerprint; end
          # The IP address of the device at provisioning time.
          sig { returns(String) }
          def ip_address; end
          # The geographic latitude/longitude coordinates of the device at provisioning time. The format is [+-]decimal/[+-]decimal.
          sig { returns(String) }
          def location; end
          # The name of the device used for tokenization.
          sig { returns(String) }
          def name; end
          # The phone number of the device used for tokenization.
          sig { returns(String) }
          def phone_number; end
          # The type of device used for tokenization.
          sig { returns(String) }
          def type; end
        end
        class Mastercard < Stripe::StripeObject
          # A unique reference ID from MasterCard to represent the card account number.
          sig { returns(String) }
          def card_reference_id; end
          # The network-unique identifier for the token.
          sig { returns(String) }
          def token_reference_id; end
          # The ID of the entity requesting tokenization, specific to MasterCard.
          sig { returns(String) }
          def token_requestor_id; end
          # The name of the entity requesting tokenization, if known. This is directly provided from MasterCard.
          sig { returns(String) }
          def token_requestor_name; end
        end
        class Visa < Stripe::StripeObject
          # A unique reference ID from Visa to represent the card account number.
          sig { returns(String) }
          def card_reference_id; end
          # The network-unique identifier for the token.
          sig { returns(String) }
          def token_reference_id; end
          # The ID of the entity requesting tokenization, specific to Visa.
          sig { returns(String) }
          def token_requestor_id; end
          # Degree of risk associated with the token between `01` and `99`, with higher number indicating higher risk. A `00` value indicates the token was not scored by Visa.
          sig { returns(String) }
          def token_risk_score; end
        end
        class WalletProvider < Stripe::StripeObject
          class CardholderAddress < Stripe::StripeObject
            # The street address of the cardholder tokenizing the card.
            sig { returns(String) }
            def line1; end
            # The postal code of the cardholder tokenizing the card.
            sig { returns(String) }
            def postal_code; end
          end
          # The wallet provider-given account ID of the digital wallet the token belongs to.
          sig { returns(String) }
          def account_id; end
          # An evaluation on the trustworthiness of the wallet account between 1 and 5. A higher score indicates more trustworthy.
          sig { returns(Integer) }
          def account_trust_score; end
          # The method used for tokenizing a card.
          sig { returns(String) }
          def card_number_source; end
          # Attribute for field cardholder_address
          sig { returns(CardholderAddress) }
          def cardholder_address; end
          # The name of the cardholder tokenizing the card.
          sig { returns(String) }
          def cardholder_name; end
          # An evaluation on the trustworthiness of the device. A higher score indicates more trustworthy.
          sig { returns(Integer) }
          def device_trust_score; end
          # The hashed email address of the cardholder's account with the wallet provider.
          sig { returns(String) }
          def hashed_account_email_address; end
          # The reasons for suggested tokenization given by the card network.
          sig { returns(T::Array[String]) }
          def reason_codes; end
          # The recommendation on responding to the tokenization request.
          sig { returns(String) }
          def suggested_decision; end
          # The version of the standard for mapping reason codes followed by the wallet provider.
          sig { returns(String) }
          def suggested_decision_version; end
        end
        # Attribute for field device
        sig { returns(Device) }
        def device; end
        # Attribute for field mastercard
        sig { returns(Mastercard) }
        def mastercard; end
        # The network that the token is associated with. An additional hash is included with a name matching this value, containing tokenization data specific to the card network.
        sig { returns(String) }
        def type; end
        # Attribute for field visa
        sig { returns(Visa) }
        def visa; end
        # Attribute for field wallet_provider
        sig { returns(WalletProvider) }
        def wallet_provider; end
      end
      # Card associated with this token.
      sig { returns(T.any(String, Stripe::Issuing::Card)) }
      def card; end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # The hashed ID derived from the device ID from the card network associated with the token.
      sig { returns(T.nilable(String)) }
      def device_fingerprint; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # The last four digits of the token.
      sig { returns(String) }
      def last4; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # The token service provider / card network associated with the token.
      sig { returns(String) }
      def network; end
      # Attribute for field network_data
      sig { returns(NetworkData) }
      def network_data; end
      # Time at which the token was last updated by the card network. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def network_updated_at; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The usage state of the token.
      sig { returns(String) }
      def status; end
      # The digital wallet for this token, if one was used.
      sig { returns(String) }
      def wallet_provider; end
      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          def gt; end
          sig { params(_gt: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def gt=(_gt); end
          # Minimum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          def gte; end
          sig { params(_gte: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def gte=(_gte); end
          # Maximum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          def lt; end
          sig { params(_lt: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def lt=(_lt); end
          # Maximum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          def lte; end
          sig { params(_lte: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def lte=(_lte); end
          sig {
            params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
           }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        # The Issuing card identifier to list tokens for.
        sig { returns(String) }
        def card; end
        sig { params(_card: String).returns(String) }
        def card=(_card); end
        # Only return Issuing tokens that were created during the given date interval.
        sig { returns(T.nilable(T.any(::Stripe::Issuing::Token::ListParams::Created, Integer))) }
        def created; end
        sig {
          params(_created: T.nilable(T.any(::Stripe::Issuing::Token::ListParams::Created, Integer))).returns(T.nilable(T.any(::Stripe::Issuing::Token::ListParams::Created, Integer)))
         }
        def created=(_created); end
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        def ending_before; end
        sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
        def ending_before=(_ending_before); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        def starting_after; end
        sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
        def starting_after=(_starting_after); end
        # Select Issuing tokens with the given status.
        sig { returns(T.nilable(String)) }
        def status; end
        sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
        def status=(_status); end
        sig {
          params(card: String, created: T.nilable(T.any(::Stripe::Issuing::Token::ListParams::Created, Integer)), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String), status: T.nilable(String)).void
         }
        def initialize(
          card: nil,
          created: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil,
          status: nil
        ); end
      end
      class UpdateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Specifies which status the token should be updated to.
        sig { returns(String) }
        def status; end
        sig { params(_status: String).returns(String) }
        def status=(_status); end
        sig { params(expand: T.nilable(T::Array[String]), status: String).void }
        def initialize(expand: nil, status: nil); end
      end
      # Lists all Issuing Token objects for a given card.
      sig {
        params(params: T.any(::Stripe::Issuing::Token::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # Attempts to update the specified Issuing Token object to the status specified.
      sig {
        params(token: String, params: T.any(::Stripe::Issuing::Token::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Token)
       }
      def self.update(token, params = {}, opts = {}); end
    end
  end
end